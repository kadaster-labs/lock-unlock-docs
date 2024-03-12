---
title: Glossary
---

### Authenticatie

Om de gebruiker te herkennen is een authenticatie proces nodig. In dit project is de gehele
authenticatie overgeslagen en dus buiten scope. 

### Autorisatie

Autorisatie is het proces waarbij een gebruiker rechten (of privileges) verkrijgt. In dit project is
er afgeschermde data. Per gebruiker of rol kan de afscherming verschillen. Oftewel per rol of
gebruiker zijn de privileges tot data verschillend.

### Dataset

Een collectie van bij elkaar horende gegevens. Dat kan bestaan uit een enkele tabel, maar ook uit
een verzameling tabellen uit een database.

Als een deel van een dataset geduid wordt, dan wordt vaak gesproken over een **subset**.

Dit is vooral jargon wanneer over databases gesproken wordt. In geval van [Linked
Data](#linked-data) wordt er meer gesproken over een [graph](#graph) of subgraph.

### Graph

In geval van [Linked Data](#linked-data) wordt data gezien als nodes met relaties. Het totaal aan
nodes en relaties vormen samen een graaf of graph (Engels). In de techniek wordt vooral de Engels
notatie gebruikt.

Je zou kunnen stellen dat een collectie van data voor een bepaalde context bij elkaar horend één
graph vormen. Dit lijkt op zoals er over [dataset](#dataset)s gesproken wordt. En vergelijkbaar met
een deel van een dataset, kan ook een deel van een graph aangeduid worden met **subgraph**.

Dit is vooral jargon wanneer de data [Linked Data](#linked-data) betreft. In geval van meer
traditionele vormen als REST API's en databases wordt over [dataset](#dataset)s gesproken.

### Linked Data

Linked data is manier om data te structureren en te verbinden over het web en maakt gebruik van
stanfaarden zoals URI's, RDF en ontologieen gedefinieerd in [RDF](#rdf) zoals RDFS, [OWL](#owl) en
[SHACL](#shacl). 

### OWL

OWL staat voor de Web Ontology Language en is een gestandardiseerde taal voor formaliseren van
ontologieen op basis van Linked Data.

### RDF

RDF staat voor Resource Description Framework. Het is een gestandardiseerd model voor het opslaan
van verwerkbare gegevens en biedt een zeer veel flexibiliteit mbt het structureren en beschrijven
van gegevens.

### SHACL

SHACL staat voor Shapes Constraint Language. Het is een W3C stdnaard voor het valideren van RDF data
volgens een Shacl model. Via Shacl kun je zogenaamde Shapes definieren die structuren beschrijven
van RDF data. Vervolgens kan RDF data getest worden of ze voldoen aan deze shapes. 

### SPARQL

Sparql is een querytaal voor het bevragen en manipuleren van [Linked Data](#linked-data) op basis
van de RDF standaard. Sparql biedt o.a. de mogelijkheid om complexe vragen te stellen aan Linked
Data waarbij er op zoek gegaan wordt naar 'oplossingen' die voldoen aan de vraag.

### SPARQL Endpoint

Een SPARQL endpoint is een REST API die [SPARQL](#sparql) queries kan uitvoeren. Het betreft hier
een W3C standaard. 

### Triplestore

Een triplestore is een database voor het opslaan en bevragen van [Linked Data](#linked-data) op
basis van de [RDF](#rdf) standaard. Vaak biedt een triplestore een [SPARQL
endpoint](#sparql-endpoint) aan.

### Uniform Resource Identifier 

Een reeks tekens die wordt gebruikt om een bron op een computernetwerk te identificeren, waarvan het bekendste type het webadres of een URL is.
