# How to maintain this guide

## Terminology

We talk about 'sharing data' to accommodate cases where data is published as open data, or exchanged between non-open systems. This should generally be preferred in this guide to the term 'data publication'.

ADD SOMETHING ON HOW WE HANDLE MUST, COULD, SHOULD etc.

## Content types

THIS IS DRAFT.

Pages may contains the following elements:

* Narrative text
* Checklists
* Examples - such as example Contributor Agreement text
* Related articles
* Patterns
* 'Consider' - a set of boxes that should be filled in for each particular standard.

Pages should be tagged as one of:

* Policy
* Technical process
* Non-technical process
* Guidance

## Roles
The documentation will refer to a range of roles that exist during standard development.

Anchors for these should be prefixed `role-`

## Components

Throughout the documentation we describe a range of components involved in developing and maintain a standard. These should all have a title, short description, and then a longer description where appropriate.

A component consists of the following elements:
* A slug (entered using `.. _slug` in an `eval_rst` block)
* Title
* Summary
* Description
* Examples
* Prioritisation Factors
* Deprioritisation Factors
* Related Patterns & Components

These should be written using a Level 3 heading for the component, and level four headings for each element (from Summary onwards) using the template below.

Anchors for components should be prefixed `component-`


````sphinx
```eval_rst
.. _component-slug:
```

### Title

#### Summary

#### Description

#### Examples

#### Prioritisation Factors

#### Deprioritisation Factors

#### Related components

[Component name](component-slug); [Component name 2](component-slug-2);

#### Related patterns

[Pattern name](pattern-slug); [Pattern name 2](pattern-slug-2);

````

```eval_rst
..
    Include these here so I don't get broken link warnings:
.. _pattern-slug:
.. _pattern-slug-2:
.. _component-slug:
.. _component-slug-2:
```

## Patterns

Throughout the documentation we include common [**patterns**](https://en.wikipedia.org/wiki/Pattern_language) for standards.

A pattern consists of the following elements:

* A slug (entered using `.. _slug` in an `eval_rst` block)
* Title
* Problem
* Solution - what's the solution to this problem
* Method - how to do this
* Example
* Related Patterns & Components

These should be written using a Level 3 heading for the pattern, and level four headings for each element (from problem onwards) using the template below.


````sphinx
```eval_rst
.. _pattern-slug:
```

## Title

### Problem

### Solution

### Method

### Example

### Related patterns

```eval_rst
:ref:`pattern-slug`; :ref:`pattern-slug-2`;
```

### Related components

```eval_rst
:ref:`component-slug`; :ref:`component-slug-2`;
```


````
