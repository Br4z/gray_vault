---
reviewed_on: "2025-02-01"
---

# GitFlow practice

1. Initialize a GitFlow repository: `git flow init`.

2. Create a new feature.

	1. `git flow feature start contact_page`.

	2. `echo "<h1>Contacts us</h1> > contact.html`.

	3. `git add contact.html`.

	4. `git commit -m "add contact us page"`.

3. Finish a new feature: `git flow feature finish contact_page`.

4. Create a release.

	1. `git flow release start v1.0`.

	2. `echo "version 1.0 > version.txt`.

	3. `git add version.txt`.

	4. `git commit -m "prepare release v1.0`.

5. Finish a release: `git flow release finish v1.0`.

6. Create a hotfix.

	1. `git flow hotfix start fix_contact_page`.

	2. `echo "<p>Contact page fixed</p> >> contact.html`.

	3. `git add contact.html`.

	4. `git commit -m "fix broken contact page"`.

7. Finish a hotfix: `git flow hotfix finish fix_contact_page`.
