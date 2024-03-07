---
title: Vergelijking
---

Beide besproken methodes hebben natuurlijk sterke en zwakke punten.
In dit hoofdstuk proberen we hier een overzicht van te geven.

# [Subgraaf](./subgraph.md)

- Een autorisatiebeleid is eenvoudig te valideren met de subgraaf methode. Doordat er een complete subgraaf gemaakt wordt van de toegankelijke informatie, is deze ook te exporteren en analyzeren.

- Bij iedere verandering van de onderliggende data, moeten de subgraven opnieuw gegenereerd worden. Bij frequent veranderende data kan dit te veel tijd gaan kosten

- Om optimaal gebruik te maken van de subgraaf-methode, moeten de subgraven gecached worden. Dit kan significante hoeveelheden RAM of schijfruimte kosten. Een alternatief is om de subgraven pas te bepalen zodra een query wordt geëvalueerd, maar hierdoor wordt juist het query-process significant langzamer.

- Met de subgraaf-methode is het niet mogelijk om bewerkingen aan de onderliggende graaf te ondersteunen.

# [Rewrite](./rewrite.md)

- Het rewriten van een query is een complex process waarbij makkelijk een fout gemaakt kan worden, waardoor mogelijk meer gegevens beschikbaar worden gesteld dan bedoeld.

- De rewrite methode kan toegepast worden voor het autoriseren van bewerkingen op de onderliggende graaf.
