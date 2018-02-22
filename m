X-GM-THRID: 6525365385486663680
X-Received: by 10.223.128.194 with SMTP id 60mr676579wrl.27.1519313171244;
        Thu, 22 Feb 2018 07:26:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.171.180 with SMTP id s49ls1224390wrc.6.gmail; Thu, 22 Feb
 2018 07:26:10 -0800 (PST)
X-Google-Smtp-Source: AH8x227SnU7BzYGPa/Y56FnCQQlDuHSBAv2uZcaFbtA95d8KXCYjw3md29cTU/IuiVWfM5iEGWxl
X-Received: by 10.223.186.201 with SMTP id w9mr724583wrg.14.1519313170262;
        Thu, 22 Feb 2018 07:26:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519313170; cv=none;
        d=google.com; s=arc-20160816;
        b=D3sdyWD6AOwfgYf5vJUN3+6P4E7XK3tP4Azb8MiCY7r6glzi8IeUQB2gOkXOGm5ZsK
         ixQj458BJ+1nX9NDsA1eqbnxuxu0FOWwGICsLZq2FE5ThFr56s9qmMrM+sUKXAE2qHxY
         +nPPKt93YOllFg5YTcq6HBdfC2VeK1/plVprDHPp2uLLDDTVBwyXtRCZC9IKq3Q98N0z
         SUXVo4XVu2KeasG+BocgZOhOun+YbTlqN7hZGHNUi/ZV6aKbWjxc/D/ZqQaWKxYjZ5oS
         nnhSOb+Mgo3e50O2sNL4OnpGzjMVy/OiL4AfdqnWHc0VbyLH6xX6r5kJ2qNgi1FM69js
         OcbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=B4Kl0+c89+aFozvqb7k61iNr0+iT253BYVhcimLWW3Y=;
        b=slDa11P83aZWadu4d+LMz3cqndjY80w/Nbwlnt0kwzzZPBwzerbuZ7SUQMsHC1KW90
         21S2VYladctsZbYofA+ZFVbveUsn2+ZtIzzkQuUBivb/5WWlGFhed7duZdXpk0Vfk8qU
         OOdOT/JFjOEj95eR9cW4+nA4YVBVVvs0y063rBaakvenNj/vdlNjbryGBLePEii2mWDY
         QO0jvAtohtv6cRUkPJ01hrJc+cgGkiLFHoFZanf57cV3Qi6VXfo0G9d+e6ZeM4fPWbAu
         Lvjd7LYc7KOAB6VFoK4ZwarRfjvWO4yR7bw0LbX1FkVSKIa9WZ+3zIWjqMjObaBGGvT4
         zXFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of boris.brezillon@bootlin.com designates 62.4.15.54 as permitted sender) smtp.mailfrom=boris.brezillon@bootlin.com
Return-Path: <boris.brezillon@bootlin.com>
Received: from mail.free-electrons.com (mail.free-electrons.com. [62.4.15.54])
        by gmr-mx.google.com with ESMTP id t15si88472wmh.1.2018.02.22.07.26.10
        for <outreachy-kernel@googlegroups.com>;
        Thu, 22 Feb 2018 07:26:10 -0800 (PST)
Received-SPF: pass (google.com: domain of boris.brezillon@bootlin.com designates 62.4.15.54 as permitted sender) client-ip=62.4.15.54;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of boris.brezillon@bootlin.com designates 62.4.15.54 as permitted sender) smtp.mailfrom=boris.brezillon@bootlin.com
Received: by mail.free-electrons.com (Postfix, from userid 110)
	id 365E42064B; Thu, 22 Feb 2018 16:26:09 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	mail.free-electrons.com
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED,SHORTCIRCUIT,
	URIBL_BLOCKED shortcircuit=ham autolearn=disabled version=3.4.0
Received: from bbrezillon (LStLambert-657-1-97-87.w90-63.abo.wanadoo.fr [90.63.216.87])
	by mail.free-electrons.com (Postfix) with ESMTPSA id C5FB920371;
	Thu, 22 Feb 2018 16:25:58 +0100 (CET)
Date: Thu, 22 Feb 2018 16:25:58 +0100
From: Boris Brezillon <boris.brezillon@bootlin.com>
To: Shreeya Patel <shreeya.patel23498@gmail.com>
Cc: Richard Weinberger <richard@nod.at>, boris.brezillon@free-electrons.com,
 dwmw2@infradead.org, computersforpeace@gmail.com, marek.vasut@gmail.com,
 cyrille.pitchen@wedev4u.fr, maximlevitsky@gmail.com,
 linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
 ezequiel@vanguardiasur.com.ar, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH NAND v3] mtd: nand: Replace printk() with appropriate
 pr_*() macro
Message-ID: <20180222162558.3f5cfcad@bbrezillon>
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

BTW, I see a bunch of remaining printks when I do 'git grep printk
drivers/mtd/nand', basically all those that don't have a
KERN_<LOGLEVEL> in it. I know your commit log explicitly says that only
printks embedding a log level are converted to pr_xxx(), but it's
probably worth patching those printks as well (choosing the appropriate
log level between info, err and warn and use pr_xxx() helpers).
This should be done in a separate patch of course.

>=20
> > :-)
> >=20
> > </bike-shedding>
> >=20
> > Thanks,
> > //richard =20



--=20
Boris Brezillon, Bootlin (formerly Free Electrons)
Embedded Linux and Kernel engineering
https://bootlin.com

