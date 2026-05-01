---
reviewed_on: "2026-02-21"
---

# What is .NET and how is it related to C#?

## What is .NET?

.NET is a **software platform** (ecosystem) that provides:

1. A **runtime** (the engine that runs the code).

2. A large set of **libraries** (ready-made code for common tasks.

3. **Tools** to build and run apps (like `dotnet`).

So, .NET is not a language by itself, it is the **environment** and **toolkit**

## How they connect

Most of the time, you use C# **to build .NET applications**. So, C# is the used language and .NET is the platform that runs it.

## What actually happens when you run a C# program?

1. You write C# code.

2. A compiler turns it into LM (intermediate language).

3. The **.NET runtime** executes it (often using just-in-time compilation to machine code).

4. While running, .NET also provides services like:

	- **Garbage collection** (automatic memory management).

	- Exception handling, threading, etc.

## All the ".NET things"

When people say ".NET", they might mean **different layers**: runtimes, frameworks, standards or tools.

### The main "implementations" of .NET

#### .NET framework

The original, Windows-only .NET platform (classic enterprise). Today mostly **legacy**/**maintenance**, still used in many older apps, but not modern default.

#### .NET core

The modern, **cross-platform** rebuild of .NET. Starting with version 5, Microsoft stopped using the "core" name and just ".NET".

#### .NET

The **current** unified platform. It is cross-platform and open source.

### The standards and compatibility layes

#### .NET standard

It is a **specification of APIs** that multiple .NET implementations agree to support, so one library can work across them. Back then when .NET framework and .NET core overlapped, it helped library authors target "common APIs".

### The app frameworks built on top of .NET

#### ASP.NET / ASP.NET core

They are frameworks to build **web apps and web APIs**.

#### Windows forms (WinForms) and WPF

They are desktop UI frameworks (Windows focused). Microsoft lists these as app stacks in the .NET ecosystem.
