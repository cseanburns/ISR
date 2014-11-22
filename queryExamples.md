* Select the database:

```sql
use ourclass;
```

* Use the `where` clause to show connections among records in tables:

```sql
select * from dcvalues,dcelements
where dcvalues.element_id = dcelements.element_id and
dcvalues.record_id = '2' and dcelements.dcElementName = 'Title';
```

* Same as above, but limit output to three columns:

```sql
select Description, dcElementName, dcElementDescr from dcvalues, dcelements
where dcvalues.element_id = dcelements.element_id and
dcvalues.record_id = '2' and dcelements.dcElementName = 'Title';
```

* A full text search for the keyword *Wall* (or *wall*) in our
  **dcvalues** table in the **Description** column:

```sql
select * from dcvalues where match(Description) against('Wall');
```

* Comparable to browsing the list of subject headings in an OPAC:

```sql
select Description, dcElementName, dcElementDescr from dcvalues, dcelements
where dcvalues.element_id = dcelements.element_id and
dcelements.dcElementName = 'Subject';
```

* Comparable to examining the subject headings of a particular
  record:

```sql
select Description, dcElementName, dcElementDescr from dcvalues, dcelements
where dcvalues.element_id = dcelements.element_id and
dcvalues.record_id = '2' and dcelements.dcElementName = 'Subject';
```

* A fulltext search for the keyword *wall* but limited to the
  Dublin Core Subject element:

```sql
select * from dcvalues where match(Description) against('wall') and element_id = '2';
```

* Limit output to 10 results:

```sql
select * from dcvalues where element_id = '2' limit 10;
```

* Show the next ten results:

```sql
select * from dcvalues where element_id = '2' limit 10,10;
```

* Do a fulltext search for *libraries*:

```sql
select Description from dcvalues where match(Description)
against('libraries') and element_id = 2;
```

* Truncate keyword and use the `%` sign to look for any string of
  text that BEGINS with *libr*:

```
select Description from dcvalues where Description like "libr%"
and element_id = 2;
```

* Add the `%` sign before and after our truncated keyword:

```sql
select Description from dcvalues where Description like "%libr%"
and element_id = 2;
```

* A Boolean *And/Not* query.  Search for all instances of the word
  *libraries* but not instances of the word *librarians*. Use the
  plus sign to make sure the keyword is in my results and the
  minus sign to make sure the keyword is not in my search results.

```sql
select description from dcvalues where match(description)
against('+libraries -librarians' in boolean mode);
```

* Use lhe `group by` to organize groups of data:

```sql
select element_id,count(description) from dcvalues group by
element_id;
```

* The *natural join*, displays two tables using various
  parameters:

```sql
select dcelementName,element_id,count(description) from dcvalues
natural join dcelements group by element_id;
```

* Logical AND OR query.

```sql
select record_id, element_id, Description
from dcvalues where description
like '%william%' or description like '%alan%';
```

* The above but exclude variations of the name `bert` (e.g., Bert
  Williams):

```sql
select record_id, element_id, Description
from dcvalues where description like
'%william%' and description not like '%bert%'
or description like '%alan%';
```

* Randomly order results:

```sql
select * from dcvalues               
where element_id = '2'
order by rand() limit 5;
```

* Select a range:

```sql
select * from dcvalues where value_id between 89 and 93 order by element_id;
```

* Descriptive statistics, group by, natural join, new field name,
and having:

```sql
select dcelementName, count(Description) as total
from dcvalues natural join dcelements
group by element_id having total > 40;
```

* Ordering:

```sql
select element_id as Element_ID, dcelementName as Element_Name,
count(Description) as Total
from dcvalues natural join dcelements
group by element_id having total > 40
order by total desc;
```

* Update a record:

```sql
update dcvalues
set Description = 'Rock music'
where value_id = '42';
```
