---
title: Demonstrator
---
Genoeg beschreven over federatieve bevragingen. Nu willen we dat wel eens zien! Daarvoor maken we
gebruik van SPARQL (zie ook [API's](./apis.md) en [Linked Data](./linkeddata.md)). Deze query taal
kent het begrip `service` om aan te geven dat informatie van een ander endpoint opgehaald dient te
worden. Daarmee geeft de gebruiker het eerste endpoint, het endpoint dat direct bevraagd wordt, de
opdracht om andere endpoints te betrekken bij de uitvoering van de query. Uitgaande van de
[testopstelling#deployment](./testopstelling.md#deployment) ziet een federatieve bevraging er dan
schematisch als volgt uit:

![Schematische SPARQL Query demo](images/testopstelling-federatieve-bevraging.png)

Voordat we een voorbeeld zullen geven van een federatieve bevragingen duiken we eerst in de losse silo's. 

## BRP Silo

Fictieve data is gemaakt voor BRP gegevens. Meer dan 100.000 personen zijn aangemaakt met kenmerken
zoals naam, achternaam, geslacht & geboorteplaats. Hieronder is een dashboard te zien
waarin alle personen opgevraagd worden en waarbij ook een aantal doorsnedes worden getoond. Al deze vragen zijn gewone SPARQL
queries op het BRP SPARQL-endpoint.

![linked data in context](images/BRP-Data.png)

## NHR Silo

Fictieve data is gemaakt voor NHR gegevens. Meer dan 25.000 inschrijvingen zijn gegenereerd met een KvK
nummer, rechtsvorm, naam, stichtingsjaar, etc. Hieronder is een dashboard te zien waarin alle
inschrijvingen in een tabel worden getoond en ook enkele grafieken met statistiche gegevens over deze
fictieve dataset.

![linked data in context](images/NHR-Data.png)

## ANBI Silo

Fictieve data is gemaakt voor ANBI gegevens. Meer dan 4.000 stichtingen zijn aangemaakt met basale
informatie zoals een fiscaal nummer en een vestigingsplaats. Hieronder een screenshot met daarin een set van ANBI gegevens in tabelvorm en twee
grafieken.

![linked data in context](images/ANBI-Data.png)

## BRK Silo

> Vraag: zit in de losse BRK silo ook de perceelsinformatie of gebruiken we daarvoor het IMX Geo/KKG endpoint? 

De BRK data bestaat uit een open en een gesloten gedeelte. In het open gedeelte staat informatie over de percelen zoals de geometrie. Voor dit project worden de percelen in Almere en Zeewolde gebruikt. Hieronder een screenshot
met daarin de percelen op de kaart. Deze informatie is afkomstig van IMX-Geo.

![linked data in context](images/BRK-Data.png)

In het gesloten (fictieve) gedeelte van de BRK staat de eigendomsinformatie. Hierin staat wie de eigenaar/eigenaren is/zijn van een perceel. Ook staan hierin de koopsommen van de percelen.


## Federatieve bevraging

> // TODO dit nog iets verder uitwerken?
> Belangrijk om in te gaan op het integraal bevragen van de data én het navigeren door de datasets
heen: hoe kan je nu bijv. vanuit een perceel (BRK) naar een stichting (ANBI)? 

Door deze silo's te combineren en integraal te bevragen kunnen er vragen beantwoord worden als: wat is de geboorteplaats van de eigenaar van perceel X of is het perceel in eigendom van een ANBI. 
kan er data opgehaald worden zoals laatste koopsommen van een perceel,

Hieronder is een voorbeeld waarbij alle koopsommen zichtbaar zijn van percelen uit de BRK en waarbij
eigendoms informatie aanwezig is van een geselecteerd perceel.

![linked data in context](images/FDS-Data.png)


