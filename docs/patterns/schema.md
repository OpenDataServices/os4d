# Schema patterns

---

## Top-object

### Problem

Data is often stored in source systems using a relational data model that stores many related entities. Relational data can be represented in many different ways.

### Solution

A standard is opinionated about the 'top-object' that describes the key entity being exchanged, and all other data is nested within this object.

### Method

The selection of the top-object will be based on the conceptual model for the standard. It will need to be informed by consultation with data producers and users.

Where a standard needs more than one top-object, consider treating the project as one of API design, rather than the design of a singular data standard.

### Example

The Open Contracting Data Standard uses 'Contracting Process' as it's top-object, nesting information on each stage of contracting within this. This partially reflects the data found during research (though this was mostly structured around the idea of a 'notice', a 'contract' or an 'award') and substantially reflects user-demand for joined up data from across all stages of contracting. The choice of 'contracting process' plays a substantial normative role and seeks to change how existing data systems are understood.

The 360 Giving Data Standard uses Grant as it's top-concept, rather than grant making process. This reflects the design-principle of the standard to adopt a simple, static, representation of grants made.

---

## Permissive schema

### Problem

A schema can enforce validation rules. However, when data owners encounter lots of validation errors, it can act as a barrier to standard adoption.

When a data owner does not have data to fill in a required field, or to fill it in the desired format, they may be prevented from using the standard by strict validation.

### Solution

Minimise the use of `required` properties and validation rules, unless absolutely necessary to the technical functioning of the standard.

Indicate recommend fields through guidance, implementation tools and validation platforms.

This builds on the idea of designing to allow for '[the tussle](http://conferences.sigcomm.org/sigcomm/2002/papers/tussle.pdf)'. A policy-related standard provides the framework within which different data producers and users can tussle over the exact data that should be provided in a particular context.

(The applicability of this pattern varies substantially based on the policy context of a standard.)

### Method

Additional checks can be used to report data quality issues to users in a [validator](../components/validator.md).

A mapping document that indicates which fields, or field-value pairs are required for particular use-cases can guide contextualised recommendations about what to publish.

### Example

360 Giving [specifies](https://github.com/ThreeSixtyGiving/standard/blob/master/schema/360-giving-schema.json#L430) just eight required fields on the main grants table.

### Related components

- [Implementation framework](../components/implementation_framework.md)
- [Use-case mapping](../components/use_case_mapping.md)
- [Validator](../components/validator.md)

---

## Object identifiers

### Problem

When transforming data between serialisations, updating data, or comparing datasets, it can be difficult to work out how to handle nested objects.

### Solution

Provide every object with an identifier field.

### Method

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

[Flatten-tool](../components/conversion_tools.md) and our merging tools recognise `id` as a special property.

This pattern is not needed for objects that are not contained in an array.

### Example

See above.

### Related patterns

[Spreadsheet first](#spreadsheet-first);

### Related components

- [Conversion tools](../components/conversion_tools.md)

---

## Spreadsheet-first

### Problem

Many potential users of data are most comfortable with spreadsheet tools.

Data structures which make sense in a hierarchical data format may be tricky to work with when flattened out.

### Solution

Design with flattened representations in mind.

Consider how a spreadsheet user would be able to analyse the data using simple spreadsheet functions such as pivot tables, or VLOOKUP functions.

### Example

Add example from Social Investment Data Lab Standard

---

## Deprecated fields

### Problem

Fields sometimes need to be removed from a schema.

Data publishers and data users need to know when a field is going to be removed and what field replaces it.

### Solution

At least one version before removing a field, annotate it to indicate deprecation and replacements.

### Method

Use the [`deprecated`](https://json-schema.org/understanding-json-schema/reference/annotations) keyword from JSON Schema to indicate deprecation.

```{note} 
:class: dropdown
[JSON Schema Draft 4](https://json-schema.org/draft-04/draft-zyp-json-schema-04) lacked a means to indicate a deprecated field. The `deprecated` keyword was added in Draft 2020-12.
```
Use the `deprecatedDetails` keyword from the [Open Data Services JSON Schema Extension](https://json-schema-extension.readthedocs.io) to provide information about the deprecation of a field:

```{jsonschema} ../../metaschema.json
:allowexternalrefs:
:nocrossref:
:include: deprecatedDetails
```

### Example

The `.countryName` field is deprecated in favour of `.country`:

```json
{
  "countryName": {
    "title": "Country name",
    "type": "string",
    "deprecated": true,
    "deprecatedDetails": {
      "deprecatedVersion": "1.1",
      "description": "This field is deprecated in favor of `country`, to promote standardized country codes instead of non-standardized country names."
    }
  }
}
```

---

## Deprecated codes

### Problem

Codes sometimes need to be removed from a codelist.

Data publishers and data users need to know when a code is going to be removed and what code replaces it.

### Solution

Annotate codes to indicate deprecation and replacements.

### Method

Use the following columns from the [Open Data Services Codelist Schema](https://codelist-schema.readthedocs.io):

```{jsonschema} ../../codelist-schema.json
:allowexternalrefs:
:nocrossref:
:pointer: /$defs/Row
:include: Deprecated,Deprecation note
```

### Example

The 'bestValueToGovernment' code is deprecated in favour of 'ratedCriteria':

```
Code,Title,Description,Deprecated,Deprecation note
bestValueToGovernment,Best value to government,1.2,This code has been deprecated. 'ratedCriteria' is a likely alternatives for most procedures formerly mapped to this code.
```

---

## Flexible vocabularies

### Problem

Source systems may use many different classification schemes for their data. Getting data owners to harmonise the codelists and classifications they use, or to adopt common identifier schemes, can be very difficult - and may inhibit adoption of a standard.

### Solution

Rather than just having a field for classification values, split this into at least:

- `vocabulary` or `scheme` - the list/codelist/scheme from which identifiers or classifications are drawn;
- `code` or `id` - the actual value from the specified list

Provide a codelist of recognise vocabularies or schemes, and provide recommendations on the one to use where appropriate.

Where mappings are available between vocabularies and schemes, make users aware of this.

### Example

[org-id.guide](http://org-id.guide/about) provides a list of `scheme` values for identifying organisations. For example, the following identifier block is recommended by org-id.guide to represent a UK company number.

```json
{
    "scheme": "GB-COH",
    "id": "09506232"
}
```

An alternative pattern, that org-id.guide recognises, is concatenation of scheme and identifier, such that the above company number could also be represented as 'GB-COH-09506232'.

---

## Packaging

### Problem

When data is exchanged users may need to know about the source, the version of schema being used and the license data is under.

### Solution

Provide a packaging schema, in which an array of the schema's [top objects](#top-object) can be nested.

### Method

A separate packaging schema can use recognised meta-data keywords. The package provides meta-data about the data, rather than describing the entities that the schema represents.

A package schema can use the JSON schema `$ref` element to point to the main schema of the standard.

In some cases, meta-data may need to be embedded within each top object, particularly in cases where data from multiple sources it to be merged together.

### Example

The Open Contracting Data Standard has a release package and record package schema

---

## Immutability

### Problem

Users may want to understand how data has changed over time. Source systems may or may not provide a full change-log.

### Solution

The normative guidance of a standard may specify immutability. Any top-object with a given `id`, once created, should not change. The `id` value should be incremented whenever the object changes.

---

## Merging

### Problem

When data about the same entity is produced from different systems, and at different times, and the [immutability](#immutability) pattern is used, it can be tricky to get a full picture of the current state of an entity.

### Solution

Merging together data in sequential order (oldest first) can create an object that reflects the latest state of the entity represented.

### Method

The Open Contracting Data Standard describes an approach to merge together releases of data from different point in time. We add a number of properties to indicate how merging should be approached.

- `omitWhemMerged`
- `wholeListMerge`
- `versionId`

Behaviour for these is [described in the OCDS documentation](http://standard.open-contracting.org/1.1/en/schema/merging/#merging-rules).

### Example

The [OCDS releases and records model](http://standard.open-contracting.org/latest/en/schema/merging/) makes use of merging.

### Related patterns

- [Immutability](#immutability)
- [Object identifiers](#object-identifiers)

---

## Extensibility

### Problem

Source systems may contain data not covered by the standard, leading to under-publication of valuable information.

A group of users may have a need for additional fields not specified by the standard.

### Solution

An extension mechanism can allow data owners and data users to declare and document additional fields that they publish or would like to see published.

### Method

Extensions can be represented using a JSON Merge Patch.

An extension registry can help data owners and users to discover relevant extensions.

When extensions are declared in packaging meta-data, validators and other tools can check data against them.

### Example

The [OCDS Extension Template](https://github.com/open-contracting/standard_extension_template) and [extensions registry](http://standard.open-contracting.org/latest/en/extensions/) document a technical approach to extensions.

---


## CSV codelists

### Problem

The JSON Schema [`enum` keyword](https://json-schema.org/understanding-json-schema/reference/enum) restricts a field to a fixed set of values. When applied to field of the [`string` type](https://json-schema.org/understanding-json-schema/reference/string), the restricted set of values is known as a closed codelist.

Sometimes, it is desirable to specify a list of optional values for a field, whilst allowing values outside the list. Such lists of optional values are known as open codelists. JSON Schema does not provide a means to define an open codelist for a field.

Data publishers and users need to understand the meaning of the values in a codelist. However, JSON Schema does not provide a means to annotate enumerated values with metadata like human-readable titles and descriptions.

### Solution

For each open or closed codelist in the schema, document its codes with at least a title and description, in a CSV file.

### Method

For each field that references a codelist:

1. Document the codelist as a CSV file according to the [Open Data Services Codelist Schema](https://codelist-schema.readthedocs.io/).
1. Use the `codelist` keyword from the [Open Data Services JSON Schema Extension](https://json-schema-extension.readthedocs.io/) to specify the CSV file associated with the field.

### Example

The `status` field refers to a closed codelist. Its codes are documented in `status.csv`.

#### Schema

```json
{
    "properties": {
        "status": {
            "title": "Status",
            "type": [
                "string"
            ],
            "enum": [
                "planned",
                "active",
                "complete",
            ],
            "codelist": "status.csv",
        }
    }
}
```

#### CSV codelist

```csv
Code,Title,Description
planned,Planned,The process is planned
active,Active,The process is active
complete,Complete,The process is complete
```





