---
title: Autorisatie als Linked Data ('unlock')
---

Dit hoofdstuk beschrijft het concept om op basis van Linked Data autorisatieregels vast te leggen en wel op zo'n manier dat een implementatie daar direct gebruik van kan maken om SPARQL queries te verwerken zodat er geen afgeschermde gegevens geraadpleegd kunnen worden. 

Dit concept wordt verder uitgewerkt inclusief een beschrijving van de autorisatie ontologie zoals die ontwikkeld is in dit project. Het betreft hier een Proof-of-Concept (PoC). 

Om dit concept te implementeren zijn er meerdere strategieën mogelijk. Een paar implementatie strategieën worden kort toegelicht en er zijn twee PoC implementaties gemaakt om de werking van het geheel te kunnen onderzoeken en te kunnen demonstreren.

Dit hoofdstuk sluit af met een evaluatie van de twee implementatie strategieën.

## Leeswijzer
- [Concept toelichten](./concept.md)
- [Beschrijving autorisatie (& authenticatie) ontologie](./authorisation-ontology.md)
    - Waarom zo’n ontologie? Wat is de kracht daarvan?
    - Iets zeggen over relatie met XACML/OPA/ODRL
- [Autorisatie als Linked Data implementaties](./implementaties/index.md)
    - Kansen en uitdagingen
    - Voor wat voor use cases wel/niet geschikt
    - Wat is er technisch nodig voor de implementaties?
    - Wat is er organisatorisch nodig? En wie heeft welke rol?
- [Demonstrators van de twee implementaties](./demonstrators/index.md)
- [Evaluatie en vergelijking van twee demonstrators](./evaluatie.md)
