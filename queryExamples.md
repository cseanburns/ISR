## Practice Query Examples

* Select the database:
 
```sql
USE ourclass;
```

* Use the `where` clause to show connections among records in tables:

```sql
SELECT * FROM dcvalues,dcelements
WHERE dcvalues.element_id       = dcelements.element_id
AND dcvalues.record_id          = '2'
AND dcelements.dcElementName    = 'Title';
```

* Same as above, but limit output to three columns:

```sql
SELECT Description, dcElementName, dcElementDescr
FROM dcvalues, dcelements
WHERE dcvalues.element_id       = dcelements.element_id
AND dcvalues.record_id          = '2'
AND dcelements.dcElementName    = 'Title';
```

* A full text search for the keyword *Wall* (or *wall*) in our
  **dcvalues** table in the **Description** column:

```sql
SELECT * FROM dcvalues
WHERE match(Description) against('Wall');
```

* Comparable to browsing the list of subject headings in an OPAC:

```sql
SELECT Description, dcElementName, dcElementDescr
FROM dcvalues, dcelements
WHERE dcvalues.element_id       = dcelements.element_id
AND dcelements.dcElementName    = 'Subject';
```

* Comparable to examining the subject headings of a particular
  record:

```sql
SELECT Description, dcElementName, dcElementDescr
FROM dcvalues, dcelements
WHERE dcvalues.element_id       = dcelements.element_id
AND dcvalues.record_id          = '2'
AND dcelements.dcElementName    = 'Subject';
```

* A fulltext search for the keyword *wall* but limited to the
  Dublin Core Subject element:

```sql
SELECT * FROM dcvalues
WHERE match(Description) against('wall')
AND element_id = '2';
```

* Limit output to 10 results:

```sql
SELECT * FROM dcvalues
WHERE element_id = '2'
LIMIT 10;
```

* Show the next ten results:

```sql
SELECT * FROM dcvalues
WHERE element_id = '2'
LIMIT 10,10;
```

* Do a fulltext search for *libraries*:

```sql
SELECT Description
FROM dcvalues
WHERE match(Description) against('libraries')
AND element_id = 2;
```

* Truncate keyword and use the `%` sign to look for any string of
  text that begins with *libr*:

```sql
SELECT Description
FROM dcvalues
WHERE Description LIKE "libr%"
AND element_id = 2;
```

* Add the `%` sign before and after our truncated keyword:

```sql
SELECT Description
FROM dcvalues
WHERE Description LIKE "%libr%"
AND element_id = 2;
```

* A Boolean *And/Not* query.  Search for all instances of the word
  *libraries* but not instances of the word *librarians*. Use the
  plus sign to make sure the keyword is in the results and the
  minus sign to make sure the keyword is not in the search
  results.

```sql
SELECT description
FROM dcvalues
WHERE match(description)
        against('+libraries -librarians' IN BOOLEAN mode);
```

* Use lhe `GROUP BY` to organize groups of data:

```sql
SELECT element_id,count(description)
FROM dcvalues
GROUP BY element_id;
```

* The `NATURAL JOIN`, displays two tables using various
  parameters:

```sql
SELECT dcelementName,element_id,count(description)
FROM dcvalues
NATURAL JOIN dcelements
GROUP BY element_id;
```

* Logical AND\OR query.

```sql
SELECT record_id, element_id, Description
FROM dcvalues
WHERE description LIKE '%william%'
OR description LIKE '%alan%';
```

* The above but exclude variations of the name *bert* (e.g., *Bert
  Williams*):

```sql
SELECT record_id, element_id, Description
FROM dcvalues
WHERE description LIKE '%william%'
AND description NOT LIKE '%bert%'
OR description LIKE '%alan%';
```

* Randomly order results:

```sql
SELECT * FROM dcvalues               
WHERE element_id = '2'
ORDER BY rand()
LIMIT 5;
```

* Select a range:

```sql
SELECT * FROM dcvalues
WHERE value_id between 89 AND 93
ORDER BY element_id;
```

* Descriptive statistics, `GROUP BY`, `NATURAL JOIN`, new field
  name *Total*, and HAVING:

```sql
SELECT dcelementName, count(Description)
        AS Total
FROM dcvalues
NATURAL JOIN dcelements
GROUP BY element_id
        HAVING total > 40;
```

* Ordering:

```sql
SELECT element_id AS Element_ID,
        dcelementName AS Element_Name,
        count(Description) AS Total
FROM dcvalues
NATURAL JOIN dcelements
GROUP BY element_id
        HAVING total > 40
ORDER BY total DESC;
```

* Update a record:

```sql
UPDATE dcvalues
SET Description = 'Rock music'
WHERE value_id  = '42';
```
