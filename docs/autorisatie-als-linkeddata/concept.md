---
title: Concept
---

# Concept authorisatie als Linked Data

Binnen dit project wordt een configureerbare autorisatie component voorgesteld die een beveiligd SPARQL endpoint opricht. Alle SPARQL queries kunnen gesteld worden maar op basis van de autorisatie worden alleen de resultaten terug gegeven die de gebruiker mag zien. Op deze manier kan er een netwerk van triplestores gemaakt worden die eigen autorisatiegegevens bevat.

![concept](images/concept1.png). 

Applicaties kunnen 'gewoon' de SPARQL endpoints gebruiken en dus ook meerdere SPARQL endpoints via de federatieve mogelijkheden die SPARQL biedt. 

Een dergelijke oplossing zou als een extra component toegevoegd kunnen worden aan bestaande triplestores zonder extra eisen aan deze triplestore te  stellen. Door de instandhouding van een SPARQL endpoint voldoet een dergelijke implementatie ook aan de Linked Data architectuur. Applicaties die werken met een SPARQL endpoint zouden gewoon moeten werken. 


![concept](images/concept.png)

![concept 2](images/concept2.png)

> TO DO: 

> - oa op deze pagina maar ook andere pagina's wordt de term T-Box of A-Box gebruikt. Kunnen we die vervangen voor "schema's" of "datasets"? Ik denk dat dat begrijpelijker is voor de meeste mensen.
> - Ik heb een andere versie van het "concept" plaatje toegevoegd. Die is ms nog duidelijker door de extra toelichting? Zo ja, dan kan die andere weg denk ik.
> - Ik snap de eerste zin niet zo goed hieronder. Klopt deze suggestie: Bovenstaande afbeelding laat zien dat de autorisatie configuratie ervoor zorgt dat één implementatie kan ontstaan die ervoor zorgt dat (alle) endpoints data kunnen afschermen. 

Configuratie mogelijkheden van de autorisatie zorgt ervoor dat er 1 implementatie kan ontstaan die voor (alle) endpoints data kan afschermen. Deze configuratie biedt meerdere mogelijkheden om data af te schermen en kan "geinstantieerd" worden op basis van een autorisatie ontologie. Deze ontologie beschrijft data-afschermingsmogelijkheden en bevat de minimale kenmerken die nodig zijn om alle informatie hiervoor op te slaan. 

Wat er precies afgeschermd dient te worden kan geconfigureerd worden door o.a. gebruik te maken van Linked Data T-Box modellen (schema's) en Linked data (A-Box) datasets. Oftewel de autorisatie configuratie maakt gebruik van de LD modellen die de LD datasets beschrijven.

![conceptLD](images/autorisatieAlsLD.png)

### Samenvatting 
> TO DO: 

> - kan hier A-Box/T-Box ook vervangen worden door andere termen? Of ben ik de enige die deze termen niet gelijk kan plaatsen?
> - Moet het bij het laatste punt niet juist voor ipv achter zijn? 

Samengevat zijn de hoofduitgangspunten voor het concept Autorisatie als Linked Data zijn: 

* Autorisatieregels zijn vastgelegd in Linked Data op basis van een autorisatie ontologie
* Autorisatieregels zijn verbonden met A-Box/T-Box Linked Data
* Een autorisatie implementatie gebruikt de autorisatie-regels in LD en dat is voldoende voor een volledige implementatie
* Een autorisatie implementatie zit achter een SPARQL endpoint zodat alle Linked Data standaarden in tact blijven

















  






