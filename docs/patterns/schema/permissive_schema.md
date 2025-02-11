# Permissive schema
{bdg-link-primary-line}`Schema pattern <index.html#schema>`

A schema can enforce validation rules. However, when data owners encounter lots of validation errors, it can act as a barrier to standard adoption.

When a data owner does not have data to fill in a required field, or to fill it in the desired format, they may be prevented from using the standard by strict validation.

## Recommended approach

Minimise the use of `required` properties and validation rules, unless absolutely necessary to the technical functioning of the standard.

Indicate recommend fields through guidance, implementation tools and validation platforms.

This builds on the idea of designing to allow for '[the tussle](http://conferences.sigcomm.org/sigcomm/2002/papers/tussle.pdf)'. A policy-related standard provides the framework within which different data producers and users can tussle over the exact data that should be provided in a particular context.

(The applicability of this pattern varies substantially based on the policy context of a standard.)

## Method

[Additional checks](../components/index.md#rules-for-additional-checks) can be used to report data quality issues to users in a validator.

A mapping document that indicates which fields, or field-value pairs are required for particular use-cases can guide contextualised recommendations about what to publish.

```{admonition} Example
:class: tip

360 Giving [specifies](https://github.com/ThreeSixtyGiving/standard/blob/master/schema/360-giving-schema.json#L430) just eight required fields on the main grants table.
```

```{seealso}

Patterns:

- [Quality framework](../components/index.md#progressive-enhancement-framework)
- [Use-case mapping](../components/index.md#use-case-mapping)

Components:

- [Rules for additional checks](../components/index.md#rules-for-additional-checks)
- [Online validator](../components/index.md#online-validator)