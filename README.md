# Lock Unlock Docs

[![Publish docs via GitHub Pages](https://github.com/kadaster-labs/lock-unlock-docs/actions/workflows/gh-pages.yml/badge.svg)](https://github.com/kadaster-labs/lock-unlock-docs/actions/workflows/gh-pages.yml)
[![pages-build-deployment](https://github.com/kadaster-labs/lock-unlock-docs/actions/workflows/pages/pages-build-deployment/badge.svg)](https://github.com/kadaster-labs/lock-unlock-docs/actions/workflows/pages/pages-build-deployment)

This repo contains the documentation of the [Lock-Unlock
Project](https://labs.kadaster.nl/cases/lockunlock): 'lock the data, unlock the potential'.

Check out our research implementations of secured SPARQL endpoints and our testdata:

- (this repo) [Lock-Unlock Docs](https://github.com/kadaster-labs/lock-unlock-docs)
  - [Authorisation Ontology](./ontologies/Authorisation.ttl) (in research)
  - [Logging Ontology](./ontologies/Logging.ttl) (in research)
- [Lock-Unlock Testdata](https://github.com/kadaster-labs/lock-unlock-testdata)
- [Secured SPARQL Endpoint Sub Graph](https://github.com/kadaster-labs/secured-sparql-endpoint-subgraph)
  (based on Apache Jena & SpringBoot)
- [Secured SPARQL Endpoint Rewrite (SPARQL
  Query)](https://github.com/kadaster-labs/secured-sparql-endpoint-rewrite) (based on Fuseki)
- [Lock-Unlock Helm Charts](https://github.com/kadaster-labs/lock-unlock-helm-charts)

## Local development

The publication of the documentation is based on [Squidfunk Mkdocs
Material](https://squidfunk.github.io/mkdocs-material/)

Develop & serve on [localhost:8000](http://localhost:8000/):

```bash
docker run --rm -it -p 8000:8000 -v ${PWD}:/docs squidfunk/mkdocs-material
```

## Publish & Versioning

The documentation of this repo is published on [GitHub Pages](https://pages.github.com/). It is set
up to support multiple versions of the documentation seperately. It uses
[mike](https://github.com/jimporter/mike) to do so, following the documetation of mkdocs: [Seting up
versioning](https://squidfunk.github.io/mkdocs-material/setup/setting-up-versioning/). This means:

- the `main` branch is published under 'version' `dev`
- every branch starting with `v` is published under the branch name; e.g. branch `v0.90` is
  published as such
- there is a workflow available to [set the default
  version](https://github.com/kadaster-labs/lock-unlock-docs/actions/workflows/set-default.yml) to
  show; this takes a manual input ( :warning: be sure to enter a matching name)

## License

Om hergebruik en doorontwikkeling maximaal mogelijk te maken, is dit project gelicenseerd onder
[CC0](LICENSE.md).

> **English**
> 
> To promote reuse and development of this project, this project is licensed under [CC0](LICENSE.md)
