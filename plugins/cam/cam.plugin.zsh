export VISUAL=vi
export EDITOR=vi

alias sudo='nocorrect sudo '
export SCALA_HOME=/usr/local/share/scala
export PLUGIN_PATHS=$SCALA_HOME/bin:$GRADLE_HOME/bin
export GRADLE_HOME=/Users/cam/Dev/gradle
export ANDROID_HOME="/Applications/Android Studio.app/sdk"


function setjdk() {
  if [ -x '/usr/libexec/java_home' ]; then 
    if [ $# -ne 0 ]; then
       removeFromPath '/System/Library/Frameworks/JavaVM.framework/Home/bin'
       if [ -n "${JAVA_HOME+x}" ]; then
        removeFromPath $JAVA_HOME
       fi
       export JAVA_HOME=`/usr/libexec/java_home -v $@`
       export PATH=$JAVA_HOME/bin:$PATH
    fi
  fi
}
function removeFromPath() {
  export PATH=$(echo $PATH | sed -E -e "s;:$1;;" -e "s;$1:?;;")
}

setjdk 1.7

alias wf='ssh -A cam@whaleface.com'
alias sa='cd ~/Dev/sona-android'
alias st='cd ~/Dev/throwaway'
alias gpo='git pull -r origin'
alias docker-remove-all-containers="docker ps -aq | xargs docker rm"

# docker w/ virtualbox
if [ -x "`which boot2docker`" ]; then
  $(boot2docker shellinit 2>/dev/null)
fi
