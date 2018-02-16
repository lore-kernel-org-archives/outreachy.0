X-GM-THRID: 6523195637320646656
X-Received: by 10.55.200.25 with SMTP id c25mr4548756qkj.11.1518803501074;
        Fri, 16 Feb 2018 09:51:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.55.157.207 with SMTP id g198ls353009qke.1.gmail; Fri, 16 Feb
 2018 09:51:40 -0800 (PST)
X-Received: by 10.55.27.229 with SMTP id m98mr168148qkh.58.1518803500149;
        Fri, 16 Feb 2018 09:51:40 -0800 (PST)
Received: by 10.55.76.67 with SMTP id z64msqka;
        Fri, 16 Feb 2018 09:45:38 -0800 (PST)
X-Google-Smtp-Source: AH8x227NSlMGCnSFpkflbCZWVm02mvOpSgmGkjctf7EoJPOYOi2Px5KuyVfGAkpbUSaqDNxQ9c8Q
X-Received: by 10.80.215.210 with SMTP id m18mr2079968edj.0.1518803138317;
        Fri, 16 Feb 2018 09:45:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518803138; cv=none;
        d=google.com; s=arc-20160816;
        b=sZ4/m4At2F5fTxOSxhEj6sCNxvn9Vq+ox4MKgCHqw7F/zhZhzZHdtx2SsRk0cS6fgR
         q2WyZxiEWIJTOQiY18K8p4/5T2n5vcavfwnKD/BjEuMcLfC7Bg82R+Il3uKZMkM/Sq6V
         ExDe+BDVokwH6elPsvSB/x0QBEk7UoJqhY+K8ZfPlXyrHkf0SWsrWG4cX5MpuAN8ofrn
         aRAfrNVFnFyzuI6OJcjnmczdgzJmTEzFgKHidcWg2jeqExohESjtJjBBQFDoL9IovFbM
         CpLGz8EX48yDdKnpafQixsaTIkLrfp/80iar/wZOf7Zcpf63DguHEWo/XcjzRgzGB2U/
         NN2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=QIe/KoWAS2gmt8uCUx6fbFbsh5uK2FdSzGqgs5096Ls=;
        b=duPUlmnzfYFyvv6RM27+EDQhqKhdOiRPd1Dbp1wkUo7+fCp6554s1QtnlesTXYzqNC
         pNui7iR8lYkuoObH1rapAwUM6P/7QAYwDViHRhptlCxgBn/N5ty8VIW8Q/CZwZmn2OCb
         QX22qoChSOX7njfqo0Pz5728PrABQ3g4thuWTZ/XD91+Bt3HgkZksHLmjTHo9Efk9BIg
         8cHf+vyMKij9EppoBltMGbsvERNI+4IAspWPA6Eu2VGku3S7yKxvH7eRO8uMQ+E5+Hha
         ifCBf39zOKAi4y7MSz3uBtxzsOEesPCEkfTYw3lNI003O0v0EUNUWfhT3eUYzG+YtK+e
         wJ4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of boris.brezillon@bootlin.com designates 62.4.15.54 as permitted sender) smtp.mailfrom=boris.brezillon@bootlin.com
Return-Path: <boris.brezillon@bootlin.com>
Received: from mail.free-electrons.com (mail.free-electrons.com. [62.4.15.54])
        by gmr-mx.google.com with ESMTP id z1si429555edh.3.2018.02.16.09.45.38
        for <outreachy-kernel@googlegroups.com>;
        Fri, 16 Feb 2018 09:45:38 -0800 (PST)
Received-SPF: pass (google.com: domain of boris.brezillon@bootlin.com designates 62.4.15.54 as permitted sender) client-ip=62.4.15.54;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of boris.brezillon@bootlin.com designates 62.4.15.54 as permitted sender) smtp.mailfrom=boris.brezillon@bootlin.com
Received: by mail.free-electrons.com (Postfix, from userid 110)
	id 6B0BE207FE; Fri, 16 Feb 2018 18:45:37 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	mail.free-electrons.com
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED,SHORTCIRCUIT,
	URIBL_BLOCKED shortcircuit=ham autolearn=disabled version=3.4.0
Received: from bbrezillon (91-160-177-164.subs.proxad.net [91.160.177.164])
	by mail.free-electrons.com (Postfix) with ESMTPSA id 18849207CF;
	Fri, 16 Feb 2018 18:45:37 +0100 (CET)
Date: Fri, 16 Feb 2018 18:45:37 +0100
From: Boris Brezillon <boris.brezillon@bootlin.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc: Shreeya Patel <shreeya.patel23498@gmail.com>, Boris Brezillon
 <boris.brezillon@free-electrons.com>, Richard Weinberger <richard@nod.at>,
 David Woodhouse <dwmw2@infradead.org>, Brian Norris
 <computersforpeace@gmail.com>, Marek Vasut <marek.vasut@gmail.com>, Cyrille
 Pitchen <cyrille.pitchen@wedev4u.fr>, outreachy-kernel
 <outreachy-kernel@googlegroups.com>, linux-mtd@lists.infradead.org
Subject: Re: [PATCH NAND 0/5] Replace printk statements with pr_*macros
Message-ID: <20180216184537.3cd1e414@bbrezillon>
In-Reply-To: <CAAEAJfAg_hei2PF37_oX2tf+Mv43ye-nEOt+KRVFerp1Jfzn2Q@mail.gmail.com>
References: <cover.1518797480.git.shreeya.patel23498@gmail.com>
	<CAAEAJfAg_hei2PF37_oX2tf+Mv43ye-nEOt+KRVFerp1Jfzn2Q@mail.gmail.com>
X-Mailer: Claws Mail 3.15.0-dirty (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Fri, 16 Feb 2018 14:19:41 -0300
Ezequiel Garcia <ezequiel@vanguardiasur.com.ar> wrote:

> Hi Shreeya,
> 
> Thanks for the contribution.
> 
> On 16 February 2018 at 13:50, Shreeya Patel
> <shreeya.patel23498@gmail.com> wrote:
> > This patchset removes all the log levels i.e. KERN_WARN,
> > KERN_NOTICE, KERN_ERR, KERN_INFO, KERN_DEBUG used in the printk
> > statements and replaces the printk statements with appropriate
> > pr_*macros.
> > According to the kernel coding style, pr_*macro is the preferred
> > way to print the message.
> >  
> 
> So, two things to begin with.
> 
> First of all, despite this contribution being part of outreachy,
> I believe you can include mailing lists in your case.
> 
> In other words, don't use the "nol" option in get_maintainer
> script and Cc the MTD mailing list: linux-mtd at lists.infradead.org.
> 
> >
> > Shreeya Patel (5):
> >   mtd/nand: Replace printk with pr_warn
> >   mtd/nand: Replace printk with pr_notice
> >   mtd/nand: Replace printk with pr_err
> >   mtd/nand: Replace printk with pr_info
> >   mtd/nand: Replace printk with pr_debug

Nitpick: prefix should be "mtd: nand: ".

> >  
> 
> This is a non-usual split. We usually split patches per-driver,
> instead of grouping all the pr_{} of a given type together.

I agree.

> 
> Can you re-do the series? Grouping the changes per-driver,
> i.e. all the pr_{} changes in cafe_nand.c together, and so on.

Actually, for such simple/automatic changes you can even group things
in a single patch. I'm fine either way.

> 
> >  drivers/mtd/nand/ams-delta.c     |  4 +--
> >  drivers/mtd/nand/cafe_nand.c     |  4 +--
> >  drivers/mtd/nand/cs553x_nand.c   |  8 ++---
> >  drivers/mtd/nand/diskonchip.c    | 76 +++++++++++++++++++++-------------------
> >  drivers/mtd/nand/fsl_elbc_nand.c |  4 +--
> >  drivers/mtd/nand/fsl_ifc_nand.c  |  2 +-
> >  drivers/mtd/nand/mxc_nand.c      |  2 +-
> >  drivers/mtd/nand/nand_bch.c      | 12 +++----
> >  drivers/mtd/nand/nandsim.c       | 10 +++---
> >  drivers/mtd/nand/r852.c          |  2 +-
> >  drivers/mtd/nand/r852.h          |  6 ++--
> >  drivers/mtd/nand/sh_flctl.c      |  2 +-
> >  drivers/mtd/nand/sm_common.c     |  5 ++-
> >  13 files changed, 70 insertions(+), 67 deletions(-)
> >
> > --
> > 2.7.4
> >  
> 
> 
> 



-- 
Boris Brezillon, Bootlin (formerly Free Electrons)
Embedded Linux and Kernel engineering
http://bootlin.com

