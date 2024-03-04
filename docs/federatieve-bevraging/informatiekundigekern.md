---
title: Informatiekundige kern
---

Binnen dit project wordt uitgegaan van een federatief datastelsel op basis van Linked Data. Dit
hoofdstuk beschrijft wat ervoor nodig is om  verschillende registers met elkaar te koppelen. 

### Onafhankelijke registers

De registers zoals BRK, BAG, NHR & BRP zijn relatief onafhankelijk van elkaar ontwikkeld door
verschillende organisaties, techniek en modellen. Zo beheert Kadaster bijvoorbeeld de BRK en de BAG
en de KvK het NHR. Ook de modellering van de gegevens kan verschillen. Zo zijn de NEN3610 en
Geonovum's IM-modellen de basis voor de datasets van Kadaster terwijl deze standaarden minder van
belang zijn bij andere registers. Abstract wordt deze situatie als volgt gevisualiseerd.

![registers als databases](images/registersLD1.png)

### Registers als Linked Data

De bron van alle registers is vooralsnog geen Linked Data. Een ontwikkeling naar Linked Data toe zou
kunnen door de bestaande situatie uit te breiden met een publicatie van de gegevens in Linked Data.
Hierbij publiceert elk register zijn data in LD. Er zijn steeds meer implementaties en standaarden aanwezig om Linked Data te genereren vanuit een andere type bron zoals bijvoorbeeld een SQL database. Denk hierbij bijvoorbeeld aan [RML](https://rml.io/) of [R2RML](https://www.w3.org/TR/r2rml/). Ook maakt [JSON-LD](https://www.w3.org/TR/json-ld11/) de stap naar LD wat makkelijker voor implementaties die werken met JSON denk bijvoorbeeld aan JSON api's. 
Door middel van een SPARQL endpoint kan er nu een
federatieve query gemaakt worden die gegevens uit meerdere endpoints raadpleegt.

![linked data vanuit de registers](images/registersLD2.png)

Om precies te weten wat de data betekent en waar evt een sleutel te vinden is die in meerdere
registers aanwezig is kan de data verrijkt worden met context. Elk data elementje kan gekoppeld
worden aan bijvooreeld een linked data klasse die o.a. beschrijvingen, labels ( in meerdere talen),
en overige informatie kan bevatten. 

![linked data in context](images/registersLD3.png)

Door deze extra context is de data beter te begrijpen en makkelijker te bevragen door de
gebruikers. De relatie met andere registers is nog niet optimaal in deze situatie. Idealiter zorg je
voor formele koppelelementen die de registers adopteren. Oftewel een zogenaamde upperontologie of
wellicht in FDS termen een LD versie van een ['informatiekundige
kern'](https://realisatieibds.pleio.nl/groups/view/0056c9ef-5c2e-44f9-a998-e735f1e9ccaa/federatief-datastelsel/wiki/view/d0d90aeb-c896-4925-9948-35c6615ee873/notitie-informatiekundige-kern).
Deze upperontologie of informatiekundige kern definieert de koppelvlakken en maakt de benodigde
afspraken met de registers zodat de registers en gebruikers op deze kern kunnen bouwen. Zo kan bijvoorbeeld het KVK nummer opgenomen worden in de upperontologie. De NHR kan het KVK nummer verbinden met het KVK nummer uit de upperontologie. Kadaster kan daarmee het KVK nummer vinden in de NHR dataset op basis van de upperontologie.


![linked data in context](images/registersLD4.png)

De registers moeten deze upperontologie en de bijbehorende afspraken adopteren. Zo zal bijvoorbeeld
de BAG-ID uit de upperontologie zowel door de KVK NHR als door de BAG van Kadaster gebruikt moeten
worden. Daarmee is af te leiden dat deze data conceptueel dezelfde informatie is. 

![linked data in context](images/registersLD5.png)

Hiermee wordt het makkelijker om data uit 1 register te combineren met data uit een ander register.
Hoewel deze mogelijkheid er is door het uitvogelen van relaties tussen sleutelvelden uit de
upperontologie zou je natuurlijk ook extra relaties kunnen afleiden en deze 'materialiseren'.
Oftewel extra relaties kunnen (evt virtueel) toegevoegd worden. Stel Kadaster legt eigendom van percelen van rechtspersonen vast met o.a. een 'kadaster:KVKnummer'. Indien dit Kadaster:KVKnummer als kenmerk gelijk gesteld wordt aan een KVKnummer in de upperontologie die vervolgens ook gelijkgesteld is aan 'NHR:InschrijvingsNummer" dan zou je vanuit kadaster Percelen een directe relatie kunnen leggen naar een NHR inschrijving. Hiermee ontstaan er dus directe relaties tussen de registers. 

![linked data in context](images/registersLD6.png)

De aanwezigheid van directe relaties tussen de registers maakt het nog makkelijker om federatieve
bevragingen te doen. Integrale bevragingen zijn hierbij mogelijk maar ook bevragingen mbt
consistentie zijn hierbij zeer makkelijk. Denk bijvoorbeeld aan de vraag welke BAG-Panden zijn
onbekend bij Kadaster vanuit de NHR, Of vanuit de BRK, welke BRP personen zijn (on)bekend bij de
BRP. Het schrijven van een dergelijke query is zeer eenvoudig. De uitvoering ervan zal natuurlijk
qua performance wel het nodige vereisen.
