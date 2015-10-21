X-GM-THRID: 6208113115518730240
X-Received: by 10.112.184.170 with SMTP id ev10mr2404224lbc.4.1445442615101;
        Wed, 21 Oct 2015 08:50:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.16.40 with SMTP id f40ls233170lfi.59.gmail; Wed, 21 Oct
 2015 08:50:14 -0700 (PDT)
X-Received: by 10.112.159.4 with SMTP id wy4mr2344367lbb.15.1445442614113;
        Wed, 21 Oct 2015 08:50:14 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id hs5si954264wib.1.2015.10.21.08.50.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Oct 2015 08:50:14 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,712,1437429600"; 
   d="scan'208";a="183871161"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 21 Oct 2015 17:50:13 +0200
Date: Wed, 21 Oct 2015 17:50:04 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Shraddha Barke <shraddha.6596@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: Eliminate use of
 MSECS macro
In-Reply-To: <alpine.DEB.2.11.1510212053350.8864@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V>
Message-ID: <alpine.DEB.2.10.1510211749250.2588@hadrien>
References: <1445438958-7663-1-git-send-email-shraddha.6596@gmail.com> <alpine.DEB.2.10.1510211656360.2588@hadrien> <alpine.DEB.2.11.1510212053350.8864@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Wed, 21 Oct 2015, Shraddha Barke wrote:

>
>
> On Wed, 21 Oct 2015, Julia Lawall wrote:
>
> > On Wed, 21 Oct 2015, Shraddha Barke wrote:
> >
> > > Use msecs_to_jiffies instead of driver specific macro
> > > MSECS. This is done using Coccinelle and semantic
> > > patch used for this is as follows:
> > >
> > > @@expression t;@@
> > >
> > > - MSECS(t)
> > > + msecs_to_jiffies(t)
> >
> > Can you now get rid of the marco?
>
> This change has been made in rtl8192e and rtl8188e. I'm a bit confused as to
> whether it can be made in this driver as well and if not why?

Not sure to understand the question.  I wasn't suggesting that there was a
problem with the change.  I meant that maybe you could now get rid of the
definition as well?

julia


>
> Thanks,
>
> Shraddha
> >
> > julia
> >
> >
> > >
> > > Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
> > > ---
> > >  drivers/staging/rtl8192u/r8192U_core.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/staging/rtl8192u/r8192U_core.c
> > > b/drivers/staging/rtl8192u/r8192U_core.c
> > > index 678ecf6..e06864f 100644
> > > --- a/drivers/staging/rtl8192u/r8192U_core.c
> > > +++ b/drivers/staging/rtl8192u/r8192U_core.c
> > > @@ -3516,7 +3516,7 @@ static void watch_dog_timer_callback(unsigned long
> > > data)
> > >
> > >  	queue_delayed_work(priv->priv_wq, &priv->watch_dog_wq, 0);
> > >  	mod_timer(&priv->watch_dog_timer,
> > > -		  jiffies + MSECS(IEEE80211_WATCH_DOG_TIME));
> > > +		  jiffies + msecs_to_jiffies(IEEE80211_WATCH_DOG_TIME));
> > >  }
> > >  static int _rtl8192_up(struct net_device *dev)
> > >  {
> > > --
> > > 2.1.4
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups
> > > "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an
> > > email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visit
> > > https://groups.google.com/d/msgid/outreachy-kernel/1445438958-7663-1-git-send-email-shraddha.6596%40gmail.com.
> > > For more options, visit https://groups.google.com/d/optout.
> > >
> >
>

