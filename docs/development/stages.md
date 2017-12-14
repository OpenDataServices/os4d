# Stages of standard development

The development of a standard should follow a number of stages. 

It is useful to think of standards development as a diamond-shaped process, each iteration of which begins at a narrowly-defined point, broadens out during the research and development phases and then narrows again as the standard becomes a release-ready product.

In this diamond model, we can identify four distinct phases: starting from a focussed problem; scoping out the original problem and broadening out from it to identify other use-cases and related data; developing the standard to accommodate as many of these use-cases as feasible (which may be far from the full set); and focussing down to a release version. 

```eval_rst
.. graphviz::

   digraph {
      graph[bgcolor="#ffffff00"]
      node[shape=diamond,width=2,height=2]
      "Problem\n\nScoping and Research\n\nDevelopment\n\nRelease"
   }

```

Development is an iterative process: going through stages of developing a broad understanding of the problem space that standard addresses, and stages of focussing down to develop concrete data elements and structures that address some aspect of that problem space. 

It is important to create artefacts at each stage that stakeholders can engage with and provide feedback on. A development process may go through the following stages:

* Conceptual framework
* Alpha
* Beta
* Release candidate
* Live
* Revision

```eval_rst
.. note:: 

    These stages are based on our experience and current practice. 

    We may want to explore aligning these stages with the Government Service Design Handbook and with other guidance on use of alpha, beta and release candidate labels.

```

## Conceptual framework

Before starting on schema development, it is important to develop a clear shared understanding of the focus of a standard. 

A conceptual framework or consultation document will set out the rationale for a standard, summarise initial supply and demand side research, and will present an initial sketch of the proposed structure for data, and methods for data sharing. This may include diagrams and descriptions that support dialogue between data specialists and subject matter experts. 

This document is important to secure agreement on issues such as:

* **The primary data element(s) in the standard**. For example, the [conceptual framework draft for the Open Contracting Data Standard](http://standard.open-contracting.org/legacy/r/0__1__0/) established that the primary element would be a 'contracting process', and advanced definitions of other key stages of a process. 
* **The target file formats and schema languages**. For example, the [conceptual framework for the Beneficial Ownership Data Standard](https://github.com/openownership/data-standard/issues/7) discusses potential data serializations.
* **The way data will be shared**. For example, addressing whether the standard will focus on flat files, API exchange of data, or some other approach. 

## Alpha

The alpha release of a standard provides the first view of how data shared using the standard might look. It will usually involve a draft schema, but the schema may not have all fields implemented, or may only have limited definitions of data. 

The alpha should be used as the target to test real-world data against. If real-world data cannot be easily represented using the alpha, or if data modelled according to it's structures is hard to analyse, this may indicate the need for structural changes. 

An alpha might be presented through a document, or through an initial documentation website. 

For example, [the alpha version of the Beneficial Ownership Data Standard](http://beneficial-ownership-data-standard.readthedocs.io/en/0.1-alpha/) is presented through a Sphinx documentation site, with embedded hypothes.is commenting tools to gather feedback.

## Beta

The beta release of a standard should be ready for early adopters to explore. The schema structure should be relatively stable, and fields and codelists should have descriptions. Draft documentation should also be in place.

Early adopters will need to recognise that they may have to make substantial changes to their data when the release candidate is available - but the standard should be usable enough to start developing export or import routines against. 

A beta will generally be published as a documentation website, and consultation feedback invited. 

From the beta onwards, a robust changelog should be kept of any changes to the standard. 

## Release candidate

A release candidate should be production ready for any adopters to use. 

The label 'Release Candidate' indicates that there may be some minor changes before a stable release is made, based on feedback from users adopting the standard. It may also indicate that the standard has not yet gone through a governance process to 'sign off' the release. 

Whilst minor changes might be made to field definitions or documentation at the release candidate stage, most major change suggestions would be taken forward into the next revision cycle. 

## Release / live

The released version of a standard is production ready, and no further changes will be made to it outside of a revision process. 

## Revision

A standard will periodically be revised. See [Governance and Revision](governance) for more information. 

```eval_rst
.. todo::

    Add cross-references
```
