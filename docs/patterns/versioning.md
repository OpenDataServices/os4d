# Versioning Patterns

Standards change: as a result versioning is an important part of many standards. This section documents common versioning patterns.

```{contents}
---
depth: 2
---
```

## Normative and non-normative content

### Problem

Some elements of a standards' documentation can be changed without changing what the standard means. Other elements may have consequences that may substantially affect data owners and users - and which should be subject to a governance and review process.

### Solution

Clearly separate **normative** and **non-normative** sections of documentation.

Normative sections contain rules that an implementer of the standard MUST follow.

Non-normative sections contain explanation, guidance and context that MAY be useful to implementers, but is not binding for adoption of the standard.

The IETF use the distinction between [normative and informative](https://www.ietf.org/iesg/statement/normative-informative.html)

### Method

### Example

### Related patterns

### Related components

## Version numbers

### Problem

Parsers, validators and other tools need to know what version of the schema a particular data file is using.

### Solution

The [package](schema.md#packaging) meta-data for any file should include a `version` field with a version number.

### Method

### Example

From version 1.1, OCDS included a `version` field. This must contain only \`MAJOR.MINOR' version (not 'MAJOR.MINOR.PATCH')

### Related patterns

[Semantic versioning](#semantic-versioning)

### Related components

## Release candidate versions

### Problem

When a new version of a standard is released, and implementers start to use it, small problems are often discovered. These may require changes to the standard, sparking a whole new iteration of the governance process.

### Solution

Major or minor versions of a standard may be provided as a 'Release Candidate' for a period of time, before, subject to no substantial changes being required, they can then be turned into a release version.

See [release candidate (Wikipedia)](https://en.wikipedia.org/wiki/Software_release_life_cycle#Release_candidate).

## Version management

### Problem

As more versions of a standard are released it's important that they are archived and managed carefully. This is especially important where several different versions of the standard are being used at the same time. There may also be cases where patches need to be applied across several versions simultaneously - such as minor changes to schema documentation.

### Solution

When using Git for version control, we recommend the [approach](https://ocds-standard-development-handbook.readthedocs.io/en/latest/standard/technical/repository.html#branches-and-tags) used in the Open Contracting Data Standard (OCDS):

- A 'live' [branch](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/about-branches) for each minor version, named in `MAJOR.MINOR` format, e.g. `1.1`
- A [tag](https://git-scm.com/book/en/v2/Git-Basics-Tagging) for each release, named in `MAJOR__MINOR__PATCH` format, e.g. `1.1.0`.

This use of branches and tags allows documentation to change between versions, whilst ensuring schema isn't changed between versions. It also allows for the simultaneous maintenance, including patching, of multiple live versions.

For example, the published OCDS documentation has versions on different MAJOR.MINOR [branches](https://github.com/open-contracting/standard/branches/all) (e.g. https://standard.open-contracting.org/1.0/en/), whereas the published OCDS schema has versions on different MAJOR\_\_MINOR\_\_PATCH [tagged releases](https://github.com/open-contracting/standard/tags) (e.g. https://standard.open-contracting.org/schema/1\_\_0\_\_1/release-schema.json).

The approach is described in further detail below.

#### Branch structure

Use branches to maintain multiple versions and to isolate development work on specific features and versions.

For each released minor version, maintain:

- A 'live' branch containing the deployed revision of the standard documentation, named after the version in `MAJOR.MINOR` format, e.g. `1.1`.
- A 'dev' branch for staging non-normative changes, named after the version in `MAJOR.MINOR` format with a `-dev` suffix, e.g. `1.1-dev`.

For each pre-release minor version under active development, maintain a `dev` branch for staging backwards-compatible normative changes to the previous minor version, named after the version in `MAJOR.MINOR` format, e.g. `1.2-dev`

For each pre-release patch version under active development, maintain a `dev` branch for staging backwards-compatible bug fixes to normative content, named after the version in `MAJOR.MINOR.PATCH` format, e.g. `1.1.1-dev`.

Feature or topic branches should branch off and be merged into the relevant `-dev` branch.

For example, a standard with released versions 1.0 and 1.1, and with version 1.2 under active development would use the following branch structure:

- `1.0`: Contains the deployed revision of version 1.0
- `1.1`: Contains the deployed revision of version 1.1
  - `1.1-dev`: Used to stage non-normative changes to version 1.1
  - `1.1.1-dev`: Used to stage backwards-compatible bug fixes to normative content in version 1.1
  - `1.2-dev`: Used to stage backwards-compatible normative changes to version 1.1
    - `new-field`: Used to isolate development work on a new field to be added in version 1.2.

#### Branch protection

`X.X` and `X.X-dev` branches should be [protected](https://help.github.com/articles/about-protected-branches/).

#### Tags and releases

For each release, create a Git tag named after the version in `MAJOR__MINOR__PATCH` format, e.g. `1__1__0`.

#### Documentation site

Build a version of the standard's documentation from each live branch and publish it at a URL that includes the branch name (the version number in `MAJOR.MINOR` format), e.g. http://example.com/standard/1.0/.

Display only minor versions on the documentation site.

#### Schema

For each Git tag, publish a version of the schema at a URL that includes the tag name (version number in `MAJOR.MINOR.PATCH` format), e.g. http://example.com/standard/1\_\_0\_\_0/schema.json. When using [Read the Docs](https://about.readthedocs.com/) for deployment, this can be achieved by building and hiding a version of the documentation site for each Git tag, as in the [Risk Data Library Standard](https://docs.riskdatalibrary.org/en/latest/).

## Semantic Versioning

### Problem

### Solution

### Method

### Example

### Related patterns

### Related components

## Backwards compatibility

### Problem

### Solution

### Method

### Example

### Related patterns

### Related components

## Conformance statement

### Problem

### Solution

### Method

### Example

### Related patterns

### Related components
