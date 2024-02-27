---
title: Autorisatie Ontologie
---

# Autorisatie Ontologieen

## Ondersteunende ontologieen

### Autenticatie ontologie

Hoewel we authenticatie als out-of-scope hebben gesteld in dit project hebben we natuurlijk behoefte om gebruikers vast te leggen die vervolgens gekoppeld kunnen worden aan autorisatie regels. Een standaard gebruiker is alvast aanwezig in deze autorisatie ontologie en dat is de gebruiker "anonymous" oftewel een gebruiker die niet ingelogd is. Om gebruikers te definieren kan er een nieuwe dataset gemaakt worden op basis van de authenticitie ontologie en daarmee kunnen nieuwe "Users" aangemaakt worden.
De autorisatie ontologie maakt gebruik van de authenticatie ontologie. Dit kan door middel van een owl:import statement te maken waarbij de authenticatie ontologie geimporteerd wordt.  

### Logging ontologie
Een hele simpele logging ontologie is opgezet voor het loggen van Sparql queries inclusief datum stempels en natuurlijk een koppeling naar de gebruiker. Dit had als doel om te demonstreren dat we queries en de afhandeling ervan goed kunnen loggen. Verdere implicaties van deze logging is buiten scope van dit project.

## Autorisatie ontologie
### Overzicht
De autorisatie ontologie importeert de authenticatie ontologie datasets zodat gebruikers(users) aanwezig zijn als readonly data. Vervolgens kunnen deze gebruikers gerelateerd worden aan verschillende rules die elk specifieke informatie nodig hebben. Hieronder een overzicht van de Autorisatie ontologie. 

![authenticatie](images/AutOV2.png)


### Users and Rules
Een gebruiker kan verbonden zijn met meerdere rollen. Rollen kunnen verbonden zijn met meerdere security groeps. Elke security groep kan meerdere (autorisatie) rules bevatten. 
![Users](images/AutO1V2.png)

Op deze manier kunnen individuele gebruikers gekoppeld worden aan Rollen die via de tussenstappen uiteindelijk gekoppeld zijn aan verschillende autorisatie rules. De aanwezigheid van security groeps zorgt ervoor dat bijelkaarhorende rules gegroepeerd worden opdat deze set makkelijk te herbruiken zijn voor andere rollen. 

### Rule types
Er zijn meerdere rule types die elk of een andere functionaliteit bieden om autorisatie te modelleren. Hieronder een diagram van verschillende ruletypes. 

![Ruletypes](images/AutO2V2.png)

Zo is er een rule  (InAccessableService) die zogenaamde 'service' gebruik binnen Sparql aan banden kan leggen. Andere voorbeelden van Rule(types) is bijvoorbeeld de ruletype die toegang tot graphs kan reguleren, Ruleype voor het filteren op predicaten (in bepaalde graphs) en de horizontale subset ruletype. Enkele van deze ruletypes zijn ge-implementeerd. Ook is het heel goed mogelijk om nieuwe ruletypes toe te voegen. 

### Graph rules
Met de "AccessibleDataset" ruletype kun je gebruikers toegang geven tot "Datasets". Een Dataset bestaat uit 0 of meer graphs. Oftewel hiermee kun je instellen welke gebruiker toegang heeft tot welke graphs in de triplestore. 
![Ruletypes](images/AutO3V2.png)
Via SecurityGroeps kunnen 'instanties' van deze rule ('AccessibleDataset') gekoppeld worden aan Rollen en Gebruikers. Door de relatie naar een 'Dataset' is bekend welke dataset deze gebruiker toegang heeft. "Graphs" in de triplestore zijn verbonden met "Datasets" waardoor een implementatie dus precies weet of een gebruiker toegang heeft tot een graph of niet.

### Predicate rules
Met de predicate rule is het mogelijk om een predicaat (property) af te schermen. Een goed voorbeeld is "koopsom" in dit project maar ook eigenaar of Naam, Adres, Woonplaats gegevens. Je kunt met deze rule de dataset in tact laten maar ervoor zorgen dat gegevens van bepaalde predicaten afgeschermd worden. Hieronder is de ruletype afgebeeld.

![Ruletypes](images/AutO4V2.png)

De rule heeft een link naar een 'Dataset' waarin de rule actief is en een link naar een 'Parameter' met een attribuut 'uri' waarin het predicaat genoemd staat. Dit kan dan een link zijn naar een predicaat in schema van een dataset. Bijvoorbeeld een link naar het kenmerk "koopsom" in een BRK dataset.



### Horizontale subset rules
Met horizontale rules kunnen we niet op schema nivo maar op dataset nivo zaken afschermen. Denk hierbij bijvoorbeeld aan volledige toegang tot alle data elementen maar alleen voor een registratieve ruimte, bijvoorbeeld een gemeente. Een ander voorbeeld is toegang tot alle pand informatie van 'eigen' panden. Hieronder is het model voor rules mbt horizontale subsets

![Ruletypes](images/AutO5V2.png)

Het model laat zien dat er een predicaat nodig dat gevuld is met een waarde. Deze restrictie moet altijd waar zijn indien de resource van een gespecificeerde klasse is. Hiermee kunnen horizontale subsets gedefineerd worden.




