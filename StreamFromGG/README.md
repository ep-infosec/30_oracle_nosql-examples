# Golden Gate and NoSql Integration

This example illustrates the use of Golden Gate to stream relational transactions to Oracle Nosql 12.3.4. 

Integrating database with NoSql is accomplished by developing a custom handler using Oracle GoldenGate's  
and Nosql's Java APIs.
 
Java source code implements the Nosql handler

The resource files should be added to Godben Gate files <OGG_HOME> which could be for instance /u01/ogg

A short description of the resource files:

- *defgenT2.prm*, under <OGG_HOME>/dirprm,  parameter file used by **gendef** utility to describe the example table on Oracle database 12c

- *t2.sql*, under <OGG_HOME>/dirsql, result file of the **gendef** execution (you can used it instead of executing **gendef**

- *e_ghat2.prm*, under <OGG_HOME>/dirprm, parameter file for the **extrat** from Oracle database 12c

- *nosqlt2.prm*, under <OGG_HOME>/dirprm, parameter file for the **extrat** from trail files used by the java nosql adaptor

- *nosqlt2.properties*, under <OGG_HOME>/dirprm, properties file for the nosql adapter, includes the nosql connection parameters


### Compilation of java sources
The pom.xml file has not been tested it is there to be adapted to your maven distribution.
The jars used on this compilation are:

- <KVHOME>/lib/jackson-core-asl.jar
 
- <KVHOME>/lib/jackson-mapper-asl.jar

- <KVHOME>/lib/avro.jar

- <KVHOME>/lib/kvclient.jar

- <OGG_HOME>/ggjava/ggjava.jar:

- oggnosql.jar (generated jar with the adapter classes)

- /usr/lib/hadoop/client/commons-configuration-1.6.jar (cloudera distribution)

- /etc/hadoop/conf (cloudera distribution)

- /usr/lib/hadoop/client/commons-cli.jar (cloudera distribution)


