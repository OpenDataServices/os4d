# Standard development and maintenance

This handbook is about policy-related open data standards. These cover both **content** (what to publish) and **representation** (how to publish). 

The handbook describes maintaining data specifications that can support the realization of policy goals. 

```eval_rst
.. note:: 
  For example:

  A campaign calls for organizations to publish their pay ratios between men and women, and highest and lowest paid employees, in order to highlight and address pay inequality. This is the policy goal. 

  A schema is developed and documented, describing how to publish CSV files on an organizations website that provide these figures. This is the data specification. 

  Further documentation, data quality frameworks, and validation models are developed that can be used to check that the data provided using the specification is accessible, meaningful and actionable. Together with the specification, this constitutes the open data standard. 

  The success or not of this standard rests first on data availability and interoperability, and then on the data being usable, useful and ultimately put into use that can drive policy outcomes. 

```

The originators of a standard may have one or more objectives in mind, but in many cases a standard has a greater chance of being adopted when it responds to a wide range of user needs. 

Through an iterative development approach, looking 'supply side' and 'demand side', it is possible to develop standards that will work for wide range of different stakeholders. 

Most policy-related open data standards, once released, need ongoing maintenance. This can improve the standards based on learning, or in response to policy developments. and can make sure implementation guidance reflects the experience of standard users. This will often require clear governance.

## Contents

```eval_rst
.. toctree::
   :maxdepth: 3
   :glob:

   */index


```


* Getting started
  * When do you need a standard?
  * Skills and set-up
* Development
  * Origins
    * Research
    * Stakeholders
    * Supply side
    * Demand
      * User stories and use cases
    * Existing standards
  * Stages 
    * Conceptual framework
    * Alpha
    * Beta
    * Release candidate
    * Live
    * Revision
  * Schema and serialization
    * Extended JSON schema
    * Alternative serializations
    * Design patterns
    * Validation and additional checks
    * Extensibility and extensions
    * Codelist management
  * Social & policy design
    * Quality frameworks
    * Guidance
    * Implementation levels
  * Licensing
* Documentation 
  * Single Source of Truth
  * Sphinx for documentation
  * Automated Testing
  * Example data
  * Translating documentation
  * Designing good documentation 
    * Visual design
* Governance & revision
  * User contributions
    * License and contributor agreements
    * GitHub work flow
    * Issue management
  * Revisions
  * Conformance and deprecation policies
* Tooling
  * Conversion
  * Validation
  * Exploration
  * Helper tools


