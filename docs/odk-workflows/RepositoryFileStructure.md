# Repository structure

The main kinds of files in the repository:

1. Release files
2. Imports
3. [Components](#components)

## Release files
Release file are the file that are considered part of the official ontology release and to be used by the community. A detailed description of the release artefacts can be found [here](https://github.com/INCATools/ontology-development-kit/blob/master/docs/ReleaseArtefacts.md).

## Imports
Imports are subsets of external ontologies that contain terms and axioms you would like to re-use in your ontology. These are considered "external", like dependencies in software development, and are not included in your "base" product, which is the [release artefact](https://github.com/INCATools/ontology-development-kit/blob/master/docs/ReleaseArtefacts.md) which contains only those axioms that you personally maintain.

These are the current imports in MORE

| Import | URL | Type |
| ------ | --- | ---- |
| obi | http://purl.obolibrary.org/obo/obi.owl | slme |
| ro | https://raw.githubusercontent.com/oborel/obo-relations/refs/tags/v2025-06-24/core.owl | slme |
| stato | http://purl.obolibrary.org/obo/stato.owl | slme |
## Components
Components, in contrast to imports, are considered full members of the ontology. This means that any axiom in a component is also included in the ontology base - which means it is considered _native_ to the ontology. While this sounds complicated, consider this: conceptually, no component should be part of more than one ontology. If that seems to be the case, we are most likely talking about an import. Components are often not needed for ontologies, but there are some use cases:

1. There is an automated process that generates and re-generates a part of the ontology
2. A part of the ontology is managed in ROBOT templates
3. The expressivity of the component is higher than the format of the edit file. For example, people still choose to manage their ontology in OBO format (they should not) missing out on a lot of owl features. They may choose to manage logic that is beyond OBO in a specific OWL component.

These are the components in MORE

| Filename | URL |
| -------- | --- |
| imports-edit.owl | None |
| template.owl | None |
