X-GM-THRID: 6200611211635064832
X-Received: by 10.152.181.2 with SMTP id ds2mr591218lac.5.1443706650144;
        Thu, 01 Oct 2015 06:37:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.27.130 with SMTP id jg2ls149820wid.8.gmail; Thu, 01 Oct
 2015 06:37:29 -0700 (PDT)
X-Received: by 10.180.210.212 with SMTP id mw20mr486197wic.3.1443706649781;
        Thu, 01 Oct 2015 06:37:29 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.24])
        by gmr-mx.google.com with ESMTPS id q6si82774wif.2.2015.10.01.06.37.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2015 06:37:29 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.24;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue104) with ESMTPSA (Nemesis) id 0Mdurl-1a07je1iub-00Pf2F; Thu, 01 Oct
 2015 15:37:27 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Shraddha Barke <shraddha.6596@gmail.com>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/2] Staging: lustre: ptlrpc: Make functions static
Date: Thu, 01 Oct 2015 15:37:26 +0200
Message-ID: <1949518.HAv4iPaUmg@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <alpine.DEB.2.10.1510011515370.2648@hadrien>
References: <1443692278-9074-1-git-send-email-shraddha.6596@gmail.com> <alpine.DEB.2.11.1510011534180.9108@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V> <alpine.DEB.2.10.1510011515370.2648@hadrien>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:sijDqEk/0Grw8Bt4UH3D94EItEYuRvSc6617Dwm0i1g0mBD+yMk
 A88BPHochmDiBtOApiUPEBjGJRF3lE0sblWGICk4WEck1AiCMI/ZrUsKktBtRz8vezp6lCL
 1/EdUAuV85sSRfXJ5SHeaciU7NBUbkDMYnxAK4NVvgRU3T5LJ8k2leTsLU2Y0jlgk6lnvtk
 3IBe4bGtQCVLWYY+mR0wQ==
X-UI-Out-Filterresults: notjunk:1;V01:K0:PNeEN0cZEWk=:xuJ9xwsy9c82PPFR+X3eXP
 rBayvQLmnZVsY0Q5uqKkZp1kYia1zybH5tXAUQSny/uUUS24YwDtmte5jDEcP9lBaQhsVR8x8
 sdizlu2xOUAGYfro4tYLjgTRqiHmne2sAzdQrCY6tYfKSMwAZcmbqaqvMcGC6u92CdcK5BFiM
 JZbwW4onsBmPtqTgXJdDmzoBFh4YuNeOylFcjkmW4fvt1w0M0N+n9tq6eQ4Ii7QST5n+Beojx
 KHI4FET2XvmOTy/FahttKYI8x0XhXyi1QKWLO3hEZhJBi1FH5kTp6H/u6yZdY4n/8V+8mJn5H
 9ffaDqPl2H0d4f9eEHsfrzBKago17g3RQMQga1UEkcXcIgJfthcpV7QGVtHKnWTJUDDYwbW9N
 G7W0cN/UAiia/Wfvr84ePg2JaAsBSeQD+oH/ur29ngi/IHpfUNme5vUYPqJKMvU7fl3iTLrSs
 8A7vAL31+CLjk8V1tsBpLflgZlp7mOt4xpD5jKkhRLMgqDwBssK19TUSpFaV6j6djm2tcoKtX
 J4yV2CLb+jxgcElErCjRfH9zn3tceIS61gdWUPgM1tU4CdVWVuauXswzRlo1jpO8Pewrgj6WV
 +4wezkiz6pCUelhEJUWr6KMyM93e/REqW6TqjwN6z/XVFy9o3av/9fKSUUN9kdtG75GLS2s6y
 vafAYv0f6lFD73Nrk8a3xKiWD7ZR9N3FGaLWCBBhdAf0AyIORbBigyUmYegdFBC3J1dGOEfmb
 VGKsxSttfAGO/6bp

On Thursday 01 October 2015 15:20:39 Julia Lawall wrote:
> On Thu, 1 Oct 2015, Shraddha Barke wrote:
> 
> >
> >
> > On Thu, 1 Oct 2015, Arnd Bergmann wrote:
> >
> > > On Thursday 01 October 2015 15:07:57 Shraddha Barke wrote:
> > > > Since these functions are not called anywhere apart from this particular
> > > > file, declare them as static.
> > > >
> > > > Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
> > > >
> > >
> > > Reviewed-by: Arnd Bergmann <arnd@arndb.de>
> > >
> > > Note that there are hundreds more symbols in lustre that should be made
> > > static.
> > > Most of them are harder to find because they have a declaration in a header
> > > file
> > > despite being only used in one place.
> 
> Why does it make it hard to find?  One can make a spearate check in .c
> files.

We currently get a sparse warning for each global identifier definition
that is not preceded by a declaration, but since most of our tools
(gcc, sparse, coccinelle, ...) work on a single file at a time, they
do not know whether a global symbol that is defined in a C file and
(incorrectly) declared in a header is used in another C file or not.

In case of lustre, a lot of functions were originally global because they
were used in the server-side code. However, the code we have in staging
today only includes the client-side implementation and we want to
remove all traces of the server side from it for simplicity.

> I would think though that the clean up could be a little bit tedious.  I
> guess that when the function is static, it shouldn't be declared in the
> header file any more?

Correct. The first step could be to remove declarations for the symbols,
followed by actually removing the ones that we then get sparse warnings
for.

>  At least not if the header file is shared
> between multipe files.  But it still may need to be declared somewhere, if
> it is referenced before it is declared in the one file where it is used.

I would also consider that a bug we should warn about: basically any
'extern' variable declaration and any forward declaration for a 
global function (with or without the redundant extern specifier) should
be considered a bug. We want the same declaration to be visible by both
the file that defines it and the file that uses it so we get warned about
type mismatches.

> The question then is how to divide up the patches.  Should one just
> address all of the functions that have this property in a single file?  Or
> should one only work on a couple of functions at a time that seem related
> to each other?

I think either way would be fine.

There is one more thing to look out for: if a symbol is only used in
the file in which it gets defined, but the use comes before the
definition, we still need a 'static' forward declaration. Ideally
the functions should be reordered in a way that avoids those declarations,
but we don't want patches that mix a large scale move of code around
a file with a simpler change to make the symbols static.

The two parts can be done in either order: we could mark the functions
static and add the forward declarations in one patch, and move them
to their proper place in a follow-up, or do the reverse without the
forward declaration.

> Another issue in Lustre is that there are a some EXPORT_SYMBOLs on
> functyions that are only used in one file.  Should they all be removed, or
> is it like the case of android where there is code not yet in the kernel
> that may rely on them?

They should all be removed as far as I can tell. It's a bug to export
a static symbol. I don't think that happens a lot, but this is something
we could easily check for using coccinelle.

	Arnd

