FROM registry.access.redhat.com/ubi8/ubi-init:8.1
LABEL Name=redhattask Version=0.0.1
USER root

RUN yum -y install java-11-openjdk-devel wget
RUN touch /etc/profile.d/java11.sh 
RUN echo "JAVA_HOME=\$(dirname \$(dirname \$(readlink \$(readlink \$(which javac)))))" > /etc/profile.d/java11.sh
RUN echo "export PATH=\$PATH:\$JAVA_HOME/bin" >> /etc/profile.d/java11.sh
RUN echo "export CLASSPATH=.:\$JAVA_HOME/jre/lib:\$JAVA_HOME/lib:\$JAVA_HOME/lib/tools.jar" >> /etc/profile.d/java11.sh

ENV VER="9.0.45"
RUN wget https://archive.apache.org/dist/tomcat/tomcat-9/v${VER}/bin/apache-tomcat-${VER}.tar.gz
RUN tar xvf apache-tomcat-${VER}.tar.gz -C /usr/share/
RUN ln -s /usr/share/apache-tomcat-$VER/ /usr/share/tomcat


#RUN groupadd --system tomcat
#RUN useradd -d /usr/share/tomcat -r -s /bin/false -g tomcat tomcat

#COPY tomcat.service /etc/systemd/system/tomcat.service
#RUN systemctl enable tomcat

COPY sample.war /usr/share/tomcat/webapps
EXPOSE 8080
CMD sh /usr/share/tomcat/bin/catalina.sh start && tail -f /usr/share/tomcat/logs/catalina.out



#CMD [ "/sbin/init" ]