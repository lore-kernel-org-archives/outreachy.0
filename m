X-GM-THRID: 6200611211635064832
X-Received: by 10.180.210.212 with SMTP id mw20mr196144wic.3.1443734511211;
        Thu, 01 Oct 2015 14:21:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.107.130 with SMTP id hc2ls243916wib.1.canary; Thu, 01 Oct
 2015 14:21:50 -0700 (PDT)
X-Received: by 10.194.109.233 with SMTP id hv9mr1858427wjb.1.1443734510877;
        Thu, 01 Oct 2015 14:21:50 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id c1si144136wiv.3.2015.10.01.14.21.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2015 14:21:50 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,619,1437429600"; 
   d="scan'208";a="180544930"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 01 Oct 2015 23:21:50 +0200
Date: Thu, 1 Oct 2015 23:21:49 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Arnd Bergmann <arnd@arndb.de>
cc: Shraddha Barke <shraddha.6596@gmail.com>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/2] Staging: lustre: ptlrpc: Make
 functions static
In-Reply-To: <18050482.hzx1IbEyMT@wuerfel>
Message-ID: <alpine.DEB.2.02.1510012320040.2069@localhost6.localdomain6>
References: <1443692278-9074-1-git-send-email-shraddha.6596@gmail.com> <4003012.PLAPRmBvBo@wuerfel> <alpine.DEB.2.10.1510011559340.2648@hadrien> <18050482.hzx1IbEyMT@wuerfel>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Thu, 1 Oct 2015, Arnd Bergmann wrote:

> On Thursday 01 October 2015 16:12:53 Julia Lawall wrote:
> > On Thu, 1 Oct 2015, Arnd Bergmann wrote:
> > > On Thursday 01 October 2015 15:49:21 Julia Lawall wrote:
> > > > On Thu, 1 Oct 2015, Arnd Bergmann wrote:
> > > > > On Thursday 01 October 2015 15:20:39 Julia Lawall wrote:
> > > > > > On Thu, 1 Oct 2015, Shraddha Barke wrote:
> > > > > > > > Note that there are hundreds more symbols in lustre that should be made
> > > > > > > > static.
> > > > > > > > Most of them are harder to find because they have a declaration in a header
> > > > > > > > file
> > > > > > > > despite being only used in one place.
> > > > > >
> > > > > > Why does it make it hard to find?  One can make a spearate check in .c
> > > > > > files.
> > > > >
> > > > > We currently get a sparse warning for each global identifier definition
> > > > > that is not preceded by a declaration, but since most of our tools
> > > > > (gcc, sparse, coccinelle, ...) work on a single file at a time, they
> > > > > do not know whether a global symbol that is defined in a C file and
> > > > > (incorrectly) declared in a header is used in another C file or not.
> > > >
> > > > OK, but from Coccinlle you can just call grep, and check the extensions on
> > > > the returned file names, so it is not a big problem.
> > >
> > > I'm not following here. How exactly would you find symbols like this with coccinelle?
> > >
> > > subsystem.h:
> > >
> > > extern int subsystem_state;
> > >
> > > subsystem.c:
> > >
> > > #include "subsystem.h"
> > > long subsystem_state;
> > >
> > > static void function(void)
> > > {
> > > 	...
> > > 	subsystem_state++;
> > > 	...
> > > }
> > >
> > > with no users of this variable outside of this file.
> > 
> > The following uses ocaml, because I'm not very good at python...
> > 
> > @r disable optional_storage@
> > identifier f;
> > position p;
> > @@
> > 
> > f@p(...) { ... }
> > 
> > @script:ocaml@
> > p << r.p;
> > f << r.f;
> > @@
> > 
> > let l = Common,cmd_to_list
> >           (Printf.sprintf "cd /my/linux/path; git grep %s" f) in
> > let other_files =
> >   List.map (function x -> List.hd(Str.split (Str.regexp ":") x)) l in
> > let file = (List.hd p).file in
> > match List.filter (function x -> not(x = file)) other_files with
> >   [] -> Printf.printf "function %s is only used in file %s\n" f file
> > | _ -> ()
> > 
> > That is, find the definition of a function with the pattern matching rule,
> > then obtain the name and position of the function definition, then in the
> > ocaml/python rule, grep for the name of the function, and extract the
> > names of the files from grep.  Drop all the names that are the same as
> > that of the file containing the definition, and print an error message if
> > the result is an empty list.
> > 
> > The disable optional_storage at the beginning of the first rule prevents
> > the function definition from matching a static function, since static
> > isn't mentioned in the pattern.
> > 
> > This takes care of the case of function definitions.  Something similar
> > could probably be done for other kinds fo variables.  That could be a bit
> > more awkward, though because variable declarations both inside and outside
> > function definitions look alike.
> 
> Ok, I see. Yes, this looks nice, though there might still be a small number
> of false positives (e.g. identifier used in inline function in the header
> that declares it, inline function used elsewhere) and false negatives
> (function name mentioned in a .c file comment elsewhere but not actually
> called).

Yes.

> I don't actually understand half the code you write, but conceptually
> it makes sense and is similar to what I did manually. If you plan to
> actually make use of this method, there are a couple of improvements
> that I can think of:
> 
> - "git grep -w" to match only whole words
> - "git grep -l" to list the file names only, rather than manually parsing
>   the default grep output

Yes, thanks.

> - filter out declarations from header files as you mentioned (I don't
>   see this in your code).

Indeed.  The definitions are all in .c files, because that is what 
Coccinelle looks at by default, but indeed, the final match should only be 
on .c files.

thanks,
julia

> 	Arnd
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/18050482.hzx1IbEyMT%40wuerfel.
> For more options, visit https://groups.google.com/d/optout.
> 

