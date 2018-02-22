X-GM-THRID: 6525365385486663680
X-Received: by 10.80.149.81 with SMTP id v17mr2415626eda.10.1519311078239;
        Thu, 22 Feb 2018 06:51:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.170.50 with SMTP id o47ls2167331edc.3.gmail; Thu, 22 Feb
 2018 06:51:16 -0800 (PST)
X-Google-Smtp-Source: AH8x226XAzbeQkMo3ACzmAgbH3cy1MdtK8xL9zAWk3dESNMfS3ZcoBDYDmgBX3PYQTQuGTzaQaK3
X-Received: by 10.80.138.132 with SMTP id j4mr2420361edj.4.1519311076855;
        Thu, 22 Feb 2018 06:51:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519311076; cv=none;
        d=google.com; s=arc-20160816;
        b=0+MG/g4Z8PfXq8hrJc2QVztAgRoFwAQ23MXknQRXCDncdtyO5iQxHjVq0Pb/2JSEHL
         m6AWtYWY6W5P74YeeAlQzSUgpdVRruszFFPV15tSH8cI+LaD/njgO4O+7ZQQKuX6Tl/J
         1KtOSCmg9vPs5YeQWDl8BqdK6ZtiYYgedEXXvcqlzNvGxC1a8CstXd9tApdZ7peibU8n
         HD3rI/OQTkdmFLlYleQWM+LsQwJfjVmBXVCtB43/qaCsOTVQnz+eGndzAJl7VRNyaiMs
         4AmKFLQ1GJOnL7lZIK5OGq8vvAiSEkfGSvqmZaU+ZQQLEz1Q7/gj90KrylplLAqsXvn1
         +dkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=15oV2C64obVqi1Z4fjZiWYSuQV2CeJEQanJgMWyhRbc=;
        b=Ixc3cFbxyK7DDTwik1I8L7R0ebcG+u/14tQFtmCkQ9OL15NhhFsjvHpSOY++nUw4E8
         WhCra1sxhpcd+kN6LtnXorVDS29aWEKcysatAaRop6U/kaSm8Lfh25owOtIfXf2aT337
         2fXYxJrFPHN1l3x4+R+o3NMgY4CzHHUwUBgXwvn2RdSpLoUSYZu13oCtxNszdRlXBjg2
         ZGReyj3/QDNxqHspCuJ09qWXtFduEoFGxF/VI35w4k+hIycyPXhuUnoBKWYalUELEbxK
         wBzowz99mKXpKjn7RuvjIDV0MbNJAkp+IVNhUr1r6d1jJJBU8c8T4kOhnRXgQIulA9+u
         l9JA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of boris.brezillon@bootlin.com designates 62.4.15.54 as permitted sender) smtp.mailfrom=boris.brezillon@bootlin.com
Return-Path: <boris.brezillon@bootlin.com>
Received: from mail.free-electrons.com (mail.free-electrons.com. [62.4.15.54])
        by gmr-mx.google.com with ESMTP id t4si34163edt.2.2018.02.22.06.51.16
        for <outreachy-kernel@googlegroups.com>;
        Thu, 22 Feb 2018 06:51:16 -0800 (PST)
Received-SPF: pass (google.com: domain of boris.brezillon@bootlin.com designates 62.4.15.54 as permitted sender) client-ip=62.4.15.54;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of boris.brezillon@bootlin.com designates 62.4.15.54 as permitted sender) smtp.mailfrom=boris.brezillon@bootlin.com
Received: by mail.free-electrons.com (Postfix, from userid 110)
	id DDA8A2064B; Thu, 22 Feb 2018 15:51:15 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	mail.free-electrons.com
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED,SHORTCIRCUIT
	shortcircuit=ham autolearn=disabled version=3.4.0
Received: from bbrezillon (LStLambert-657-1-97-87.w90-63.abo.wanadoo.fr [90.63.216.87])
	by mail.free-electrons.com (Postfix) with ESMTPSA id 807DA20146;
	Thu, 22 Feb 2018 15:51:05 +0100 (CET)
Date: Thu, 22 Feb 2018 15:51:05 +0100
From: Boris Brezillon <boris.brezillon@bootlin.com>
To: Shreeya Patel <shreeya.patel23498@gmail.com>
Cc: Richard Weinberger <richard@nod.at>, boris.brezillon@free-electrons.com,
 dwmw2@infradead.org, computersforpeace@gmail.com, marek.vasut@gmail.com,
 cyrille.pitchen@wedev4u.fr, maximlevitsky@gmail.com,
 linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
 ezequiel@vanguardiasur.com.ar, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH NAND v3] mtd: nand: Replace printk() with appropriate
 pr_*() macro
Message-ID: <20180222155105.097eb00a@bbrezillon>
In-Reply-To: <1519310758.2359.3.camel@gmail.com>
References: <1519305014-2547-1-git-send-email-shreeya.patel23498@gmail.com>
	<2093598.TLbMltDcSo@blindfold>
	<1519310758.2359.3.camel@gmail.com>
X-Mailer: Claws Mail 3.15.0-dirty (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, 22 Feb 2018 20:15:58 +0530
Shreeya Patel <shreeya.patel23498@gmail.com> wrote:

> On Thu, 2018-02-22 at 15:30 +0100, Richard Weinberger wrote:
> > Am Donnerstag, 22. Februar 2018, 14:10:14 CET schrieb Shreeya Patel: =20
> > >=20
> > > @@ -438,7 +438,7 @@ static void __init doc2000_count_chips(struct
> > > mtd_info
> > > *mtd) break;
> > > =C2=A0	}
> > > =C2=A0	doc->chips_per_floor =3D i;
> > > -	printk(KERN_DEBUG "Detected %d chips per floor.\n", i);
> > > +	pr_debug("Detected %d chips per floor.\n", i); =20
> > <bike-shedding>
> >=20
> > You are aware of the fact that printk(KERN_DEBUG and pr_debug() are
> > not=C2=A0
> > equivalent?
> > Not a big deal, just want to make sure that you understand what you
> > are doing.=C2=A0 =20
>=20
> Actually pr_debug() shouldn't be used here.
>=20
> We usually don't prefer pr_debug for drivers, instead we use dev_dbg.
> But as Boris told me that it will be better to first having changed all
> printks to pr_*() macro and then think about dev_*() macros.

pr_xx() vs dev_xx() is yet another story ;-).

--=20
Boris Brezillon, Bootlin (formerly Free Electrons)
Embedded Linux and Kernel engineering
https://bootlin.com

