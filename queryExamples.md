1. Select the database:

mysql> use ourclass;

2. Use the **where** clause to show connections among records in
   tables:

```
select * from dcvalues,dcelements
where dcvalues.element_id = dcelements.element_id and
dcvalues.record_id = '2' and dcelements.dcElementName = 'Title';
```

3. Same as above, but limit output to three columns:

```
select Description, dcElementName, dcElementDescr from dcvalues, dcelements
where dcvalues.element_id = dcelements.element_id and
dcvalues.record_id = '2' and dcelements.dcElementName = 'Title';
```

4. A full text search for the keyword 'Wall' (or 'wall') in our
   **dcvalues** table in the **Description** column:

```
select * from dcvalues where match(Description) against('Wall');
```

5. Comparable to browsing the list of subject headings in an OPAC:

```
select Description, dcElementName, dcElementDescr from dcvalues, dcelements
where dcvalues.element_id = dcelements.element_id and
dcelements.dcElementName = 'Subject';
```

6. Comparable to examining the subject headings of a particular
   record:

```
select Description, dcElementName, dcElementDescr from dcvalues, dcelements
where dcvalues.element_id = dcelements.element_id and
dcvalues.record_id = '2' and dcelements.dcElementName = 'Subject';
```

7. A fulltext search for the keyword 'wall' but limited to the
   Dublin Core Subject element:

```
select * from dcvalues where match(Description) against('wall') and element_id = '2';
```

8. Limit output to 10 results:

```
select * from dcvalues where element_id = '2' limit 10;
```

9. Show the next ten results:

```
select * from dcvalues where element_id = '2' limit 10,10;
```

10. Do a fulltext search for 'libraries':

```
select Description from dcvalues where match(Description)
against('libraries') and element_id = 2;
```

11. Truncate keyword and use the % sign to look for any string of
    text that BEGINS with **libr**:

```
select Description from dcvalues where Description like "libr%"
and element_id = 2;
```

12. Add the % sign before and after our truncated keyword:

```
select Description from dcvalues where Description like "%libr%"
and element_id = 2;
```

13. A Boolean **And/Not** query.  Search for all instances of the
    word **libraries** but not instances of the word
    **librarians**. Use the plus sign to make sure the keyword is
    in my results and the minus sign to make sure the keyword is
    not in my search results.

```
select description from dcvalues where match(description)
against('+libraries -librarians' in boolean mode);
```

14. Use lhe 'group by' to organize groups of data:

```
select element_id,count(description) from dcvalues group by
element_id;
```

15. The NATURAL JOIN, displays two tables using various
    parameters:

```
select dcelementName,element_id,count(description) from dcvalues
natural join dcelements group by element_id;
```

16. Logical AND OR query.

```
select record_id, element_id, Description
from dcvalues where description
like '%william%' or description like '%alan%';
```

17. The above but exclude variations of the name **bert** (e.g.,
    Bert Williams):

```
select record_id, element_id, Description
from dcvalues where description like
'%william%' and description not like '%bert%'
or description like '%alan%';
```

18. Randomly order results:

```
select * from dcvalues               
where element_id = '2'
order by rand() limit 5;
```

19. Select a range:

```
select * from dcvalues where value_id between 89 and 93 order by element_id;
```

20. Descriptive statistics, group by, natural join, new field
    name, and having:</p>

```
select dcelementName, count(Description) as total
from dcvalues natural join dcelements
group by element_id having total > 40;
```

Ordering:

```
select element_id as Element_ID, dcelementName as Element_Name,
count(Description) as Total
from dcvalues natural join dcelements
group by element_id having total > 40
order by total desc;
```

21. Update a record:

```
update dcvalues
set Description = 'Rock music'
where value_id = '42';
```
