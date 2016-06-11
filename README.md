# LivioHTTPServer

This project was forked from https://github.com/robbiehanson/CocoaHTTPServer, and retains the BSD 2-clause license. The code has been wrapped into a framework, and is [Carthage ready](https://github.com/Carthage/Carthage).

Any questions about the code can probably be answered on the [wiki for the original project](https://github.com/robbiehanson/CocoaHTTPServer/wiki).

----

LivioHTTPServer is a small, lightweight, embeddable HTTP server for Mac OS X or iOS applications.

Sometimes developers need an embedded HTTP server in their app. Perhaps it's a server application with remote monitoring. Or perhaps it's a desktop application using HTTP for the communication backend. Or perhaps it's an iOS app providing over-the-air access to documents. Whatever your reason, LivioHTTPServer can get the job done. It provides:

-   Built in support for bonjour broadcasting
-   IPv4 and IPv6 support
-   Asynchronous networking using GCD and standard sockets
-   Password protection support
-   SSL/TLS encryption support
-   Extremely FAST and memory efficient
-   Extremely scalable (built entirely upon GCD)
-   Heavily commented code
-   Very easily extensible
-   WebDAV is supported too!

## Getting Started

If you’re using [Carthage](https://github.com/Carthage/Carthage), simply add LivioHTTPServer to your `Cartfile`:

```
github "livio/LivioHTTPServer"
```
Make sure to add `CocoaAsyncSocket.framework` to "Linked Frameworks and Libraries" and "copy-frameworks" Build Phases. [More Information on Carthage](https://github.com/Carthage/Carthage#if-youre-building-for-ios-tvos-or-watchos)

To manually add LivioHTTPServer to your application:

1. Add the LivioHTTPServer repository as a submodule of your application's repository.
2. Run `git submodule sync --quiet && git submodule update --init` from within the LivioHTTPServer folder.
3. Drag and drop `LivioHTTPServer.xcodeproj`, `Carthage/Checkouts/CocoaAsyncSocket/CocoaAsyncSocket.xcodeproj` into the top-level of your application's project file or workspace.
4. On the "Build Phases" tab of your application target, add `LivioHTTPServer.framework`, and `CocoaAsyncSocket.framework` to the "Link Binary With Libraries" phase.
5. Add `$(OBJROOT)/UninstalledProducts/include` and `$(inherited)` to the "Header Search Paths" build setting (this is only necessary for archive builds, but it has no negative effect otherwise).
6. **For iOS targets**, add `-ObjC` to the "Other Linker Flags" build setting.
