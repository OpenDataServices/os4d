# Validator and Quality Tool

A data validator and quality tool checks that data conforms to a standard, providing both pass/fail validation against the standard's schema and codelists, and additional checks on data quality, coverage, and adherence to best practices.

Implementers can use a validator to get feedback on the quality of their draft and published data. They can also integrate validation into their data publication pipelines. Data users can use a validator to identify data quality issues that might impact their analysis. Similarly, data registries can incorporate validation results to provide a summary of quality issues in each dataset. Furthermore, support staff can use a validator to provide feedback and guidance to implementers.

To cater to different audiences, validators can offer various interfaces. For example, a user-friendly web application for implementers to upload data and receive immediate feedback, a command-line tool for developers to run local checks, and a software library that developers can embed within their data pipelines.

For more information about how schema validation relates to additional checks, see [author your schema, codelists and additional rules](../development/schema.md#author-your-schema-codelists-and-additional-rules).

## Prioritisation Factors

* Specific error reporting and user experience: If implementers need context-specific error messages and guidance, target feedback or multiple output formats (e.g. human-readable reports and machine-readable JSON for integration with other tools).
* Complexity beyond the schema language: If the standard involves additional rules that cannot be expressed in its schema language, validation of codelists specified outside the schema, or semantic validation of the data beyond its structure and format.

## Deprioritisation Factors

* Simplicity: If the standard is purely structural, can be fully expressed in a schema language, and validated by existing tooling, an 'off-the-shelf- validator might be sufficient.
* Technical audience:  If the standard's audience is developers with experience of standardising data, existing validation libraries or command-line tools might be sufficient.

## Examples

The Open Contracting Data Standard (OCDS) provides a web-based validator (the [OCDS Data Review Tool](https://review.standard.open-contracting.org/)) and a command-line tool and Python library ([Lib CoVE OCDS](https://github.com/open-contracting/lib-cove-ocds)).

360Giving provides a web-based [Data Quality Tool](https://dataquality.threesixtygiving.org/).

## Related components

* [Schema](schema)
* [Required fields](required_fields)
* [Codelists](codelists)
* [Registry of datasets](registry_of_datasets)

## Related patterns

* [Permissive schema](../patterns/schema.md#permissive-schema)
