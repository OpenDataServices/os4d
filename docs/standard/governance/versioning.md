# Versioning 

Standards change: as a result versioning is an important part of many standards. This section documents common versioning patterns. 

## Patterns

### Normative and non-normative content

```eval_rst
.. _pattern-normative:
```

#### Problem

Some elements of a standards' documentation can be changed without changing what the standard means. Other elements may have consequences that may substantially affect data owners and users - and which should be subject to a governance and review process. 

#### Solution

Clearly separate **normative** and **non-normative** sections of documentation. 

Normative sections contain rules that an implementer of the standard MUST follow.

Non-normative sections contain explanation, guidance and context that MAY be useful to implementers, but is not binding for adoption of the standard. 

The IETF use the distinction between [normative and informative](https://www.ietf.org/iesg/statement/normative-informative.html)

#### Method

#### Example

#### Related patterns

#### Related components


### Version numbers

```eval_rst
.. _pattern-version-number:
```

#### Problem

Parsers, validators and other tools need to know what version of the schema a particular data file is using.

#### Solution

The [package](pattern-packaging) meta-data for any file should include a `version` field with a version number. 

#### Method

#### Example

From version 1.1, OCDS included a `version` field. This must contain only `MAJOR.MINOR' version (not 'MAJOR.MINOR.PATCH')

#### Related patterns

[Semantic versioning](pattern-semver)

#### Related components



### Release candidate versions

```eval_rst
.. _pattern-release-candidate:
```

#### Problem

When a new version of a standard is released, and implementers start to use it, small problems are often discovered. These may require changes to the standard, sparking a whole new iteration of the governance process.

#### Solution

Major or minor versions of a standard may be provided as a 'Release Candidate' for a period of time, before, subject to no substantial changes being required, they can then be turned into a release version. 

See [release candidate (Wikipedia)](https://en.wikipedia.org/wiki/Software_release_life_cycle#Release_candidate). 

#### Method

#### Example

#### Related patterns

#### Related components



### Semantic Versioning

```eval_rst
.. _pattern-semver:
```

#### Problem



#### Solution

#### Method

#### Example

#### Related patterns

[Pattern name](pattern-slug); [Pattern name 2](pattern-slug-2); 

#### Related components

[Component name](component-slug); [Component name 2](component-slug-2); 





### Backwards compatibility 

```eval_rst
.. _pattern-compatibility:
```

#### Problem

#### Solution

#### Method

#### Example

#### Related patterns

[Pattern name](pattern-slug); [Pattern name 2](pattern-slug-2); 

#### Related components

[Component name](component-slug); [Component name 2](component-slug-2); 






### Conformance statement

```eval_rst
.. _pattern-conformance:
```

#### Problem

#### Solution

#### Method

#### Example

#### Related patterns

[Pattern name](pattern-slug); [Pattern name 2](pattern-slug-2); 

#### Related components

[Component name](component-slug); [Component name 2](component-slug-2); 



