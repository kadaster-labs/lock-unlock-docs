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

Op basis van dit project kunnen de volgende conclusies worden getrokken:

### Linked Data maakt federatieve bevraging gemakkelijk

Een federatieve bevraging is op meerdere manier mogelijk, maar Linked Data heeft dit vanuit het
ontwerp al beschikbaar. Een omgeving met REST API's biedt ook wel de mogelijkheid voor federatieve
bevragingen, maar dit legt een grote beheerlast bij de 'vrager'. In SPARQL is deze functionaliteit
gestandaardiseerd en standaard beschikbaar.

#### Performance van federatieve bevraging is moeilijk

In concept is het al ingewikkeld om een generieke werkwijze te bedenken die een query snel uitvoert.
Daar is vrijwel altijd een analyse van de query voor benodigd om uit te werken wat de snelste manier
is om de vraag (query) te beantwoorden. In de verschillende implementaties zijn hier grote
verschillen!

// TODO Sven kijkt naar hdt optimalisering???

#### Koppelen van silo's vraagt expliciet ontwerp

Om over silo's van data heen goed te kunnen navigeren en federatieve bevragingen te kunnen doen,
dienen de schema's én de data goed gekoppeld te zijn. Hierin zou het kunnen helpen om een _upper
ontology_ voor af te spreken. Zie ook [informatiekundige
kern](./federatieve-bevraging/informatiekundigekern.md).

### Afschermen van Linked Data is mogelijk

Het is mogelijk om fijnmazig autorisatie regels declaratief te modelleren op basis van een
autorisatie ontologie voor federatieve bevragingen op basis van Linked Data.

#### Declaratieve autorisatie regels als Linked Data

Met _autorisatie regels_ doelen we op toegangsregels die gelden voor een specifieke situatie. Voor
een bepaalde gebruikersgroep wordt toegang verleend voor een specifiek data-schema, een specifieke
ontologie. De regels die gelden kunnen zeer fijnmazig zijn en de verschillende
[afschermingspatronen](./afscherming/afschermingspatronen.md) bevatten.

De autorisatie regels zijn _declaratief_. Dat betekent dat de gewenste toegang of juist afscherming
gespecificeerd kan worden. Onderliggende uitvoering en zelfs uitwerking wordt overgelaten een de
'engine' die zorgdraagt voor de afscherming.

Autorisatie regels is data en dus is de implementatie data gedreven. Dit betekent:

- dat de autorisatie regels kunnen worden bevraagd (wie heeft toegang tot wat en eventueel zelfs
  waarom (niet) ... waarbij het mogelijk zou moeten zijn om zelfs t/m de wettelijke grondslag te
  linken?)
- dat dezelfde autorisatie regels gebruikt kunnen worden in dezelfde software (engine)

#### Autorisatie ontologie voor standaardisatie

De autorisatie regels kunnen worden gestandaardiseerd in een _autorisatie ontologie_. Dat betekent
dat een software implementatie van deze ontologie als engine gebruikt kan worden om de data van de
autorisatie regels uit te voeren.

Autorisatie ontologie is niet programeertaal afhankelijk en dus zijn er meerdere implementaties van
verschillende programmeertalen mogelijk voor deze ontologie.

## Aanbevelingen

### Meer onderzoek naar performance federatieve bevragingen

// TODO hdt? zo ja of waarom niet?

### 

# Oorspronkelijk

## Conclusies

In deze omgeving is data afscherming noodzakelijk. Dit project heeft verkent en trekt de volgende
conclusies:

-  het is mogelijk om (geavanceerde) autorisatie regels declaratief vast te leggen in LD op basis
  van een Autorisatie ontologie.
-  het is mogelijk om gebruik te maken van een LD schema (T-Box) van de (register) dataset.
  Autorisatie regels zijn daarmee direct gekoppeld aan schema-elementen. Hiermee kan o.a. inzicht
  geboden worden wie waar toegang toe heeft en evt waar niet. Ook geeft deze aanpak mogelijkheden
  tot verificatie van de autorisaties.                      
-  het is mogelijk om gebruik te maken van de data om autorisatie regels op te stellen. Zo kan er
  bijvoorbeeld toegangsregels opgesteld worden voor een bepaalde gemeente. De daadwerkelijke
  gemeente wordt uit de dataset opgehaald.
-  De ge-identificeerde afschermings patronen zijn generiek en bieden veel mogelijkheden tot
  afscherming via configuratie van deze patronen
-  De PoC implementaties laten zien dat veel autorisatie patronen makkelijk implementeerbaar en
  haalbaar zijn. Deze implementaties zijn niet bruikbaar voor productie en evt problemen mbt
  veiligheid en schaalbaarheid zijn niet onderzocht.
-  federatief bevragen van meerdere registers werkt op basis van standaard Linked Data techniek.
  Schaalbaarheid en performance hiervan zijn nog onduidelijk.
-  Fictieve data van gekoppelde register in Linked Data is makkelijk te realiseren. 

## Aanbevelingen

De volgende aanbevelingen kunnen gemaakt worden:

-  Autorisatie ontologie moet verder uitgewerkt worden
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


> \- het betreft hier implementaties voor Proof-of-Concept en demonstratie doeleiden. Zowel de
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

- De geïdentificeerde afschermingspatronen zijn generiek en bieden veel mogelijkheden tot
  afscherming via configuratie van deze patronen
- De PoC implementaties laten zien dat veel autorisatie patronen makkelijk implementeerbaar en
  haalbaar zijn. 
- Deze implementaties zijn nog niet bruikbaar voor productie en eventuele problemen mbt veiligheid
  en schaalbaarheid zijn niet onderzocht.
- Het federatief bevragen van meerdere datasets werkt op basis van standaard Linked Data technieken.
  Schaalbaarheid en performance hiervan zijn niet onderzocht.
- Het creëren van fictieve datasets die te koppelen zijn in Linked Data is makkelijk te realiseren. 

## Aanbevelingen

De volgende aanbevelingen kunnen gemaakt worden:

- De autorisatie ontologie moet verder uitgewerkt worden in overleg met andere organisaties. Hierbij
  moet ook gekeken worden naar de verschillende standaarden zoals XACML en OPA.
- De waterdichtheid van de beveiliging moet aantoonbaar gemaakt kunnen worden.
- Meer inzicht krijgen in de performance van het federatief bevragen van data, ook in combinatie met
  autorisatie
- Binnen het project zijn we er niet aan toegekomen om het afschermen van de richting te
  onderzoeken. De richtings-patronen kunnen nog worden uitgewerkt en evt. worden geïmplementeerd
- de relaties tussen de verschillende registers moeten gestandardiseerd worden opdat je hierop kunt
  bouwen en vertrouwen. In de Linked Data wereld zou je een 'upper' ontologie kunnen definiëren om
  de relaties tussen de registers te formaliseren. Daarna zouden (gelijke) functionele zaken
  gestandardiseerd kunnen worden. Denk aan "ID"'s, versiebeheer en meta-data van registers in Linked
  Data.
- Samenwerking met andere bronhouders is nodig om de adoptie van Linked Data en bijbehorende
  autorisatie te bespoedigen


----

- Vragen beantwoorden van Steven en André:
    -  wat betekent dit in de praktijk?
    -  Technische randvoorwaarden
    -  Organisatorische randvoorwaarden?
    -  Wie moet wat oppakken?