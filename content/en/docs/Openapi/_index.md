---
title: "OpenAPI schema"
linkTitle: "OpenAPI schema [OS]"
description: >
  OpenAPI schema documentation and development guidelines.
---

Can be found [here](openapi.json) Only relevant to OpenSubsonic servers.

{{< alert color="warning" title="WIP" >}}
This work is still ongoing, there are some inconsistencies between the docs and the schema. Users should still check the actual docs and servers results until work on it is completely finished.
{{< /alert >}}

## List of known differences compared to official documentation

- Some undocumented typo fixes
- Added minimum: 0 to integer types where it's implied (count, offset, unix timestamp, position)
- **Requires the use of `format=json` parameter**. xml response formats are not supported as of the time of writing this document.
- All extensions are added to the schema and tagged as "Extension", 
  and have an additional 404 return type as well that described as "Not 
  Implemented"
- Excluded examples. They need to be carefully added incrementally to see how they are merged in Swagger/Redoc docs.
- Parameters only existing via Extensions are always added and marked in their description field
- HTTP form POST extensions have an additional response "405 - Method 
  Not Allowed" as an additional way to indicate when they are not 
  supported.
- HTTP form POST extension support might be stricter than what's 
  allowed (global params - auth and format params - only allowed as query 
  params, endpoint specific params are the only ones allowed in request 
  body)

## Building

By default the schema is in parts to for easier maintainability. You can build it with the command below.

```bash
npm run build:openapi
```

This will output the schema to `content/en/docs/Openapi/openapi.json` and also validate the output for correctness. The end result can be used as-is.

### Preservation of previous versions

When a version change happens in the spec, the previous versions' built `openapi.json` should be placed into `content/en/docs/Openapi/openapi-x.x.x.json` for archiving purposes.

## Usage

Ideally this should be used as a reference and for automatic client/server code generation.

### Client Code Generation

#### Python

* [openapi-python-client](https://github.com/openapi-generators/openapi-python-client)  ✅ - Auth params need to be passed in at client initialization

* [openapi-generator](https://github.com/OpenAPITools/openapi-generator) 🚧 - Untested

#### Typescript

* [openapi-zod-client](https://www.npmjs.com/package/openapi-zod-client) ✅

* [openapi-typescript](https://www.npmjs.com/package/openapi-typescript) 🚧 - Untested

* [openapi-generator](https://github.com/OpenAPITools/openapi-generator) 🚧 - Untested

#### Kotlin

* [openapi-generator](https://github.com/OpenAPITools/openapi-generator) 🚧 - Untested

#### Dart

* [openapi-generator](https://github.com/OpenAPITools/openapi-generator) 🚧 - Untested

### C#

* [openapi-generator](https://github.com/OpenAPITools/openapi-generator) 🚧 - Untested

### Server Code Generation

🚧 Not Tested

## Development

**When the documentation is changed the OpenAPI schema MUST BE updated in `openapi` folder and vice-versa.**

### Folder Structure

* `endpoints`  - matches `paths` section in `openapi.json`, files inside should be added to said section. 

* `endpoints/{endpoint}.json/{endpoint}/` - supporting schemas for en endpoint, should be added to `components/schemas` section in `openapi.json`

* `responses` - matches `components/responses` section in `openapi.json` and files inside should be added to said section.

* `schemas` - matches `components/schemas` section in `openapi.json` and files inside should be added to said section.

### Schema validation during development

The fragmented files are not validated in dev environments, so one of 2 ways are recommended when editing.

* Edit/add files. Keep building the output to `static/openapi.json` and keep it open to catch errors.

* Add new endpoints/schemas to `openapi/openapi.json` directly. Move them to different files when you are done with them.

In the future `$schema` tag could be added to each of them to make in-editor validation work but that requires the relevant parts of OpenAPI schema to be served from somewhere in a broken up form - you can add `"$schema": "https://schemas.sourcemeta.com/openapi/v3.0/schema.json"` but you can't add `"$schema": "https://schemas.sourcemeta.com/openapi/v3.0/schema.json#definitions/Schema"`