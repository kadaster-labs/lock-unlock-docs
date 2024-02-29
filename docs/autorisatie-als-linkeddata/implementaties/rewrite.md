---
title: Rewrite
---
De Sparql rewrite methode analyseert inkomende sparql queries en herschrijft deze alvorens ze door
te sturen naar de triplestore. De gebruiker communiceert dus met een soort sparql endpoint proxy die
herschrijft en doorstuurt naar de triplestore om vervolgens de resultaten weer terug te geven aan de
gebruiker.

Conceptueel wordt de query geanalyseerd en worden restricties toegevoegd aan de originele query.
Indien de gebruiker geen toegang heeft tot specifieke graphs in de triplestore dan worden queries
gecontroleerd of ze geen ontoegankelijke graphs bevragen. Wanneer de query expliciet graphs gebruikt
om data op te vragen worden deze gecontroleerd of de gebruiker daar toegang toe heeft. Bevat de
query geen expliciete grahs dan worden deze toegevoegd aan de query opdat alleen informatie van
graphs bevraagd worden waartoe de gebruiker toegang heeft. Andere rewrites betreffen het analyseren
van onwenselijke predicate gebruik. Indien expliciete predicaten gebruikt worden waartoe de
gebruiker geen rechten heeft worden deze predicaten vervangen door onbestaande predicaten opdat de
query uitgevoerd kan worden maar geen ontoegankelijke data terug kan geven. Indien de predicaten
niet expliciet aanwezig zijn in de query worden er filters toegevoegd die controleren of er geen
afgeschermde predicaten gebruikt worden. Horizontale subsets worden geimplementeerd door resources
te voorzien van extra filters die koppelingen buiten de horizontale subset eruit filteren.
