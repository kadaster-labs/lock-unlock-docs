---
title: Autorisatie ontologie alternatieven
---
Er zijn andere initiatieven die een alternatief voor een nieuwe [Autorisatie
Ontologie](../autorisatie-als-linkeddata/authorisation-ontology.md) zijn.

## Authorisation Ontology

> link: [oplevering#autorisatie-ontologie](../opleveringen.md#autorisatie-ontologie)
> 
> status: _inception_

Dit is een nieuwe ontology die in dit Lock-Unlock project tot stand is gekomen in eerste vorm. Deze
is gebaseerd op de terminologie van [XACML](./auth-alternatieven.md#xacml). Dit is een vrij oude en nog steeds actuele
standaard voor toegang. Het doel is om policies ook als _data_ te beschouwen, te kunnen gebruiken,
bevragen en mét de data te publiceren. Data en hun policies zijn daarmee geen losstaande zaken meer,
maar twee bij elkaar horende onderdelen.

Zoals in de [conclusies en aanbevelingen](../conclusies.md) al is aangegeven, zou het mooiste
resultaat een heuse wereld standaard ontologie zijn ... maar zijn nog wel 'een paar' stappen voor
nodig.

## ODRL

> link: [ODRL Information Model 2.2](https://www.w3.org/TR/odrl-model/) | [ODRL Vocabulary &
> Expression 2.2](https://www.w3.org/TR/odrl-vocab/)
> 
> status: _Recommendation v2.2 (15 February 2018)_

ODRL staat voor de _Open Digital Rights Language_ en zou wellicht ook gebruikt kunnen worden als
[Authorisation Ontology](#authorisation-ontology). Het is echter veel breder ingestoken om _digitale
rechten_ te declareren. Toegang ... is daar onderdeel van of een afgeleiden van? Dit is niet zo
eenvoudig te vergelijken.

> The Open Digital Rights Language (ODRL) is a policy expression language that provides a flexible
> and interoperable information model, vocabulary, and encoding mechanisms for representing
> statements about the usage of content and services. The ODRL Vocabulary and Expression describes
> the terms used in ODRL policies and how to encode them.

Het lijkt erop dat hier actief aan gewerkt is en dat er behoorlijke evolutie is geweest (zie
[history](https://www.w3.org/standards/history/odrl-model/)), gezien het versienummer `2.2`.
Tegelijk is de [W3C Permissions and Obligations Expression Working
Group](https://www.w3.org/groups/wg/poe/) `closed`. Het is moeilijk te vinden waar deze standaard
precies wordt toegepast en welke vendors deze ondersteunen.

## Open Policy Agent

> link: [www.openpolicyagent.org](https://www.openpolicyagent.org/)
> 
> status: _v0.62.1 with multiple implementations_

De [Open Policy Agent](https://www.openpolicyagent.org/) is een standaardisatie voor policies welke
gericht is op REST API's. Het is niet duidelijk terug te vinden, maar het lijkt erop dat ook deze
standaard gebruik heeft gemaakt van terminologie van [XACML](../achtergrond/auth-alternatieven.md#xacml). Daarnaast is
er ook inspiratie opgedaan vanuit _Role Based Access Control_ (RBAC) en andere toegangsmechanismen.

De filosofie is dat policies ontkoppeld worden van de software (engines) die deze policies afdwingen
/ toepassen. Deze policies dienen ook door mensen gelezen, geschreven en geananlyseerd te kunnen
worden. De policies worden naast de (API) service beheerd en dus ook los van de data.

## XACML

<a href="https://www.oasis-open.org/committees/tc_home.php?wg_abbrev=xacml" target="_blank">OASIS
Committee XACML</a>, the eXtensible Access Control Markup Language; een taal voor het uitdrukken van
regels voor toegangsverlening. Deze regels zijn technologie onafhankelijk en gescheiden van de
gegevens waarop ze betrekking hebben. De taal ondersteunt Attribute Based Access Control (ABAC).

![XACML Architectuur](images/xacml.png)

Zie ook <a href="https://biplatform.nl/magazines/Aveq/118852.pdf" target="_blank">Artikel Java
Magazine mei 2011</a>

## Vergelijking

[ODRL](#odrl) is een vergelijkbare oplossingsrichting als de [Authorisation
Ontology](#authorisation-ontology) van het Lock-Unlock project. Het is echter veel breder ingestoken
dan alleen toegang. Het is zelfs de vraag of toegang wel voldoende uit te drukken is in ODRL.
Daarnaast lijkt de ontwikkeling en toepassing van deze standaard stil te liggen.

De [Open Policy Agent](#open-policy-agent) steekt in op de huidige standaard API's: REST API's. De
strekking is juist om _naast_ de beveiligde data policies te kunnen beschrijven en beheren. Dat is
een tegengestelde oplossing dan Lock-Unlock tracht te bereiken met de [Authorisation
Ontology](#authorisation-ontology).
