alias dsr='cd $PROJECTS/server/trunk; ant deploy-syndication-resources; cd -;'
alias dgr='cd $PROJECTS/server/trunk; ant deploy-gallery-resources; cd -;'
alias dg='cd $PROJECTS/vagrant; vagrant ssh -c "service tomcat6 stop"; cd $PROJECTS/server/trunk; ant deploy-gallery; cd $PROJECTS/vagrant; vagrant ssh -c "service tomcat6 start"; cd -;'
alias ds='cd $PROJECTS/vagrant; vagrant ssh -c "service tomcat6 stop"; cd $PROJECTS/server/trunk; ant deploy-syndication; cd $PROJECTS/vagrant; vagrant ssh -c "service tomcat6 start"; cd -;'
alias rtc='cd $PROJECTS/vagrant; vagrant ssh -c "service tomcat6 restart"; cd -;'

export FLITE_TRUNK=$HOME/dev/server/trunk
