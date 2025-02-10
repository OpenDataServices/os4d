Aggregators & Data Stores
=========================


Aggregators are online tools which bring together multiple sources of data, and present them to users as one complete feed. This means that someone wanting to use the data only has to connect to one source, rather than multiple, reducing the complexity of their system. 

Aggregators will often keep a copy of the data that they’ve downloaded, so that if the original source encounters an outage, the data from that source is still available for users of the aggregator. 

Aggregators might collect all of the data available in a domain, or only some (such as that relating to a particular audience or region). 

Aggregators will sometimes carry out a degree of processing of the data. This might include:
De-duplication; identifying and removing data items that have been provided by multiple data sources. This can happen if an aggregator consumes data from other aggregators - such as one that covers a particular sport, and another that covers a particular region. 
Normalization; converting data that is in multiple formats to the same format. This can happen if there isn’t a standard, or if a standard is quite loose. By normalizing in the aggregator, individual data users can receive more consistent data. 
Filtering; removing data that isn’t relevant. For example, an aggregator might remove data that’s outdated or too far in the future to be relevant, or might only include data that meets certain criteria - such as a certain baseline of data quality, or use of particular fields

Aggregators may be part of, or used to provide the first part of the pipeline for, data stores. 

Data stores download all of the data that’s available, and then store it in a way that’s useful for querying; this often involves considerable processing and the creation of policies to handle retention and deletion of data. Data stores can be used to understand the data at a point in time, to generate statistics about the data, and to observe how the data has changed over time (e.g. number of activities, which fields are used, how the data quality has changed). 

