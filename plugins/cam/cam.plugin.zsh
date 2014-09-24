export VISUAL=vi
export EDITOR=vi

alias sudo='nocorrect sudo '
export SCALA_HOME=/usr/local/share/scala
export GRADLE_HOME=/Users/cam/Dev/gradle


export PLUGIN_PATHS=$SCALA_HOME/bin:$GRADLE_HOME/bin

function setjdk() {
  if [ $# -ne 0 ]; then
   removeFromPath '/System/Library/Frameworks/JavaVM.framework/Home/bin'
   if [ -n "${JAVA_HOME+x}" ]; then
    removeFromPath $JAVA_HOME
   fi
   export JAVA_HOME=`/usr/libexec/java_home -v $@`
   export PATH=$JAVA_HOME/bin:$PATH
  fi
}
function removeFromPath() {
  export PATH=$(echo $PATH | sed -E -e "s;:$1;;" -e "s;$1:?;;")
}

setjdk 1.7

alias wf='ssh cam@whaleface.com'
alias sa='cd ~/Dev/sona-android'
alias st='cd ~/Dev/throwaway'

# docker w/ virtualbox
if [ -x `which boot2docker` ]; then
  echo "hi"
  export DOCKER_HOST=tcp://$(boot2docker ip 2>/dev/null):2375
fi
