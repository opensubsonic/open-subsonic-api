---
title: "OpenAPI schema"
linkTitle: "OpenAPI schema [OS]"
description: >
  OpenAPI schema documentation and development guidelines.
---

Can be found [here](openapi.json) Only relevant to OpenSubsonic servers.

{{< alert color="warning" title="WIP" >}}
This work is still ongoing, there are some inconsistencies between the docs and the schema. Users should still check the actual docs and servers results until work on it is completely finished. [Link to full list of differences](https://github.com/opensubsonic/open-subsonic-api/pull/137#issue-2958276443)
{{< /alert >}}

## Building

By default the schema is in parts to for easier maintainability. You can build it with the command below.

```bash
npm run build:openapi
```

This will output the schema to `content/en/docs/Openapi/openapi.json` and also validate the output for correctness. The end result can be used as-is.

### Preservation of previous versions

When a version change happens in the spec, the previous versions' built `openapi.json` should be placed into `content/en/docs/Openapi/openapi-x.x.x.json` for archiving purposes.

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