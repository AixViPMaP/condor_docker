#!/bin/bash
# HTCondor DOCKER wrapper

DockerPath="/usr/bin/docker"
LogPath="$(condor_config_val LOG)/docker.$(whoami).log"
TimeStamp="$(date '+%m/%d/%y %H:%M:%S')"

if [ "$1" == "run" ]
then echo "$TimeStamp $DockerPath $@" >> "$LogPath"
fi

"$DockerPath" "$@"
