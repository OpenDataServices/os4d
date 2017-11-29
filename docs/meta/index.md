# Meta

This section provide detail on how to maintain this guide. 

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

Anchors for components should be prefixed `component-`

## Patterns

Throughout the documentation we include common [**patterns**](https://en.wikipedia.org/wiki/Pattern_language) for standards.

A pattern consists of the following elements:

* A slug (entered using `.. _slug` in an `eval_rst` block)
* Title
* Problem
* Solution - what's the solution to this problem
* Method - how to do this
* Example
* Related patterns

These should be written using a Level 3 heading for the pattern, and level four headings for each element (from problem onwards) using the template below.


````sphinx
### Title

  ```eval_rst
  .. _pattern-slug:
  ```

#### Problem

#### Solution

#### Method

#### Example

#### Related patterns

[Pattern name](pattern-slug); [Pattern name 2](pattern-slug-2); 

#### Related components

[Component name](component-slug); [Component name 2](component-slug-2); 

````
