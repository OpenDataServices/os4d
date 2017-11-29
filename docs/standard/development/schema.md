# Schema development

This section outlines a number of the pattens we commonly use to develop the schema for an open data standard.

```eval_rst
.. admonition:: Learning / reflection
  :class: note

  .. markdown::

    We currently jump straight from the conceptual framework document, to working up the data model and schema for a standard in a schema language. 

    This differs [from the approach proposed here](https://github.com/open-contracting-archive/technical-approach#data-model) of maintaining the **data model** as a narrative document, only then given form by a schema as a reference implementation. 

```


```eval_rst
.. toctree::
   :maxdepth: 3
   :glob:

   schema

```

## Schema language

Our preferred schema language is [JSON Schema v0.4](https://tools.ietf.org/html/draft-zyp-json-schema-04). 

This allows us to provide field structures and definitions. Although less expressive than other schema languages, the constraints of JSON Schema enable us to focus on keeping data simple enough for a wide range of users. 

We generally use simple CSV files to represent codelists. 

We have a number of extensions to JSON Schema 0.4 we use (documented below).

## Serializations

We design with a range of serializations in mind, and, where possible, to enable round-tripping of data between different serializations.

In particular, through [flatten-tool](http://flatten-tool.readthedocs.io) we design with support for:

* Structured JSON serialization;
* Excel serialization;
* CSV serialization. 


```eval_rst
.. admonition:: Example
    :class: note

    ToDo

    We could include a simple example here.

```

[Flatten-tool](http://flatten-tool.readthedocs.io/en/latest/unflatten/#human-friendly-headings-using-a-json-schema-with-titles) can use the titles in a schema to provide 'friendly' column headings, and with use of a [metatab](http://flatten-tool.readthedocs.io/en/latest/unflatten/#metadata-tab) also supports packaging meta-data and options to control how spreadsheets are parsed. 

## Extended JSON schema

We use a number of custom properties in our JSON Schema implementation. A [patch against JSON Schema 0.4 to include these is found here](https://github.com/open-contracting/standard/blob/6e538252dd08344222b5cd16b864ed0a2a866197/standard/schema/metaschema/meta-schema-patch.json).

```eval_rst
.. note:: ToDo

    We need to document the fields in our schema patch.
    
    We should also explore moving our JSON schema meta-schema patch to our own opendataservices repository and managing it there.

```

### Codelist properties

* `codelist` - the filename of a .csv file that contains at least a `Code` column. Used by the CoVE validator to check for acceptable values.
* `openCodelist` - a boolean value to indicate whether values can **only** come from the codelist, or whether additional values not on the codelist are permitted. When `openCodelist` = 'true' then encountering a value not on the codelist should generate a warning. when `openCodelist` = 'false' then encountering a value not on the codelist should generate an error. 

```eval_rst
  .. _component-deprecation:
```

### Deprecation properties

> "deprecation is the discouragement of use of some terminology, feature, design, or practice; typically because it has been superseded or is no longer considered efficient or safe – but without completely removing it or prohibiting its use."

See: [Deprecation (Wikipedia)](https://en.wikipedia.org/wiki/Deprecation)

* `deprecated` - and object to indicate that the field is deprecated, consisting of fields for:
  * `description` - a message that explains the deprecation, and that should be presented by validators to any publisher using this field.
  * `deprecatedVersion` - a string indicating the version in which the field was first deprecated. 

We also use the column title `Deprecated` with a version number as the cell value in codelist CSV files when a code has been deprecated. 

```eval_rst
.. note:: ToDo

    We should consider using `message` instead of `description` in the deprecated object in JSON schema. 

    We should consider using 'deprecatedInVersion' and 'deprecatedMessage' in the codelist CSV files, instead of just 'Deprecated' as a column heading

```

### Merge strategies

The Open Contracting Data Standard describes an approach to merge together releases of data from different point in time. We add a number of properties to indicate how merging should be approached. 

* `omitWhemMerged`
* `wholeListMerge`
* `versionId`

Behaviour for these is [described in the OCDS documentation](http://standard.open-contracting.org/1.1/en/schema/merging/#merging-rules).


## Design patterns

Developing a good schema is an art as much as a science. It requires sensitivity to the needs of both data producers and data users, and an understanding of the incentive structures that will drive adoption of a standard. 

The following section provides a non-exhaustive set of design patterns that can be drawn upon when developing a schema. 

```eval_rst
  .. _pattern-top:
```

### Top-object

#### Problem

Data is often stored in source systems using a relational data model that stores many related entities. Relational data can be represented in many different ways. 

#### Solution

A standard is opinionated about the 'top-object' that describes the key entity being exchanged, and all other data is nested within this object. 

#### Method

The selection of the top-object will be based on the conceptual model for the standard. It will need to be informed by consultation with data producers and users. 

Where a standard needs more than one top-object, consider treating the project as one of API design, rather than the design of a singular data standard. 

#### Example

The Open Contracting Data Standard uses 'Contracting Process' as it's top-object, nesting information on each stage of contracting within this. This partially reflects the data found during research (though this was mostly structured around the idea of a 'notice', a 'contract' or an 'award') and substantially reflects user-demand for joined up data from across all stages of contracting. The choice of 'contracting process' plays a substantial normative role and seeks to change how existing data systems are understood. 

The 360 Giving Data Standard uses Grant as it's top-concept, rather than grantmaking process. This reflects the design-principle of the standard to adopt a simple, static, representation of grants made. 

#### Related patterns

#### Related components



```eval_rst
  .. _pattern-permissive:
```

### Permissive schema

#### Problem

A schema can enforce validation rules. However, when data owners encounter lots of validation errors, it can act as a barrier to standard adoption. 

When a data owner does not have data to fill in a required field, or to fill it in the desired format, they may be prevented from using the standard by strict validation.

#### Solution

Minimise the use of `required` properties and validation rules, unless absolutely necessary to the technical functioning of the standard. 

Indicate recommend fields through guidance, implementation tools and validation platforms.

This builds on the idea of designing to allow for '[the tussle](http://conferences.sigcomm.org/sigcomm/2002/papers/tussle.pdf)'. A policy-related standard provides the framework within which different data producers and users can tussle over the exact data that should be provided in a particular context. 

(The applicability of this pattern varies substantially based on the policy context of a standard.)

#### Method

[Additional checks](component-additional-checks) and [rulesets](component-rulesets) can be used to report data quality issues to users in a validator. 

A mapping document that indicates which fields, or field-value pairs are required for particular use-cases can guide contextualised recommendations about what to publish. 

#### Example

360 Giving [specifies](https://github.com/ThreeSixtyGiving/standard/blob/master/schema/360-giving-schema.json#L430) just eight required fields on the main grants table. 

#### Related patterns

[Quality framework](pattern-quality); [Use-case mapping](pattern-use-case-mapping); 

#### Related components

[Rulesets](component-rulesets); [Validator](component-validator);




```eval_rst
  .. _pattern-object-id:
```

### Object identifiers

#### Problem

When transforming data between serialisations, updating data, or comparing datasets, it can be difficult to work out how to handle nested objects. 

#### Solution

Provide every object with an identifier field. 

#### Method

Instead of: 

```json
{
    "objects":[
        {
            "title":"First object"
        },
        {
            "title":"Second object"
        }
    ]
}
```

always design a schema as:

```json
{
    "objects":[
        {
            "id":1,
            "title":"First object"
        },
        {
            "id":2,
            "title":"Second object"
        }
    ]
}
```

[Flatten-tool](component-flatten-tool) and our merging tools recognise `id` as a special property. 

This pattern is not needed for objects that are not contained in an array. 

#### Example

See above.

#### Related patterns

[Spreadsheet first](pattern-spreadsheet); 

#### Related components

[Flatten-tool](component-flatten-tool);




```eval_rst
  .. _pattern-spreadsheet:
```

### Spreadsheet-first

#### Problem

Many potential users of data are most comfortable with spreadsheet tools. 

Data structures which make sense in a hierarchical data format may be tricky to work with when flattened out.

#### Solution

Design with flattened representations in mind. 

Consider how a spreadsheet user would be able to analyse the data using simple spreadsheet functions such as pivot tables, or vLookup functions. 

#### Method

ToDo. 

#### Example

TODO: Add example from Social Investment Data Lab Standard 

#### Related patterns

#### Related components



```eval_rst
  .. _pattern-deprecation:
```

### Deprecation

#### Problem

Fields may need to be removed from a standard. When these are removed, users may not know how to update their data.

#### Solution

Mark fields as deprecated for at least one version prior to their removal. Provide a deprecation message that explains to users how to change their data.

#### Method

We use [extended JSON schema fields for deprecation](component-deprecation).

#### Example

OCDS Version 1.1 deprecated a number of fields. The validator will report when deprecated fields are encountered in data.

#### Related patterns


#### Related components


```eval_rst
  .. _pattern-vocabularies:
```

### Flexible vocabularies 

#### Problem

Source systems may use many different classification schemes for their data. Getting data owners to harmonise the codelists and classifications they use, or to adopt common identifier schemes, can be very difficult - and may inhibit adoption of a standard.

#### Solution

Rather than just having a field for classification values, split this into at least:

* `vocabulary` or `scheme` - the list/codelist/scheme from which identifiers or classifications are drawn;
* `code` or `id` - the actual value from the specified list

Provide a codelist of recognise vocabularies or schemes, and provide recommendations on the one to use where appropriate. 

Where mappings are available between vocabularies and schemes, make users aware of this. 

#### Method

#### Example

[org-id.guide](http://org-id.guide/about) provides a list of `scheme` values for identifying organisations. For example, the following identifier block is recommended by org-id.guide to represent a UK company number. 

```json
{
    "scheme": "GB-COH",
    "id": "09506232
}
```

An alternative pattern, that org-id.guide recognises, is concatenation of scheme and identifier, such that the above company number could also be represented as 'GB-COH-09506232'. 

#### Related patterns

#### Related components



```eval_rst
  .. _pattern-packaging:
```

### Packaging

#### Problem

When data is exchanged users may need to know about the source, the version of schema being used and the license data is under. 

#### Solution

Provide a packaging schema, in which an array of the schema's [top objects](pattern-top) can be nested.

#### Method

A separate packaging schema can use recognised meta-data keywords. The package provides meta-data about the data, rather than describing the entities that the schema represents.  

A package schema can use the JSON schema `$ref` element to point to the main schema of the standard. 

In some cases, meta-data may need to be embedded within each top object, particularly in cases where data from multiple sources it to be merged together. 

#### Example

The Open Contracting Data Standard has a release package and record package schema 

#### Related patterns

#### Related components




```eval_rst
  .. _pattern-immutability:
```

### Immutability 

#### Problem

Users may want to understand how data has changed over time. Source systems may or may not provide a full change-log. 

#### Solution

The normative guidance of a standard may specify immutability. Any top-object with a given `id`, once created, should not change. The `id` value should be incremented whenever the object changes. 

#### Method

ToDo

#### Example

ToDo

#### Related patterns

#### Related components


```eval_rst
  .. _pattern-merging:
```

### Merging 

#### Problem

When data about the same entity is produced from different systems, and at different times, and the [immutability](pattern-immutability) pattern is used, it can be tricky to get a full picture of the current state of an entity.

#### Solution

Merging together data in sequential order (oldest first) can create an object that reflects the latest state of the entity represented.

#### Method

To be documented.

#### Example

The [OCDS releases and records model](http://standard.open-contracting.org/latest/en/schema/merging/) makes use of merging.

#### Related patterns

[Immutability](pattern-immutability); [Object identifiers](pattern-object-id); 

#### Related components

[Merge tool](component-merge-tool)



```eval_rst
  .. _pattern-extensibility:
```

### Extensibility

#### Problem

Source systems may contain data not covered by the standard, leading to under-publication of valuable information.

A group of users may have a need for additional fields not specified by the standard. 

#### Solution

An extension mechanism can allow data owners and data users to declare and document additional fields that they publish or would like to see published.

#### Method

Extensions can be represented using a JSON Merge Patch. 

An extension registry can help data owners and users to discover relevant extensions.

When extensions are declared in packaging meta-data, validators and other tools can check data against them.

#### Example

The [OCDS Extension Template](https://github.com/open-contracting/standard_extension_template) and [extensions registry](http://standard.open-contracting.org/latest/en/extensions/) document a technical approach to extensions. 

#### Related patterns

[Pattern name](pattern-slug); [Pattern name 2](pattern-slug-2); 

#### Related components

[Component name](component-slug); [Component name 2](component-slug-2); 
