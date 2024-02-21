---
title: Concept
---


#Concept authorisatie als Linked Data
Binnen dit project wordt een configureerbare autorisatie component voorgesteld die een beveiligde Sparql endpoint opricht. Alle Sparql queries kunnen gesteld worden maar alleen op basis van de autorisatie worden resultaten terug gegeven. Een dergelijke oplossing zou als een extra component toegevoegd kunnen worden aan bestaande triplestores zonder extra eisen aan deze triplestore te  stellen. Door de instandhouding van een sparql endpoint voldoet een dergelijke implementatie ook aan de Linked Data architectuur. Applicaties die werken met een Sparql endpoint zouden gewoon moeten werken. 


![concept](images/concept.png)

Configuratie mogelijkheden van de autorisatie zorgt ervoor dat er 1 implementatie kan ontstaan die voor (alle) endpoints data kan afschermen. Deze configuratie biedt meerdere mogelijkheden om data af te schermen en kan "geinstantieerd" worden op basis van een autorisatie ontologie. Deze ontologie beschrijft meerdere data afschermings mogelijkheden en bevat de minimale kenmerken die nodig zijn om alle informatie hiervoor op te slaan. 
Wat er precies afgeschermd dient te worden kan geconfigureerd worden door o.a. gebruik te maken van Linked Data T-Box modellen (schema's) en Linked data (A-Box) datasets. Oftewel de autorisatie configuratie maakt gebruik van de LD modellen die de LD datasets beschrijven.

![conceptLD](images/autorisatieAlsLD.png)


Samengevat zijn de hoofd-uitgangspunten voor het concept autorisatie als Linked Data zijn: 

* autorisatie-regels zijn vast gelegd in Linked Data op basis van een autorisatie ontologie
* autorisatie regels zijn verbonden met A-Box/T-Box Linked data
* Een autorisatie implementatie gebruikt de autorisatie-regels in LD en dat is voldoende voor een volledige implementatie
* een autorisatie implementatie zit achter een Sparql endpoint opdat alle Linked Data standaarden in tact blijven















#Context

###Authenticatie
Om de gebruiker te herkennen is een authenticatie proces nodig. In dit project is de gehele authenticatie overgeslagen en dus buiten scope. 

###Autorisatie
Autorisatie is het proces waarbij een gebruiker rechten (of privileges) verkrijgt. In dit project is er afgeschermde data. Per gebruiker of rol kan de afscherming verschillen. Oftewel per rol of gebruiker zijn de privileges tot data verschillend.

###Sparql
Sparql is een querytaal voor het bevragen en manipuleren van Linked Data op basis van de RDF standaard. Sparql biedt o.a. de mogelijkheid om complexe vragen te stellen aan Linked Data waarbij er op zoek gegaan wordt naar 'oplossingen' die voldoen aan de vraag.

###Linked Data
Linked data is manier om data te structureren en te verbinden over het web en maakt gebruik van stanfaarden zoals URI's, RDF en ontologieen gedefinieerd in RDF zoals RDFS, OWL en Shacl. 

###RDF
RDF staat voor Resource Description Framework. Het is een gestandardiseerd model voor het opslaan van verwerkbare gegevens en biedt een zeer veel flexibiliteit mbt het structureren en beschrijven van gegevens.

###OWL
OWL staat voor de Web Ontology Language en is een gestandardiseerde taal voor formaliseren van ontologieen op basis van Linked Data.

###SHACL
SHACL staat voor Shapes Constraint Language. Het is een W3C stdnaard voor het valideren van RDF data volgens een Shacl model. Via Shacl kun je zogenaamde Shapes definieren die structuren beschrijven van RDF data. Vervolgens kan RDF data getest worden of ze voldoen aan deze shapes. 

###Triplestore
Een triplestore is een database voor het opslaan en bevragen van Linked Data op basis van de RDF standaard. Vaak biedt een triplestore een Sparql endpoint aan.

###Sparql Endpoint
Een Sparql endpoint is een rest API die Sparql queries kan uitvoeren. Het betreft hier een W3C standaard. 

  






