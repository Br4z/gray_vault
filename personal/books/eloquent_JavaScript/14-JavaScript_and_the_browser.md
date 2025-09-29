# JavaScript and the browser

> "The dream behind the web is of a common information space in which we communicate by sharing information. Its universality is essential: the fact that a hypertext link can point to anything, be it personal, local or global, be it draft or highly polished." - Tim Berners-Lee, The World Wide Web: A Very Short Personal Pistory.

## Networks and the Internet

**The HyperText Transfer Protocol** (HTTP) is a protocol for retrieving named resources (chunks of information, such as web pages or pictures). It specifies that the side making the request should start with a line like this, naming the resource and the version of the protocol that it is trying to use:

```
GET /index.html HTTP/1.1
```

All internet-connected devices "speak" it (Transmission Control Protocol or TCP), and most communication on the internet is built on top of it.

A TCP connection works as follows: one computer must be waiting, or **listening**, for other computers to start talking to it. To be able to listen for different kinds of communication at the same time on a single machine, each listener has a number (called a **port**) associated with it. Most protocols specify which port should be used by default...

Another computer can then establish a connection by connecting to the target machine using the correct port number. If the target machine can be reached and is listening on that port, the connection is successfully created. The listening computer is called the **server**, and the connecting computer is called the **client**.

## The Web
