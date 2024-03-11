---
title: Management Samenvatting
---
> TO DO

> - Conclusies en aanbevelingen uit de samenvatting halen en verplaatsen naar [Conclusies en aanbevelingen](./conclusies.md)


Binnen dit project is onderzocht hoe data afgeschermd kan worden binnen een federatief datastelsel en dan specifiek Linked Data. Er zijn weinig gestandaardiseerde mogelijkheden voor autorisatie van data in het Linked Data domein. Dit project is uitgevoerd om de (on)mogelijkheden te onderzoeken en te testen.

De autorisatie oplossingen moeten daarbij verschillende afschermingspatronen kunnen ondersteunen:

* verticale subsets            : objecten en/of kenmerken en/of relaties zijn afgeschermd, zoals bijv. koopsom of eigenaar.

* horizontale subsets          : delen van de data zijn afgeschermd, waar je wel toegang toe hebt is volledig en dus niet verticaal afgeschermd. Een voorbeeld hiervan is dat je alleen toegang hebt tot de data van een specifieke regio.

* afscherming relatie-richting : het opvragen van informatie in een bepaalde richting is mogelijk, maar het opvragen van de omgekeerde richting is niet mogelijk. Bijvoorbeeld: het zou mogelijk moeten zijn om te zoeken naar de eigenaar van een specifiek perceel op basis van het perceelnummer maar niet alle perceelnummers die iemand in eigendom heeft op basis van naam.

* aggregatie mogelijkheden: het kan zijn dat gebruikers geen toegang hebben tot de micro data maar wel tot aggregaties (onder bepaalde voorwaarden) Denk bijvoorbeeld aan de gemiddelde transactieprijzen van woningen in een bepaald gebied.

* vrije query mogelijkheiden ondersteunen: de kracht van Linked Data is dat je zonder een vooraf gedefinieerd schema het endpoint kunt bevragen. Die optie wil je blijven behouden.


![Infographic](images/infographic.png)

## Autorisatie ontologie
Deze patronen zijn gemodelleerd in een authorisatie ontologie. Mbv deze authorisatie ontologie kunnen  deze concepten specifiek gemaakt worden voor elk register waardoor er een declaratief model ontstaat met daarin de beschreven rechten voor een specifieke rol of gebruiker. Dit model is direct gerelateerd aan het schema van de registers om zo authorisatie-regels toe te wijzen aan (delen van) het schema of delen van de daadwerkelijke data. Zo kunnen er bijvoorbeeld kenmerken afgeschermd worden voor bepaalde gebruikers. Oftewel deze gebruikers hebben geen toegang tot deze kenmerken. Ook kunnen er extra restricties gemodelleerd worden om bijvoorbeeld horizontale subsets te definiëren. Bijvoorbeeld een gebruiker heeft alleen toegang tot percelen en gerelateerde informatie uit gemeente X. 

Theoretisch zijn hier al de volgende conclusies te trekken:

* het is mogelijk om (geavanceerde) authorisatie regels vast te leggen in Linked Data op basis van een authorisatie ontologie.

* het is mogelijk om gebruik te maken van een Linked Data schema van de dataset. Authorisatieregels zijn daarmee direct gekoppeld aan schema-elementen. Hiermee kan o.a. inzicht geboden worden wie waar toegang toe heeft en evt waar niet. Ook geeft deze aanpak mogelijkheden tot verificatie van de authorisaties.                      

* het is mogelijk om gebruik te maken van de data om authorisatie regels op te stellen. Zo kan er bijvoorbeeld toegangsregels opgesteld worden voor een bepaalde gemeente. De daadwerkelijke gemeente wordt uit de dataset opgehaald.

## Proof of Concept
Een Proof of Concept is gemaakt op basis van Linked Data en SPARQL Endpoints. Het idee is om de architectuur mbt Linked Data te behouden en binnen deze context data te beveiligen. Oftewel het concept is om SPARQL endpoints (elke) query te laten verwerken maar alleen resultaten, waartoe de gebruiker toegang heeft, terug te geven. 

Hiervoor is een testomgeving opgezet met de volgende eigenschappen:

* Elke dataset heeft een eigen SPARQL endpoint. Hier is fictieve data te vinden inclusief een schema van die dataset. Echte perceel data is gebruikt op basis van het IMX-Geo schema.

* Links zijn aanwezig tussen de registers op basis van Linked Data. Een informatiekundige kern zou deze links op schemaniveau kunnen beschrijven en controleren.

* Federatieve bevraging kan 'standaard' op basis van de federatieve eigenschappen van Linked Data en SPARQL. Concreet wordt er in de PoC gebruik gemaakt van de "service" mogelijkheden binnen SPARQL. Elk SPARQL endpoint kan via deze service aangeroepen worden.

* Gebruikers en de rechten die deze gebruikers hebben op de data zijn gemodelleerd in Linked Data op basis van een authorisatie ontologie. Elk SPARQL endpoint heeft een eigen authorisatie model

* SPARQL endpoints kunnen beveiligd worden op basis van meerdere implementatie strategieën. In dit project zijn 2 strategieën verder uitgewerkt en geimplementeerd. Beide implementaties gebruiken de authorisatie ontologie om inkomende SPARQL queries te verwerken en alleen niet-afgeschermde informatie terug te geven

* Beide implementaties loggen elke query om bijvoorbeeld audits achteraf mogelijk te maken.

