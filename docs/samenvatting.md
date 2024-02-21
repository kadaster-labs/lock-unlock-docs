---
title: Management Samenvatting
---

Dit project heeft onderzocht hoe data afgeschermd kan worden binnen een federtatief stelsel van registers. Hiervoor zijn toegangs-concepten ge-identiceerd zoals:

* verticale subsets            : objecten en/of kenmerken en/of relaties zijn afgeschermd

* horizontale subsets          : delen van de data zijn afgeschermd, waar je wel toegang toe hebt is volledig en dus niet verticall afgeschermd. Denk hierbij aan volledig toegang tot eigen data maar minder toegang tot data van anderen.

* afscherming relatie-richting : bijv zoeken op persoon mag niet maar opvragen bestuurder van een bedrijf mag wel.

* aggregatie mogelijkheden.  Aggregeren van data mag wel onder bepaalde voorwaarden. Denk bijvoorbeeld het opvragen van huisprijs ontwikkelingen of gemiddelde prijzen per gebied.


![Infographic](images/infographic.png)


Deze patronen zijn gemodelleerd in een Proof-of-Concept (PoC) Authorisatie ontologie. Mbv deze Authorisatie ontologie kunnen deze deze concepten specifiek gemaakt worden voor elk register waardoor er een declaratief model ontstaat met daarin de beschreven rechten voor een specifieke rol of gebruiker. Dit model is direct gelinked aan het schema van de registers om zo authorisatie-regels toe te wijzen aan (delen van) het schema of delen van de daadwerkelijke data. Zo kunnen er bijvoorbeeld kenmerken afgeschermd worden voor bepaalde gebruikers. Oftewel deze gebruikers hebben geen toegang tot deze kenmerken. Ook kunnen er extra restricties gemodelleerd worden om bijvoorbeeld horizontale subset te definieren. Bijvoorbeeld een gebruiker heeft alleen toegang tot percelen en gerelateerde informatie uit gemeente X. 

Theoretisch zijn hier al te volgende conclusies te trekken:

* het is mogelijk om (geavanceerde) authorisatie regels vast te leggen in LD op basis van een Authorisatie ontologie.

* het is mogelijk om gebruik te maken van een LD schema (T-Box) van de (register) dataset. Authorisatie regels zijn daarmee direct gekoppeld aan schema-elementen. Hiermee kan o.a. inzicht geboden worden wie waar toegang toe heeft en evt waar niet. Ook geeft deze aanpak mogelijkheden tot verificatie van de authorisaties.                      

* het is mogelijk om gebruik te maken van de data om authorisatie regels op te stellen. Zo kan er bijvoorbeeld toegangsregels opgesteld worden voor een bepaalde gemeente. De daadwerkelijke gemeente wordt uit de dataset opgehaald.


Een proof-of-concept is gemaakt op basis van Linked Data (LD) en Sparql Endpoints. Het concept is om de architectuur mbt Linked Data te behouden en binnen deze context data te beveiligen. Oftewel het concept is om Sparql endpoints (elke) query te laten verwerken maar alleen resultaten, waartoe de gebruiker toegang heeft, terug te geven. 

Hiervoor is een test omgeving opgezet met de volgende eigenschappen:

* Elk register heeft een eigen Sparql endpoint. Hier is fictieve data te vinden inclusief een schema voor dat register. Echte perceel data is gebruikt op basis van het IMX-Geo schema in LD.

* Links zijn aanwezig tussen de registers op basis van Linked Data. Een (informatie-kundige) kern in linked data zou deze links op schema nivo kunnen beschrijven en controleren.

* Federatieve bevraging kan 'standaard' op basis van de federatieve eigenschappen van Linked Data en Sparql. Concreet wordt er in de POC gebruik gemaakt van de "service" mogelijkheden binnen Sparql. Elk sparql endpoint kan via deze service aangeroepen worden.

* Gebruikers en de rechten die deze gebruikers hebben op de data zijn gemodelleerd in Linked Data op basis van een Authorisatie ontologie. Elk sparql endpoint heeft een eigen authorisatie model

* Sparql endpoints kunnen beveiligd worden op basis van meerdere implementatie strategieen. In dit project zijn er 2 strategieen verder uitgewerkt en geimplmenteerd. Beide implementaties gebruiken de authorisatie ontologie om inkomende sparql queries te verwerken en alleen niet-afgeschermde informatie terug te geven

* Beide implementaties loggen elke query om evt audits achteraf mogelijk te maken.

Op basis van dit project zijn de volgende conclusie opgesteld:

* het is mogelijk om authorisatie regels declaratief te formaliseren op basis van een authorisatie ontologie. De afschermings implementatie is onafhankelijk van de autorisatie ontologie
* De ge-identificeerde afschermings patronen zijn generiek en bieden veel mogelijkheden tot afscherming via configuratie van deze patronen
* De PoC implementaties laten zien dat veel authorisatie patronen makkelijk implementeerbaar en haalbaar zijn. Deze implementaties zijn niet bruikbaar voor productie en evt problemen mbt veiligheid en schaalbaarheid zijn niet onderzocht.
* federatief bevragen van meerdere registers werkt op basis van standaard Linked Data techniek. Schaalbaarheid en performance hiervan zijn nog onduidelijk.
* Fictieve data van gekoppelde register in Linked Data is makkelijk te realiseren. 

De volgende aanbevelingen kunnen gemaakt worden:

* Authorisatie ontologie moet verder uitgewerkt worden
* Waterdichtheid van de beveiliging moet aantoonbaar gemaakt kunnen worden
* Meer grip op federatieve/locked-unlocked performance   
* Richting's patroon kan worden uitgewerkt of worden geimplementeerd
* Relaties tussen de registers moeten gestandardiseerd worden opdat je hierop kunt bouwen en vertrouwen. In de linked data wereld zou je een 'upper' ontologie kunnen definieren om de relaties tussen de registers te formaliseren. Daarna zouden (gelijke) functionele zaken gestandardiseerd kunenn worden. Denk aan "ID"'s en versie beheer en meta-data van registers in LD.
* Samenwerking met andere registerhouders om de adoptie van LD en bijbehorende beveiligingen te bespoedigen











