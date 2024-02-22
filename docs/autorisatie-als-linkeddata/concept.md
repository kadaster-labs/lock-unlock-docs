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

















  






