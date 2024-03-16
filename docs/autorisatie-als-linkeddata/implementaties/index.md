---
title: Implementaties
---

De autorisatie kennisgraaf beschrijft declaratief op basis van de autorisatie ontologie wie welke
rechten heeft op welke gegevens in de dataset. Deze declaratieve data zou per definitie voldoende
moeten zijn om een implementatie te voorzien van de juiste gegevens zodat ook daadwerkelijk de
gegevens afgeschermd kunnen worden. Hoewel dit niet verder is uitgewerkt in dit project zou je deze
autorisatie kennisgraaf ook moeten kunnen gebruiken om een set van API's, die per API zeer specifiek
toegang geven tot een subset van de informatie, ook af te schermen. 

Om SPARQL endpoints te beveiligen op basis van de kennisgraaf zijn er verschillende implementaties
mogelijk. Hierbij is onderscheid te maken tussen een implementatie op basis van de (bron)code van
een triplestore die SPARQL queries uitvoert en een implementatie die voor een bestaande triplestore
gezet kan worden als losse service. 

Een implementatie op basis van broncode van een triplestore wordt al heel snel triplestore specifiek
en is bijna onmogelijk voor closed source/ commerciële triplestores. In dit project is dan ook
gekozen voor een aparte service die voor de data afscherming zorgt. 

Binnen dit project zijn er 2 implementatie strategieën geïdentificeerd en verder beproefd op basis
van een snelle PoC (Proof-of-Concept) implementatie: 

- **SPARQL Rewrite:** Bij deze strategie worden inkomende SPARQL queries herschreven zodat alle data
  afschermingen toegevoegd worden aan de query. 

- **Subgraph:** Hierbij wordt op basis van de autorisatie gegevens een subgraph gegenereerd van de
  data waartoe de gebruiker toegang heeft. Vervolgens wordt de originele query op deze subset
  uitgevoerd (ipv uitvoering op alle gegevens). 

### Leeswijzer

Deze twee concepten worden nog verder toegelicht in de volgende subhoofdstukken: 

- [SPARQL Rewrite methode](./rewrite.md)
- [Subgraph methode](./subgraph.md)

Een samenvatting van de sterke en zwakke punten van beide concepten staat in [evaluatie van de twee
implementaties](../evaluatie.md#vergelijking-implementaties).
