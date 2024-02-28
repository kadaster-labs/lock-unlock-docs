---
title: Testdata
---
# Test Data
Versimpelde test data van een federatief data stelsel is ontwikkeld op basis van Linked Data en de Linked Data gedachte. Hiermee is het mogelijk om een realistische situatie na te kunnen bootsen waarin informatie afgeschermd dient te worden. Deze dataset is gebruikt binnen dit project voor R&D en voor demonstratie doeleinden. Aangezien het heel handig is om data in een context te plaatsen (denk aan data schema's) is er binnen dit project een set van schema's ontwikkeld die de registers nabootsen (versimpeld en fictief) en natuurlijk een bijbehorende dataset. Beiden zijn fictief en versimpeld behalve het zogenaamde IMX-Geo model dat Kadaster in LD publiceert en dat openbaar is.
Om de ontologieen te modelleren is er gebruik gemaakt van de RDF/RDFS/OWL en Shacl standaard. 

## Schema's voor test data
Voor elke silo is een ontologie gemaakt. Het betreft hier een (over) versimpelde ontologie dat grofweg de kern van de register bevat met als doel R&D voor de dit project te ondersteunen en tevens voor demonstratie mogelijkheden.
De ontologieen voor elke silo heeft een eigen namespace en is relatief onafhankelijk gemodelleerd. Zo is voor Kadaster de NEN3610 een belangrijke 'Upper-Ontologie' terwijl dit wellicht voor de BRP niet zo hoeft te zijn. Op deze manier onstaat er een situatie dat elk register een eigen ontologie heeft op basis van eigen "upper-ontologieen".


### IMX-Geo
Een openbare basis dataset is IMX-Geo. Deze is aanwezig als Linked Data en bevat versimpelde data van gebouwen en percelen liggende in registratieve ruimtes. Bijna alle gegevens zijn openbaar,  'laatste koopsom' is wellicht een uitzondering. 

![linked registers](images/schema-imx.png)

IMX-Geo is vanuit Kadaster beschikbaargesteld in LD en is grofweg voor het 'Kadaster gedeelte' helemaal compleet aanwezig. 

Deze dataset is gebruikt in dit project.

### BRK schema
Een versimpeld model van de BRK is ontwikkeld in Linked data voor dit project. Hieronder is een screenshot van het model zichtbaar.

![linked registers BRK](images/schema-brk2.png)

### NHR schema
Een versimpeld model van de NHR is gemaakt. Inschrijvingen bevatten wat basis gegevens en is gekoppeld aan de openbare Registratieve Ruimtes. Hieronder is een diagram van het NHR schema te vinden.

![linked registers NHR](images/schema-nhr2.png)


### BRP schema
Een versimpelde versie van het BRP register is gemodelleerd. Hieronder is een diagram van het BRP schema te vinden.
![linked registers](images/schema-brp.png)

### ANBI schema
Hieronder is een diagram van het ANBI schema te vinden.

![linked registers](images/schema-anbi.png)


## Netwerk van samenhangende ontologieën
De ontologieën en de data van de ontologieën zijn als Silo's opgezet. Elk register publiceert zijn data en de bijbehorende context (schema's) op een eigen triplestore.  Door middel van owl:sameAs relaties kunnen individuals in LD gelijk verklaard worden. Oftewel een linked data resource (element) dat leeft in 1 register wordt gelijk verklaard aan een andere resource dat zich bevindt in een ander register (Zie figuur).

![linked registers](images/relatiesV1.png)


 De bijbehorende inference is dat alle gegevens van de 2 gelijk gestelde resources gekopieerd mag worden. Stel individual 'A' is gelijk (owl:sameAs) aan individual 'B' dan kunnen alle relaties en kenmerken gekopieerd worden van 'A' naar 'B' en andersom. 
Hierdoor ontstaan netwerken van linked data over de registers heen en kan er daadwerkelijk "doorgebrowsed" worden van het ene register naar het andere. Ook Sparql queries kunnen hier makkelijk gebruik van maken om zoekopdrachten over meerdere registers te uit te voeren. 
Ook in onze test opstelling maken we gebruik van owl:sameAs om relaties te leggen naar andere registers zonder volledig afhankelijk te worden van deze registers. Dit is natuurlijk een manier om de relaties te leggen. Er zijn meerdere manieren op registerdata te koppelen via LD.


### BRK naar BRP en NHR
'Personen' uit de BRK kunnen gelijk verklaard worden met 'geregistreerde personen' uit de BRK of 'Inschrijvingen' uit de NHR (Zie diagram hieronder).

![linked registers](images/schema-brk.png)

Een 'owl:same-as' relatie kan gelegd worden wanneer je weet dat deze 2 individuals ook daadwerkelijk gelijk zijn (refereert naar dezelfde persoon in de werkelijkheid). Vanuit Kadaster zal er waarschijnlijk akte informatie gebruikt worden zoals voornamen, achternaam, geboortedatum, geboortestad, etc om de juiste persoon in de BRP te vinden. De eigen adminstratie (BRK:Persoon) wordt dan gelijk verklaard met de gevonden BRP:(GeregistreerdPersoon). Ook voor relaties met de NHR werkt dit ongeveer hetzelfde. Akte informatie zal gebruikt worden om de juiste Inschrijving te vinden in de NHR om vervolgens weer de owl:sameAs relatie te leggen.


### NHR naar BRP
Net zoals de BRK linkt naar personen in de BRP kan ook de NHR direct verbonden worden met BRP (Geregistreerde)Personen (zie diagram hieronder).

![linked registers](images/schema-nhr-brp.png)

### ANBI naar NHR
De Anbi dataset kan direct gekoppeld worden aan NHR Inschrijvingen (Zie Diagram hieronder)

![linked registers](images/schema-nhr-anbi.png)


### Samenwerkende ontologieën
### Netwerk van register ontologieën
Door de 'owl:same-as' relatie (en bijbehorende inferentie) ontstaat er een netwerk van samenhangende schema's. Dit kan natuurlijk als 1 schema gepresenteerd worden. 

Hieronder een screenshot van de visualisatie direct uit de data van de schema's. Deze visualisatie is ook live te bekijken via [deze link](https://data.labs.kadaster.nl/lock-unlock/informatie-model/schema)

![linked registers](images/InformatieModel.png)

In dit samengesteld model zijn verschillende kleuren gebruikt om de individuele silo's (weer) te onderscheiden.

### Stroomlijnen van de samenhang: Informatiekundige kern in Linked Data?
De relaties tussen de registers zijn impliciet al vaak aanwezig maar wellicht houden de registers een eigen versie bij om zo onafhankelijk te kunnen functioneren. Kadaster houdt persoonsgegevens bij mbt eigendom van percelen. De NHR (Ubo) bevat persoonsgegevens, ANBI refereert aan KVK nummers. 
Extra afspraken over de relaties kan voor vertrouwen en voor een infrastructuur zorgen waarop de registers durven bouwen. O.a. zou dit een upper-ontologie kunnen zijn. Koppelvelden en hoe om te gaan met deze velden plus wellicht zaken zoals versiemanagement zouden hieren afgesproken kunnen worden.


# Synthetische test data 

Voor de verschillende silo's is synthetische testdata gegenereerd. Deze is echter wél in samenhang
gegenereerd, zodat relaties op key / index velden mogelijk is. De resultaten van de gegenereerde
testdata is vervolgens opgesplitst naar de verschillende silo's en ook als zodanig in de <a
href="https://github.com/kadaster-labs/lock-unlock-testdata" target="_blank">testdata repo</a>
toegevoegd. Deze wordt automatisch geladen bij het opstarten van de containers van de
[demonstrator](./demonstrator.md) (zie ook
[testopstelling#deployment](./testopstelling.md#deployment)).



// TODO testdata generator code in [testdata repo](https://github.com/kadaster-labs/lock-unlock-testdata) zetten? :thinking_face:
