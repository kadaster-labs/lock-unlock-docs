---
title: Informatiemodel
---

Versimpelde testdata van een federatief data stelsel is ontwikkeld op basis van Linked Data en de Linked Data gedachte. Hiermee is het mogelijk om een realistische situatie na te kunnen bootsen waarin informatie afgeschermd dient te worden. Deze dataset is gebruikt binnen dit project voor R&D en voor demonstratie doeleinden. Aangezien het heel handig is om data in een context te plaatsen (denk aan data schema's) is er binnen dit project een set van schema's ontwikkeld die de registers
nabootsen (versimpeld en fictief) en natuurlijk een bijbehorende dataset. Beiden zijn fictief en versimpeld behalve het zogenaamde IMX-Geo model dat Kadaster in LD publiceert en dat openbaar is. Om de ontologieën te modelleren is er gebruik gemaakt van de RDF/RDFS/OWL en SHACL standaard. 

### Losstaande schema's

Voor elke silo is een schema gemaakt. Het betreft hier een (over) versimpelde schema dat grofweg de kern van de register bevat met als doel R&D voor de dit project te ondersteunen en tevens voor demonstratie mogelijkheden. De schema voor elke silo heeft een eigen namespace en is relatief onafhankelijk gemodelleerd. Zo is voor Kadaster de NEN3610 een belangrijke upperontologie terwijl dit wellicht voor de BRP niet zo hoeft te zijn. Op deze manier onstaat er een situatie dat elk register een eigen ontologie heeft op basis van eigen upperontologieën.

#### IMX-Geo Schema

Een openbare basis dataset is IMX-Geo. Deze is aanwezig als Linked Data en bevat data van gebouwen en percelen liggende in registratieve ruimtes. Bijna alle gegevens zijn openbaar. De 'laatste koopsom' is wellicht een uitzondering hierop. Het deel van het informatiemodel dat nodig is voor Lock Unlock wordt gevisualiseerd in de volgende afbeelding en is [hier](https://data.labs.kadaster.nl/lock-unlock/informatie-model/schema?f=http%3A%2F%2Fmodellen.geostandaarden.nl%2Fdef%2Fimx-geo%23) te vinden:

|![linked registers](images/schema-imx.png)|
| :--: |
|*Informatie Model IMXGeo als LD*|

IMX-Geo is vanuit Kadaster beschikbaargesteld in LD en is grofweg voor het 'Kadaster gedeelte' helemaal compleet aanwezig. Deze dataset is gebruikt in dit project.

#### BRK (Gesloten Deel) schema

Een versimpeld model van de BRK is ontwikkeld in Linked data voor dit project. Hieronder is een screenshot van het model zichtbaar en is ook [hier te vinden](https://data.labs.kadaster.nl/lock-unlock/informatie-model/schema?f=https%3A%2F%2Fdata.labs.kadaster.nl%2Flock-unlock%2Fbrk%2Fdef%2F).

|![linked registers BRK](images/schema-brk2.png)|
| :--: |
|*BRK Schema als LD*|

#### NHR schema

Een versimpeld model van de NHR is gemaakt. Inschrijvingen bevatten wat basis gegevens en is gekoppeld aan de openbare Registratieve Ruimtes. Hieronder is een diagram van het NHR schema te zien en is [hier live te vinden](https://data.labs.kadaster.nl/lock-unlock/informatie-model/schema?f=https%3A%2F%2Fdata.federatief.datastelsel.nl%2Flock-unlock%2Fnhr%2Fdef%2F).

|![linked registers NHR](images/schema-nhr2.png)|
| :--: |
|*NHR Schema als LD*|

#### BRP schema

Een versimpelde versie van het BRP register is gemodelleerd. Hieronder is een diagram van het BRP schema te zien en is [hier live te vinden](https://data.labs.kadaster.nl/lock-unlock/informatie-model/schema?f=https%3A%2F%2Fdata.federatief.datastelsel.nl%2Flock-unlock%2Fbrp%2Fdef%2F). 

|![linked registers](images/schema-brp.png)|
| :--: |
|*BRP Schema als LD*|

#### ANBI schema

Hieronder is een diagram van het ANBI schema te zien. Dit sluit niet precies op de ANBI informatie model zelf en is alleen voor dit project gemodelleerd. Een live versie van de schema is ook [hier te vinden](https://data.labs.kadaster.nl/lock-unlock/informatie-model/schema?f=https%3A%2F%2Fdata.federatief.datastelsel.nl%2Flock-unlock%2Fanbi%2Fdef%2F).


|![linked registers](images/schema-anbi.png)|
| :--: |
|*BRP Schema als LD*|

### Netwerk van schema's

De schemas en de data van de schemas zijn als silo's opgezet. Elk register publiceert zijn data en de bijbehorende context (schemas) op een eigen triplestore. 

> NB: De bovenstaanden schemas wordt hier niet gedefinieerd als ontologieën omdat ze geen axioma's of geformaliseerde inferentie regels bevatten. Met de introductie van `owl:sameAs` vanaf nu, kunnen we nu inferentie doen en nu wordt het informatie model een ontologie. 

Door middel van `owl:sameAs` relaties kunnen individuals in LD gelijk verklaard worden over verschillende siloes heen. Oftewel een linked data resource (element) dat leeft in 1 register wordt gelijk verklaard aan een andere resource dat zich bevindt in een ander register (zie hieronder).

|![linked registers](images/relatiesV1.png)|
| :--: |
|*Netwerk van schemas*|

De bijbehorende inference is dat alle gegevens van de 2 gelijk gestelde resources gekopieerd mag worden. Stel individual 'A' is gelijk (owl:sameAs) aan individual 'B' dan kunnen alle relaties en kenmerken gekopieerd worden van 'A' naar 'B' en andersom. Hierdoor ontstaan netwerken van linked data over de registers heen en kan er daadwerkelijk "doorgebrowsed" worden van het ene register naar het andere. Ook Sparql queries kunnen hier makkelijk gebruik van maken om zoekopdrachten over
meerdere registers te uit te voeren. Ook in onze test opstelling maken we gebruik van `owl:sameAs` om relaties te leggen naar andere registers zonder volledig afhankelijk te worden van deze registers. Dit is natuurlijk een manier om de relaties te leggen. Er zijn meerdere manieren op registerdata te koppelen via LD.

#### Voorbeeld: BRK naar BRP en NHR

'Personen' uit de BRK kunnen gelijk verklaard worden met 'geregistreerde personen' uit de BRK of 'Inschrijvingen' uit de NHR (Zie diagram hieronder).

|![linked registers](images/schema-brk.png)|
| :--: |
|*Relatie tussen BRK, BRP en NHR registers*|

Een 'owl:same-as' relatie kan gelegd worden wanneer je weet dat deze 2 individuals ook daadwerkelijk gelijk zijn (refereert naar dezelfde persoon in de werkelijkheid). Vanuit Kadaster zal er waarschijnlijk akte informatie gebruikt worden zoals voornamen, achternaam, geboortedatum, geboortestad, etc om de juiste persoon in de BRP te vinden. De eigen adminstratie (BRK:Persoon) wordt dan gelijk verklaard met de gevonden BRP:(GeregistreerdPersoon). Ook voor relaties met de NHR werkt dit ongeveer hetzelfde. Akte informatie zal gebruikt worden om de juiste Inschrijving te vinden in de NHR om vervolgens weer de owl:sameAs relatie te leggen.

#### Voorbeeld: NHR naar BRP

Net zoals de BRK linkt naar personen in de BRP kan ook de NHR direct verbonden worden met BRP
(Geregistreerde)Personen (zie diagram hieronder).

|![linked registers](images/schema-nhr-brp.png)|
| :--: |
|*Relatie tussen NHR en BRP registers*|

#### Voorbeeld: ANBI naar NHR

De Anbi dataset kan direct gekoppeld worden aan NHR Inschrijvingen (zie diagram hieronder).

|![linked registers](images/schema-nhr-anbi.png)|
| :--: |
|*Relatie tussen ANBI en NHR registers*|

## Hét informatiemodel voor Lock-Unlock

Door de `owl:sameAs` relatie (en bijbehorende inferentie) ontstaat er een netwerk van samenhangende schema's. Dit kan natuurlijk als 1 schema gepresenteerd worden. 

Hieronder een screenshot van de visualisatie direct uit de data van de schema's. Deze visualisatie is ook live te bekijken via [deze
link](https://data.labs.kadaster.nl/lock-unlock/informatie-model/schema)

|![linked registers](images/InformatieModel.png)|
| :--: |
|*Hèt Informatie Model voor Lock-Unlock*|

In dit samengesteld model zijn verschillende kleuren gebruikt om de individuele silo's (weer) te onderscheiden.
