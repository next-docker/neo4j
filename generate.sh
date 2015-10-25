UBUNTU_VERSIONS=(14.04 15.04 15.10)
JDK_VERSIONS=(oracle_jdk7.80.15 oracle_jdk8.66.17)
NEO4J_VERSIONS=(1.9.9 2.0.4 2.1.8 2.3.0)


echo ${UBUNTU_VERSIONS[@]}
for UBUNTU_VERSION in "${UBUNTU_VERSIONS[@]}"
   do
   for JDK_VERSION in "${JDK_VERSIONS[@]}"
      do
      for NEO4J_VERSION in "${NEO4J_VERSIONS[@]}"
         do
         echo "$NEO4J_VERSION/$JDK_VERSION/ubuntu$UBUNTU_VERSION" 
         mkdir -p $NEO4J_VERSION/$JDK_VERSION/ubuntu$UBUNTU_VERSION
         ./Dockerfile.sh $UBUNTU_VERSION $JDK_VERSION $NEO4J_VERSION > $NEO4J_VERSION/$JDK_VERSION/ubuntu$UBUNTU_VERSION/Dockerfile
         done
      done 
   done



