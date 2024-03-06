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
