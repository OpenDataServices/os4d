# Documentation patterns

This section outlines a number of common patterns used to maintain documentation. 

* [Single Source of Truth](pattern-ssot)
* [Issue Tracker](pattern-issue-tracker)
* [Version control and changelogs for the schema and documentation](pattern-version-control-changelog)
* [Governance process for normative changes to the schema and documentation](pattern-governance-normative)
* [Branch and release management](pattern-branch-release-management)
* [Automated build processes](pattern-automated-build)
* [Reproducible builds](pattern-reproducible-builds)
* [Deployment and rollback](pattern-deployment-rollback)



---
```eval_rst
.. _pattern-ssot:
```
## Single Source of Truth

### Problem

Consider a piece of documentation about how a field within the data standard works.
* This field will probably have a name and a description about how it is used.
* Someone will write that down somewhere.
* Someone else will share that with other people, via email, on a web page, in a pdf, in a presentation, as guidance in a data collection tool, etc
* Unless those people work directly from the same source (of truth) they may introduce small changes, errors, or even improvements as they reproduce the information.
* Further, the ‘master’ description may change over time. How do people know whether the new description, or the old one is the correct one to use? Which (trusted) source should they use? An email someone sent, or the PDF they have in their hand, or…?

### Solution

### Method

### Example

### Related patterns

[Pattern name](pattern-slug); [Pattern name 2](pattern-slug-2); 

### Related components

[Component name](component-slug); [Component name 2](component-slug-2); 



---
```eval_rst
.. _pattern-issue-tracker:
```
## Issue tracker

### Problem

How do we keep track of suggested changes to the standard: new fields, bug fixes etc.

### Solution

An issue tracker 

### Method

We use GitHub issues.

### Example

### Related patterns

[Pattern name](pattern-slug); [Pattern name 2](pattern-slug-2); 

### Related components

[Component name](component-slug); [Component name 2](component-slug-2); 







---
```eval_rst
.. _pattern-version-control-changelog:
```
## Version control and changelogs for the schema and documentation

### Problem

It is important to know who changed what and when in a standard, for purposes of:

* Auditing changes that have been made
* Reverting changes
* Understanding the context that lead to the way the standard is now

### Solution

Using **version control** for the standard schema and documentation provides a full version history of changes. Tools like git/GitHub provide tooling to inspect who editing a specific line of a file.  ("git blame") 

A **changelog** provides a less granular view, that is easier/quicker for humans to read, to get a general overview of what has changed.

Both version control commits and changelog entries can link to issues in an [issue tracker](pattern-issue-tracker), to give more info and discussion about how/why the change happened.

### Method

### Example

e.g. for OCDS we have:

```eval_rst
* Changelog - http://standard.open-contracting.org/latest/en/schema/changelog/
* History of every individual change to the OCDS docs/schema - https://github.com/open-contracting/standard/commits/1.1
* When was each line in any given file last changed - https://github.com/open-contracting/standard/blame/1.1/standard/schema/release-schema.json
```

### Related patterns

[Pattern name](pattern-reproducible-builds);

### Related components

[Versioning](component-versioning);




---
```eval_rst
.. _pattern-governance-normative:
```
## Governance process for normative changes to the schema and documentation

### Problem

There should be a [revision process](component-revision-process) for substantial changes to a standard, that require a new Major/minor release (see [Semantic Versioning](pattern-semver).
However, we also want to make minor fixes as part of a "patch" release.

### Solution

A lighter weight review process for "patch" releases.

### Method

### Example

For OCDS patch releases, we have a 7 day comment period. e.g. [https://groups.google.com/a/open-contracting.org/forum/#!topic/standard-discuss/oV5yG7fQF_0](https://groups.google.com/a/open-contracting.org/forum/#!topic/standard-discuss/oV5yG7fQF_0)

### Related patterns

[Normative and non-normative content](pattern-normative);

### Related components

[Revision process](component-revision-process);





---
```eval_rst
.. _pattern-branch-release-management:
```
## Branch and release management

### Problem

We want to provide multiple versions of the documentation and schema at one time.

### Solution

Branches corresponding to different deploys of the standard.
Tags for specific patch releases of the standard.

### Method


Deploying different copies of the docs for different versions of the standard.

Making it easy to deploy a copy for any branch.

### Example

OCDS:
Branches are named: `Major.minor(-dev)` e.g. `1.0`, `1.1`, `1.0-dev`, `1.1-dev`
Releases are named: `Major__minor__path` e.g. `1__0__3`, `1__1__2`

### Related patterns

[Automated build processes](pattern-automated-build);

### Related components






---
```eval_rst
.. _pattern-automated-build:
```
## Automated build processes

### Problem

Normally, building the standard documentation and publishing the schema is a complicated process involving many steps to run and test.
To save time, these need to be run automatically. Feedback needs to be given to the documentation or schema writers to check if their changes look correct. 
Also, checks regarding the integrity of the documentation and schema need to be run for every change made.

### Solution

Use continuous integration to run the tests and publish a version of the docs for every branch in the standard documentation. 
This means that the integrity tests are run and you can see version of that branch schema/documentation online.

### Method

We use Travis on github, both to run the tests and to push a built version of the docs/schema to a development server. We store private server access details on github outside our public build scripts.

### Example

For OCDS we have a [travis script](https://github.com/open-contracting/standard/blob/1.1-dev/.travis.yml) that runs the tests and deploys all the branches.

### Related patterns

[Branch and release management](pattern-branch-release-management);

### Related components



---
```eval_rst
.. _pattern-reproducible-builds:
```
## Reproducible builds

### Problem

It is important to be able to see what the standard documentation used to look like:
* To audit changes where [version control or changelogs](pattern-version-control-changelog) are too confusing or not sufficient.
* To revert to a known good copy of the standard documentation, if something has gone wrong since.

In order to do this we need to be able to reproduce the same HTML (and other format) outputs for any given commit of the standard. 

[Version control](pattern-version-control-changelog) provides a basis to do this, with a full history of commits to the standard and docs. However, the build process for the documentation may rely on external scripts and resources that may change independently of the standard's revision process. 


### Solution

The solution is to ensure that all external scripts and resources are pulled in at a specific version.


### Method

Some specific examples of how we pull in specific versions:

* Pin Python dependencies to a specific version
* When pulling in other git repositories, ask for a specific commit or tag
* Commit files that are pulled from non-versioned platforms - e.g. commit all .po files instead of fetching them from Transifex during the build.
* Always build from a clean repository checkout to ensure that you haven’t got any extra files, or uncommitted changes. (Travis and readthedocs do this by default). 

Note that in some cases, reproducibility requirements might be relaxed. For example, a standard may be configured to always build with the latest version of an external theme, and so this would not be pinned. 

### Example

### Related patterns

[Version control](pattern-version-control-changelog); [Deployment and rollback](pattern-deployment-rollback); 

### Related components

[Component name](component-slug); [Component name 2](component-slug-2); 








---
```eval_rst
.. _pattern-deployment-rollback:
```

## Deployment and rollback

### Problem

Sometimes the build process for a new version of a standard can go wrong. 

Author-error can lead to mistakes in the standard, external dependencies may have been deleted from their source, or a key software service may be down. 

### Solution

'live' releases of a standard should be manually deployed, and it should be possible to rollback changes at any time if problems are detected. 

### Method

The build and deployment process for the standard copies compiled static HTML files to the server in a folder named based on the branch and date of build.

A symlink from the branch name, to this datestamped folder is then created. 

This allows an administrator with access to the server to instantly switch the symlink to point to any new or previous build as required.

The build process can be configured so that the symlink for full **releases** of the standard are only ever edited manually, preventing accidental changes to releases in use. 


### Example

Currently we only use this approach for OCDS.

Here's the [section about copying file to the server in the OCDS handbook](https://ocds-standard-development-handbook.readthedocs.io/en/latest/standard/technical/deployment/#copy-the-files-to-the-live-server).

### Related patterns

[Pattern name](pattern-slug); [Pattern name 2](pattern-slug-2); 

### Related components

[Component name](component-slug); [Component name 2](component-slug-2); 

