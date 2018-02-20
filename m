X-GM-THRID: 6524253044666793984
X-Received: by 10.223.185.72 with SMTP id b8mr29369wrg.3.1519147020076;
        Tue, 20 Feb 2018 09:17:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.47.194 with SMTP id v185ls2145887wmv.4.canary-gmail; Tue,
 20 Feb 2018 09:16:58 -0800 (PST)
X-Google-Smtp-Source: AH8x2265kKarMU2ltWusqS1swLn5ANoz9akkrS7RgBFhecBWdvl4fLuhMhr7rl4SL+Adz8GIHKEN
X-Received: by 10.28.247.5 with SMTP id v5mr112919wmh.12.1519147018955;
        Tue, 20 Feb 2018 09:16:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519147018; cv=none;
        d=google.com; s=arc-20160816;
        b=e21P3OmSug8T2T8EwYADJ9ucUxT/9Q0vlUUKBtWYjE7oTmQMP+dXr8TmPFKcvARt5e
         8QuuoHVnWaQpXNi7DaI4HJFKDjN1EhjdQzd9hoEB9xVe10pPk94iCq0k6vt9Bm7kdklZ
         yDIvMf2CwODOI4QROfwChZSgez0Y6wdS4yXnSkVfk5eW8PoKkdh6bOuNKTn4s7CQ8aQZ
         UJfQ1wD6IR+rKc43lQRkmigK2iKzzGVZjPr6O44IxgS1bRfdKWZOJfNQ/hcGv6thrjtA
         8+YDBQRKX6xJaFocxXmzO14IrnZMkmPdlKeclXMfuVE+tstLc4/jgct9pBjEtcAK1bje
         X7qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=aKF0RqzWFpLwD7WyBxlxDfbMSYQIvsPl/q+AVs7vwY0=;
        b=QOC9fdFa/rQSGzPwJL0JKVQ3QuZ/MTkWt7XvGn/p922euNDdBpeFwhdGSZQfQHr44v
         /smCvoFoZJNlEz736I7/e1Ur83CiqkGUfNLc8chSuFnKyBgbMDAS5yDV7wtZgAYm4yue
         8o4zeo/ZBk5FjdEoisTCMGqI5m7g5a/dGXeZRIAGgKNJwDnsKYojaIT7+5ttetiwh6KG
         I/KmwfGL4CKWOQ76Gkb9cvaiAGqwHPIVvGBQjxix8Zb0vn/6xhOpUbr7DRqf9Fe/eLRc
         L+5i409wVujLJJXlMt+cf/2O91ZiJoUiuqPuRWpLwHK89Jfbik9fkW79qdGbZ1vKHbud
         YKmg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of boris.brezillon@bootlin.com designates 62.4.15.54 as permitted sender) smtp.mailfrom=boris.brezillon@bootlin.com
Return-Path: <boris.brezillon@bootlin.com>
Received: from mail.free-electrons.com (mail.free-electrons.com. [62.4.15.54])
        by gmr-mx.google.com with ESMTP id v8si752099wrg.2.2018.02.20.09.16.58
        for <outreachy-kernel@googlegroups.com>;
        Tue, 20 Feb 2018 09:16:58 -0800 (PST)
Received-SPF: pass (google.com: domain of boris.brezillon@bootlin.com designates 62.4.15.54 as permitted sender) client-ip=62.4.15.54;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of boris.brezillon@bootlin.com designates 62.4.15.54 as permitted sender) smtp.mailfrom=boris.brezillon@bootlin.com
Received: by mail.free-electrons.com (Postfix, from userid 110)
	id 01E462071C; Tue, 20 Feb 2018 18:16:57 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	mail.free-electrons.com
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED,SHORTCIRCUIT
	shortcircuit=ham autolearn=disabled version=3.4.0
Received: from bbrezillon (LStLambert-657-1-97-87.w90-63.abo.wanadoo.fr [90.63.216.87])
	by mail.free-electrons.com (Postfix) with ESMTPSA id 8CB662046F;
	Tue, 20 Feb 2018 18:16:47 +0100 (CET)
Date: Tue, 20 Feb 2018 18:16:47 +0100
From: Boris Brezillon <boris.brezillon@bootlin.com>
To: Shreeya Patel <shreeya.patel23498@gmail.com>
Cc: boris.brezillon@free-electrons.com, richard@nod.at, dwmw2@infradead.org,
 computersforpeace@gmail.com, marek.vasut@gmail.com,
 cyrille.pitchen@wedev4u.fr, maximlevitsky@gmail.com,
 linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
 ezequiel@vanguardiasur.com.ar, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH NAND v2] mtd: nand: Replace printk() with appropriate
 pr_*macro()
Message-ID: <20180220181647.6f2367b6@bbrezillon>
In-Reply-To: <1519146401.12276.4.camel@gmail.com>
References: <1519046025-9412-1-git-send-email-shreeya.patel23498@gmail.com>
	<20180219155115.3d9d1bd5@bbrezillon>
	<1519146401.12276.4.camel@gmail.com>
X-Mailer: Claws Mail 3.15.0-dirty (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, 20 Feb 2018 22:36:41 +0530
Shreeya Patel <shreeya.patel23498@gmail.com> wrote:

> On Mon, 2018-02-19 at 15:51 +0100, Boris Brezillon wrote:
> > Hi Shreeya,
> >=20
> > On Mon, 19 Feb 2018 18:43:45 +0530
> > Shreeya Patel <shreeya.patel23498@gmail.com> wrote:
> >  =20
> > >=20
> > > The log levels embedded with the name are more concise than
> > > printk.
> > > Replace printks having a log level with the appropriate
> > > pr_*macro.
> > >=20
> > > Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
> > > ---
> > >=20
> > > Changes in v2:
> > > =C2=A0 -Merge previous patches of the patchset regarding replacement
> > > of printk with pr_*macro, into single patch.
> > >=20
> > >=20
> > > =C2=A0drivers/mtd/nand/cs553x_nand.c=C2=A0=C2=A0=C2=A0|=C2=A0=C2=A09 =
++---
> > > =C2=A0drivers/mtd/nand/diskonchip.c=C2=A0=C2=A0=C2=A0=C2=A0| 76 +++++=
++++++++++++++++-------
> > > ------------
> > > =C2=A0drivers/mtd/nand/fsl_elbc_nand.c |=C2=A0=C2=A02 +-
> > > =C2=A0drivers/mtd/nand/fsl_ifc_nand.c=C2=A0=C2=A0|=C2=A0=C2=A02 +-
> > > =C2=A0drivers/mtd/nand/mxc_nand.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
|=C2=A0=C2=A02 +-
> > > =C2=A0drivers/mtd/nand/nand_bch.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
| 12 +++----
> > > =C2=A0drivers/mtd/nand/nandsim.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0| 10 +++---
> > > =C2=A0drivers/mtd/nand/r852.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0|=C2=A0=C2=A02 +-
> > > =C2=A0drivers/mtd/nand/r852.h=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0|=C2=A0=C2=A06 ++--
> > > =C2=A0drivers/mtd/nand/sm_common.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0|=C2=
=A0=C2=A05 ++-
> > > =C2=A010 files changed, 65 insertions(+), 61 deletions(-)
> > >  =20
> > [...]
> >  =20
> > >=20
> > > =C2=A0
> > > diff --git a/drivers/mtd/nand/diskonchip.c
> > > b/drivers/mtd/nand/diskonchip.c
> > > index c3aa53c..b97d88c 100644
> > > --- a/drivers/mtd/nand/diskonchip.c
> > > +++ b/drivers/mtd/nand/diskonchip.c =20
> > [...]
> >  =20
> > >=20
> > > @@ -438,7 +438,7 @@ static void __init doc2000_count_chips(struct
> > > mtd_info *mtd)
> > > =C2=A0			break;
> > > =C2=A0	}
> > > =C2=A0	doc->chips_per_floor =3D i;
> > > -	printk(KERN_DEBUG "Detected %d chips per floor.\n", i);
> > > +	pr_info("Detected %d chips per floor.\n", i); =20
> > Should be pr_debug() here.
> >  =20
> > >=20
> > > =C2=A0}
> > > =C2=A0 =20
> > [...]
> >  =20
> > >=20
> > > diff --git a/drivers/mtd/nand/nandsim.c
> > > b/drivers/mtd/nand/nandsim.c
> > > index 246b439..4e5f817 100644
> > > --- a/drivers/mtd/nand/nandsim.c
> > > +++ b/drivers/mtd/nand/nandsim.c
> > > @@ -184,15 +184,15 @@ MODULE_PARM_DESC(bch,		=C2=A0"Enable
> > > BCH ecc and set how many bits should "
> > > =C2=A0
> > > =C2=A0/* Simulator's output macros (logging, debugging, warning, erro=
r)
> > > */
> > > =C2=A0#define NS_LOG(args...) \
> > > -	do { if (log) printk(KERN_DEBUG NS_OUTPUT_PREFIX " log: "
> > > args); } while(0)
> > > +	do { if (log) pr_debug(NS_OUTPUT_PREFIX " log: " args); }
> > > while(0) =20
> > You could define pr_fmt() to avoid passing NS_OUTPUT_PREFIX.
> > Something
> > like:
> >=20
> > #define pr_fmt(fmt)	"[nandsim]" fmt
> >=20
> > (remember to put this definition before include directives).
> >=20
> > Then, all you have to do is
> >=20
> > do { if (log) pr_debug(" log: " args); } while(0)
> >  =20
> > >=20
> > > =C2=A0#define NS_DBG(args...) \
> > > -	do { if (dbg) printk(KERN_DEBUG NS_OUTPUT_PREFIX " debug:
> > > " args); } while(0)
> > > +	do { if (dbg) pr_debug(NS_OUTPUT_PREFIX " debug: " args);
> > > } while(0)
> > > =C2=A0#define NS_WARN(args...) \
> > > -	do { printk(KERN_WARNING NS_OUTPUT_PREFIX " warning: "
> > > args); } while(0)
> > > +	do { pr_warn(NS_OUTPUT_PREFIX " warning: " args); }
> > > while(0)
> > > =C2=A0#define NS_ERR(args...) \
> > > -	do { printk(KERN_ERR NS_OUTPUT_PREFIX " error: " args); }
> > > while(0)
> > > +	do { pr_err(NS_OUTPUT_PREFIX " error: " args); } while(0)
> > > =C2=A0#define NS_INFO(args...) \
> > > -	do { printk(KERN_INFO NS_OUTPUT_PREFIX " " args); }
> > > while(0)
> > > +	do { pr_info(NS_OUTPUT_PREFIX " " args); } while(0)
> > > =C2=A0
> > > =C2=A0/* Busy-wait delay macros (microseconds, milliseconds) */
> > > =C2=A0#define NS_UDELAY(us) \
> > > diff --git a/drivers/mtd/nand/r852.c b/drivers/mtd/nand/r852.c
> > > index fc9287a..3d54c6a 100644
> > > --- a/drivers/mtd/nand/r852.c
> > > +++ b/drivers/mtd/nand/r852.c
> > > @@ -935,7 +935,7 @@ static int=C2=A0=C2=A0r852_probe(struct pci_dev *=
pci_dev,
> > > const struct pci_device_id *id)
> > > =C2=A0		&dev->card_detect_work, 0);
> > > =C2=A0
> > > =C2=A0
> > > -	printk(KERN_NOTICE DRV_NAME ": driver loaded
> > > successfully\n");
> > > +	pr_notice(DRV_NAME ": driver loaded successfully\n"); =20
> > Same here:
> >=20
> > #define pr_fmt(fmt)	DRV_NAME fmt =20
>=20
> I am facing the following errors here.
>=20
>=20
>=20
> In file included from drivers/mtd/nand/r852.c:22:0:
> drivers/mtd/nand/r852.h:148:0: warning: "pr_fmt" redefined
> =C2=A0#define pr_fmt(fmt)=C2=A0=C2=A0(DRV_NAME fmt)
> =C2=A0^
> In file included from ./include/linux/kernel.h:14:0,
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0from drivers/mtd/nand/r852.c:10:
> ./include/linux/printk.h:287:0: note: this is the location of the
> previous definition
> =C2=A0#define pr_fmt(fmt) fmt

That's because you didn't define pr_fmt() before all the #include
directives in this driver. See the '#indef pr_fmt' statement in printk.h
which is preventing redefinition of this symbol if the file including
printk.h (either directly or indirectly) already defines it.

--=20
Boris Brezillon, Bootlin (formerly Free Electrons)
Embedded Linux and Kernel engineering
http://bootlin.com

