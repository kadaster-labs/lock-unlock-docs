---
title: Management Samenvatting
---

Binnen dit project is onderzocht hoe data afgeschermd kan worden binnen een federatief datastelsel. Hiervoor zijn verschillende requirements geïdentificeerd zoals:

* verticale subsets            : objecten en/of kenmerken en/of relaties zijn afgeschermd, zoals bijv. koopsom of eigenaar.

* horizontale subsets          : delen van de data zijn afgeschermd, waar je wel toegang toe hebt is volledig en dus niet verticaal afgeschermd. Een voorbeeld hiervan is dat je alleen toegang hebt tot de data van een specifieke regio.

* afscherming relatie-richting : het opvragen van informatie in een bepaalde richting is mogelijk, maar het opvragen van de omgekeerde richting is niet mogelijk. Bijvoorbeeld: het zou mogelijk moeten zijn om te zoeken naar de eigenaar van een specifiek perceel op basis van het perceelnummer maar niet alle perceelnummers die iemand in eigendom heeft op basis van naam.

* aggregatie mogelijkheden: het kan zijn dat gebruikers geen toegang hebben tot de micro data maar wel tot aggregaties (onder bepaalde voorwaarden) Denk bijvoorbeeld aan de gemiddelde transactieprijzen van woningen in een bepaald gebied.


![Infographic](images/infographic.png)

## Autorisatie ontologie
Deze patronen zijn gemodelleerd in een authorisatie ontologie. Mbv deze Authorisatie ontologie kunnen  deze concepten specifiek gemaakt worden voor elk register waardoor er een declaratief model ontstaat met daarin de beschreven rechten voor een specifieke rol of gebruiker. Dit model is direct gelinked aan het schema van de registers om zo authorisatie-regels toe te wijzen aan (delen van) het schema of delen van de daadwerkelijke data. Zo kunnen er bijvoorbeeld kenmerken afgeschermd worden voor bepaalde gebruikers. Oftewel deze gebruikers hebben geen toegang tot deze kenmerken. Ook kunnen er extra restricties gemodelleerd worden om bijvoorbeeld horizontale subsets te definiëren. Bijvoorbeeld een gebruiker heeft alleen toegang tot percelen en gerelateerde informatie uit gemeente X. 

Theoretisch zijn hier al de volgende conclusies te trekken:

* het is mogelijk om (geavanceerde) authorisatie regels vast te leggen in Linked Data op basis van een authorisatie ontologie.

* het is mogelijk om gebruik te maken van een Linked Data schema (T-Box) van de dataset. Authorisatieregels zijn daarmee direct gekoppeld aan schema-elementen. Hiermee kan o.a. inzicht geboden worden wie waar toegang toe heeft en evt waar niet. Ook geeft deze aanpak mogelijkheden tot verificatie van de authorisaties.                      

* het is mogelijk om gebruik te maken van de data om authorisatie regels op te stellen. Zo kan er bijvoorbeeld toegangsregels opgesteld worden voor een bepaalde gemeente. De daadwerkelijke gemeente wordt uit de dataset opgehaald.

## Proof of Concept
Een Proof of Concept is gemaakt op basis van Linked Data en SPARQL Endpoints. Het idee is om de architectuur mbt Linked Data te behouden en binnen deze context data te beveiligen. Oftewel het concept is om Sparql endpoints (elke) query te laten verwerken maar alleen resultaten, waartoe de gebruiker toegang heeft, terug te geven. 

Hiervoor is een testomgeving opgezet met de volgende eigenschappen:

* Elke dataset heeft een eigen SPARQL endpoint. Hier is fictieve data te vinden inclusief een schema van die dataset. Echte perceel data is gebruikt op basis van het IMX-Geo schema.

* Links zijn aanwezig tussen de registers op basis van Linked Data. Een informatiekundige kern zou deze links op schemaniveau kunnen beschrijven en controleren.

* Federatieve bevraging kan 'standaard' op basis van de federatieve eigenschappen van Linked Data en SPARQL. Concreet wordt er in de PoC gebruik gemaakt van de "service" mogelijkheden binnen SPARQL. Elk SPARQL endpoint kan via deze service aangeroepen worden.

* Gebruikers en de rechten die deze gebruikers hebben op de data zijn gemodelleerd in Linked Data op basis van een authorisatie ontologie. Elk SPARQL endpoint heeft een eigen authorisatie model

* SPARQL endpoints kunnen beveiligd worden op basis van meerdere implementatie strategieën. In dit project zijn 2 strategieën verder uitgewerkt en geimplementeerd. Beide implementaties gebruiken de authorisatie ontologie om inkomende SPARQL queries te verwerken en alleen niet-afgeschermde informatie terug te geven

* Beide implementaties loggen elke query om bijvoorbeeld audits achteraf mogelijk te maken.

## Conclusies
Op basis van dit project kunnen de volgende conclusies worden getrokken:

* het is mogelijk om authorisatie regels declaratief te formaliseren op basis van een authorisatie ontologie. De implementatie is onafhankelijk van de autorisatie ontologie
* De geïdentificeerde afschermingspatronen zijn generiek en bieden veel mogelijkheden tot afscherming via configuratie van deze patronen
* De PoC implementaties laten zien dat veel authorisatie patronen makkelijk implementeerbaar en haalbaar zijn. 
* Deze implementaties zijn nog niet bruikbaar voor productie en eventuele problemen mbt veiligheid en schaalbaarheid zijn niet onderzocht.
* Het federatief bevragen van meerdere datasets werkt op basis van standaard Linked Data technieken. Schaalbaarheid en performance hiervan zijn niet onderzocht.
* Het creëren van fictieve datasets die te koppelen zijn in Linked Data is makkelijk te realiseren. 

## Aanbevelingen
De volgende aanbevelingen kunnen gemaakt worden:

* De authorisatie ontologie moet verder uitgewerkt worden in overleg met andere organisaties. Hierbij moet ook gekeken worden naar de verschillende standaarden zoals XACML en OPA.
* De waterdichtheid van de beveiliging moet aantoonbaar gemaakt kunnen worden.
* Meer inzicht krijgen in de performance van het federatief bevragen van data, ook in combinatie met  autorisatie
* Binnen het project zijn we er niet aan toegekomen om het afschermen van de richting te onderzoeken. De richtings-patronen kunnen nog worden uitgewerkt en evt. worden geïmplementeerd
* de relaties tussen de verschillende registers moeten gestandardiseerd worden opdat je hierop kunt bouwen en vertrouwen. In de Linked Data wereld zou je een 'upper' ontologie kunnen definiëren om de relaties tussen de registers te formaliseren. Daarna zouden (gelijke) functionele zaken gestandardiseerd kunnen worden. Denk aan "ID"'s, versiebeheer en meta-data van registers in Linked Data.
* Samenwerking met andere bronhouders is nodig om de adoptie van Linked Data en bijbehorende autorisatie te bespoedigen











