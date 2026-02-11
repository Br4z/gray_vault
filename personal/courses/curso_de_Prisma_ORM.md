---
reviewed_on: "2025-03-18"
sources:
  - author: Fazt Code
    url: https://www.youtube.com/watch?v=N5dkg28jRF0
    language: Spanish
---

# Curso de Prisma ORM

Prisma ORM (Object-Relational Mapping) is a modern database toolkit for Node.js and TypeScript that simplifies database access and management. It allows developers to interact with databases using TypeScript or JavaScript instead of writing raw SQL queries.

## Project configuration

1. `npm init -y`: initialize a Node.js project:.

2. `npm install @prisma/client`: install the module in charge of interact with the database.

3. `npm i -D prisma`: install the module `prisma` as a development dependency.

4. `npx prisma init --datasource-provider sqlite`.

	- Creates a `prisma/` folder containing `schema.prisma`.

		```
		// This is your Prisma schema file,
		// learn more about it in the docs: https://pris.ly/d/prisma-schema

		generator client {
			provider = "prisma-client-js"
		}

		datasource db {
			provider = "sqlite"
			url      = env("DATABASE_URL")
		}
		```

	- Generates an `.env` file with a `DATABASE_URL` variable.

	- Sets SQLite as the default database.

## Models

In Prisma, models define the structure of database tables. Each model represents a table, and its fields map to table columns. Models are written inside the `schema.prisma`.

After defining a model we must run `npx prisma migrate dev`, this command

- generates a new migration file inside `prisma/migrations/`.

- applies the changes to the database schema.

- keeps track of schema changes for version control.

## Prisma studio

Prisma Studio is a graphical user interface (GUI) that allows you to view, edit, and manage your database records visually. It is useful for quickly inspecting and modifying data without writing SQL queries.

To open Prisma Studio, we must run `npx prisma studio`.

## Prisma and TypeScript

To create a project that uses TypeScript, we mush follow the following instructions:

1. `npm init -y`.

2. `npm install -D prisma typescript ts-node-dev ts-node @types/node`.

	- `typescript`: adds TypeScript support.

	- `ts-node`: allows running TypeScript files directly.

	- `@types/node`: provides TypeScript definitions for Node.js.

3. `npm install @prisma/client`.

4. `npx tsc --init`: creates `tsconfig.json` (TypeScript settings for the project.
) file.

5. Edit `tsconfig.json`.

	1. `"rootDir" = "./src"`: sets `src/` as the folder for TypeScript files.

	2. `"outDir": "./dist"`: compiled JavaScript files will be placed in `dist/`.

6. Edit `package.json`: in scripts, add `"dev": "ts-node-dev -respawn src/index.ts"`.

	- `ts-node-dev`: runs TypeScript files automatically with hot reloading.

	- `--respawn`: restarts the process when files change.

## Deploy in external services

When deploying a Prisma project to a production environment, you need to configure the database and apply migrations properly.

1. Modify `.env` to use a production database instead of a local one.

	For example:

	```
	DATABASE_URL="postgresql://user:password@your-production-db-host:5432/database"
	```

2. `npx prisma migrate deploy`: applies all existing migrations to the production database.
