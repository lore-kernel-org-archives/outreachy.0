X-GM-THRID: 6523195637320646656
X-Received: by 10.80.242.130 with SMTP id f2mr3525245edm.5.1518984594059;
        Sun, 18 Feb 2018 12:09:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.170.50 with SMTP id o47ls3288154edc.3.gmail; Sun, 18 Feb
 2018 12:09:52 -0800 (PST)
X-Google-Smtp-Source: AH8x227gdXTzIGm6hhAxYF4v83s+Dry9ZNqJS4t6De1s0O5ybmnpg8gnaAiykP/lGJIDyVoG+hS2
X-Received: by 10.80.166.153 with SMTP id e25mr40682edc.7.1518984592197;
        Sun, 18 Feb 2018 12:09:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518984592; cv=none;
        d=google.com; s=arc-20160816;
        b=ecHCwJxql7InbiP58aAK/+At9SrE3EQwbCC47Ss8eXH9etP3k1Rxs42VuvEKJHHcB/
         RPqfbW15lkuibii1VJSVZBdFIEiSjRfQkQECM9SxHRNT/pnG5FcXJ5RtN7jTCoDSToMl
         xqXk3oX/3QZWhWNQGLMZjGAXMK3KXIkCYdIbmPrGUagY/HVBrbNWgMilx+D+MK242NMB
         FU6TnVHB4CJybCH3wxeFcf66MeXwL9ZKa4BbvbndsgiahFb7J4epGkJ2v+tS8R4Ouqbe
         lm+3heaLFWz3Lmjj3iIcXpxn57Lr3Uv4RmLoBlZk5a9ZMrwLhE5g+2AyiKvC+lpgk31f
         zVgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=9CSrTSmLzOq2Yd0SxK4bPOjt5MDnCORZfX11UQNdOKo=;
        b=hwWPQAUMhtI0kh65V7xVoslgr8xW0aYucVK+6DLVUMb7+sAFJ9gTnga9J5cdWlQDls
         ztNC4sxCvexEU8QEZ8vASGGFxazf5YwDpXrXhF10mOy4FZABr/Q8qzK+RI+Go6NM+Nce
         GF2lxVYc+YoyeWaWPAqQXhW5B+18ArfbOThcmsEM/44ONilWZDrYxGfqE0GyjCH0eGPm
         bKE4MTymwAYLEc9Emm8zOp08stCOpMRFUUiXYZAY0/2t95guyGvDkNif9x23gD1/k8hs
         KoSjc6X5L1tm9n9S3ePLAaGJGLcw6bTPWu6aJU4gwk7GJlvdXlLyg9Gh3QMya8KxTdIe
         yPVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of boris.brezillon@bootlin.com designates 62.4.15.54 as permitted sender) smtp.mailfrom=boris.brezillon@bootlin.com
Return-Path: <boris.brezillon@bootlin.com>
Received: from mail.free-electrons.com (mail.free-electrons.com. [62.4.15.54])
        by gmr-mx.google.com with ESMTP id i30si92824edd.0.2018.02.18.12.09.52
        for <outreachy-kernel@googlegroups.com>;
        Sun, 18 Feb 2018 12:09:52 -0800 (PST)
Received-SPF: pass (google.com: domain of boris.brezillon@bootlin.com designates 62.4.15.54 as permitted sender) client-ip=62.4.15.54;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of boris.brezillon@bootlin.com designates 62.4.15.54 as permitted sender) smtp.mailfrom=boris.brezillon@bootlin.com
Received: by mail.free-electrons.com (Postfix, from userid 110)
	id 33D1D20715; Sun, 18 Feb 2018 21:09:51 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	mail.free-electrons.com
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED,SHORTCIRCUIT
	shortcircuit=ham autolearn=disabled version=3.4.0
Received: from bbrezillon (91-160-177-164.subs.proxad.net [91.160.177.164])
	by mail.free-electrons.com (Postfix) with ESMTPSA id D1D242037F;
	Sun, 18 Feb 2018 21:09:50 +0100 (CET)
Date: Sun, 18 Feb 2018 21:09:50 +0100
From: Boris Brezillon <boris.brezillon@bootlin.com>
To: Shreeya Patel <shreeya.patel23498@gmail.com>
Cc: Julia Lawall <julia.lawall@lip6.fr>, Shreeya Patel 
 <shreeya.patel23498@gmail.com>, Boris Brezillon 
 <boris.brezillon@free-electrons.com>, Richard Weinberger <richard@nod.at>,
 David Woodhouse <dwmw2@infradead.org>, Brian Norris 
 <computersforpeace@gmail.com>, Marek Vasut <marek.vasut@gmail.com>, Cyrille
  Pitchen <cyrille.pitchen@wedev4u.fr>, outreachy-kernel 
 <outreachy-kernel@googlegroups.com>, linux-mtd@lists.infradead.org,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Subject: Re: [Outreachy kernel] Re: [PATCH NAND 0/5] Replace printk
 statements with pr_*macros
Message-ID: <20180218210950.30fe9310@bbrezillon>
In-Reply-To: <1518978365.2969.6.camel@gmail.com>
References: <cover.1518797480.git.shreeya.patel23498@gmail.com>
	<CAAEAJfAg_hei2PF37_oX2tf+Mv43ye-nEOt+KRVFerp1Jfzn2Q@mail.gmail.com>
	<alpine.DEB.2.20.1802161822560.4340@hadrien>
	<CAAEAJfAtvm5bii9eyUnYmU=tQCOvE_hPk0eBJQ1vwgogbGYr-A@mail.gmail.com>
	<20180216184840.096e534c@bbrezillon>
	<1518976870.2784.4.camel@gmail.com>
	<20180218191347.76f4a287@bbrezillon>
	<1518978365.2969.6.camel@gmail.com>
X-Mailer: Claws Mail 3.15.0-dirty (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Shreeya,

Please try to keep everyone in the loop when you reply to an email. All
discussions should happen publicly to keep everyone aware of the
progress and let other developers/maintainers take part to the
discussion if they have something to add.


On Sun, 18 Feb 2018 23:56:05 +0530
Shreeya Patel <shreeya.patel23498@gmail.com> wrote:

> On Sun, 2018-02-18 at 19:13 +0100, Boris Brezillon wrote:
> > On Sun, 18 Feb 2018 23:31:10 +0530
> > Shreeya Patel <shreeya.patel23498@gmail.com> wrote:
> >  =20
> > >=20
> > > On Fri, 2018-02-16 at 18:48 +0100, Boris Brezillon wrote:
> > >=20
> > > Hello Sir,
> > >  =20
> > > >=20
> > > > On Fri, 16 Feb 2018 14:26:56 -0300
> > > > Ezequiel Garcia <ezequiel@vanguardiasur.com.ar> wrote:
> > > > =C2=A0=C2=A0 =20
> > > > >=20
> > > > >=20
> > > > > On 16 February 2018 at 14:23, Julia Lawall <julia.lawall@lip6.f =
=20
> > > > > r> =20
> > > > > wrote:=C2=A0=C2=A0 =20
> > > > > >=20
> > > > > >=20
> > > > > >=20
> > > > > >=20
> > > > > > On Fri, 16 Feb 2018, Ezequiel Garcia wrote:
> > > > > > =C2=A0=C2=A0=C2=A0 =20
> > > > > > >=20
> > > > > > >=20
> > > > > > > Hi Shreeya,
> > > > > > >=20
> > > > > > > Thanks for the contribution.
> > > > > > >=20
> > > > > > > On 16 February 2018 at 13:50, Shreeya Patel
> > > > > > > <shreeya.patel23498@gmail.com> wrote:=C2=A0=C2=A0=C2=A0=C2=A0=
 =20
> > > > > > > >=20
> > > > > > > >=20
> > > > > > > > This patchset removes all the log levels i.e. KERN_WARN,
> > > > > > > > KERN_NOTICE, KERN_ERR, KERN_INFO, KERN_DEBUG used in the
> > > > > > > > printk
> > > > > > > > statements and replaces the printk statements with
> > > > > > > > appropriate
> > > > > > > > pr_*macros.
> > > > > > > > According to the kernel coding style, pr_*macro is the
> > > > > > > > preferred
> > > > > > > > way to print the message.
> > > > > > > > =C2=A0=C2=A0=C2=A0 =20
> > > > > > > So, two things to begin with.
> > > > > > >=20
> > > > > > > First of all, despite this contribution being part of
> > > > > > > outreachy,
> > > > > > > I believe you can include mailing lists in your case.
> > > > > > >=20
> > > > > > > In other words, don't use the "nol" option in
> > > > > > > get_maintainer
> > > > > > > script and Cc the MTD mailing list: linux-mtd at
> > > > > > > lists.infradead.org.=C2=A0=C2=A0=C2=A0=C2=A0 =20
> > > > > > Shouldn't the dev_* functions also be usable?
> > > > > > =C2=A0=C2=A0=C2=A0 =20
> > > > > Provided that:
> > > > > 1. it's applicable, i.e. if in the context of a device.=C2=A0=C2=
=A0 =20
> > > > Yep, be careful with that. The MTD/NAND subsystem initializes
> > > > mtd->dev.name quite late, so it's not safe to use &mtd->dev with
> > > > dev_<loglevel>(). Note that you can use the NAND controller pdev- =
=20
> > > > >dev=C2=A0 =20
> > > > if
> > > > available.=C2=A0=C2=A0 =20
> > > I would like to ask here that what will be the benefit or good
> > > cause if
> > > I use pdev->dev?
> > > How is it different from others? =20
> > Well, pdev->dev is guaranteed to be properly initialized when you
> > pass
> > it to dev_<loglevel>(). This is not the case with mtd->dev which is
> > initialized in mtd_device_register(), but the NAND controller driver
> > usually does some operations on the NAND device before reaching this
> > point (reading the ID, reading the bad block markers to determine
> > which
> > blocks are bad, ...).
> >  =20
> Thanks for making me understand.
>=20
> > Anyway, I think it's better if you first do the
> > s/printk(KERN_<LOGLEVEL>(/pr_<loglevel>(/ replacement. Replacing
> > pr_xxx
> > by dev_xxx is something we can do afterwards. =20
>=20
> I've created one patch where I have replaced printk
> with dev_* and used pdev->dev.

Okay. pdev->dev is not always directly accessible so doing
s/printk(KERN_<LOGLEVEL>/dev_<loglevel>(&pdev->dev, / is likely to
cause build failures. But I guess you compile-tested the changes you're
about to submit.

Regards,

Boris


--=20
Boris Brezillon, Bootlin (formerly Free Electrons)
Embedded Linux and Kernel engineering
http://bootlin.com

