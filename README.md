February 25, 2012

This repository includes some initial setup files for a library and information
science class called Information Storage and Retrieval. In the past, this has been
a four week exercise in a broader semester long class where the students begin
building a database of records described by Dublin Core. Once the database has
been built, they begin to run queries.

It would be nice to expand this exercise so that it lasts the entire semester.
Currently the class begins with a group of students using various operating
systems, they connect via SSH to a Linux server, either through a University VPN
or by SSH-chaining through an open University server. They log into the MySQL
server, and after describing and creating their DC records, they insert them into the
relevant database, one they use collectively.

In the future, they can begin the course building a database collectively, then
proceed to use it as the course progresses in order to gather some understanding
of the various aspects of storage and retrieval. Then we can each dump the
collective database and they can each use the dump to build their own databases,
from which they can begin to build a HTML/PHP-based OPAC (or maybe there is a sane
way they can do this together and still each do substantial work). It would also
be good if they could run statistics on the collection in the database. Maybe
low-key stats on precision and recall as well as basic descriptive stuff.

The purpose of the course is not to teach the students, necessarily, to be
programmers and such (not bad of course, just not the right context). Our purpose
here is simply to foster some understanding of what happens 'under the hood' with
the systems they use every day (OPACs, electronic databases, etc.) and to reduce
computer anxiety overall. Also, if the students could build a low key web front
end to the database with HTML and PHP, the process would require them to make
choices about the kinds of queries that can be used in such an interface (since
MySQL and relational databases are much more powerful than what is generally
accessed through a common user interface), and having to make these decisions will
help the students begin to understand issues surrounding relevance, usability,
etc. that come along with making things 'easier' for general use. Essentially,
maintain the theoretical content of the course but build in more practice and
doing.

So the contents in this repository are mainly files for the basic setup of the
four week exercise. Plans are to use these files and add to them so there is a
framework for a full fifteen week exercise. Thus, this project does not lead to
a computer program or application in the traditional sense.
