X-GM-THRID: 6201728963441590272
X-Received: by 10.112.55.69 with SMTP id q5mr4451792lbp.24.1443985121481;
        Sun, 04 Oct 2015 11:58:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.104.73 with SMTP id gc9ls678954wib.27.canary; Sun, 04 Oct
 2015 11:58:41 -0700 (PDT)
X-Received: by 10.194.156.193 with SMTP id wg1mr4516776wjb.3.1443985121177;
        Sun, 04 Oct 2015 11:58:41 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id bj4si256058wib.1.2015.10.04.11.58.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2015 11:58:41 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,634,1437429600"; 
   d="scan'208";a="181003083"
Received: from no-reverse-dns.mlnet.ie (HELO hadrien.local) ([31.216.236.133])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 04 Oct 2015 20:58:40 +0200
Date: Sun, 4 Oct 2015 19:58:40 +0100 (IST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arnd Bergmann <arnd@arndb.de>
cc: outreachy-kernel@googlegroups.com, Julia Lawall <julia.lawall@lip6.fr>, 
    Amitoj Kaur Chawla <amitoj1606@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: sm750fb: Remove space after
 paranthesis
In-Reply-To: <725507103.bmWo1bzATP@wuerfel>
Message-ID: <alpine.DEB.2.10.1510041958170.2368@hadrien>
References: <20151004095542.GA7011@amitoj-Inspiron-3542> <alpine.DEB.2.02.1510041211390.2026@localhost6.localdomain6> <725507103.bmWo1bzATP@wuerfel>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 4 Oct 2015, Arnd Bergmann wrote:

> On Sunday 04 October 2015 12:14:00 Julia Lawall wrote:
> > > diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
> > > index 665238c..9f0883b 100644
> > > --- a/drivers/staging/sm750fb/ddk750_chip.c
> > > +++ b/drivers/staging/sm750fb/ddk750_chip.c
> > > @@ -600,9 +600,9 @@ unsigned int formatPllReg(pll_value_t *pPLL)
> > >         On returning a 32 bit number, the value can be applied to any PLL in the calling function.
> > >      */
> > >       ulPllReg =
> > > -     FIELD_SET(  0, PANEL_PLL_CTRL, BYPASS, OFF)
> > > -     | FIELD_SET(  0, PANEL_PLL_CTRL, POWER,  ON)
> > > -     | FIELD_SET(  0, PANEL_PLL_CTRL, INPUT,  OSC)
> > > +     FIELD_SET(0, PANEL_PLL_CTRL, BYPASS, OFF)
> > > +     | FIELD_SET(0, PANEL_PLL_CTRL, POWER,  ON)
> > > +     | FIELD_SET(0, PANEL_PLL_CTRL, INPUT,  OSC)
> >
> > This code still looks unpleasant.  It would be better with an extra tab in
> > front of the lines of the right hand side of the assignment, and possibly
> > with the first FIELD_SET on the same line as ulPllReg.  And there
> > should uniformly be one space after the commas.  This makes several
> > changes, but since they are all related to the formatting of a single
> > expression, they could all be in one patch.
>
> I'm not sure about it now, but isn't the kernel coding style to put the
> operator at the end of the line in a multi-line statement like this?
> I mean
>
> 	ulPllReg = FIELD_SET(  0, PANEL_PLL_CTRL, BYPASS, OFF) |
> 		   FIELD_SET(  0, PANEL_PLL_CTRL, POWER,  ON) |
> 			...

It looks much better there.

julia

>
> 	Arnd
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/725507103.bmWo1bzATP%40wuerfel.
> For more options, visit https://groups.google.com/d/optout.
>

