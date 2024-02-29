---
title: Conclusies en aanbevelingen
---
## Inleiding

Dit project heeft een verkennend karakter en heeft aangenomen dat er een FDS omgeving ontstaat op
basis van Linked data. Hierbij heeft elk register een eigen linked dataset die wordt gedissemineerd
via een sparql endpoint. Het beheer wordt door de register-houder zelf gedaan. Hiermee onstaan
meerdere sparql endpoints die federatief bevraagd kunnen worden door 'out-of-the-box' Sparql
functionaliteit. Deze situatie vraagt om afscherming van gegevens.

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

----

- Vragen beantwoorden van Steven en André:
    -  wat betekent dit in de praktijk?
    -  Technische randvoorwaarden
    -  Organisatorische randvoorwaarden?
    -  Wie moet wat oppakken?