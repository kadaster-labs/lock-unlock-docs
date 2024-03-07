---
title: Evaluatie
---

// TODO conclusies en aanbevelingen naar de algemene conclusies en aanbevelingen verschuiven en deze pagina veranderen naar 'Evaluatie'

// TODO Iets zeggen over:

  - Kansen en uitdagingen (voor-/nadelen) van de twee implementaties
  - Voor wat voor use cases wel/niet geschikt
  - Een (kleine) vergelijk tussen de twee strategieën (kan ook gecombineerd worden met bovenstaande)
  - Wat is er technisch nodig voor de implementaties?
  - Wat is er organisatorisch nodig? En wie heeft welke rol? (bronhouder, softwareleverancier, FDS etc.)

### Conclusies

De volgende conclusies worden getrokken:

- Het afschermen van gegevens zo dicht mogelijk bij de triplestore biedt grotere zekerheid dan
  afscherming van gegevens door applicaties. 
- Autorisatie gegevens kunnen vastgelegd worden in een kennisgraaf op basis van een autorisatie
  ontologie.
- De Autorisatie ontologie is als voorbeeld opgezet en heeft alleen R&D  doeleinden.
- De implementaties laten zien dat het mogelijk is om een dergelijke autorisatie kennisgraaf te
  implementeren*
- Rewritten queries zijn complexer dan de orginele queries waardoor optimale queryplannen
  noodzakelijk zijn om prestatie redenenen. Alleen triplestore met goede optimalisatie van
  queryplannen kunnen deze queries performant uitvoeren.
- Bewijs dat de queries 'waterdicht' zijn is niet aanwezig in dit project noch was dit de
  doelstelling van de PoC implementaties.
- authenticatie zaken zijn niet meegenomen in deze PoC


> \* het betreft hier implementaties voor Proof-of-Concept en demonstratie doeleiden. Zowel de
  Autorisatie ontologie als de implementatie in dit project zijn alleen voor onderzoeks doeleinden
  opgesteld.


### Aanbevelingen

De volgende aanbevelingen zijn mogelijk: 

- Disseminatie van de resultaten voor feedback maar ook voor community vorming om gezamelijk de
  volgende stap te zetten
- Verdere R&D bewijsvoering dat de implementatie waterdicht is. Eventueel in samenwerking met
  academici voor wetenschappelijk fundament
- Verdere R&D prestatie (verbeteringen) federatieve queries zoals technieken zoals FedX en verschil
  in verwerking door verschillende triplestores
- Doorontwikkeling van autorisatie ontologie:  formaliseren van een bruikbare autorisatie ontologie
- Doorontwikkeling implementatie:  Algehele doorontwikkleing van de implementatie inclusief
  resulaten van bovenstaande onderzoeken verwerken. 

----

## Vergelijking implementaties

Beide besproken methodes hebben natuurlijk sterke en zwakke punten. In dit hoofdstuk proberen we
hier een overzicht van te geven.

### Subgraph

- Een autorisatiebeleid is eenvoudig te valideren met de subgraaf methode. Doordat er een complete
  subgraaf gemaakt wordt van de toegankelijke informatie, is deze ook te exporteren en analyzeren.

- Bij iedere verandering van de onderliggende data, moeten de subgraven opnieuw gegenereerd worden.
  Bij frequent veranderende data kan dit te veel tijd gaan kosten

- Om optimaal gebruik te maken van de subgraaf-methode, moeten de subgraven gecached worden. Dit kan
  significante hoeveelheden RAM of schijfruimte kosten. Een alternatief is om de subgraven pas te
  bepalen zodra een query wordt geëvalueerd, maar hierdoor wordt juist het query-process significant
  langzamer.

- Met de subgraaf-methode is het niet mogelijk om bewerkingen aan de onderliggende graaf te
  ondersteunen.

### Rewrite

- Het rewriten van een query is een complex process waarbij makkelijk een fout gemaakt kan worden,
  waardoor mogelijk meer gegevens beschikbaar worden gesteld dan bedoeld.

- De rewrite methode kan toegepast worden voor het autoriseren van bewerkingen op de onderliggende
  graaf.
