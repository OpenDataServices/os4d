# Schema development

This section outlines a number of the pattens we commonly use to develop the schema for an open data standard.

```eval_rst
.. admonition:: Learning / reflection
  :class: note

  .. markdown::

    We currently jump straight from the conceptual framework document, to working up the data model and schema for a standard in a schema language. 

    This differs [from the approach proposed here](https://github.com/open-contracting-archive/technical-approach#data-model) of maintaining the **data model** as a narrative document, only then given form by a schema as a reference implementation. 

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
.. todo::

    We could include a simple example here.

```

[Flatten-tool](http://flatten-tool.readthedocs.io/en/latest/unflatten/#human-friendly-headings-using-a-json-schema-with-titles) can use the titles in a schema to provide 'friendly' column headings, and with use of a [metatab](http://flatten-tool.readthedocs.io/en/latest/unflatten/#metadata-tab) also supports packaging meta-data and options to control how spreadsheets are parsed. 

## Extended JSON schema

We use a number of custom properties in our JSON Schema implementation. A [patch against JSON Schema 0.4 to include these is found here](https://github.com/open-contracting/standard/blob/6e538252dd08344222b5cd16b864ed0a2a866197/standard/schema/metaschema/meta-schema-patch.json).

```eval_rst
.. todo::

    We need to document the fields in our schema patch.
    
    We should also explore moving our JSON schema meta-schema patch to our own opendataservices repository and managing it there.

```

### Codelist properties

* `codelist` - the filename of a .csv file that contains at least a `Code` column. Used by the CoVE validator to check for acceptable values.
* `openCodelist` - a boolean value to indicate whether values can **only** come from the codelist, or whether additional values not on the codelist are permitted. When `openCodelist` = 'true' then encountering a value not on the codelist should generate a warning. when `openCodelist` = 'false' then encountering a value not on the codelist should generate an error. 

```eval_rst
.. _section-deprecation-properties:
```

### Deprecation properties

> "deprecation is the discouragement of use of some terminology, feature, design, or practice; typically because it has been superseded or is no longer considered efficient or safe – but without completely removing it or prohibiting its use."

See: [Deprecation (Wikipedia)](https://en.wikipedia.org/wiki/Deprecation)

* `deprecated` - and object to indicate that the field is deprecated, consisting of fields for:
  * `description` - a message that explains the deprecation, and that should be presented by validators to any publisher using this field.
  * `deprecatedVersion` - a string indicating the version in which the field was first deprecated. 

We also use the column title `Deprecated` with a version number as the cell value in codelist CSV files when a code has been deprecated. 

```eval_rst
.. todo::

  .. markdown::

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

The following section provides links to a non-exhaustive set of design patterns that can be drawn upon when developing a schema. 

```eval_rst

:ref:`patternpage-schema`:

* :ref:`pattern-top`
* :ref:`pattern-permissive`
* :ref:`pattern-object-id`
* :ref:`pattern-spreadsheet`
* :ref:`pattern-deprecation`
* :ref:`pattern-vocabularies`
* :ref:`pattern-packaging`
* :ref:`pattern-immutability`
* :ref:`pattern-merging`
* :ref:`pattern-extensibility`


.. todo::

    Extra sections to add:

    * Validation and additional checks
    * Extensibility and extensions
    * Codelist management

```
