X-GM-THRID: 6200611211635064832
X-Received: by 10.112.138.4 with SMTP id qm4mr231562lbb.6.1443707875119;
        Thu, 01 Oct 2015 06:57:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.2.129 with SMTP id 1ls120807lau.31.gmail; Thu, 01 Oct 2015
 06:57:54 -0700 (PDT)
X-Received: by 10.112.145.3 with SMTP id sq3mr740938lbb.7.1443707874173;
        Thu, 01 Oct 2015 06:57:54 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.131])
        by gmr-mx.google.com with ESMTPS id bj4si102810wib.1.2015.10.01.06.57.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2015 06:57:54 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.131;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue001) with ESMTPSA (Nemesis) id 0MKQMA-1Zh6P90sXm-001lTt; Thu, 01 Oct
 2015 15:57:53 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Shraddha Barke <shraddha.6596@gmail.com>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/2] Staging: lustre: ptlrpc: Make functions static
Date: Thu, 01 Oct 2015 15:57:52 +0200
Message-ID: <4003012.PLAPRmBvBo@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <alpine.DEB.2.10.1510011544300.2648@hadrien>
References: <1443692278-9074-1-git-send-email-shraddha.6596@gmail.com> <1949518.HAv4iPaUmg@wuerfel> <alpine.DEB.2.10.1510011544300.2648@hadrien>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:FoUItl7fVzFVtLtnSKJrepS9Q+j9TEIeyuppDmbYZaAjk1dV0k7
 CFO9ohXaF7QPJhgzuEa4Ix8uHHyg+TulOuDYGRYCAE97VBUvAh9x7BEbqQCq232RDgIRuwu
 7Tc3jZJK02k+Ba8dcyt7XndSX0CoUtj6Okh370+uByH9z8frgHUVLGmG9F10zCuG077iU5N
 3MLO1zwbOT5SXyGFzz0qg==
X-UI-Out-Filterresults: notjunk:1;V01:K0:rRpz45ZMDec=:kuQDamTapipI/HpFvVT1qp
 nT4mVev5bhHeA4c27jz78nNuohY2GkxAjzpPyMuGPHrO6WQsL9xtd4C4Ea+MZz6C0OpGBm6NR
 e2ejDEH/1baoheWdUd8qNguTOf6LUIO0zjezzRzFEqKOMf+8hxcwFTaaF3pDgD7glTBiEY9xj
 dzy+fiHNzOSgn4TjEWr8OBlr9bgFfyOewPca38QhThsJlsUMVQxqdEeBv5/kKtwdmA+ejp40X
 sfsQ4hmQxJurUddNVkiDblI0bggbPJS6xvPRx3dQLXRo/PAOUFAYSxvrb6eke56leE2hx4E3v
 ZvsjT/WwpwRrcUrgm78GhSxwtpRjjTOEsv0/uPuFvClbAkvgCikk79se7eZL9RShdgi5M+MnF
 EjnsgvXmMCOjKx8HJN9prQF9BqKc+uRMU+SBtEhlapdAIHg6jEz0/C16ZVgQaE7DlLlNrpbge
 VIZVH3JpyFZsANGKTnRFDMMIj2QAbasXKM9/+yVHHnk2iO0OWDm4ml7raEfRymNfXMhAmRp02
 O7Y10O8X9XH5P7SHxTvngaDDAi4EpAPoiT21hZvNarOWOg5Yn5eVZa1ezUUtRJEH6vvR9+B29
 KoBxPc14WS05qtzbtkkbFn11WzY6h3o114wMdJgKvBMPeIqCTMcJ+LrMEqM+im9djyL8e9RnC
 yNADtJDNUgd5rn8wKKkuQX1j786LYQfrD+lLq9qsOkLxjKpzzLV7/SAXGQOWEzEPE1akQodGr
 U3B9ApesKR8Rhb7S

On Thursday 01 October 2015 15:49:21 Julia Lawall wrote:
> On Thu, 1 Oct 2015, Arnd Bergmann wrote:
> > On Thursday 01 October 2015 15:20:39 Julia Lawall wrote:
> > > On Thu, 1 Oct 2015, Shraddha Barke wrote:
> > > > > Note that there are hundreds more symbols in lustre that should be made
> > > > > static.
> > > > > Most of them are harder to find because they have a declaration in a header
> > > > > file
> > > > > despite being only used in one place.
> > >
> > > Why does it make it hard to find?  One can make a spearate check in .c
> > > files.
> >
> > We currently get a sparse warning for each global identifier definition
> > that is not preceded by a declaration, but since most of our tools
> > (gcc, sparse, coccinelle, ...) work on a single file at a time, they
> > do not know whether a global symbol that is defined in a C file and
> > (incorrectly) declared in a header is used in another C file or not.
> 
> OK, but from Coccinlle you can just call grep, and check the extensions on
> the returned file names, so it is not a big problem.

I'm not following here. How exactly would you find symbols like this with coccinelle?

subsystem.h:

extern int subsystem_state;

subsystem.c:

#include "subsystem.h"
long subsystem_state;

static void function(void)
{
	...
	subsystem_state++;
	...
}

with no users of this variable outside of this file.

> > >  At least not if the header file is shared
> > > between multipe files.  But it still may need to be declared somewhere, if
> > > it is referenced before it is declared in the one file where it is used.
> >
> > I would also consider that a bug we should warn about: basically any
> > 'extern' variable declaration and any forward declaration for a
> > global function (with or without the redundant extern specifier) should
> > be considered a bug. We want the same declaration to be visible by both
> > the file that defines it and the file that uses it so we get warned about
> > type mismatches.
> 
> I think there would be warning about type mismatches anyway, if the
> prototype doesn't match with the definition?

The point is that this only works if all files include the same header.

e.g.

subsystem.h:

extern int subsystem_state;

subsystem.c:

#include "subsystem.h"
long subsystem_state;

driver.c:
/* no #include subsystem.h */
extern long subsystem_state;

	Arnd

