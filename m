X-GM-THRID: 6254007511915954176
X-Received: by 10.112.189.104 with SMTP id gh8mr3311946lbc.12.1456147443413;
        Mon, 22 Feb 2016 05:24:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.82.132 with SMTP id g126ls332485lfb.92.gmail; Mon, 22 Feb
 2016 05:24:02 -0800 (PST)
X-Received: by 10.25.138.84 with SMTP id m81mr1754577lfd.5.1456147442815;
        Mon, 22 Feb 2016 05:24:02 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id e130si939508wme.2.2016.02.22.05.24.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2016 05:24:02 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,484,1449529200"; 
   d="scan'208";a="204121855"
Received: from 68-74-177-106.lightspeed.wepbfl.sbcglobal.net (HELO hadrien) ([68.74.177.106])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 22 Feb 2016 14:23:57 +0100
Date: Mon, 22 Feb 2016 08:23:55 -0500 (EST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: lusture: lnet: Use
 list_for_each_entry
In-Reply-To: <CAFNHFT85ZZkLBR8Tr9rMgvynHRdnzugvUFGiACydvEqKYD721g@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1602220822050.2532@hadrien>
References: <20160222070345.GA10232@Karyakshetra> <alpine.DEB.2.10.1602220534590.2685@hadrien> <alpine.DEB.2.10.1602220637570.2655@hadrien> <CAFNHFT85ZZkLBR8Tr9rMgvynHRdnzugvUFGiACydvEqKYD721g@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Mon, 22 Feb 2016, Bhaktipriya Shridhar wrote:

> Hello Julia,
>
> Thank you for your reply.  I ran the rule that you mentioned on the
> entire kernel.
> I found that  around 70 files will be needing this change.

Cool.  Do the changes look correct as well?

I'll get back to you on how you can make it suitable for incusion in the
Linux kernel.

julia

>
> Thanks,
> Bhaktipriya
>
> On Mon, Feb 22, 2016 at 5:08 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> > > > @@
> > > > expression E1;
> > > > identifier I1, I2;
> > > > type T;
> > > > iterator name list_for_each_entry_safe;
> > > > @@
> > > > T *I1;
> > > > +  T *tmp;
> > > > ...
> > > > - while (list_empty(&E1) == 0)
> > > > + list_for_each_entry_safe (I1, tmp, &E1, I2)
> > > > {
> > > >     ...when != T *I1;
> > > >     -       I1 = list_entry(E1.next, T, I2);
> >
> > Could you try this rule on the entire kernel?  If there are many
> > occurrences, then maybe it would be a good idea to include this rule with
> > the other semantic patches in the kernel.
> >
> > julia
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAFNHFT85ZZkLBR8Tr9rMgvynHRdnzugvUFGiACydvEqKYD721g%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

