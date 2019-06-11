# Getting started

```eval_rst
.. _getting_started:
```

## Linking goals and design

The design of a standard should reflect its goals and the policy context it is introduced into. 

Standards can help to:

* Promote **good practice** in the collection and sharing of data;
* Enable **data interoperability** and exchange between systems;
* Promote **comparability** between datasets;
* Encourage **publication** of data, by making it easier to prepare and share data;
* Support **measurement** and assessment of data quality.

We think of effective open data standards as tools of **mass collaboration**, providing a common reference point for different groups to coalesce around, facilitating their work together on creating and using data for social impact. 

```eval_rst
.. admonition:: Example
  :class: note

  The International Aid Transparency Initiative (IATI) standard promotes interoperability of aid data, through alignment of both the structure and the contents of descriptions of aid activities.

  A growing range of tools now exist that create and use IATI data, including tools to visualize spending flows, platforms to search and explore projects and their associated documents, and services to analyze foreign exchange risks that projects are exposed to. 

  Across the 600+ organizations publishing data using the IATI Standard, there are active participants who publish and use data, and more passive participants who just share data in response to administrative rules from their funders.

```

The design of a standard is fundamentally about who has to do the hard work to address data quality, interoperability and comparability. In a simplified model, this can be seen as how costs and benefits fall on data owners, intermediaries, and users. 

```eval_rst
.. graphviz::

   digraph {
      graph[rankdir=LR, bgcolor="#ffffff00"]
      node[shape=circle,width=2]
      "Data owner" -> "Intermediary" -> "User";
   }

```

Without a standard, users or intermediaries have to do the hard work of making sense of different datasets. If data owners do not share key information in their data, the users will have to negotiate with each data provider individually. 

By contrast, a standard with strict validation rules places a heavy burden on data owners to restructure their systems in order to produce valid and conforming data. 

In some cases, it may be quicker or cheaper in the short-term to invest in intermediaries or centralized databases that can reconcile data from different sources. However, this can risk creating a single point of failure or a point of control, which is avoided if data owners take responsibility for publishing their own data using an open standard. 

By contrast, whilst it might initially be trickier to encourage adoption of distributed standards for data publication, a well-functioning ecosystem of data publishers, intermediaries and users can be more resilient and innovative in the long-run.

Recognizing these trade-offs is important when designing a data standards project.

## Questions to answer

The following questions are useful to answer before starting down the standardisation process.

* What is this standard trying to achieve?
* Is there existing data?
* Is the data open?
* Is there an existing community around this issue or data?
* What are the priority goals of standardisation? (good practice, interoperability... etc. )


```eval_rst
.. _team:
```

## Building a team

There are many roles involved in developing and maintaining a standard. At the early stages of a standard one individual may play more than one role, and in later stages, many roles remain overlapping, or are part-time or ad-hoc. 

Some of the roles include:

* **Project lead** - maintaining relationships and communication with different stakeholders, and the balance between supply-side and demand-side considerations in the development of a standard. 
* **User researcher** - facilitating dialogue with potential users of published data, and with data owners, to understand, document and champion their needs. 
* **Data analyst** - reviewing pre-standard data to identify opportunities for standardisation, and analysing draft and published data for quality assurance and learning. 
* **Standard architect** - designing the overall shape of the standard, establishing data structures, selecting schema languages, data patterns, validation and quality evaluation approaches, and identifying tools required alongside the standard.
* **Schema author** - translating agreed data structures and fields into a schema language, and coordinating work to define fields and relationships. Also working on standard extensions where applicable. 
* **Documentation author** - writing technical and user-focused documentation, creating worked examples, and developing training resources.
* **Designer** - creating visual elements to support documentation and training around the standard. 
* **Developer** - creating and implementing tools for maintaining a [Single Source of Truth](pattern-ssot), managing documentation, performing data validation, and supporting standard adoption. 
* **Translation manager & translators** - creating glossaries, arranging translation, and carrying out translations.
* **Governance lead** - coordinating the process of standard updates.
* **Community manager(s)** - engaging with technical and policy communities, supporting tool-building, documenting implementation case studies, ensuring community input into standard development. 
* **Implementation and helpdesk manager** - making sure implementers have their queries addressed promptly, monitoring the quality of implementation and focussing on health of the overall ecosystem of data sharing and use.
* **Helpdesk analysts** - providing training and support to implementers and users, performing data quality assurance.

In our experience, standard development benefits from creative tension between team members playing different roles. For example, getting the right balance between simply usability of a dataset, and the accuracy and nuance of the data, will benefit from open discussion and negotiation between team members, each acting as a champion of different points of view. 


```eval_rst
.. admonition::  We can help
  :class: hint

  .. markdown::

    The Open Data Services team work in partnership with a range of organizations to deliver or support many of the roles above. 

    Get in touch to find out how we could help you: [our services](http://www.opendataservices.coop/#services).

```
