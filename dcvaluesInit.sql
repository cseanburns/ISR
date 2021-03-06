/* Sample records, fields linked to tables in dcelementsTable.sql */

/* Sample record for text / html file, specifically a journal
 * article on D-Lib */
insert into dcvalues(
        record_id,element_id,Description) values(
        '1','1','Keeping Dublin Core simple: Cross-domain discovery or resource description?'),(
        '1','2','Cataloging of computer network resources'),(
        '1','2','Digital libraries'),(
        '1','2','Dublin Core'),(
        '1','2','Metadata'),(
        '1','3','\"This paper examines the evolution and scope of the Dublin Core from this perspective of metadata modularization. Dublin Core began in 1995 with a specific goal and scope -- as an easy-to-create and maintain descriptive format to facilitate cross-domain resource discovery on the Web. Over the years, this goal of \'simple metadata for coarse-granularity discovery\' came to mix with another goal -- that of community and domain-specific resource description and its attendant complexity. A notion of \'qualified Dublin Core\' evolved whereby the model for simple resource discovery -- a set of simple metadata elements in a flat, document-centric model -- would form the basis of more complex descriptions by treating the values of its elements as entities with properties \(\'component elements\'\) in their own right.\"'),(
        '1','4','Text'),(
        '1','6','\"This paper is a revised version of \'Accommodating Simplicity and Complexity in Metadata: Lessons from the Dublin Core Experience\', presented at the Seminar Metadata, Archiefschool, The Hague, June 8, 2000.\"'),(
        '1','8','Carl Lagoze'),(
        '1','9','D-Lib Magazine'),(
        '1','9','ISSN:1082-9873'),(
        '1','11','Copyright by Carl Lagoze'),(
        '1','11','Open access'),(
        '1','12','2001-01'),(
        '1','13','text/html'),(
        '1','14','DOI:10.1045/january2001-lagoze'),(
        '1','14','http://www.dlib.org/dlib/january01/lagoze/01lagoze.html'),(
        '1','15','eng-US');

/* Sample record for an image / jpeg file */
insert into dcvalues(
        record_id,element_id,Description) values(
        '2','1','The Wall Comes Down'),(
        '2','2','Berlin Wall, Berlin, Germany, 1961-1989'),(
        '2','2','Communist countries'),(
        '2','2','Former communist countries'),(
        '2','3','Young people from West Berlin sit on the Berlin Wall and wave to the crowd of East Germans flooding through the new opening at Potsdamer Platz.'),(
        '2','4','Image'),(
        '2','7','Berlin'),(
        '2','7','Germany'),(
        '2','7','Deutschland'),(
        '2','7','1961-1989'),(
        '2','7','1989'),(
        '2','8','Carol Guzy'),(
        '2','9','Washington Post'),(
        '2','9','Pictures of the Year International \(POYi\)'),(
        '2','11','All Rights Reserved'),(
        '2','11','Open access'),(
        '2','12','1989'),(
        '2','12','2008-07-04'),(
        '2','13','image/jpeg'),(
        '2','13','384 x 256 pixels'),(
        '2','14','http://archive.poyi.org/items/show/18026'),(
        '2','15','eng-US');

/* Sample record for an audio / music file */
insert into dcvalues(
        record_id,element_id,Description) values(
        '3','1','Bliss'),(
        '3','2','Rock music'),(
        '3','2','Alternative rock music'),(
        '3','4','Sound'),(
        '3','6','Series 2'),(
        '3','8','Kristin Hersh'),(
        '3','9','Yes Dear Music'),(
        '3','9','BMI'),(
        '3','10','Steve Rizzo'),(
        '3','11','Creative Commons BY-NC-SA License'),(
        '3','12','2009'),(
        '3','13','audio/mpeg'),(
        '3','13','audio/ogg'),(
        '3','14','http://kristinhersh.cashmusic.org/series2/'),(
        '3','15','eng-US');
