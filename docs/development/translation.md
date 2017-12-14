# Translation

If a data standard is designed for use across the world, then schema definitions, codelists, documentation and associated tools may need to be available in a number of different languages. Access to translated (and localised) definitions and documentation can aid both creators and users to accurately interpret data that uses the standard. 

In some cases, it may also be important to carry out governance discussions on updates to the standard in a number of languages, in order to make sure perspectives from across the full community of standard users are included. 

Thinking multilingually and cross-culturally when planning additions or updates to a standard can also help sharpen the choice of terminology and the design of definitions, and can help to address unconcious cultural biases in standard design.


-----
In October 2017 we held a workshop to explore shared learning on translating standards. This explored the need in a standard for:

* agreed **translation principles** that set out expectations about how alternative language version of a standard will be maintained, and which aspects of governance will be multilingual;
* **documented workflows** for translation and practices for translators;
* use of **glossaries** as a key part of the translation process to engage domain experts;
* approaches to **localisation**, when a standard is applied to a particular local context that makes use of different technical terminology; 
* tooling and schema design to support translation; 

The workshop drew in particular on experiences from the Open Contracting Data Standard, and translations in Spanish. Here, issues have arisen around the translation of particular procurement terms, such as 'tender', which is variously translated as 'licitación', 'contratación', 'oferta' or 'propuesta' depending on the dialect, context or legal system in the country where the standard is being used. In some cases, the use in the standard of a term different from that in the law can create a hurdle to policy adoption of the standard, or risks confusion for users of the data in that country. 

```eval_rst
.. todo::

    Update the synonmyns above based on Argentina Glossary activity: https://crm.open-contracting.org/issues/2871
```

------ 

## Key concepts & activities

It is important to distinguish a number of concepts:

* **Internationalisation (i18n)**  is the process of designing a standard, and the tools associated with it, so that it can be easily localised;
* **Translation** is the process of making a standard and its associated tools and documentation available in more than one language;
* **Localisation (l10n)** goes beyond a generic language translation to also consider how a standard and its documentation will be interpreted within a particular local and cultural context.

See also [W3C Localization vs. Internationalization](https://www.w3.org/International/questions/qa-i18n)

In general, internationalisation is a task during the development of the [Single Source of Truth (SSOT)](pattern-ssot) for a standard. Translation can take place as part of the core development process, or by supporting community translations, and localisation is a part of implementation support in particular countries and contexts. 

```eval_rst
.. todo::

    Add links to technical translation docs

```

## Internationalisation patterns

```eval_rst
:ref:`patternpage-i18n`

* :ref:`pattern-i18n-schema-design`
* :ref:`pattern-i18n-links-schema`
* :ref:`pattern-i18n-examples`
```

## Translation patterns

```eval_rst
:ref:`patternpage-translation`

* :ref:`pattern-glossary`
* :ref:`pattern-separate-translation-review`
* :ref:`pattern-translation-feedback`
* :ref:`pattern-translation-normative`
* :ref:`pattern-translation-policy`
```

## Status of translations

It is important to be clear about the status of translations. In general, there will be an authoriative language version (through which the SSOT is managed), and then secondary languages. 

Distinctions might be drawn between:

* **Supported languages** - which will be actively maintained by the standard maintenance team, kept up to date when the standard is updated, and which will have a well-managed glossary of key terms, reviewed by language and domain experts. 

* **Community translation languages** - which are contributed by volunteers, or without a full glossary and review process. There is no commitment to keep these updated when the standard changes. 

Translations may also be divided into:

* **Draft** - so that users can have access to work-in-progress translations, but with clear warnings that the translation may change.

* **Release version** - indicating that the translation is stable and unlikely to see major changes. 

To ensure readers have a clear understanding of the nature of translations, documentation and schema descriptions should include a clear translation note. 

### Example notice

> This is a {draft} {supported/community] language translation of OCDS. The authoritative version of OCDS is the version in English. This alternate language version is provided for the convenience of users.
>
> As a supported translation, key glossary terms have reviewed by the standard maintenance team and domain experts.
>
> Or
>
> You can get find out how to contribute to this translation at {GITHUB ISSUE}


## Principles & commitments

### Principles 

Each standard will need to develop it's own translation principles. The draft below is based on our October 2017 workshop:

1. **Be clear on the role of translation.** Who are we translating for? What is the purpose of translation? 

2. **Design translation practices about the user needs.** Consider the audience, their language skills and technical qualifications, and their specific needs for translation. 

3. **Ensure consistency** by developing a glossary of key terms, and maintaining one glossary per language. The glossary should include definitions, and notes to support translators. 

4. **Honouring the work you are asking the reader/user to do** by making sure translations are useable. 

5. **Engage local reviewers for languages, and work with reviewers with domain expertise**

6. **Listen to user feedback and make sure there is a way to capture it**

7. **Be tranparent** providing access to see the translation process and decision making. Glossaries and translator notes should also be public. 

### Commitments 

In addition, a standard will need clear commitments about when translation should precede, or follow, updates to the SSOT. For example, the following draft commitments may be used by the Open Contracting Data Standard:

**Langauges**

* The authoriative language for the standard is English. All translations into other languages are provided for the convenience of users. 

* Our core supported translations are Spanish and French. Translations in these languages will be reviewed by domain and language experts. 

* We welcome community translations in other languages. We do not assess or review the accuracy of community translations. 

**Updates**

* Whenever a major, minor or patch version of the standard is released, it will be translated into all core supported languages before the release;

* Minor, non-normative, documentation updates will be translated promptly, but may not always be translated before the updates are released;

* The documentation will clearly display when the English documentation is 'ahead' of translations for a particular version;

* Community translators will be notified of updates, and encouraged to update their translations; 
