export M2_HOME=/usr/share/maven

# Set different home directories based on OS

unamestr=`uname`
if [[ "$unamestr" == 'Linux' ]]; then
	export JAVA_HOME=/usr/lib/jvm/java-1.6.0-openjdk
	export TOMCAT_HOME=/usr/local/tomcat
elif [[ "$unamestr" == 'Darwin' ]]; then
	export JAVA_HOME=`/usr/libexec/java_home`
	export TOMCAT_HOME=/Applications/tomcat
fi

# Tomcat Options

export MAVEN_OPTS="-Xms256m -Xmx1024m -XX:PermSize=1024m -XX:MaxPermSize=1024m"
export JPDA_OPTS="-Xdebug -Xnoagent -Djava.compiler=NONE -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=5005 "
export CATALINA_PID=/usr/local/tomcat/bin/catalina.pid

export CATALINA_OPTS="$CATALINA_OPTS $JPDA_OPTS -Xmx1024m -XX:MaxPermSize=512m 
-Dcom.sun.management.jmxremote.port=9003 
-Dcom.sun.management.jmxremote.ssl=false 
-Dcom.sun.management.jmxremote.authenticate=false
-Djava.net.preferIPv4Stack=true
-Dlog4j.configuration=file:/vagrant/props/log4j.properties 
-Dwbx.config.loc=file:/vagrant/props/dev.canonical.properties 
-Djava.awt.headless=true 
-Dorg.apache.tomcat.util.buf.UDecoder.ALLOW_ENCODED_SLASH=true "

# Configure aliases
alias stc='$TOMCAT_HOME/bin/startup.sh'
alias htc='$TOMCAT_HOME/bin/shutdown.sh'

