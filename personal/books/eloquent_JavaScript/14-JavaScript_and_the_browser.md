---
reviewed_on: "2025-10-30"
---

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

The World Wide Web (not to be confused with the internet as a whole) is a set of protocols and formats that allow us to visit web pages in a browser...

Each document on the web is named by a **uniform resource locator** (URL), which looks something like this:

```
  http://eloquentjavascript.net/13_browser.html
 |      |                      |               |
 protocol       server               path
```

Machines connected to the internet get an **IP address**, a number that can be used to send messages to that machine...Since lists of more or less random numbers are hard to remember and awkward to type, you can instead register a domain name for an address or set of addresses.

## HTML

HTML, which stands for HyperText Markup Language, is the document format used for web pages. An HTML document contains text, as well as **tags** that give structure to the text, describing things such as links, paragraphs, and headings.

HTML documents have a head and a body. The head contains information about the document, and the body contains the document itself...

Tags come in several forms...Some opening tags, such as the one for the link (`<a>`), contain extra information in the form of `name="value"` pairs. These are called **attributes**.

To be able to include angle brackets in the text of a document even though they have a special meaning in HTML, yet another form of special notation has to be introduced. A plain opening angle bracket is written as `&lt;` ("less than"), and a closing bracket is written as `&gt;` ("greater than"). In HTML, an ampersand (`&`) character followed by a name or character code and a semicolon (`;`) is called an **entity** and will be replaced by the character it encodes.

HTML is parsed in a remarkably error-tolerant way. When tags that should be there are missing, the browser automatically adds them. The way this is done has been standardized, and you can rely on all modern browsers to do it in the same way.
