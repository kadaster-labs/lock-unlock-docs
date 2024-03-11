---
title: Conclusies en aanbevelingen
---
## Inleiding

Dit project heeft een verkennend karakter en heeft aangenomen dat er een FDS omgeving ontstaat op
basis van Linked data. Hierbij heeft elk register een eigen linked dataset die wordt gedissemineerd
via een sparql endpoint. Het beheer wordt door de register-houder zelf gedaan. Hiermee onstaan
meerdere sparql endpoints die federatief bevraagd kunnen worden door 'out-of-the-box' Sparql
functionaliteit. Deze situatie vraagt om afscherming van gegevens.

# Oorspronkelijk

## Conclusies

In deze omgeving is data afscherming noodzakelijk. Dit project heeft verkent en trekt de volgende
conclusies:

-  het is mogelijk om (geavanceerde) authorisatie regels declaratief vast te leggen in LD op basis
  van een Authorisatie ontologie.
-  het is mogelijk om gebruik te maken van een LD schema (T-Box) van de (register) dataset.
  Authorisatie regels zijn daarmee direct gekoppeld aan schema-elementen. Hiermee kan o.a. inzicht
  geboden worden wie waar toegang toe heeft en evt waar niet. Ook geeft deze aanpak mogelijkheden
  tot verificatie van de authorisaties.                      
-  het is mogelijk om gebruik te maken van de data om authorisatie regels op te stellen. Zo kan er
  bijvoorbeeld toegangsregels opgesteld worden voor een bepaalde gemeente. De daadwerkelijke
  gemeente wordt uit de dataset opgehaald.
-  De ge-identificeerde afschermings patronen zijn generiek en bieden veel mogelijkheden tot
  afscherming via configuratie van deze patronen
-  De PoC implementaties laten zien dat veel authorisatie patronen makkelijk implementeerbaar en
  haalbaar zijn. Deze implementaties zijn niet bruikbaar voor productie en evt problemen mbt
  veiligheid en schaalbaarheid zijn niet onderzocht.
-  federatief bevragen van meerdere registers werkt op basis van standaard Linked Data techniek.
  Schaalbaarheid en performance hiervan zijn nog onduidelijk.
-  Fictieve data van gekoppelde register in Linked Data is makkelijk te realiseren. 

## Aanbevelingen

De volgende aanbevelingen kunnen gemaakt worden:

-  Authorisatie ontologie moet verder uitgewerkt worden
-  Waterdichtheid van de beveiliging moet aantoonbaar gemaakt kunnen worden
-  een formele specificatie van de implementatie is handig om ontwikkelaars te ondersteunen
-  Meer grip op federatieve/locked-unlocked performance   
-  Richting's patroon kan worden uitgewerkt of worden geimplementeerd
-  Relaties tussen de registers moeten gestandardiseerd worden opdat je hierop kunt bouwen en
  vertrouwen. In de linked data wereld zou je een 'upper' ontologie kunnen definieren om de relaties
  tussen de registers te formaliseren. Daarna zouden (gelijke) functionele zaken gestandardiseerd
  kunenn worden. Denk aan "ID"'s en versie beheer en meta-data van registers in LD.
-  Samenwerking met andere registerhouders om de adoptie van LD en bijbehorende beveiligingen te
  bespoedigen

# Evaluatie

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

# Samenvatting

## Conclusies

Op basis van dit project kunnen de volgende conclusies worden getrokken:

* het is mogelijk om authorisatie regels declaratief te formaliseren op basis van een authorisatie ontologie. De implementatie is onafhankelijk van de autorisatie ontologie
* De geïdentificeerde afschermingspatronen zijn generiek en bieden veel mogelijkheden tot afscherming via configuratie van deze patronen
* De PoC implementaties laten zien dat veel authorisatie patronen makkelijk implementeerbaar en haalbaar zijn. 
* Deze implementaties zijn nog niet bruikbaar voor productie en eventuele problemen mbt veiligheid en schaalbaarheid zijn niet onderzocht.
* Het federatief bevragen van meerdere datasets werkt op basis van standaard Linked Data technieken. Schaalbaarheid en performance hiervan zijn niet onderzocht.
* Het creëren van fictieve datasets die te koppelen zijn in Linked Data is makkelijk te realiseren. 

## Aanbevelingen

De volgende aanbevelingen kunnen gemaakt worden:

* De authorisatie ontologie moet verder uitgewerkt worden in overleg met andere organisaties. Hierbij moet ook gekeken worden naar de verschillende standaarden zoals XACML en OPA.
* De waterdichtheid van de beveiliging moet aantoonbaar gemaakt kunnen worden.
* Meer inzicht krijgen in de performance van het federatief bevragen van data, ook in combinatie met  autorisatie
* Binnen het project zijn we er niet aan toegekomen om het afschermen van de richting te onderzoeken. De richtings-patronen kunnen nog worden uitgewerkt en evt. worden geïmplementeerd
* de relaties tussen de verschillende registers moeten gestandardiseerd worden opdat je hierop kunt bouwen en vertrouwen. In de Linked Data wereld zou je een 'upper' ontologie kunnen definiëren om de relaties tussen de registers te formaliseren. Daarna zouden (gelijke) functionele zaken gestandardiseerd kunnen worden. Denk aan "ID"'s, versiebeheer en meta-data van registers in Linked Data.
* Samenwerking met andere bronhouders is nodig om de adoptie van Linked Data en bijbehorende autorisatie te bespoedigen


----

- Vragen beantwoorden van Steven en André:
    -  wat betekent dit in de praktijk?
    -  Technische randvoorwaarden
    -  Organisatorische randvoorwaarden?
    -  Wie moet wat oppakken?