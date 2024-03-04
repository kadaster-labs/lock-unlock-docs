---
title: Autorisatie als Linked Data ('unlock')
---

Dit hoofdstuk beschrijft het concept om op basis van Linked Data autorisatieregels vast te leggen en wel op zo'n manier dat een implementatie daar direct gebruik van kan maken om SPARQL queries te verwerken zodat er geen afgeschermde gegevens geraadpleegd kunnen worden.

Dit concept wordt verder uitgewerkt inclusief een beschrijving van de autorisatie ontologie zoals die ontwikkeld is in dit project. Het betreft hier een Proof-of-Concept (PoC). 

Om dit concept te implementeren zijn er meerdere strategieën mogelijk. Een paar implementatie strategieën worden kort toegelicht en er zijn twee PoC implementaties gemaakt om de werking van het geheel te kunnen onderzoeken en te kunnen demonstreren.

Dit hoofdstuk sluit af met een evaluatie van de twee implementatie strategieën.



> TO DO: 

> - straks checken of onderstaande in dit hoofdstuk terugkomt
> - daarna inhoudsopgave opschonen en linkjes toevoegen


- Concept toelichten
- Beschrijving autorisatie (&authenticatie) ontologie
    - Waarom zo’n ontologie? Wat is de kracht daarvan?
    - Iets zeggen over relatie met XACML/OPA/ODRL
- Beschrijving twee implementaties autorisatie als LinkedData: 
    - Verwijzen/linken naar de demonstrators/data stories op labs.kadaster.nl
    - Conceptueel: hoe werken ze? -> sequence diagrams
    - Kansen en uitdagingen
    - Voor wat voor use cases wel/niet geschikt
    - Wat is er technisch nodig voor de implementaties?
    - Wat is er organisatorisch nodig? En wie heeft welke rol? (bronhouder, softwareleverancier, FDS etc.)
- Conclusies technische verkenning
    - Wat kunnen we zeggen over autorisatie als linked data?
    - Iets over voor- en nadelen van autorisatie voor federatieve datasets
    - Federatieve query zorgt voor veel queries op het tweede endpoint voor de ‘foreign keys’
- Aanbevelingen vervolgonderzoek
    - Beide opties evalueren en testen
    - Is een combi van beide opties mogelijk?
    - “Richting” onderzoeken
    - Overige aanbevelingen
