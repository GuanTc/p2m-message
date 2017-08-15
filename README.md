# P2M Message Server管理用代码库
这个代码库是用来帮助开发人员管理P2M Message Server(PMS)相关的所有代码库。

# 概述
P2M Message Server是一个消息服务的微服务，用来为网站添加消息中心的功能。为了便于其它项目方便的将该服务集成，PMS被分割为多个模块，分别提交到不同的GitHub库中。其中的部分类库，被当做独立的NPM package提交到NPM registry 中。下表是目前实现的主要模块：

* server/server (https://github.com/colin-han/p2m-message-server.git)  
消息服务微服务，可以独立运行的网站。通过WebAPI提供消息发送，推送，延迟处理等功能。通过加载不同的Channel模块，提供推送通道，将消息发送给手机或浏览器。
* server/jpush (https://github.com/colin-han/p2m-message-channel-jpush.git)  
使用极光推送服务实现的消息推送通道，主要用来和手机进行通讯的模块。NPM Package: `p2m-message-channel-jpush`
* server/socketio (https://github.com/colin-han/p2m-message-channel-socket-io.git)
使用socket.io实现的消息推送通道，主要用来和桌面浏览器进行通讯的模块。NPM Package: `p2m-message-channel-socket-io`
* client/client (https://github.com/colin-han/p2m-message-client.git)  
客户端模块，封装了和服务端进行通讯的主要api，并通过事件模型对外提供消息到达的通知。NPM Package: `p2m-message-client`
* client/jpush (https://github.com/colin-han/p2m-message-client-jpush.git)  
用来和server/jpush通道进行通讯的模块。该模块依赖于ReactNative，用于手机端。NPM Package: `p2m-message-client-jpush`
* client/socketio (https://github.com/colin-han/p2m-message-client-socketio.git)  
用来和server/socketio通道进行通讯的模块。该模块运行于浏览器中。NPM Package: `p2m-message-client-socket-io`
* client/view/reactnative (https://github.com/colin-han/p2m-message-view-react-native.git)
使用ReactNative实现的消息展示模块，用来将接受到的消息展示在手机app中。NPM Package: `p2m-message-view-react-native`
* client/view/react (https://github.com/colin-han/p2m-message-view-react.git)
使用React实现的消息展示模块，用来将接收到的消息展示在浏览器中。NPM Package: `p2m-message-view-react`
* client/view/knockout (https://github.com/colin-han/p2m-message-view-knockout.git)  
使用Knockout实现的消息展示模块，用来将接收到的消息展示在浏览器中。NPM Package: `p2m-message-view-knockout`

# 下载代码
为了统一管理这些代码，通过本代码库中的`init.sh`脚本可以将以上列出的所有代码库下载到本地。用法如下：

``` bash
./init.sh [-u <github-user-name>]
```

如果你将代码库fork到个人目录下，请指定`-u`参数，设置你自己的用户名，确保代码能够从个人目录下载。

# 管理和维护
建议使用`mu_repo` [http://fabioz.github.io/mu-repo/] 来管理代码库。
