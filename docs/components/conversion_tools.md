# Conversion Tools

This component describes the ability to convert data between different serialization formats. Data standards frequently utilise structured formats like JSON or XML to provide greater modelling flexibility and enable schema validation, which developers generally find easier to manage programmatically. However, JSON and XML are not particularly user-friendly; therefore, many users prefer flat representations like CSV files or XLSX spreadsheets for data publication and manipulation. Conversion tools bridge this gap, allowing standards and developers to leverage the advantages of structured data formats, while simultaneously enabling users to interact with the data in a familiar and accessible manner.


## Examples

### Flatten Tool

We maintain [Flatten Tool](http://flatten-tool.readthedocs.io), a Python library and command-line interface for converting data between structured formats like JSON and XML and tabular formats like CSV and XLSX. It can use a standard's schema to handle data types correctly, to produce human-readable column headings, and to structure tabular data helpfully.

## Prioritisation Factors

- If the standard uses a structured data format, while data publishers and/or users prefer flat representations.

## Deprioritisation Factors

- If the standard uses a data format that is the same as both publishers and users prefer to use


