X-GM-THRID: 6801606424596054016
X-Received: by 2002:aa7:c995:: with SMTP id c21mr12878180edt.130.1583679012650;
        Sun, 08 Mar 2020 07:50:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:9517:: with SMTP id u23ls5585101eda.7.gmail; Sun, 08 Mar
 2020 07:50:11 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuLyfqFAt9ry77/2oaQCuG9kKc19uJL9WVH3un5Hilqe3O/0sKlLQFD6Qa6uP6N9y6Zff06
X-Received: by 2002:a50:ee88:: with SMTP id f8mr13262116edr.300.1583679011232;
        Sun, 08 Mar 2020 07:50:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583679011; cv=none;
        d=google.com; s=arc-20160816;
        b=LzDSWIDxWIHFJWKhj7q5t6g3VvPi1856k+hqU2769gLzrwg7svNylkdzs5bjlekLYP
         FJVTJaNr73XQHHCnK+EGFM6Md9tpLmCVwqVis0K5awKR38ia/vD9OqgiwRL3VLJB3hFj
         41U0qN76BeeZNG7J0B/wQzn3D2Xtuh8qYS1rBEYJeOcvtcPeTiz4CNqCt5ieBm0SfT9d
         eYZw4OMlbw4dJWST4vNGnZfNt4+ca5ZTrsteypDn87xsxFEcb9XC4NOsDvBWfe3+MpYC
         w1HWwKUWUeHSnUtYMDGTuTdmAOGI2ey6gsHaPnidhCCDdxkXzkp0bGmTwrWOLU1iwH8O
         26fg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=9tx65Zw4ySbZTqPZHxfFaD4P/Ud1sYTZetyuOSA5R3E=;
        b=DEVZg92mk1QpnMRAynppjUEDj0mhN83H7wTdF2EYY7O1mxPUbXFs3IJsNnssQNG0ex
         9EeECVljTweaACKaqXWgp46fQg7cyT6ixVBLlpJ156E7Lub1srSIMVJM+s+rtxx7iR+6
         ggFLvYQ1EqrN4nehyM8Ws6bT25m3z9bK9fyVqNTuh6LRLo4l+U5hTDT/V0VoFlykLAYp
         J9RjRxLzk5Ge6In5xpK+9+jGIVvz3GVPecmIs8DgnRMPM8Ac6WisbmN3+buVNfr6HCSi
         ok/Iqlbyo6slFd3z9L/XIbSX7bHeQttJrdqepHPsEM021MURPWqezzwungbj7TOVP1JW
         jOKQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id cw13si455747edb.2.2020.03.08.07.50.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 Mar 2020 07:50:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,530,1574118000"; 
   d="scan'208";a="439369729"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 08 Mar 2020 15:50:10 +0100
Date: Sun, 8 Mar 2020 15:50:09 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Lourdes Pedrajas <lu@pplo.net>
cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH] Staging: vt6655: device_main:
 cleanup long line
In-Reply-To: <20200308134915.GA4173@supernova>
Message-ID: <alpine.DEB.2.21.2003081548350.2400@hadrien>
References: <20200307230631.13900-1-lu@pplo.net> <20200308065010.GC3983392@kroah.com> <20200308134915.GA4173@supernova>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

On Sun, 8 Mar 2020, Lourdes Pedrajas wrote:

> On Sun, Mar 08, 2020 at 07:50:10AM +0100, Greg KH wrote:
> > On Sun, Mar 08, 2020 at 12:06:31AM +0100, Lourdes Pedrajas wrote:
> > > Code cleanup: long line found by checkpatch.
> > >
> > >  Changes to be committed:
> > > 	modified:   drivers/staging/vt6655/device_main.c
> >
> > Why are these two lines in the changelog text?
> >
> My mistake, I thought it is correct to include them, sorry!

Take a quick look at https://lkml.org/ and see patches that other people
have sent.  If you look at some examples, you will get some intuition
about what information should be put where.

julia


>
> > >
> > > Signed-off-by: Lourdes Pedrajas <lu@pplo.net>
> > > ---
> > >  drivers/staging/vt6655/device_main.c | 3 ++-
> > >  1 file changed, 2 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/staging/vt6655/device_main.c b/drivers/staging/vt6655/device_main.c
> > > index 0442f71494b2..88e1284a7743 100644
> > > --- a/drivers/staging/vt6655/device_main.c
> > > +++ b/drivers/staging/vt6655/device_main.c
> > > @@ -1075,7 +1075,8 @@ static void vnt_interrupt_process(struct vnt_private *priv)
> > >  			    priv->op_mode == NL80211_IFTYPE_ADHOC) &&
> > >  			    priv->vif->bss_conf.enable_beacon) {
> > >  				MACvOneShotTimer1MicroSec(priv,
> > > -							  (priv->vif->bss_conf.beacon_int - MAKE_BEACON_RESERVED) << 10);
> > > +					(priv->vif->bss_conf.beacon_int -
> > > +					 MAKE_BEACON_RESERVED) << 10);
> >
> > Now you have another checkpatch warning :(
> >
> > THe original is fine, the line-length is a "strong hint" that sometimes
> > needs to be gone over.
> >
> > sorry.
> >
> > greg k-h
>
> I also had my doubts about this one, thank you for clarifying!
>
> Lourdes.
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200308134915.GA4173%40supernova.
>

