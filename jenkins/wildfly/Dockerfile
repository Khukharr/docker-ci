FROM jboss/wildfly:10.0.0.Final

RUN /opt/jboss/wildfly/bin/add-user.sh admin admin --silent
ADD standalone.xml /opt/jboss/wildfly/standalone/configuration/standalone.xml

#CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-Djboss.bind.address", "0.0.0.0", "-Djboss.bind.address.management", "0.0.0.0"]
CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]

