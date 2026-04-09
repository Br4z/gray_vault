---
reviewed_on: 2026-03-17
---

# Django

It is a high-level web framework for Python. It is designed to support rapid development and clean, pragmatic design and it includes many common web-development tools out of the box.

Django provides a structured way to build web applications without assembling every basic piece manually. Common concerns such as URL routing, database access, templates, forms, authentication and administration are handled within the framework.

## Project and app

A Django project is the overall web application and contains the main configuration. It usually includes files such as `settings.py`, `urls.py`, `asgi.py`, and `wsgi.py`.

A Django app is a Python package that provides a specific set of features. Apps can often be reused across different projects and are usually registered in `INSTALLED_APPS`.

## Main components

### Models

Models define the data structure in Python code. Through the ORM, database tables and queries can be handled through Python objects and classes instead of raw SQL in most cases.

### Views

A view is a callable that receives a request and returns a response. It contains the logic that decides what data should be processed and what result should be sent back.

### Templates

Templates define how data is presented, usually as HTML. This helps keep presentation separate from application logic.

### URL configuration

The URL configuration maps URL patterns to views. It acts as the routing system of the application.

### Admin site

Django includes an automatic admin interface based on model metadata. It is mainly intended for internal management rather than for building the public frontend.

## Architecture idea

Django is often described with the MVT pattern: model, view and template. In that structure, the model handles data, the view handles the request and chooses what data is shown and the template handles presentation.

## Why is it used?

Django is often chosen because many important features are included by default. It helps development move quickly, encourages an organized structure, and reduces the need to rebuild common web features from scratch.
