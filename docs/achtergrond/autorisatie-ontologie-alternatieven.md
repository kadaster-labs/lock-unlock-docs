---
title: Autorisatie ontologie alternatieven
---
Er zijn andere initiatieven die een alternatief voor een nieuwe [Authorization
Ontology](#authorization-ontology) zijn.

## Authorization Ontology

// TODO authorization ontology toevoegen in repo !!

> link: [GitHub.com/kadaster-labs/lock-unlock-docs/authorization-ontology.ttl](https://github.com/kadaster-labs/lock-unlock-docs/authorization-ontology.ttl)
> 
> status: _inception_

Dit is een nieuwe ontology die in dit Lock-Unlock project tot stand is gekomen in eerste vorm. Deze
is gebaseerd op de terminologie van [XACML](./xacml.md). Dit is een vrij oude en nog steeds actuele
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

> The Open Digital Rights Language (ODRL) is a policy expression language that provides a flexible
> and interoperable information model, vocabulary, and encoding mechanisms for representing
> statements about the usage of content and services. The ODRL Vocabulary and Expression describes
> the terms used in ODRL policies and how to encode them.

ODRL staat voor de _Open Digital Rights Language_ en zou wellicht ook gebruikt kunnen worden als
[Authorization Ontology](#authorization-ontology). Het is echter veel breder ingestoken om _digitale
rechten_ te declareren. Toegang ... is daar onderdeel van of een afgeleiden van? Dit is niet zo
eenvoudig te vergelijken.

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
standaard gebruik heeft gemaakt van terminologie van [XACML](../achtergrond/xacml.md). Daarnaast is
er ook inspiratie opgedaan vanuit _Role Based Access Control_ (RBAC) en andere toegangsmechanismen.

De filosofie is dat policies ontkoppeld worden van de software (engines) die deze policies afdwingen
/ toepassen. Deze policies dienen ook door mensen gelezen, geschreven en geananlyseerd te kunnen
worden. De policies worden naast de (API) service beheerd en dus ook los van de data.

## Vergelijking

[ODRL](#odrl) is een vergelijkbare oplossingsrichting als de [Authorization
Ontology](#authorization-ontology) van het Lock-Unlock project. Het is echter veel breder ingestoken
dan alleen toegang. Het is zelfs de vraag of toegang wel voldoende uit te drukken is in ODRL.
Daarnaast lijkt de ontwikkeling en toepassing van deze standaard stil te liggen.

De [Open Policy Agent](#open-policy-agent) steekt in op de huidige standaard API's: REST API's. De
strekking is juist om _naast_ de beveiligde data policies te kunnen beschrijven en beheren. Dat is
een tegengestelde oplossing dan Lock-Unlock tracht te bereiken met de [Authorization
Ontology](#authorization-ontology).
