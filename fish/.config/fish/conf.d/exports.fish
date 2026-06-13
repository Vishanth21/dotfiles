# Created by `pipx`
set PATH $PATH $HOME/.local/bin

# Android SDK Paths
set -gx ANDROID_HOME /opt/android-sdk
set -gx PATH $PATH $ANDROID_HOME/tools $ANDROID_HOME/platform-tools

# Java SDK
set -gx JAVA_HOME /usr/lib/jvm/java-17-openjdk

# SSH Auth Socket
set -gx SSH_AUTH_SOCK /run/user/(id -u)/keyring/ssh
