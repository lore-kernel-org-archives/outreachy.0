X-GM-THRID: 6200611211635064832
X-Received: by 10.112.147.7 with SMTP id tg7mr1452577lbb.16.1443707362661;
        Thu, 01 Oct 2015 06:49:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.102.232 with SMTP id fr8ls156524wib.28.gmail; Thu, 01 Oct
 2015 06:49:22 -0700 (PDT)
X-Received: by 10.180.210.212 with SMTP id mw20mr494235wic.3.1443707362333;
        Thu, 01 Oct 2015 06:49:22 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id bn1si103392wib.0.2015.10.01.06.49.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2015 06:49:22 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,617,1437429600"; 
   d="scan'208";a="180465071"
Received: from guest-rocq-135242.inria.fr ([128.93.135.242])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 01 Oct 2015 15:49:21 +0200
Date: Thu, 1 Oct 2015 15:49:21 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arnd Bergmann <arnd@arndb.de>
cc: Shraddha Barke <shraddha.6596@gmail.com>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/2] Staging: lustre: ptlrpc: Make
 functions static
In-Reply-To: <1949518.HAv4iPaUmg@wuerfel>
Message-ID: <alpine.DEB.2.10.1510011544300.2648@hadrien>
References: <1443692278-9074-1-git-send-email-shraddha.6596@gmail.com> <alpine.DEB.2.11.1510011534180.9108@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V> <alpine.DEB.2.10.1510011515370.2648@hadrien> <1949518.HAv4iPaUmg@wuerfel>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Thu, 1 Oct 2015, Arnd Bergmann wrote:

> On Thursday 01 October 2015 15:20:39 Julia Lawall wrote:
> > On Thu, 1 Oct 2015, Shraddha Barke wrote:
> >
> > >
> > >
> > > On Thu, 1 Oct 2015, Arnd Bergmann wrote:
> > >
> > > > On Thursday 01 October 2015 15:07:57 Shraddha Barke wrote:
> > > > > Since these functions are not called anywhere apart from this particular
> > > > > file, declare them as static.
> > > > >
> > > > > Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
> > > > >
> > > >
> > > > Reviewed-by: Arnd Bergmann <arnd@arndb.de>
> > > >
> > > > Note that there are hundreds more symbols in lustre that should be made
> > > > static.
> > > > Most of them are harder to find because they have a declaration in a header
> > > > file
> > > > despite being only used in one place.
> >
> > Why does it make it hard to find?  One can make a spearate check in .c
> > files.
>
> We currently get a sparse warning for each global identifier definition
> that is not preceded by a declaration, but since most of our tools
> (gcc, sparse, coccinelle, ...) work on a single file at a time, they
> do not know whether a global symbol that is defined in a C file and
> (incorrectly) declared in a header is used in another C file or not.

OK, but from Coccinlle you can just call grep, and check the extensions on
the returned file names, so it is not a big problem.

> In case of lustre, a lot of functions were originally global because they
> were used in the server-side code. However, the code we have in staging
> today only includes the client-side implementation and we want to
> remove all traces of the server side from it for simplicity.

OK.

> > I would think though that the clean up could be a little bit tedious.  I
> > guess that when the function is static, it shouldn't be declared in the
> > header file any more?
>
> Correct. The first step could be to remove declarations for the symbols,
> followed by actually removing the ones that we then get sparse warnings
> for.
>
> >  At least not if the header file is shared
> > between multipe files.  But it still may need to be declared somewhere, if
> > it is referenced before it is declared in the one file where it is used.
>
> I would also consider that a bug we should warn about: basically any
> 'extern' variable declaration and any forward declaration for a
> global function (with or without the redundant extern specifier) should
> be considered a bug. We want the same declaration to be visible by both
> the file that defines it and the file that uses it so we get warned about
> type mismatches.

I think there would be warning about type mismatches anyway, if the
prototype doesn't match with the definition?

> > The question then is how to divide up the patches.  Should one just
> > address all of the functions that have this property in a single file?  Or
> > should one only work on a couple of functions at a time that seem related
> > to each other?
>
> I think either way would be fine.

OK.  Then from my experience, I think that doing a few related functions
at once would be easier.

> There is one more thing to look out for: if a symbol is only used in
> the file in which it gets defined, but the use comes before the
> definition, we still need a 'static' forward declaration. Ideally
> the functions should be reordered in a way that avoids those declarations,
> but we don't want patches that mix a large scale move of code around
> a file with a simpler change to make the symbols static.
>
> The two parts can be done in either order: we could mark the functions
> static and add the forward declarations in one patch, and move them
> to their proper place in a follow-up, or do the reverse without the
> forward declaration.
>
> > Another issue in Lustre is that there are a some EXPORT_SYMBOLs on
> > functyions that are only used in one file.  Should they all be removed, or
> > is it like the case of android where there is code not yet in the kernel
> > that may rely on them?
>
> They should all be removed as far as I can tell. It's a bug to export
> a static symbol. I don't think that happens a lot, but this is something
> we could easily check for using coccinelle.

I cleaned up a bunch of them at one point.  I don't seem to have
integrated the semantic patch into the kernel though...

julia

