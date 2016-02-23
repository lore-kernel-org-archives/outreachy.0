X-GM-THRID: 6254186235119534080
X-Received: by 10.194.24.233 with SMTP id x9mr4378563wjf.0.1456257400155;
        Tue, 23 Feb 2016 11:56:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.167.131 with SMTP id q125ls535573lfe.69.gmail; Tue, 23 Feb
 2016 11:56:39 -0800 (PST)
X-Received: by 10.112.209.6 with SMTP id mi6mr286889lbc.15.1456257399536;
        Tue, 23 Feb 2016 11:56:39 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 141si1399092wmy.2.2016.02.23.11.56.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 11:56:39 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,491,1449529200"; 
   d="scan'208";a="204350845"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 23 Feb 2016 20:56:22 +0100
Date: Tue, 23 Feb 2016 20:56:21 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: sandhya bankar <bankarsandhya512@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: slicoss: Use sizeof structure
 *pointer over sizeof structure in kmalloc()/kzalloc().
In-Reply-To: <CAA3ASz=isFucBfQL0sf6hqjhWfC2R-ag8a_7s6W8wDnJMnGeHw@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1602232052250.2040@localhost6.localdomain6>
References: <20160222103651.GA5176@sandhya> <alpine.DEB.2.02.1602232039200.2040@localhost6.localdomain6> <CAA3ASz=isFucBfQL0sf6hqjhWfC2R-ag8a_7s6W8wDnJMnGeHw@mail.gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323328-24384804-1456257382=:2040"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323328-24384804-1456257382=:2040
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Wed, 24 Feb 2016, sandhya bankar wrote:

> Hello,
> I understand the ==NULL changes,but i have not understood the "make a
> series" concept.

If you look at the patches sent by others, sometimes they say, eg

[PATCH 1/4]

That means that there is a series of four patches, and this one is the 
first one.  Making a series is necessary when you have several different 
changes to make, and they all touch the same file.  By putting 1/4, 2/4, 
etc in the subject line, the maintainer knows in what order they should 
be applied.  This reduces the chance of patch application errors.

This is described in more detail in the Outreachy kernel tutorial in the 
section "Submitting a patchset".

http://kernelnewbies.org/Outreachyfirstpatch#head-e0c4dbf8c60d25ca8e3ae133b6b65560f3c84c09

julia

> 
> On Wed, Feb 24, 2016 at 1:09 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> 
> 
>       On Mon, 22 Feb 2016, Sandhya Bankar wrote:
> 
>       > Use sizeof structure *pointer over sizeof structure in
>       kmalloc()/kzalloc().
>       >
>       > Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
>       > ---
>       >  drivers/staging/slicoss/slicoss.c | 6 +++---
>       >  1 file changed, 3 insertions(+), 3 deletions(-)
>       >
>       > diff --git a/drivers/staging/slicoss/slicoss.c
>       b/drivers/staging/slicoss/slicoss.c
>       > index a91c60a..ea6b7b5 100644
>       > --- a/drivers/staging/slicoss/slicoss.c
>       > +++ b/drivers/staging/slicoss/slicoss.c
>       > @@ -880,7 +880,7 @@ static int slic_upr_queue_request(struct
>       adapter *adapter,
>       >       struct slic_upr *upr;
>       >       struct slic_upr *uprqueue;
>       >
>       > -     upr = kmalloc(sizeof(struct slic_upr), GFP_ATOMIC);
>       > +     upr = kmalloc(sizeof(*upr), GFP_ATOMIC);
>       >       if (!upr)
>       >               return -ENOMEM;
>       >
>       > @@ -1806,7 +1806,7 @@ static int slic_mcast_add_list(struct
>       adapter *adapter, char *address)
>       >       }
>       >
>       >       /* Doesn't already exist.  Allocate a structure to hold
>       it */
>       > -     mcaddr = kmalloc(sizeof(struct mcast_address),
>       GFP_ATOMIC);
>       > +     mcaddr = kmalloc(sizeof(*mcaddr), GFP_ATOMIC);
>       >       if (mcaddr == NULL)
> 
>       You could make a series and also eliminate this == NULL test.
> 
>       julia
> 
>       >               return 1;
>       >
>       > @@ -3049,7 +3049,7 @@ static u32 slic_card_locate(struct
>       adapter *adapter)
>       >       }
>       >       if (!physcard) {
>       >               /* no structure allocated for this physical
>       card yet */
>       > -             physcard = kzalloc(sizeof(struct physcard),
>       GFP_ATOMIC);
>       > +             physcard = kzalloc(sizeof(*physcard),
>       GFP_ATOMIC);
>       >               if (!physcard) {
>       >                       if (card_hostid == SLIC_HOSTID_DEFAULT)
>       >                               kfree(card);
>       > --
>       > 1.8.3.4
>       >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it,
> send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to
> outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/20160222103651.GA5176%4
> 0sandhya.
> > For more options, visit https://groups.google.com/d/optout.
> >
> 
> 
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CAA3ASz%3DisFucBfQL0sf6
> hqjhWfC2R-ag8a_7s6W8wDnJMnGeHw%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 
> 
--8323328-24384804-1456257382=:2040--

