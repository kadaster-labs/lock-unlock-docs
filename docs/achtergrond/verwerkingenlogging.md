---
title: Verwerkingenlogging
---
> // TODO uitwerken

> // TODO onderstaande is uit andere docs hierheen verplaatst

### Loggen van queries
- Om te kunnen verantwoorden dat (met name persoons)gegevens op een juiste manier verwerkt worden, is het nodig om de verwerking te bewaren. Dat gebeurt door de queries te loggen.
- Het loggen van queries en context biedt altijd de mogelijkheid om later onregelmatigheden op te sporen.

Randvoorwaardelijk voor het achteraf kunnen controleren van queries: query auditing.

Query auditing: dit is geen oplossing voor autorisatie. Bij alleen query auditing kan de gebruiker namelijk alle data bevragen en worden slechts de queries met bijbehorende context (denk bijv. aan de gebruiker en meegegeven referentie naar doelbinding) opgeslagen. Vervolgens kan er achteraf handmatig of wellicht automatisch bepaald worden of er onrechtmatige vragen/queries zijn gesteld en of dat er onterecht toegang is verkregen tot gesloten gegevens.

### Relatie met Verwerkingenlogging standaard 
De Verwerkinggenlogging is een API-standaard die is ontwikkeld door VNG Realisatie en deze standaard is opgenomen in de GEMMA referentiearchitectuur. Deze API-standaard biedt leveranciers van informatiesystemen gestandaardiseerde API-specificaties voor het vastleggen en ontsluiten van metagegevens behorend bij vastgelegde (logging) verwerkingen.

De API standaard is ontwikkeld voor gemeenten en gemeentelijke samenwerkingsverbanden. Er zitten echter geen gemeente-specifieke zaken in de standaard dus andere organisaties kunnen de standaard ook toepassen. Door ontwikkeling vindt dan ook op dit moment (’23/’24) plaats door MinBZK.

Zie ook [link](https://vngrealisatie.github.io/gemma-verwerkingenlogging/) 

TO DO:
- Tekst verder aanvullen
- Verwijzen naar onze logging ontologie? En relatie leggen met Verwerkingenloggingstandaard?
