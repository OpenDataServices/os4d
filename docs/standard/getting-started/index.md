# Getting started

## Linking goals and design

```eval_rst
.. _when:
```

The design of a standard should reflect it's goals and the policy context it is introduced into. 

Standards can help to:

* Promote **good practice** in the collection and sharing of data;
* Enable **data interoperability** and exchange between systems;
* Promote **comparability** between datasets;
* Encourage **publication** of data, by making it easier to prepare and share it;
* Support **measurement** and assessment of data quality.

We think of effective open data standards as tools of **mass collaboration**, providing a common reference point for different groups to coalesce around, facilitating their work together on creating and using data for social impact. 

```eval_rst
.. note:: For example

  The International Aid Transparency Initiative (IATI) standard promotes interoperability of aid data, through alignment of both the structure and the contents of descriptions of aid activities.

  A growing range of tools now exist that create and use IATI data, including tools to visualize spending flows, platforms to search and explore projects and their associated documents, and services to analyze foreign exchange risks of projects. 

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

In some cases, it may be quicker or cheaper in the short-term to invest in intermediaries or centralized databases that can reconcile data from different sources. However, this can risk creating a single point of failure or a point of control: which is avoided if data owners take responsibility for publishing their own data using an open standard. 

By contrast, whilst it might initially be trickier to encourage adoption of distributed standards for data publication, a well-functioning ecosystem of data publishers, intermediaries and users can be more resilient and innovative in the long-run.

Recognizing these trade-offs is important when designing a data standards project.

## Questions to answer

The following questions are useful to answer before starting down the standardisation process.

* What is this standard trying to achieve?
* Is there existing data?
* Is the data open?
* Is there an existing community around this issue or data?
* What are the priority goals of standardisation? (good practice, interoperability... etc. )

ToDo: Link to blog post on so you want a standard? 


## Building a team

```eval_rst
.. _team:
```

There are many roles involved in developing and maintaining a standard. At the early stages of a standard one individual may play more than one role. 

ToDo: Provide a one-line description of each role.

* **User researcher** 
* **Data analyst** 
* **Schema author**
* **Documentation author**
* **Translation manager**
  * **Translators**
* **Governance lead**

* **Developer**
* **Community manager**
  * **Technical community manager**
  * **Policy community manager**
* **Helpdesk manager**
* **Helpdesk analysts**
* **Trainer**

```eval_rst
.. hint:: We can help

  The Open Data Services team work in partnership with a range of organizations to deliver or support many of the roles above. 

  Get in touch to find out how we could help you. `LINK TO <our-services>`

```