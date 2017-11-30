# Documentation patterns

This section outlines a number of common patterns used to maintain documentation. 

* Single Source of Truth
* [Issue Tracker](pattern-issue-tracker)
* [Version control and changelogs for the schema and documentation](pattern-version-control-changelog)
* Governance process for normative changes to the schema and documentation 
* Branch and release management
* Automated build processes
* [Reproducible builds](pattern-reproducible-builds)
* [Deployment and rollback](pattern-deployment-rollback)





---
```eval_rst
.. _pattern-issue-tracker:
```
### Issue tracker

#### Problem

How do we keep track of suggested changes to the standard: new fields, bug fixes etc.

#### Solution

An issue tracker 

#### Method

We use GitHub issues.

#### Example

#### Related patterns

[Pattern name](pattern-slug); [Pattern name 2](pattern-slug-2); 

#### Related components

[Component name](component-slug); [Component name 2](component-slug-2); 







---
```eval_rst
.. _pattern-version-control-changelog:
```
### Version control and changelogs for the schema and documentation

#### Problem

It is important to know who changed what and when in a standard, for purposes of:

* Auditing changes that have been made
* Reverting changes
* Understanding the context that lead to the way the standard is now

#### Solution

Using **version control** for the standard schema and documentation provides a full version history of changes. Tools like git/GitHub provide tooling to inspect who editing a specific line of a file.  ("git blame") 

A **changelog** provides a less granular view, that is easier/quicker for humans to read, to get a general overview of what has changed.

Both version control commits and changelog entries can link to issues in an [issue tracker](pattern-issue-tracker), to give more info and discussion about how/why the change happened.

#### Method

#### Example

e.g. for OCDS we have:

```eval_rst
* Changelog - http://standard.open-contracting.org/latest/en/schema/changelog/
* History of every individual change to the OCDS docs/schema - https://github.com/open-contracting/standard/commits/1.1
* When was each line in any given file last changed - https://github.com/open-contracting/standard/blame/1.1/standard/schema/release-schema.json
```

#### Related patterns

[Pattern name](pattern-reproducible-builds);

#### Related components

[Versioning](component-versioning);






---
```eval_rst
.. _pattern-reproducible-builds:
```

### Reproducible builds

#### Problem

It is important to be able to see what the standard documentation used to look like:
* To audit changes where [version control or changelogs](pattern-version-control-changelog) are too confusing or not sufficient.
* To revert to a known good copy of the standard documentation, if something has gone wrong since.

In order to do this we need to be able to reproduce the same HTML (and other format) outputs for any given commit of the standard. 

[Version control](pattern-version-control-changelog) provides a basis to do this, with a full history of commits to the standard and docs. However, the build process for the documentation may rely on external scripts and resources that may change independently of the standard's revision process. 


#### Solution

The solution is to ensure that all external scripts and resources are pulled in at a specific version.


#### Method

Some specific examples of how we pull in specific versions:

* Pin Python dependencies to a specific version
* When pulling in other git repositories, ask for a specific commit or tag
* Commit files that are pulled from non-versioned platforms - e.g. commit all .po files instead of fetching them from Transifex during the build.
* Always build from a clean repository checkout to ensure that you haven’t got any extra files, or uncommitted changes. (Travis and readthedocs do this by default). 

Note that in some cases, reproducibility requirements might be relaxed. For example, a standard may be configured to always build with the latest version of an external theme, and so this would not be pinned. 

#### Example

#### Related patterns

[Version control](pattern-version-control-changelog); [Deployment and rollback](pattern-deployment-rollback); 

#### Related components

[Component name](component-slug); [Component name 2](component-slug-2); 








---
```eval_rst
.. _pattern-deployment-rollback:
```

### Deployment and rollback

#### Problem

Sometimes the build process for a new version of a standard can go wrong. 

Author-error can lead to mistakes in the standard, external dependencies may have been deleted from their source, or a key software service may be down. 

#### Solution

'live' releases of a standard should be manually deployed, and it should be possible to rollback changes at any time if problems are detected. 

#### Method

The build and deployment process for the standard copies compiled static HTML files to the server in a folder named based on the branch and date of build.

A symlink from the branch name, to this datestamped folder is then created. 

This allows an administrator with access to the server to instantly switch the symlink to point to any new or previous build as required.

The build process can be configured so that the symlink for full **releases** of the standard are only ever edited manually, preventing accidental changes to releases in use. 


#### Example

Currently we only use this approach for OCDS.

Here's the [section about copying file to the server in the OCDS handbook](https://ocds-standard-development-handbook.readthedocs.io/en/latest/standard/technical/deployment/#copy-the-files-to-the-live-server).

#### Related patterns

[Pattern name](pattern-slug); [Pattern name 2](pattern-slug-2); 

#### Related components

[Component name](component-slug); [Component name 2](component-slug-2); 

