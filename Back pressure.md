---
aliases: backpressure
sources: https://thepracticaldeveloper.com/full-reactive-stack-1-intro/, https://projectreactor.io/docs/core/release/reference/index.html#_from_imperative_to_reactive_programming
---

> Subscriber has the control of the reactive data stream, so the consumer can signal the publisher to stop producing data instead of having to accumulate it in buffers

or

> the ability for the consumer to signal the producer that the rate of emission is too high

I've remembered it via imaginary picture where client **pressure** the server to stop sending him bullshit despite usually in the web in common one-direction communication (server to client), but in non-blocking model client can call **back** to server 