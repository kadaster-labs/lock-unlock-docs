---
title: Implementaties
---
De autorisatie kennisgraaf beschrijft declaratief op basis van de autorisatie ontologie wie (op
basis van authenticatie gegevens) welke rechten heeft op welke gegevens in de dataset. Deze
declaratieve data zou per definitie voldoende moeten zijn om een implementatie te voorzien van de
juiste gegevens opdat ook daadwerkelijk de gegevens afgeschermd kunnen worden. Hoewel dit niet
verder is uitgewerkt in dit project zou je deze autorisatie kennisgraaf ook moeten kunnen gebruiken
om een set van API's, die per api zeer specifiek toegang geven tot een subset van de informatie, ook
af te schermen. In dit project is een Proof-of-Concept (PoC) implementatie gemaakt om sparql
endpoints te beveiligen op basis van de autorisatie kennisgraaf. Om zoiets te implementeren maken we
onderscheid tussen een implementatie op basis van de (bron) code van een triplestore die sparql
queries uitvoert en een implementatie die voor een bestaande triplestore gezet kan worden als losse
service. Een implementatie op basis van broncode van een triplestore wordt al heel snel triplestore
specifiek en bijna onmogelijk voor closed source/ commerciele triplestores. In dit project is de PoC
implementatie dan ook op basis van een aparte service die voor de data afscherming zorgt. In deze
context zijn er 2 implementatie strategieen ge-identificeerd en verder beproefd op basis van een
snell PoC implementatie. De eerste strategie is om inkomende sparql queries te herschrijven zodat
alle data afschermingen toegevoegd worden aan de query. Een tweede strategie is om op basis van de
autorisatie gegevens een subset te genereren van de data waartoe de gebruiker toegang heeft.
Vervolgens wordt de originele query op deze subset uitgevoerd (ipv uitvoering op alle gegevens). De
implementaties van deze 2 concepten worden hieronder verder gedocumenteerd.

- [SPARQL Rewrite methode](./rewrite.md)
- [Subgraph methode](./subgraph.md)
