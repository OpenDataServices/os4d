Customisations
==============

An open data standard comprises an agreed-upon "common ground" around a particular subject or domain. This is a nuanced balance to strike - too little common ground, and the standard doesn't actually shape the data sufficiently to be used; too much and the standard is overly burdensome to use, or inappropriate for some potential users. 

In practical terms, this will affect which fields are required and which are optional, what constraints are placed on the contents of fields (such as length, conformance to a particular format, or reference to an external data source), and how fields are used together. If too few fields are required, then publishers of data may not actually provide the information that users need. 

A standard with too little common ground defined may also model concepts that are too abstract for their intended use case. This results in implementers having to create ways to use the standard in their own contexts, without them necessarily doing so in the same way. For example, a data standard that models lectures might not enforce using the provided way to model a course of lectures (because lectures can be standalone) - so users of that data then find that each publisher describes a course of lectures in a different way

The decisions that are made around modelling are a product of the immediate and future needs of the users of the standard - an elegant technical solution may be unworkable in practice, while a solution that's easy to publish is likely to be hard to use. 

In the communities around standards, it's common to find that there are members who are more aligned with each other than others. If they work in the same sub-sector of an industry or just conceive of the domain in the same way, then it's likely that they will be able to share more information with each other, and share that information in a more aligned way. Giving these sub-communities a way to do this in a structured way, that results in useful data for all users of the standard, is something that standards approach in different ways. 

## Extensions

The most formal way of making a standard customisable is to allow the creation of extensions. These are a set of technical constraints (usually schema) which can:
* Add fields
* Add additional constraints to existing fields
* Make optional fields compulsary 
* Combine new and existing fields and constraints into new models, such as a more specific instance of an abstract concept.

How these extensions are governed varies, but it can include:
* "Official" extensions which are part of the standard, but only applicable in certain circumstances 
* A way for a community to publish and maintain extensions, which might only be applicable to that community
* As a matter of good practice, individual publishers describing the modifications that they've made to the standard, or extra data that they've provided 

Typically, extensions aren't allowed to remove fields or constraints, as this would undermine the "common ground" that can usually be assumed around a standard. 

A standards initiative might create a list of known extensions and recommend their use, so that future publishers can align with existing ones when modelling the same concepts. 

## Profiles

Less formal than extensions, profiles are a collection of artefacts (potentially including schema, documentation, case studies and guidance) that describe how a  standard can be put to use in a particular way.

Profiles allow a group of users of a standard to describe the ways that they've resolved ambiguity or used flexibility in a standard, with the aim that others like them will follow the same approach.



