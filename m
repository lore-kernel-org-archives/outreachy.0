X-GM-THRID: 6249584519546929152
X-Received: by 10.28.126.149 with SMTP id z143mr1118062wmc.4.1455095918814;
        Wed, 10 Feb 2016 01:18:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.174.18 with SMTP id x18ls771721wme.18.canary; Wed, 10 Feb
 2016 01:18:38 -0800 (PST)
X-Received: by 10.28.47.211 with SMTP id v202mr1127681wmv.3.1455095918386;
        Wed, 10 Feb 2016 01:18:38 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id w129si958309wme.1.2016.02.10.01.18.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Feb 2016 01:18:38 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,425,1449529200"; 
   d="scan'208";a="202429308"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 10 Feb 2016 10:18:38 +0100
Date: Wed, 10 Feb 2016 10:18:36 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH 6/6] staging: comedi: drivers: pcmuio:
 Merge if conditions
In-Reply-To: <CA+5yK5F1nNgDLCJrFm3CrgOjCe3OJUutMrQ5+2R_FOrz3g0wzQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1602101018110.2710@hadrien>
References: <20160210085942.GA14651@amitoj-Inspiron-3542> <alpine.DEB.2.10.1602101004060.2954@hadrien> <CA+5yK5F1nNgDLCJrFm3CrgOjCe3OJUutMrQ5+2R_FOrz3g0wzQ@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-1147913063-1455095916=:2710"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1147913063-1455095916=:2710
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Wed, 10 Feb 2016, Amitoj Kaur Chawla wrote:

> On Wed, Feb 10, 2016 at 2:39 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >> -     if (!chip->active)
> >> -             goto done;
> >> -
> >> -     if (!(triggered & chip->enabled_mask))
> >> +     if (!(chip->active && (triggered & chip->enabled_mask)))
> >
> > I´m not sure that converting to only one ! in this way is a good idea.
> > !X || !Y could be more readable.  Here there are a lot of parentheses to
> > sort out.
> >
> > julia
> >
>
> I wasn't very sure about this either whether I should make it !(X &&
> Y) or !X || !Y.
> Since Patch 5/6 also does a similar thing, would you like me to change
> to !X || !Y for both?

Yes, for all cases.  I didn´t want to make the same comemnt more than once
:)

julia

>
> Amitoj
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CA%2B5yK5F1nNgDLCJrFm3CrgOjCe3OJUutMrQ5%2B2R_FOrz3g0wzQ%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
--8323329-1147913063-1455095916=:2710--

