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
standaard voor toegang.

Zoals in de [conclusies en aanbevelingen](../conclusies.md) al is aangegeven, zou het mooiste
resultaat een heuse wereld standaard ontologie zijn ... maar zijn nog wel 'een paar' stappen voor
nodig.

## ODRL

> link: 
> 
> status: _v2.2 (15 February 2018)_

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

De Open Policy Agent is een standaardisatie voor policies welke gericht is op REST API's. Het is duidelijk terug te vinden, maar het lijkt erop dat ook deze standaard gebruik heeft gemaakt van terminologie van [XACML](../achtergrond/xacml.md). Daarnaast is er ook inspiratie opgedaan vanuit _Role Based Access Control_ (RBAC) en andere toegangsmechanismen.