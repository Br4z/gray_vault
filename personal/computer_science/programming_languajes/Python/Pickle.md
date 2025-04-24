---
reviewed_on: "2025-01-10"
sources:
  - author: Davide Mastromatteo
    url: https://realpython.com/python-pickle-module
    language: English
---

# Pickle

The pickle module implements binary protocols for serializing and deserializing a Python object structure. "Pickling" is the process which a Python object hierarchy is converted into a byte stream, and "unpickling" is the inverse operation, which a byte stream is converted back into an object hierarchy.

> It is possible to construct malicious pickle data which will **execute arbitrary code during unpickling**.

The Python pickle module basically consists of four methods:

1. `pickle.dump(obj, file, protocol=None, *, fix_imports=True, buffer_callback=None)`.

2. `pickle.dumps(obj, protocol=None, *, fix_imports=True, buffer_callback=None)`.

3. `pickle.load(file, *, fix_imports=True, encoding="ASCII", errors="strict", buffers=None)`.

4. `pickle.loads(bytes_object, *, fix_imports=True, encoding="ASCII", errors="strict", buffers=None)`.

## Example

```python
list = ["l", "i", "s", "t"]

with open("file", "wb") as file:
	pickle.dump(file, list)

with open("file", "rb") as file:
	list = pickle.load(file)

print(list)
```
