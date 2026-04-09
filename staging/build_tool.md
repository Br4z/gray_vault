---
reviewed_on: 2026-03-16
---

# Build tool

It is software that prepares frontend source code for actual use in the browser. Files are transformed, organized, and optimized so that an application can run correctly and efficiently.

## What is a development server?

A development server is a local server used while an application is being built. Source files are served in a way that makes testing in the browser easy and changes can be reflected quickly without rebuilding the entire project each time.

## Why frontend code must be bundled for production?

Frontend code is usually written as many separate modules, styles, and assets because that structure is easier to develop and maintain. In production, however, sending too many separate files is inefficient because it increases network overhead and slows loading. A production build bundles and optimizes the code so that delivery becomes faster and more reliable.

Bundling also makes other optimizations possible, such as removing unused code, splitting code into useful chunks, reducing file size, and improving caching. For that reason, code that is convenient during development is usually transformed into optimized static files before deployment.
