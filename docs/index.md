---
title:  "This is a test document"
author: ["Matthias Valvekens"]
toc-title: "Table of Contents"
toc-depth: 2
link-citations: true
date: 2022-11-29
iso:
    committee: "ISO TC 171/SC 2/WG 8"
    document-ref: "ISO/TS 99999"
    document-year: 2022
    draft-stage: WD
references:
    - id: cms-update
      author: "R. Housley"
      title: "RFC 8933: Update to the Cryptographic Message Syntax (CMS) for Algorithm Identifier Protection"
      issued: 2020
      url: "https://tools.ietf.org/html/rfc8933.html"
      citation-label: "RFC 8933"
    - id: iso-16609
      citation-label: "ISO 16609:2012"
      author: "ISO 16609:2012"
      title: "Financial services --- Requirements for message authentication using symmetric techniques"
---

\maketitle

\newpage

\toc

\newpage

::: forewordtitle
Foreword
:::

The foreword goes here.


\newpage

::: introtitle
Introduction
:::

This document presents identity system-based secure overlay for the Internet is presented. This system is based on a Key Event Receipt Infrastructure (KERI) or the KERI protocol. The primary key management operation is key Rotation (transference) via a novel key pre-rotation scheme as the background for the acronym KERI.

The identity system-based secure overlay for the Internet, based on KERI includes a primary root-of-trust in Self-certifying identifiers (SCIDs). This root-of-trust  presents a formalism for Autonomic identifiers (AIDs) and Autonomic namespaces (ANs). These are part of an Autonomic Identity System (AIS). This system uses the design principle of minimally sufficient means to provide a candidate trust spanning layer for the internet. Associated with this system is a decentralized key management infrastructure (DKMI). 

The primary root-of-trust are SCIDs  that are strongly bound at issuance to a cryptographic signing (public, private) keypair which is self-contained until/unless control needs to be transferred to a new keypair. In that event, an append-only chained Key event log (KEL) of signed transfer statements provides end-verifiable control provenance. This makes intervening operational infrastructure replaceable because the event logs may be served up by any infrastructure including ambient infrastructure. End-verifiable logs on ambient infrastructure enable ambient verifiability (Verifiable by anyone, anywhere, at any time).

The primary key management operation is key Rotation (transference) via a novel key pre-rotation scheme. Two primary trust modalities motivated the design, these are a direct (one-to-one) mode and an indirect (one-to-any) mode. The indirect mode depends on witnessed Key event receipt logs (KERL) as a secondary root-of-trust for validating events, which is the background for the acronym KERI, Key Event Receipt Infrastructure. In the direct mode, the identity Controller establishes control via verified signatures of the controlling keypair. The indirect mode extends that trust basis with witnessed Key event receipt logs (KERLs) for validating events. The security and accountability guarantees of indirect mode are provided by KERI’s Agreement Algorithm for Control Establishment (KA2CE) among a set of Witnesses.

The KA2CE approach may be much more performant and scalable than more complex approaches that depend on a total ordering distributed consensus ledger. Nevertheless, KERI may employ a distributed consensus ledger when other considerations make it the best choice. The KERI approach to DKMI allows for more granular composition. Moreover, because KERI is event streamed it enables DKMI that operates in-stride with data events streaming applications such as web 3.0, IoT, and others where performance and scalability are more important. The core KERI engine is identifier namespace independent. This makes KERI a candidate for a universal portable DKMI.


\mainmatter

\doctitle

# Scope

Describe the scope


# Normative references

The following documents are referred to in the text in such a way that some or all of their content constitutes requirements of this document. For dated references, only the edition cited applies. For undated references, the latest edition of the referenced document (including any amendments) applies.


::: { #nrm:pdf2 .normref label="ISO 32000-2" }
ISO 32000-2, *Document management --- Portable Document Format --- Part 2: PDF 2.0*
:::

::: { #nrm:cms .normref label="RFC 5652" }
HOUSLEY, R. *RFC 5652: Cryptographic Message Syntax (CMS).* [online]. 2009. Available from: <https://tools.ietf.org/html/rfc5652.html>
:::



# Terms and Definitions

For the purposes of this document, the following terms and definitions apply.

ISO and IEC maintain terminological databases for use in standardization at the following addresses:

 - ISO Online browsing platform: available at <https://www.iso.org/obp>
 - IEC Electropedia: available at <http://www.electropedia.org/>



PDF (Portable Document Format)

: file format defined by ISO 32000-2

MAC (Message Authentication Code)

: fixed-length string of bits used to verify the authenticity of a message, generated by the sender of the message, transmitted together with the message, and verified by the receiver of the message

: [SOURCE: [@iso-16609], 3.15]


# Actual document content {#sec:content}


I can cite documents from the normative references: [@nrm:pdf2, 7.3]. Or from the bibliography: [@cms-update, § 1.1].


: My fancy table {#tbl:fancy-table}

+-------------------------+-------------+-------------------------------------------+
| **Key**                 | **Type**    | **Value**                                 |
+=========================+=============+===========================================+
| **Type**                | name        | *DeveloperExtensions*                     |
+-------------------------+-------------+-------------------------------------------+
| **BaseVersion**         | name        | *2.0*                                     |
+-------------------------+-------------+-------------------------------------------+
| **ExtensionLevel**      | integer     | 99999                                     |
+-------------------------+-------------+-------------------------------------------+
| **ExtensionRevision**   | text string | :2022                                     |
|                         |             |                                           |
|                         |             | ::: note                                  |
|                         |             | The COLON (U+003A) character is part      |
|                         |             | of the revision identifier.               |
|                         |             | :::                                       |
+-------------------------+-------------+-------------------------------------------+
| **URL**                 | string      | <https://example.com>                     |
+-------------------------+-------------+-------------------------------------------+


I can also refer to @tbl:fancy-table.

# Another clause

## With a subclause

Let's cite @sec:content.

::: note
This is a note.
:::

::: note
This is another note. Check out the numbering.
:::

::: example
How about an example?
:::

## And another subclause

::: note
This is also a note, but it's not numbered.
:::

\backmatter


# This is an annex {#sec:annexA .normative}

With some text

# This is another annex {#sec:annexB .informative}

With some more text

\newpage

\makebibliography