PARAM_UBUNTU_VERSION=$1
PARAM_JDK_VERSION=$2
PARAM_NEO4J_VERSION=$3

OIFS=$IFS
IFS='.' read -ra JDK_VERSION_ARRAY <<< "$PARAM_JDK_VERSION"

echo "FROM ping2ravi/jdk:${PARAM_JDK_VERSION}_ubuntu.${PARAM_UBUNTU_VERSION}"
echo ""
echo ""

echo "MAINTAINER Ravi Sharma"

echo ""
echo ""
echo "# Ubuntu ${PARAM_UBUNTU_VERSION}"
echo "# Java Version ${JDK_VERSION_ARRAY[0]} update ${JDK_VERSION_ARRAY[1]}"
echo "# Neo4j Version ${PARAM_NEO4J_VERSION}" 
echo "#     http://neo4j.com/download/other-releases/"

echo ""
echo ""
echo "ENV NEO4J_VERSION $PARAM_NEO4J_VERSION"

echo "ENV NEO4J_HOME /opt/neo4j/neo4j-\${NEO4J_VERSION}"
echo "ENV NEO4J_FILE_NAME neo4j-community-\${NEO4J_VERSION}"

echo ""
echo "RUN  wget -O \${NEO4J_FILE_NAME}-unix.tar.gz http://neo4j.com/artifact.php?name=\${NEO4J_FILE_NAME}-unix.tar.gz;gunzip \${NEO4J_FILE_NAME}-unix.tar.gz; tar -xvf \${NEO4J_FILE_NAME}-unix.tar; mkdir -p \${NEO4J_HOME};mv \${NEO4J_FILE_NAME}/* \${NEO4J_HOME}; rm \${NEO4J_FILE_NAME}-unix.tar; rm -fR \${NEO4J_FILE_NAME}"

echo ""
echo ""
echo "ENV PATH \${PATH}:\${NEO4J_HOME}/bin"
echo ""
echo ""
echo "CMD neo4j start" 

IFS=$OIFS
