#/bin/bash

mvn clean -DskipTests package -Pdist -rf :hbase-bridge-shim

mvn clean -DskipTests install -rf :hbase-bridge-shim
cp ~/.m2/repository/com/fasterxml/jackson/jaxrs/jackson-jaxrs-base/2.9.9/jackson-jaxrs-base-2.9.9.jar ~/github/atlas/distro/target/apache-atlas-1.2.0-bin/apache-atlas-1.2.0/hook/hbase/atlas-hbase-plugin-impl/
cp ~/.m2/repository/com/fasterxml/jackson/jaxrs/jackson-jaxrs-json-provider/2.9.9/jackson-jaxrs-json-provider-2.9.9.jar ~/github/atlas/distro/target/apache-atlas-1.2.0-bin/apache-atlas-1.2.0/hook/hbase/atlas-hbase-plugin-impl/
cp  ~/.m2/repository/com/fasterxml/jackson/module/jackson-module-jaxb-annotations/2.9.9/jackson-module-jaxb-annotations-2.9.9.jar ~/github/atlas/distro/target/apache-atlas-1.2.0-bin/apache-atlas-1.2.0/hook/hbase/atlas-hbase-plugin-impl/
