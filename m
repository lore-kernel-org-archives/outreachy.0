X-GM-THRID: 6474128496939499520
X-Received: by 10.46.65.140 with SMTP id d12mr149153ljf.4.1507970944436;
        Sat, 14 Oct 2017 01:49:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.82.14 with SMTP id g14ls844073ljb.0.gmail; Sat, 14 Oct 2017
 01:49:03 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+T7RJM1HNFWi17wn4QKwx7787AJuc3dPovYe73JW70AxgNJq07jr1iecicYKdhQo0vpKlSa
X-Received: by 10.25.210.204 with SMTP id j195mr123013lfg.11.1507970943015;
        Sat, 14 Oct 2017 01:49:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507970942; cv=none;
        d=google.com; s=arc-20160816;
        b=q6SQC6cHz2H1ocW4klR8zYl4P+WGvHVzkZ7d4vNsWMZ0dx8EeDEYzo2Hc9aNpnQghl
         NRQzBT3+5GWcgkYY9HkWQh8pbPlJxExKUZXyNN1x4Q2Oua219XiWL7k3w4B8Jm58Xjca
         UAh4hoBADeX39N4sWl1ymNpzNaBvh15VzC5iPSudyU68dTlVQzEBbWpm7v8qC8WdSl9v
         Vgc10COVAuzVlmo+kI9O0t1c7EKxYk74tSmV2aZGV8cKITP5z4hRu1dIYIKJCjXRbjAg
         skDEKslWpP5Kc6565dpy7TpEJMNHB8HxibVyXAYR/N/1P0PMTOfkDzlOct1pDYYr2VrW
         guUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=x5nvminQPzcEK9t0RMgAuuMv2rreWA25J1LO/sEb41o=;
        b=s+ze8Alrk2ZWryLKpA3GGXrxif45qqYU4KUGSrvPz45hvWXB6jOpdA2XXyYnJ/Cv7/
         ZLyPESGEg+jJvxfxBlQRviNZRxnDadCG935xFgr/z+zoRpQsaFum3p+euw3namsyUrHz
         vg/t1xsHUPfRk+BOIQCtk1cfq5XNfXuU+HmmwpheWxYkjWofOeXKfovzRven0a3DZIbc
         wOfsQ9O7wBo6Y0k6/s2/a7ilHP1b2OhFbROQIGFHiiwoFf6qPYag60fPY7AhcfqdDEdC
         3U021d31lxUUdXKUub3takrXB3XsZjmm0089TJKA4OjCwwFbFNmJe5KiEzLwEdWmB/T2
         //3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id r73si88658lfr.4.2017.10.14.01.49.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Oct 2017 01:49:02 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.43,375,1503352800"; 
   d="scan'208";a="296181419"
Received: from abo-88-122-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.122.88])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 14 Oct 2017 10:48:47 +0200
Date: Sat, 14 Oct 2017 10:48:46 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Mihaela Muraru <mihaela.muraru21@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH v3] staging: rtl8192e: Use __func__
 instead of function name
In-Reply-To: <20171014081504.GA2769@domino-MS-16Y1>
Message-ID: <alpine.DEB.2.20.1710141047140.19037@hadrien>
References: <20171014075657.GA2475@domino-MS-16Y1> <alpine.DEB.2.20.1710140958270.19037@hadrien> <20171014081504.GA2769@domino-MS-16Y1>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 14 Oct 2017, Mihaela Muraru wrote:

> On Sat, Oct 14, 2017 at 09:59:14AM +0200, Julia Lawall wrote:
> >
> >
> > On Sat, 14 Oct 2017, Mihaela Muraru wrote:
> >
> > > Use identifier __func__ instead of the name of the function.
> > >
> > > Issue found by checkpatch.pl.
> > >
> > > Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
> > > ---
> > > Changes in v3:
> > >         -breaking the modified lines and remove five point from the
> > > 	string to meet the condition no more than 80 characters per
> > > 	line.
> > >
> > > drivers/staging/rtl8192e/dot11d.c | 8 ++++++--
> > >  1 file changed, 6 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/staging/rtl8192e/dot11d.c b/drivers/staging/rtl8192e/dot11d.c
> > > index 017fe04..55c699f 100644
> > > --- a/drivers/staging/rtl8192e/dot11d.c
> > > +++ b/drivers/staging/rtl8192e/dot11d.c
> > > @@ -128,12 +128,16 @@ void Dot11d_UpdateCountryIe(struct rtllib_device *dev, u8 *pTaddr,
> > >  	pTriple = (struct chnl_txpow_triple *)(pCoutryIe + 3);
> > >  	for (i = 0; i < NumTriples; i++) {
> > >  		if (MaxChnlNum >= pTriple->FirstChnl) {
> > > -			netdev_info(dev->dev, "Dot11d_UpdateCountryIe(): Invalid country IE, skip it........1\n");
> > > +			netdev_info(dev->dev,
> > > +					"%s: Invalid country IE, skip it...1\n"
> > > +					, __func__);
> >
> > You can't move these arguments back a few characters?  The comma at the
> > beginning of the line with __func__ is not nice.
> >
> > julia
> >
> I can put the comma at the end of this line "%s: Invalid country IE,
> skip it...1\n" and the line will have 80 characters.
>
> It is allowed to have exact 80 characters per line?
>
> Should I send patch v4 or to send patch v3, because treats the same issue?

Why not remove the spaces in front of the arguments so that they line up
with the right side of the (.  Then you can put the comma in the right
place and have plentyof space after.

Once you have sent v3, afterwards you have to send v4.  It doesn't matter
about the issue.  Greg has to know which is the most recent one.

julia

>
> Thank you,
>
> Mihaela
>
> > >  			return;
> > >  		}
> > >  		if (MAX_CHANNEL_NUMBER < (pTriple->FirstChnl +
> > >  		    pTriple->NumChnls)) {
> > > -			netdev_info(dev->dev, "Dot11d_UpdateCountryIe(): Invalid country IE, skip it........2\n");
> > > +			netdev_info(dev->dev,
> > > +					"%s: Invalid country IE, skip it...2\n"
> > > +					, __func__);
> > >  			return;
> > >  		}
> > >
> > > --
> > > 2.7.4
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20171014075657.GA2475%40domino-MS-16Y1.
> > > For more options, visit https://groups.google.com/d/optout.
> > >
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20171014081504.GA2769%40domino-MS-16Y1.
> For more options, visit https://groups.google.com/d/optout.
>

