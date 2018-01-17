# Documentation

Documentation is a vital part of any standard. In general, policy related open data standards need both:

* **Technical reference documentation**

and

* **Supporting documentation** 

These need to be approached differently, as the patterns below outline. 

```eval_rst
.. _section-documentation-technical:
```

## Technical approach

The documentation websites we maintain are static HTML sites generated using [sphinx](http://www.sphinx-doc.org/en/stable/index.html).

Sphinx has the ability to process and integrate documentation from different sources using directives. With Sphinx you can do things like gathering field descriptions from a schema file and compiling them as a table in a document, allowing you to use a component of a standard to document the standard itself.

We have created a number of [custom directives documented here](https://github.com/OpenDataServices/sphinxcontrib-opendataservices).

[reStructuredText](http://docutils.sourceforge.net/rst.html) is the native input format for Sphinx builds. However, with the bridge library recommommark, it is possible to use input files in markdown.

We maintain a custom [sphinx-base](https://github.com/OpenDataServices/sphinx-base) project to use when starting new documentation sites.

## Documentation patterns

```eval_rst
:ref:`patternpage-documentation`

* :ref:`pattern-ssot`
* :ref:`pattern-issue-tracker`
* :ref:`pattern-version-control-changelog`
* :ref:`pattern-governance-normative`
* :ref:`pattern-branch-release-management`
* :ref:`pattern-automated-build`
* :ref:`pattern-reproducible-builds`
* :ref:`pattern-deployment-rollback`
```
