---
title: Conclusies en aanbevelingen
---
> // TODO anchors & (hover) links toevoegen

Lock-Unlock richt zich op [Linked Data](./federatieve-bevraging/linkeddata.md), voortbouwend op de
<a href="https://labs.kadaster.nl/cases/integralegebruiksoplossing" target="_blank">Integrale
Gebruiksoplossing (IGO)</a> en de <a href="https://labs.kadaster.nl/thema/Knowledge_graph"
target="_blank">Kadaster Knowledge Graph (KKG)</a> ontwikkeld door het Kadaster. Er zijn weinig
gestandaardiseerde mogelijkheden voor autorisatie van data in het Linked Data domein. Dit project is
een verkenning om de (on)mogelijkheden te onderzoeken en te testen.

## Conclusies

Hoewel het doel van dit project vooral lag op [autorisatie als Linked
Data](./autorisatie-als-linkeddata/index.md), is een deel van de aandacht ook gegaan naar
[federatieve bevraging](./federatieve-bevraging/index.md). Dat schetst namelijk de context waarin
[afscherming](./afscherming/index.md) zou moeten plaatsvinden. Uiteraard hebben we ook beproefd in
hoeverre autorisatie als Linked Data mogelijk en haalbaar is. Hierover hebben we apart een
[evaluatie](./autorisatie-als-linkeddata/evaluatie.md) geschreven. De conclusies volgen hier:

:warning: Zie ook [disclaimer](#disclaimer).

### Federatieve bevraging

**Linked Data maakt federatieve bevraging gemakkelijk**

Een federatieve bevraging is op meerdere manier mogelijk. Een omgeving met REST API's biedt ook wel
de mogelijkheid voor federatieve bevragingen, maar dit legt een grote beheerlast bij de 'vrager'. Met GrapahQL zijn daar stappen in gemaakt, maar daarin is nog steeds behoefte aan gateway oplossingen.

Linked Data is _ontworpen_ met federatie in de basis. Vanuit het ontwerp is federatieve bevraging
daarom al beschikbaar. In de Linked Data Query Language, SPARQL, is dit gespecificeerd met de
`service` clause.

**Performance van federatieve bevraging is moeilijk**

Dat federatieve bevraging standaard in de Query Language zit en in de basis van Linked Data wil dat
niet zeggen dat er geen 'problemen' zijn. In concept is het al ingewikkeld om een generieke
werkwijze te bedenken die een query snel uitvoert. Daar is vrijwel altijd een analyse van de query
voor benodigd om uit te werken wat de snelste manier is om de vraag (query) te beantwoorden. Deze
analyse en uitwerking naar snelle uitvoering van federatieve vragen, is niet gestandaardiseerd in
SPARQL of Linked Data. In de verschillende implementaties zijn hier grote verschillen!

Er zijn wel ontwikkelingen rondom federatieve bevraging in het Linked Data domein. Zie ook
aanbeveling [Meer onderzoek naar performance federatieve bevragingen](#aanbevelingen)

**Koppelen van silo's vraagt expliciet ontwerp**

Om over silo's van data heen goed te kunnen navigeren en federatieve bevragingen te kunnen doen,
dienen de schema's én de data goed gekoppeld te zijn. Ook voor Linked Data. Wel biedt Linked Data
hier verschillende mogelijkheden voor. Zo is het mogelijk om een _upper ontology_ voor relaties af
te spreken en deze toe te voegen aan bestaande ontologieën en informatiemodellen.

Zie ook [informatiekundige kern](./federatieve-bevraging/informatiekundigekern.md).

### Autorisatie als Linked Data

**Afschermen van Linked Data is mogelijk**

Het is mogelijk om fijnmazig autorisatie regels declaratief te modelleren op basis van een
autorisatie ontologie voor federatieve bevragingen op basis van Linked Data. We hebben dit aan
kunnen tonen in onze [demonstrators](./autorisatie-als-linkeddata/demonstrators/index.md), waarin we
een eerste toepassing van een door ons ontwikkelde autorisatie ontologie hebben uitgewerkt.

**Declaratieve autorisatie regels als Linked Data**

Met _autorisatie regels_ doelen we op toegangsregels die gelden voor een specifieke situatie. Voor
een bepaalde gebruikersgroep wordt toegang verleend voor een specifiek data-schema, een specifieke
ontologie. De regels die gelden kunnen zeer fijnmazig zijn en de verschillende
[afschermingspatronen](./afscherming/afschermingspatronen.md) bevatten. We hebben in onze
demonstrators aangetoond dat [verticale en horizontale
subsets](./afscherming/afschermingspatronen.md#subset) mogelijk zijn. De
[richting](./afscherming/afschermingspatronen.md#richting) is moeilijker en zijn we onvoldoende aan
toegekomen om te kunnen zeggen dat dat echt werkt. Is het mogelijk? Wij denken van wel.

De autorisatie regels zijn _declaratief_. Dat betekent dat de gewenste toegang of juist afscherming
gespecificeerd kan worden. Onderliggende uitvoering en zelfs uitwerking wordt overgelaten een de
'engine' die zorgdraagt voor de afscherming.

Dit houdt ook in dat autorisatie regels data is `#data-gedreven`. Dit betekent:

- dat de autorisatie regels kunnen worden bevraagd (wie heeft toegang tot wat en eventueel zelfs
  waarom (niet)). Wellicht is het mogelijk om te verwijzen t/m de wettelijke grondslag?
- dat de autorisatie regels kunnen worden opgesteld en gedefinieerd onafhankelijk van de software
  (engine) waarin de regels worden afgedwongen
- dat de autorisatie regels als _knowledge graph_ toegankelijk zijn

**Autorisatie ontologie voor standaardisatie**

De autorisatie regels kunnen worden gestandaardiseerd in een _autorisatie ontologie_. Dat betekent
dat een software implementatie van deze ontologie als engine gebruikt kan worden om de data van de
autorisatie regels uit te voeren. Doordat een ontologie programeertaal onafhankelijk is, kunnen er
meerdere implementaties gemaakt worden voor de autorisatie ontologie.

**Declaratieve autorisatie regels gekoppeld aan bestaande ontologieën**

Het is mogelijk om in de declaratie van de autorisatie regels volgens de autorisatie ontologie, een
relatie te maken naar al bestaande ontologieën. Dat wil zeggen dat de toegang (of juist ontzegging
daarvan) gedeclareerd kan worden volgens de autorisatie ontologie en daarbij kan gedeclareerd worden
_over welke_ andere ontologie die regels gelden. In ons voorbeeld zijn dat de registratie
ontologieën van de BRK, BRP en NHR. De autorisatie regels zijn daarmee direct gekoppeld aan de
schema-elementen van deze register ontologieën.

Deze vorm biedt inzicht in wie waar toegang toe heeft of juist niet. Daarmee biedt het mogelijkheden
tot verificatie van de autorisaties (eventueel aan andere partijen, zoals een toezichtshouder).

### Conclusies van beproevingen

- het is mogelijk om gebruik te maken van de data om autorisatie regels op te stellen. Zo kan er
  bijvoorbeeld toegangsregels opgesteld worden voor een bepaalde gemeente. De daadwerkelijke
  gemeente wordt uit de dataset opgehaald.

- De ge-identificeerde afschermings patronen zijn generiek en bieden veel mogelijkheden tot
  afscherming via configuratie van deze patronen

- De PoC implementaties laten zien dat veel autorisatie patronen makkelijk implementeerbaar en
  haalbaar zijn. Deze implementaties zijn niet bruikbaar voor productie en evt problemen mbt
  veiligheid en schaalbaarheid zijn niet onderzocht. Zie ook [disclaimer](#disclaimer).

- Fictieve data van gekoppelde registers in Linked Data is makkelijk te realiseren. 

- Rewritten queries uit de [implementatie
  rewrite](./autorisatie-als-linkeddata/implementaties/rewrite.md) zijn complexer dan de orginele
  queries. Dat geeft extra belasting bij de uitvoering van de query. Daarom zijn optimale
  queryplannen noodzakelijk zijn om prestatie (performance) redenenen. Alleen triplestore met goede
  optimalisatie van queryplannen kunnen deze queries performant uitvoeren.

- Het afschermen van gegevens zo dicht mogelijk bij de triplestore biedt grotere zekerheid dan
  afscherming van gegevens door applicaties

- Bewijs dat de queries 'waterdicht' zijn is niet aanwezig in dit project noch was dit de
  doelstelling van de PoC implementaties. Zie ook aanbeveling [Volledigheid en effectiviteit
  meetbaar maken](#volledigheid-en-effectiviteit-meetbaar-maken)

## Aanbevelingen

**Meer onderzoek naar performance federatieve bevragingen**

// TODO hdt? zo ja of waarom niet?

// TODO Sven kijkt naar HDT optimalisering???

**Informatiekundige kern**

Relaties tussen registers en silo's zijn geen eenvoudig probleem. Daar zijn oplossingen voor nodig.
Een oplossing die Linked Data kan bieden is een _upper ontology_. Daarmee zouden relaties
gestandaardiseerd en geformaliseerd kunnen worden. Daarna zouden (gelijke) functionele zaken
gestandardiseerd kunnen worden. Denk aan "ID"'s en versie beheer en meta-data van registers in LD.

**Linked Data adoptie vergroten**

Linked Data biedt veel mogelijkheden voor federatieve bevragingen, expliciete verplichting voor
semantiek, informatiemodellen en begrippen. En met de autorisatie ontologie komt ook afscherming in
de mogelijkheden van Linked Data. Het succes en toepassen van deze technieken staat of valt echter
met de adoptiegraad van Linked Data in het algemeen. Het vergroten van deze adoptie is daarom van
belang.

**Autorisatie ontologie verder uitwerken**

De [Authorization Ontology](./opleveringen.md#authorization-ontology) waar in dit project in eerste
opzet van is gedaan, dient verder te worden uitgewerkt. Het mooiste zou zijn als deze tot een
standaard wordt verheven natuurlijk. Dat betekent ook dat vendors van triple stores deze standaard
kunnen implementeren zodat het écht gaat werken. Federatief!

Het is daarin van belang dat ook
[alternatieven](./achtergrond/autorisatie-ontologie-alternatieven.md) goed geanalyseerd en overwogen
worden. In dit onderzoek hebben we daar wel kennis van genomen, maar zijn we te weinig toegekomen
aan een 'in depth' vergelijking.

Voor de ontwikkeling zou een W3C Working Group uiteraar een mooi middel zijn!

**Beperking van richting uitwerken**

In dit project hebben we uitgewerkt en beproefd hoe [verticale en horizontale
subsets](./afscherming/afschermingspatronen.md#subset) afgeschermd of juist onsloten kunnen worden.
We hebben geen aandacht kunnen besteden aan het beperken van de
[richting](./afscherming/afschermingspatronen.md#richting). Hier dient extra (vervolg)onderzoek op
gedaan te worden.

**Volledigheid en effectiviteit meetbaar maken**

In dit onderzoek is aangetoond dat het mogelijk is om mbv een autorisatie ontologie een 'secured
SPARQL endpoint' te ontwikkelen (twee zelfs! :grin:). We hebben echter niet aangetoond dat dit
volledig waterdichte toegangscontrole biedt. Sterker nog, we zijn niet eens toegekomen aan de
[richting](./afscherming/afschermingspatronen.md#richting) beperken.

Om (later) aan te tonen dat de autorisatie ontologie volledig is en effectief wordt toegepast voor
een 'secured SPARQL endpoint' is het noodzakelijk om een betrouwbare en herhaalbare meetmethode te
hebben. Hierin zullen de verschillende [afschermingspatronen](./afscherming/afschermingspatronen.md)
opgenomen moeten zijn en allerlei variaties en combinaties hierin.

---

#### nog verwerken

(uit Evaluatie)

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

(uit Samenvatting)

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

## Disclaimer

Dit project is een onderzoeksproject. De [opleveringen](./opleveringen.md) die ontstaan zijn, zijn
van het niveau Research & Development. Goed ter inspiratie en vervolgonderzoek zeer geschikt. Voor
productie ... ongeschikt! :warning:

- :warning: [Authenticatie](./afscherming/autorisatie.md#subject) is uitgesloten van dit project en
  als gegeven beschouwd. Hier is echter ook nog veel in te kiezen en te onderzoeken!

- :warning: De [autorisatie ontologie](./opleveringen.md#autorisatie-ontologie) die opgeleverd is in
  dit project, is slechts een eerste prototype en voorbeeld! Dit is uitsluitend voor Research &
  Development doeleinden. Zie ook aanbeveling [autorisatie ontologie verder
  uitwerken](#autorisatie-ontologie-verder-uitwerken)

- :warning: De [implementaties](./autorisatie-als-linkeddata/implementaties/index.md) zijn nog niet
  bruikbaar voor productie en eventuele problemen mbt veiligheid en schaalbaarheid zijn niet
  onderzocht


----

- Vragen beantwoorden van Steven en André:
    -  wat betekent dit in de praktijk?
    -  Technische randvoorwaarden
    -  Organisatorische randvoorwaarden?
    -  Wie moet wat oppakken?

