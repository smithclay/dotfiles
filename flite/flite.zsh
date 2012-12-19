alias dsr='cd $PROJECTS/server/trunk; ant deploy-syndication-resources; cd -;'
alias dgr='cd $PROJECTS/server/trunk; ant deploy-gallery-resources; cd -;'
alias dg='cd $PROJECTS/server/trunk; ant deploy-gallery; cd -;'
alias ds='cd $PROJECTS/server/trunk; ant deploy-syndication; cd -;'
alias htc='cd $PROJECTS/vagrant; vagrant ssh -c "/etc/init.d/tomcat6 stop"; cd -;'
alias rtc='cd $PROJECTS/vagrant; vagrant ssh -c "/etc/init.d/tomcat6 restart"; cd -;'

export FLITE_TRUNK=$HOME/dev/server/trunk
export SAYEASY_HOST=Kennedy.local

