---
aliases: blocking model
tags: 
sources: https://stackoverflow.com/questions/56794263/spring-webflux-differences-when-netty-vs-tomcat-is-used-under-the-hood, https://thepracticaldeveloper.com/full-reactive-stack-1-intro/
---
# TLDR
As I got it, it's when server communicates with frontend and others in such way that information loading at the endpoints in batches only. E.g. you ask for server to show you some products from the store and have to wait until all 50 item is fully ready to be rendered in the browser. So you wait and got all 50 products in once. Pretty stupid waiting time.

Unlike, [[Non-Blocking Web-Servers|non-blocking model]], in the same example, allows to show you products item by item while all 50 is loading. So you already can observe some products and be engaged while the page is still loading and rendering next and next and next .... product up to 50 items

# From StackOver
Blocking, multi-threaded server has a finite set amount of threads in a pool. Every request will get assigned to specific thread and this thread will be assigned until the request has been fully served. This is basically the same as how a the checkout queues in a super market works, a customer at a time with possible parallel lines.

- (+) simpler code

- (-) hard limit of parallel clients
- (-) requires more memory
- (-) inefficient use of hardware for usual web-server work
- (-) easy to DOS


[[Non-Blocking Web-Servers]]