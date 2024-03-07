---
title: Lock-Unlock Project
---
Het Lock–Unlock project is uitgevoerd in opdracht van het [Federatief
Datastelsel](https://realisatieibds.pleio.nl/page/view/8852ee2a-a28a-4b91-9f3e-aab229bbe07f/federatief-datastelsel),
programmaonderdeel van [Realisatie IBDS](https://realisatieibds.pleio.nl/). Binnen het Federatief
Datastelsel is het kunnen delen van data uiteraard de kern, maar dit moet ook op een verantwoorde
manier gebeuren, waarbij bescherming van data en autorisatie belangrijk zijn.

Lock-Unlock richt zich op [Linked Data](./federatieve-bevraging/linkeddata.md), voortbouwend op de
<a href="https://labs.kadaster.nl/cases/integralegebruiksoplossing" target="_blank">Integrale
Gebruiksoplossing (IGO)</a> en de <a href="https://labs.kadaster.nl/thema/Knowledge_graph"
target="_blank">Kadaster Knowledge Graph (KKG)</a> ontwikkeld door het Kadaster. Er zijn weinig
gestandaardiseerde mogelijkheden voor autorisatie van data in het Linked Data domein. Dit project is
uitgevoerd om de (on)mogelijkheden te onderzoeken en te testen.

In onderstaande infographic zijn de verschillende onderdelen van het project terug te vinden. We
starten met een testopstelling voor [federatieve bevraging](./federatieve-bevraging/index.md). Als dat
aangetoond en mogelijk is, dan rijst de vraagt of data ook afgeschermd kan worden. Dat doen we in
het hoofdstuk [afscherming](./afscherming/index.md); hier zoeken we naar een 'lock' :lock: op de data. In
het derde deel komen we bij het doel van het onderzoek, namelijk of het mogelijk is om toegang te
verlenen aan geautoriseerde vragers: [autorisatie als Linked Data](./autorisatie-als-linkeddata/index.md) en
daarmee de 'unlock' :unlock: van de data.

![Infographic](images/infographic.png)

Zie ook onze open source projecten:

- [Lock-Unlock Docs](https://github.com/kadaster-labs/lock-unlock-docs)
    - Authorization Onthology (in research)
    - Logging Onthology (in research)
- [Lock-Unlock Testdata](https://github.com/kadaster-labs/lock-unlock-testdata)
- [Secured SPARQL Endpoint Sub Graph](https://github.com/kadaster-labs/secured-sparql-endpoint-subgraph)
  (based on Apache Jena & SpringBoot)
- [Secured SPARQL Endpoint Rewrite (SPARQL
  Query)](https://github.com/kadaster-labs/secured-sparql-endpoint-rewrite) (based on Fuseki)
- [Lock-Unlock Helm Charts](https://github.com/kadaster-labs/lock-unlock-helm-charts)
