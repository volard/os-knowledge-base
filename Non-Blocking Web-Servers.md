---
aliases: non-blocking model
tags: 
sources: https://stackoverflow.com/questions/56794263/spring-webflux-differences-when-netty-vs-tomcat-is-used-under-the-hood, https://thepracticaldeveloper.com/full-reactive-stack-1-intro/
---
# TLDR
As I got it, it's when communication between machines (e.g. client and server) is built with [reactive data streams](https://github.com/reactive-streams/reactive-streams-jvm/blob/master/README.md). 
Reactive programming approach is so widely used that special [Reactive manifest](https://www.reactivemanifesto.org) and [Reactive Streams Specification](https://github.com/reactive-streams/reactive-streams-jvm/blob/v1.0.1/README.md#specification) exists.

It's called **reactive**, because the data is available item by item meanwhile the requested data batch is not fully loaded yet, but some elements ready to use right now.

Immediate access to the just loaded data is possible with Server-sent events 

And this event stream can be stopped by client using [[Back pressure|backpressure]] concept

# From StackOverFlow
Can serve multiple clients with only a single thread. That is because it uses the non-blocking kernel I/O features.

These are just kernel calls which immediately return and call back when something can be written or read, making the CPU free to do other work instead. This would be like, when a cashier needs his supervisor to solve a problem, he does not wait and block the whole lane, but starts to check out the next customer until the supervisor arrives and solves the problem of the first customer.

This is often done in an event loop or higher abstractions as green-threads or fibers. 

Often more complex to read and write (e.g. callback-hell) and doesn't perform well in situations where a request does a lot of CPU-expensive work.

- (-) more complex code
- (-) performance worse with CPU intensive tasks
- (+) uses resources much more efficiently as web server
- (+) many more parallel clients with no hard-limit (except max memory)