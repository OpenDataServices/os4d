# Schema development

This section outlines a number of the pattens we commonly use to develop the schema for an open data standard.

```{admonition} Learning / reflection
class: note
We currently jump straight from the conceptual framework document, to working up the data model and schema for a standard in a schema language. 

This differs [from the approach proposed here](https://github.com/open-contracting-archive/technical-approach#data-model) of maintaining the **data model** as a narrative document, only then given form by a schema as a reference implementation. 

```

## Choose your publication formats

A publication format is a format in which data can be published by implementers of a standard. Common publication formats include:

* [JSON]()
* [GeoJSON]()
* [CSV]() and other tabular formats, such as XLSX and ODS.
* [XML]()

Based on your [research](research.md), you need to decide which publication formats to support.

It is best practice for data publishers to provide data in multiple formats, so that as many users as possible can use the data without first having to transform it to their preferred format. Therefore, you should consider how to support publication in multiple formats.

On a technical level, the preferred approach is to use JSON as the format around which a standard's tools are built, and to provide support for other formats through conversion tooling. However, depending on user needs, a standard's documentation site and tooling might present a tabular format, such as CSV, as the primary format.

```{admonition} Examples
:class: note

The primary publication format of the Open Contracting Data Standard is JSON, but CSV and spreadsheet formats are also supported via conversion tooling. For more information, see [Serialization (Open Contracting Data Standard Documentation)](https://standard.open-contracting.org/latest/en/guidance/build/serialization/#serialization).

The 360Giving Data Standard supports both spreadsheet and JSON formats, but most 360Giving data is published in spreadsheet format. Therefore, the documentation for the standard is primarily focussed on the spreadsheet format. For more information, see [Choosing your file format (360Giving Data Standard Documentation)](https://standard.threesixtygiving.org/en/latest/guidance/prepare-data/#choosing-your-file-format).

```

```{seealso}

* 🧩 [Conversion tools](../components/index.md#conversion-tools)
* 💡 [Spreadsheet first](../patterns/schema.md#spreadsheet-first)

```

## Choose a schema language

A schema defines the meaning, structure and format of data.

Based on your chosen publication formats, you need to decide on a language in which to document the schema for a standard, 

For standards that support JSON as a publication format, the preferred approach is to use [JSON Schema](https://json-schema.org/) to document the canonical schema for the standard, specifically [JSON Schema Draft 2020-12](https://json-schema.org/draft/2020-12). Although less expressive than other schema languages, the constraints of JSON Schema enable a focus on keeping data simple enough for a wide range of users.

```{note} 
:class: dropdown
Previously, the recommended approach was to use [JSON Schema Draft 4](https://json-schema.org/draft-04/draft-zyp-json-schema-04). However, Draft 2020-12 contains several useful features not available in Draft 4.
```

JSON Schema specifies a number of keywords to describe and constrain JSON data. For example, the `type` keyword is used to restrict a field to a specific type, like "string" or "number", whilst the `title` keyword is used to provide a human-readable title for a field.

As well as the keywords specified in JSON Schema, the [Open Data Services JSON Schema Extension]() specifies additional keywords for linking fields to [CSV codelists](../patterns/schema.md#csv-codelists),  and providing information about [deprecated fields](../patterns/schema.md#deprecated-fields).


### Merge strategies

The Open Contracting Data Standard describes an approach to merge together releases of data from different point in time. We add a number of properties to indicate how merging should be approached.

- `omitWhemMerged`
- `wholeListMerge`
- `versionId`

Behaviour for these is [described in the OCDS documentation](http://standard.open-contracting.org/1.1/en/schema/merging/#merging-rules).

If you choose to support other publication formats alongside JSON, you should consider whether to provide secondary, derived schema for those formats.

```{admonition} Examples
:class: note

The canonical schema for the Open Referral Data Specifications are documented as a JSON Schema. However, the standard also supports Tabular Data Package as a publication format and provides a secondary Tabular Data Package schema, known as a package descriptor, which is derived from the canonical JSON Schema. For more information, see [Serialization and Publication Formats (Open Referral Data Specifications Documentation)](http://docs.openreferral.org/en/latest/hsds/serialization.html).

```

```{seealso}

* 🧩 [Schema](../components/index.md#schema)

```

## Choose a codelist format

A codelist defines a set of permissable values for a field.

Alongside JSON Schema, our preferred approach is to document codes, titles and descriptions in a CSV file.
We generally use simple CSV files to represent codelists.

We have a number of extensions to JSON Schema 0.4 we use (documented below).

## Choose your packaging formats





## Design patterns

Developing a good schema is an art as much as a science. It requires sensitivity to the needs of both data producers and data users, and an understanding of the incentive structures that will drive adoption of a standard.

```{seealso}
[Schema patterns](../patterns/schema.md)
The following section provides links to a non-exhaustive set of design patterns that can be drawn upon when developing a schema. 
```
