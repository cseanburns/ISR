/* Sets up the initial database and builds the first two tables */

/* Create the new database */
create database ourclass;

/* Go to the new database */
use ourclass;

/* Create the dcelements table */
create table dcelements (
        dcElementName varchar(20),
        dcElementDescr varchar(125),
        element_id int not null auto_increment primary key);

/* Create the dcvalues tables */
create table dcvalues (
        value_id int not null auto_increment,
        record_id int not null,
        element_id int not null,
        Description text,
        primary key(value_id),
        index(element_id),
        foreign key(element_id) references dcelements(element_id));

/* Add full text searching to each table */
alter table dcvalues add fulltext(Description);
alter table dcelements add fulltext(dcElementName);
