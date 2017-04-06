#!/usr/bin/env bash

username=colinhan
if [[ "$1" == "-u" ]]; then
    if [[ "$2" == "" ]]; then
        echo 'USAGE: init [-u <github-user-name>]'
    fi

    username=$2
fi

if [[ "$1" == "" || "$1" == "clone" || "$1" == 'c' ]]; then
    git clone https://github.com/${username}/p2m-message-client.git client/client
    git clone https://github.com/${username}/p2m-message-client-jpush.git client/jpush
    git clone https://github.com/${username}/p2m-message-client-socket-io.git client/socketio
    git clone https://github.com/${username}/p2m-message-view-knockout.git client/view/knockout
    git clone https://github.com/${username}/p2m-message-view-react-native.git client/view/reactnative
    git clone https://github.com/${username}/p2m-message-server.git server/server
    git clone https://github.com/${username}/p2m-message-channel-jpush.git server/jpush
    git clone https://github.com/${username}/p2m-message-channel-socket-io.git server/socketio
fi
