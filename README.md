This repository includes some initial setup files for a library
and information science class in Information Storage and
Retrieval. In the past, this has been a four week exercise in a 15
week course. The students begin building a database of records
described by Dublin Core. Once the database has been built, they
begin to run queries.

The intent is to expand this exercise so that it lasts the entire
semester. At the time I was TA'ing this class, this exercise began
with a group of students using various operating systems,
connecting via SSH to a Linux server, either through a University
VPN or by SSH-chaining through an open University server. Then
logging into the MySQL server, after describing and creating their
DC records, and inserting their records into the dcvalues table,
which is used collectively.

In the future, the students build the database collectively, and
continue to add records for a good portion of the course. They
proceed to use it as the course progresses in order to understand
the various aspects of storage and retrieval.

The class designs a web front end (or I set this up) based on HTML
and PHP. They use the web front end, which mimics a basic OPAC,
to understand differences between SQL queries, and what is
possible there, and web form based queries, and the limitations on
that end (e.g., constraints on queries, usability issues,
relevance, etc.)

It would also be good if they could run statistics on the
collection in the database. Off the cuff ideas include: 

* basic descriptive statistics on the collection
* low-key stats on precision and recall

A PHP script could be added to the web front end that would log
visits, then they would have access to web site logs for
analytics.

The purpose of the course is not to teach students to be
programmers. The purpose is to foster some understanding of what
happens 'under the hood' with the systems they use every day
(OPACs, electronic databases, etc.) and to reduce computer anxiety
overall. Also, if the students could build (or proceed to use) a
low key web front end to the database with HTML and PHP, the
process would require them to make choices about the kinds of
queries that can be used in such an interface (since MySQL and
relational databases are much more powerful than what is generally
accessed through a common user interface), and having to make
these decisions will help the students begin to understand issues
surrounding relevance, usability, etc. that come along with making
things 'easier' for general use. Essentially, the goal is to
maintain the theoretical content of a course in information
storage and retrieval but build in more practice and doing.

The contents in this repository are files for the basic setup of
the four week exercise. Plans are to build a framework add for a
full fifteen week exercise.

Original Date: **February 25, 2012**

Update: **November 21, 2014**
