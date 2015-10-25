FROM ping2ravi/jdk:oracle_jdk8.66.17_ubuntu.14.04


MAINTAINER Ravi Sharma


# Ubuntu 14.04
# Java Version oracle_jdk8 update 66
# Neo4j Version 2.0.4
#     http://neo4j.com/download/other-releases/


ENV NEO4J_VERSION 2.0.4
ENV NEO4J_HOME /opt/neo4j/neo4j-${NEO4J_VERSION}
ENV NEO4J_FILE_NAME neo4j-community-${NEO4J_VERSION}

RUN  wget -O ${NEO4J_FILE_NAME}-unix.tar.gz http://neo4j.com/artifact.php?name=${NEO4J_FILE_NAME}-unix.tar.gz;gunzip ${NEO4J_FILE_NAME}-unix.tar.gz; tar -xvf ${NEO4J_FILE_NAME}-unix.tar; mkdir -p ${NEO4J_HOME};mv ${NEO4J_FILE_NAME}/* ${NEO4J_HOME}; rm ${NEO4J_FILE_NAME}-unix.tar; rm -fR ${NEO4J_FILE_NAME}


ENV PATH ${PATH}:${NEO4J_HOME}/bin


CMD neo4j start
