---
title: Management Samenvatting
---

Dit project heeft onderzocht hoe data afgeschermd kan worden binnen een federtatief stelsel van registers. Hiervoor zijn toegangs-concepten ge-identiceerd zoals:

1) verticale subsets            : objecten en/of kenmerken en/of relaties zijn afgeschermd

2) horizontale subsets          : delen van de data zijn afgeschermd, waar je wel toegang toe hebt is volledig en dus niet verticall afgeschermd. Denk hierbij aan volledig toegang tot eigen data maar minder toegang tot data van anderen.

3) afscherming relatie-richting : bijv zoeken op persoon mag niet maar opvragen bestuurder van een bedrijf mag wel 


![Infographic](images/infographic.png)


Deze patronen zijn gemodelleerd in een Proof-of-Concept (PoC) Authorisatie ontologie. Mbv deze Authorisatie ontologie kunnen deze deze concepten specifiek gemaakt worden voor elk register waardoor er een declaratief model ontstaat met daarin de beschreven rechten voor een specifieke rol of gebruiker. Dit model is direct gelinked aan het schema van de registers om zo authorisatie-regels toe te wijzen aan (delen van) het schema of delen van de daadwerkelijke data. Zo kunnen er bijvoorbeeld kenmerken afgeschermd worden voor bepaalde gebruikers. Oftewel deze gebruikers hebben geen toegang tot deze kenmerken. Ook kunnen er extra restricties gemodelleerd worden om bijvoorbeeld horizontale subset te definieren. Bijvoorbeeld een gebruiker heeft alleen toegang tot percelen en gerelateerde informatie uit gemeente X. 

Theoretisch zijn hier al te volgende conclusies te trekken:

1) het is mogelijk om (geavanceerde) authorisatie regels vast te leggen in LD op basis van een Authorisatie ontologie.

2) het is mogelijk om gebruik te maken van een LD schema (T-Box) van de (register) dataset. Authorisatie regels zijn daarmee direct gekoppeld aan schema-elementen. Hiermee kan o.a. inzicht geboden worden wie waar toegang toe heeft en evt waar niet. Ook geeft deze aanpak mogelijkheden tot verificatie van de authorisaties.                      

3) het is mogelijk om gebruik te maken van de data om authorisatie regels op te stellen. Zo kan er bijvoorbeeld toegangsregels opgesteld worden voor een bepaalde gemeente. De daadwerkelijke gemeente wordt uit de dataset opgehaald.


Een proof-of-concept is gemaakt op basis van Linked Data (LD) en Sparql Endpoints. Het concept is om de architectuur mbt Linked Data te behouden en binnen deze context data te beveiligen. Oftewel het concept is om Sparql endpoints (elke) query te laten verwerken maar alleen resultaten, waartoe de gebruiker toegang heeft, terug te geven. 

Hiervoor is een test omgeving opgezet met de volgende eigenschappen:

1) Elk register heeft een eigen sparql endpoint. Hier is fictieve data te vinden inclusief een schema voor dat register. Echte perceel data is gebruikt op basis van het IMX-Geo schema in LD.

2) Links zijn aanwezig tussen de registers op basis van Linked Data. Een (informatie-kundige) kern in linked data zou deze links op schema nivo kunnen beschrijven en controleren.

3) Federatieve bevraging kan 'standaard' op basis van de federatieve eigenschappen van Linked Data en Sparql. Concreet wordt er in de POC gebruik gemaakt van de "service" mogelijkheden binnen Sparql. Elk sparql endpoint kan via deze service aangeroepen worden.

4) Gebruikers en de rechten die deze gebruikers hebben op de data zijn gemodelleerd in Linked Data op basis van een Authorisatie ontologie. Elk sparql endpoint heeft een eigen authorisatie model

5) Sparql endpoints zijn beveiligd op basis van 2 verschillende PoC implementaties. Beiden implementaties gebruiken de authorisatie ontologie om inkomende sparql queries te verwerken en alleen niet-afgeschermde informatie terug te geven

6) Beide implementaties loggen elke query om evt audits achteraf mogelijk te maken.







