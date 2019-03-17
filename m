X-GM-THRID: 6668560476445605888
X-Received: by 2002:adf:f301:: with SMTP id i1mr283585wro.19.1552841745619;
        Sun, 17 Mar 2019 09:55:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:2d49:: with SMTP id t70ls1702805wmt.12.canary-gmail;
 Sun, 17 Mar 2019 09:55:44 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzuVzNwIt7D7IQznFG82yu4yIMdDKqPMOU3E/cO2GKk33e8vTnZrUaM5kZwsGP3fRHqDzHS
X-Received: by 2002:a1c:ef19:: with SMTP id n25mr763986wmh.20.1552841744879;
        Sun, 17 Mar 2019 09:55:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552841744; cv=none;
        d=google.com; s=arc-20160816;
        b=XE45D8P6w2ImpYvIadZXs9uQpaR2UuumLmaJlFwI+VOW7A0AvpJg4En4dehbWbELeh
         /KqxSn1rptW07DQMVGJ53Bssp1PaYWOznygQpe1rP+xs1SygMFpYGAN4UMua3rRyp+Lh
         z5x2wHh259YNyJF2GJm04o+We5pjO8lnxF8ymRo662EHrgQQeymT6po5CjPwuspxfvwg
         TmLEOOhmzn3VDeNbAle+EW0IfrUk67SGgIp8nprcnXzhXkgNLi5iA2HzTMjtM8us0Puu
         mw3GyojZzlrmxev0DlerhPsaLS6NgDvW4PpVFZrFdUD241bYnvVU1w5+jXtk9N4SkRt2
         MMvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=7U5ehtnlKsk2oToSxvO7g7Ewoc/EjZPdG6GvhwFXTpk=;
        b=YeFhmCDYXieM9XcX0daBRCHY+0cwm7aD+OmBCaVlqNB38JWpbOZ5tnWt6QGul495uM
         38f7/O7xRpOISAyKCqhvAqyz8PG16xDt79YyuZmE4XY48owLZBne5ZHdTLEvL9sXTo2Z
         pqAQJfO8+SkQJjciUNJ6EvH8Ods+BLeyM4WVjyiH9McvYU+bM+8aPL7Wxy7B96Mpnjvx
         1V9mF8sXyZ8xzOVI5Sj3luT5iemn7xLer57oO/lW3A2VjZ/ck3/PJXavP7pnEVGACXQv
         xTlFHIaCcwXKR66sqDkzIpuPYvfB4i1+1vVqyaHkgYd3qZBT0akhnQ+0z0QBsYa93CyI
         b0iw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id m1si338663wrj.4.2019.03.17.09.55.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 09:55:44 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,490,1544482800"; 
   d="scan'208";a="299729194"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 17 Mar 2019 17:55:44 +0100
Date: Sun, 17 Mar 2019 17:55:43 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: NIshka Dasgupta <nishka.dasgupta@yahoo.com>
cc: Greg KH <gregkh@linuxfoundation.org>, sudipm.mukherjee@gmail.com, 
    teddy.wang@siliconmotion.com, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH] staging: sm750fb: Remove unnecessary
 function
In-Reply-To: <c6bcf143-56b8-958a-fe5f-1ffad198e04a@yahoo.com>
Message-ID: <alpine.DEB.2.21.1903171754540.2434@hadrien>
References: <20190315102007.26612-1-nishka.dasgupta@yahoo.com> <20190317104323.GA16257@kroah.com> <c6bcf143-56b8-958a-fe5f-1ffad198e04a@yahoo.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 17 Mar 2019, 'NIshka Dasgupta' via outreachy-kernel wrote:

>
>
> On 17/03/19 4:13 PM, Greg KH wrote:
> > On Fri, Mar 15, 2019 at 03:50:07PM +0530, Nishka Dasgupta wrote:
> > > Remove function sii164ResetChip() as comment above it said "below
> > > function is not necessary".
> > >
> > > Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
> > > ---
> > >   drivers/staging/sm750fb/ddk750_sii164.c | 13 -------------
> > >   drivers/staging/sm750fb/ddk750_sii164.h |  1 -
> > >   2 files changed, 14 deletions(-)
> > >
> > > diff --git a/drivers/staging/sm750fb/ddk750_sii164.c
> > > b/drivers/staging/sm750fb/ddk750_sii164.c
> > > index c8e856c13912..8884ef927893 100644
> > > --- a/drivers/staging/sm750fb/ddk750_sii164.c
> > > +++ b/drivers/staging/sm750fb/ddk750_sii164.c
> > > @@ -237,21 +237,8 @@ long sii164InitChip(unsigned char edge_select,
> > >   	return -1;
> > >   }
> > >   -/* below sii164 function is not necessary */
> > > -
> > >   #ifdef SII164_FULL_FUNCTIONS
> > >   -/*
> > > - *  sii164ResetChip
> > > - *      This function resets the DVI Controller Chip.
> > > - */
> > > -void sii164ResetChip(void)
> > > -{
> > > -	/* Power down */
> > > -	sii164SetPower(0);
> > > -	sii164SetPower(1);
> > > -}
> > > -
> > >   /*
> > >    * sii164GetChipString
> > >    *      This function returns a char string name of the current DVI
> > > Controller chip.
> > > diff --git a/drivers/staging/sm750fb/ddk750_sii164.h
> > > b/drivers/staging/sm750fb/ddk750_sii164.h
> > > index 862e7bf27353..1f7b5f9c1885 100644
> > > --- a/drivers/staging/sm750fb/ddk750_sii164.h
> > > +++ b/drivers/staging/sm750fb/ddk750_sii164.h
> > > @@ -28,7 +28,6 @@ unsigned short sii164GetVendorID(void);
> > >   unsigned short sii164GetDeviceID(void);
> > >     #ifdef SII164_FULL_FUNCTIONS
> > > -void sii164ResetChip(void);
> > >   char *sii164GetChipString(void);
> > >   void sii164SetPower(unsigned char powerUp);
> > >   void sii164EnableHotPlugDetection(unsigned char enableHotPlug);
> >
> > Did you test build this?  This function is still used if
> > SII164_FULL_FUNCTIONS is defined.
>
> Yes, I did test build this, and there were no problems. However, I have not
> been able to properly grep search for it since my laptop crashed a few days
> ago and I have only just been able to set everything back up. Where can I find
> SII164_FULL_FUNCTIONS?

Just do git grep SII164_FULL_FUNCTIONS at the root of your kernel tree.
It may be in a Kconfig file.

julia

