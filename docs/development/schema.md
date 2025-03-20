# Data modelling and schema development

This page provides an overview of the steps involved in data modelling and schema development.

## Document a data model

A data model is an abstract model that organizes elements of data and standardises how they relate to one another and to the properties of real-world entities. A data model focuses on what data represents rather than how it is stored or exchanged.

Before authoring the schema for a standard and committing to specific implementation details, it is recommended to document a data mode to help stakeholders align on definitions and relationships.

The data model for a standard should be based on its [research](research.md) and conceptual framework. Documenting the data model for a standard involves identifying and defining the entities (classes), attributes (properties), relationships and permissable values (codelists) needed to the requirements, user stories and use cases the standard.

Developing a good schema is an art as much as a science. It requires sensitivity to the needs of both data producers and data users, and an understanding of the incentive structures that will drive adoption of a standard.

The recommended approach is to document the data model using the [standard development template](../tools.md#standard-development-template-airtable), which ensures that the data model is grounded through explicit links to the requirements, user stories and use cases met by each of its elements.

```{admonition} History
:class: dropdown

Previously, we moved straight from documenting a conceptual framework to documenting a schema. The reasons for documenting a data model are explored in the [technical scoping](https://github.com/open-contracting-archive/technical-approach?tab=readme-ov-file#data-model) for the Open Contracting Data Standard.

```

## Choose your publication formats

A publication format is a format in which data can be published by implementers of a standard. Common publication formats include:

* [JSON](https://www.json.org/json-en.html)
* [GeoJSON](https://datatracker.ietf.org/doc/html/rfc7946)
* [CSV](https://en.wikipedia.org/wiki/Comma-separated_values) and other tabular formats, such as XLSX and ODS.
* [XML](https://www.w3.org/TR/xml/)

Based on your [research](research.md), you need to decide which publication formats to support.

It is [best practice](https://www.w3.org/TR/dwbp/#MultipleFormats) for data publishers to provide data in multiple formats, so that as many users as possible can use the data without first having to transform it to their preferred format. Therefore, you should consider how to support publication in multiple formats.

On a technical level, the recommended approach is to use JSON as the primary format around which a standard's tools are built, and to provide support for other formats through conversion tooling. Depending on the user needs identified in your research, a standard's documentation site and tooling might present an alternative format, such as CSV, as the primary format.

Open Data Services' reusable tools for documenting, converting and validating data are built around JSON. If your research surfaces demand for a different primary format that cannot be supported through conversion to JSON, you should consider the potential costs associated with authoring new tooling.

```{admonition} Example: The Open Contracting Data Standard
:class: note

The primary publication format of the Open Contracting Data Standard is JSON, but CSV and spreadsheet formats are also supported via conversion tooling. For more information, see [Serialization (Open Contracting Data Standard Documentation)](https://standard.open-contracting.org/latest/en/guidance/build/serialization/#serialization).

```

```{admonition} Example: 360Giving
:class: note

The 360Giving Data Standard supports both spreadsheet and JSON formats, but most 360Giving data is published in spreadsheet format. Therefore, the documentation for the standard is primarily focussed on the spreadsheet format. For more information, see [Choosing your file format (360Giving Data Standard Documentation)](https://standard.threesixtygiving.org/en/latest/guidance/prepare-data/#choosing-your-file-format).

```

```{seealso}

* 🧩 [Conversion tools](../components/index.md#conversion-tools)
* 💡 [Spreadsheet first schema design](../patterns/schema.md#spreadsheet-first)

```

## Choose a schema language

A schema defines the meaning, structure and format of data.

Based on your chosen publication formats, you need to decide on a language in which to document the schema for a standard, 

For standards that support JSON as a publication format, the preferred approach is to use [JSON Schema](https://json-schema.org/) to document the canonical schema for the standard, specifically [JSON Schema Draft 2020-12](https://json-schema.org/draft/2020-12). Although less expressive than other schema languages, the constraints of JSON Schema enable a focus on keeping data simple enough for a wide range of users.

If you choose to support other publication formats alongside JSON, you should consider whether to provide secondary, derived schema for those formats.

```{admonition} Example: Open Referral
:class: note

The canonical schema for the Open Referral Data Specifications is documented using JSON Schema. However, a secondary schema is provided for the Tabular Data Package format, which is derived from the canonical schema. For more information, see [Serialization and Publication Formats (Open Referral Data Specifications Documentation)](http://docs.openreferral.org/en/latest/hsds/serialization.html).

```

```{admonition} History
:class: dropdown
Previously, the recommended approach was to use [JSON Schema Draft 4](https://json-schema.org/draft-04/draft-zyp-json-schema-04). However, Draft 2020-12 contains several useful features not available in Draft 4.
```

## Choose a codelist format

A codelist defines a set of permissable values for a field.

The recommended approach is to document codes, titles and descriptions in a CSV file, according to the [Open Data Services Codelist Schema](https://codelist-schema.readthedocs.io/).

```{seealso}
* 💡 [CSV codelists](../patterns/schema.md#csv-codelists)
```

## Choose your packaging formats

A packaging format is structued way of bundling together data and, sometimes, metadata. You can think of a packaging format as a container for multiple records, texts or documents.

Packaging formats aid interoperability and reuse by providing tool developers and analysts with predicatable and consistent approaches to grouping, streaming and pagination.

Based on your chosen publication formats and the requirements identified in your research, you need to decide on a packaging format or formats for each publication format.

The recommended approach is to consider providing:

* A small file and API response format for files that are small enough to fit into memory or are published via API.
* A bulk download format for files that are too large to fit into memory.

```{admonition} Example: The Open Fibre Data Standard
:class: note

The Open Fibre Data Standard supports publication in JSON, GeoJSON and CSV formats. For the JSON and GeoJSON formats, it provides containers for publishing one or more networks and options to support pagination and streaming:

Format | Small files and API responses | Streaming
--- | --- | ---
JSON | A JSON object with an embedded array of `Network` objects, with an optional `.links` object for pagination | A [JSON Lines](https://jsonlines.org/) file in which each line is an `Network` object.
GeoJSON | GeoJSON [feature collections](https://datatracker.ietf.org/doc/html/rfc7946#section-3.3), with an optional `.links` object for pagination | [Newline-delimited GeoJSON](https://stevage.github.io/ndgeojson/) files

```

```{seealso}
* 💡 [Packaging](../patterns/schema.md#packaging)
* 💬 [Packaging multiple networks · Issue #51 · Open-Telecoms-Data/open-fibre-data-standard](https://github.com/Open-Telecoms-Data/open-fibre-data-standard/issues/51)
* 💬 [Deprecate remaining package metadata and add bulk data format · Issue #1084 · open-contracting/standard](https://github.com/open-contracting/standard/issues/1084)
* 💬 [Add a metadata package schema · Issue #200 · GFDRR/rdl-standard](https://github.com/GFDRR/rdl-standard/issues/200)
```

## Author your schema and codelists

Authoring the schema and codelists for a standard involves documenting the standard's data model in your chosen schema language and codelist formats.

JSON Schema specifies a number of keywords to describe and constrain JSON data. For example, the `type` keyword is used to restrict a field to a specific type, like "string" or "number", whilst the `title` keyword is used to provide a human-readable title for a field.

As well as the keywords specified in JSON Schema, the [Open Data Services JSON Schema Extension](https://json-schema-extension.opendataservices.coop) specifies additional keywords for linking fields to [CSV codelists](../patterns/schema.md#csv-codelists),  and providing information about [deprecated fields](../patterns/schema.md#deprecated-fields).

```{seealso}
💡 [Schema patterns](../patterns/schema.md)
```