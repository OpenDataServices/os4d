# Conversion Tools

## Summary

Allowing conversion between serialisation formats (e.g. CSV -> XML; JSON -> XLS)

## Description

Data standards often use structured data formats such as JSON or XML to give more flexibility in modelling and to allow validation against schema. Typically, developers prefer to work with structured data formats as they are easier to work with in programs. However, JSON and XML aren't very human-friendly, and people working with data in many domains prefer to use flat representations of data such as CSV and XLSX spreadsheets, both for publishing and manipulating data. Conversion tools allow conversion between the formats, to allow the standard and developers to retain the benefits of a structured data format and users to continue to be able to engage with the data in a way that they're comfortable with.

## Examples

### Flatten Tool

We maintain [Flatten Tool](http://flatten-tool.readthedocs.io), a Python library and command-line interface for converting data between structured formats like JSON and XML and tabular formats like CSV and XLSX. It can use a standard's schema to handle data types correctly, to produce human-readable column headings, and to structure tabular data helpfully.

## Prioritisation Factors

- If the standard uses a structured data format, while data publishers and/or users prefer flat representations.

## Deprioritisation Factors

- If the standard uses a data format that is the same as both publishers and users prefer to use


