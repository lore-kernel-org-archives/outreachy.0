X-GM-THRID: 6620100063939002368
X-Received: by 2002:a1c:cc9:: with SMTP id 192-v6mr550806wmm.8.1541363756761;
        Sun, 04 Nov 2018 12:35:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:ebc3:: with SMTP id v3-v6ls4171584wrn.4.gmail; Sun, 04
 Nov 2018 12:35:56 -0800 (PST)
X-Google-Smtp-Source: AJdET5d229q8Dppry1k2PfbdiU2q+WAbYV7poLA125BsA2RUv/up8cEfrleAkHvNBX1YvsxvNY8G
X-Received: by 2002:a5d:6b03:: with SMTP id v3-v6mr1869683wrw.28.1541363756034;
        Sun, 04 Nov 2018 12:35:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541363756; cv=none;
        d=google.com; s=arc-20160816;
        b=DtiPnFeZVMj4hFr87gPYnSSroHqvKzrIQjf8zItg3D5rYksMGY7ItmX3p1LvhcP2Dg
         u/H6Oy/5aEgdDXEt4mxuSJQILzrpmV/vvKrRmxC5/bEiueNXuljirqvBLuN7O4o8SQIy
         QnufFSJqMB3sInXYcyB86Vb9mxSnYlvG+ePmi14N3AZCV80SZ8atbViGcpDrB+G65Gfc
         oQXGh5vOmvLAFD/LC63PTu5tpcvqR69/vDrf0DsPBEwhkMgkqMvXmXgVX+IcFTqTn3JV
         T50zAr4Q+f0b+Kd+Ek/LEC66LX55hB77xF3M+beGNMLpVcDTqAEl4wQKHKRP00hf+LjA
         VX+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=C0clYjSWSldgYv1nP5/RfLRVy/k1bwTClrpTav1Ly1w=;
        b=dHgM2YMehmzBQ8IjU0bUc0TRvZ4OqfuU51bdRikzwYAxHpsc2SCGPABCWivrT76l9/
         i7wvJxoBDyW7lGlQYkyzY6+LwuCz+C0pTVu6t4d5x6k5bEwuXUBxTaO9E0Yu89DoAWsQ
         Dk5ojJqvyRcUuK5MtiOsFtyIfiX1MSERqRgDn16pDuJTTnsOkCoy+OMPg02mA0/eSP1R
         8CZTbBqg+EeKqZaHEJHIOjiAkLHRJLoBcn0U5pcB4HgTexfAVzEPKZQxT+YR12ttyOWz
         nvUNa911inw2lAHasj+x0f0u2C20GHinf49GSzMlVdwY2Os90ks52tnBsncXn65ruyWO
         nTKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 204-v6si299535wmw.3.2018.11.04.12.35.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Nov 2018 12:35:55 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,465,1534802400"; 
   d="scan'208";a="354059931"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 04 Nov 2018 21:35:55 +0100
Date: Sun, 4 Nov 2018 21:35:55 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Ioannis Valasakis <code@wizofe.uk>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Coccinelle fails
In-Reply-To: <20181104201811.GA26434@kvasir.local>
Message-ID: <alpine.DEB.2.21.1811042134590.2360@hadrien>
References: <20181104200908.GA26807@kvasir.local> <alpine.DEB.2.21.1811042112160.2360@hadrien> <20181104201811.GA26434@kvasir.local>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 4 Nov 2018, Ioannis Valasakis wrote:

> On Sun, Nov 04, 2018 at 09:14:25PM +0100, Julia Lawall wrote:
> >
> >
> > On Sun, 4 Nov 2018, Ioannis Valasakis wrote:
> >
> > > Any idea why if I try to run coccinelle in report mode it fails? E.g.:
> > > make coccicheck MODE=report M=drivers/staging/speakup/
> > >
> > > coccicheck failed
> > > make: *** [Makefile:1650: coccicheck] Error 2
> >
> > What version of Coccinelle do you have?  You can put DEBUG_FILE=cocci.err
> > on the command line, which should give some more information about the
> > problem.
> coccinelle is in version (1.0.4.deb-3+b4). After running with the debug
> file I am getting this "Fatal error:
> exception Sys_error("pool_zalloc-simple: No such file or directory")."

OK, I don'treally understand the message, but it would be better to use a
more recent version.  You can get the most recent version from github:

https://github.com/coccinelle/coccinelle

julia

>
> thanks
> ioannis
> >
> > julia
> >
> > >
> > > Thank you
> > > ioannis
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181104200908.GA26807%40kvasir.local.
> > > For more options, visit https://groups.google.com/d/optout.
> > >
>
>

