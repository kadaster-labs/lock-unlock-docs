---
title: Demonstrator
---
Genoeg beschreven over federatieve bevragingen. Nu willen we dat wel eens zien! Daarvoor maken we
gebruik van SPARQL (zie ook [API's](./apis.md) en [Linked Data](./linkeddata.md)). Deze query taal
kent het begrip `service` om aan te geven dat informatie van een ander endpoint opgehaald dient te
worden. Daarmee geeft de gebruiker het eerste endpoint, het endpoint dat direct bevraagd wordt, de
opdracht om andere endpoints te betrekken bij de uitvoering van de query. Uitgaande van de
[testopstelling#deployment](./testopstelling.md#deployment) ziet een federatieve bevraging er dan
schematisch als volgt uit:

![Schematische SPARQL Query demo](images/testopstelling-federatieve-bevraging.png)

// TODO live demo toevoegen of linken naar data story?

Belangrijk om in te gaan op het integraal bevragen van de data én het navigeren door de datasets heen: hoe kan je nu bijv. vanuit een perceel (BRK) naar een stichting (ANBI)? 
