drop table Graph;


create table Graph (
	vertex int,
	vertexLinked int)
row format delimited fields terminated by ',' stored as textfile;
load data local inpath '${hiveconf:G}' overwrite into table Graph;

select vertexLinked, count(vertexLinked) as vl from Graph group by vertexLinked order by vl desc;