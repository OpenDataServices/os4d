# Documentation patterns

This section outlines a number of common patterns used to maintain documentation. 

* Single Source of Truth
* Version control for the schema and documentation
* Governance process for normative changes to the schema and documentation 
* Branch and release management
* Automated build processes
* Reproducible builds X
* Deployment and rollback X


## Reproducible builds

### What and why?

Using git version control for the standard schema and documentation provides a full version history of changes. 

The build process for documentation may rely on external scripts and resources that may change independently of the standard's revision process. 

It is important to be able to reproduce the same HTML (and other format) outputs for any given commit of the standard. 

### How?

The following steps can help improve the reproducibility of builds:

* Commit files that are pulled from non-versioned platforms - e.g. commit all .po files instead of fetching them from Transifex during the build.
* Pin Python dependencies to a specific version
* When pulling in other git repositories, ask for a specific commit or tag
* Always build from a clean repository checkout to ensure that you haven’t got any extra files, or uncommitted changes. (Travis and readthedocs do this by default). 

Note that in some cases, reproducibility requirements might be relaxed. For example, a standard may be configured to always build with the latest version of an external theme, and so this would not be pinned. 

### Where? (Examples)

MINI-CASE STUDY AND POINTER TO CODE EXAMPLE

(IN A CLONE OF THIS FOR A PARTICULAR STANDARD, THIS WOULD POINT TO THE SPECIFIC CODE)


## Deployment and rollback

### What and why?

Sometimes the build process for a new version of a standard can go wrong. 

Author-error can lead to mistakes in the standard, external dependencies may have been deleted from their source, or a key software service may be down. 

For this reason, the 'live' releases of a standard should be manually deployed, and it should be possible to rollback changes at any time if problems are detected. 

### How? 

The build and deployment process for the standard copies compiled static HTML files to the server in a folder named based on the branch and date of build.

A symlink from the branch name, to this datestamped folder is then created. 

This allows an administrator with access to the server to instantly switch the symlink to point to any new or previous build as required.

The build process can be configured so that the symlink for full **releases** of the standard are only ever edited manually, preventing accidental changes to releases in use. 

### Where? (Examples)

MINI-CASE STUDY AND POINTER TO CODE EXAMPLE

(IN A CLONE OF THIS FOR A PARTICULAR STANDARD, THIS WOULD POINT TO THE SPECIFIC CODE)
