X-GM-THRID: 6523195637320646656
X-Received: by 10.159.56.40 with SMTP id p37mr5496522uad.92.1518802559798;
        Fri, 16 Feb 2018 09:35:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.31.182.65 with SMTP id g62ls1337123vkf.10.gmail; Fri, 16 Feb
 2018 09:35:58 -0800 (PST)
X-Google-Smtp-Source: AH8x225asj6lwT78TYsIqPHk3XfuQOPHpdk9i7y5Aa7szqoPYI2M0j6kJqixlMwv/K2LF9m04WMc
X-Received: by 10.31.92.20 with SMTP id q20mr4930098vkb.80.1518802558537;
        Fri, 16 Feb 2018 09:35:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518802558; cv=none;
        d=google.com; s=arc-20160816;
        b=IBOpmIhbEGAcP+vwUej8NQtwF61aQcJ+Gb0Jm99kLtTatCAvLAJQB7kG82G1kkrnog
         SmJnYluzmTNHTr2WCZig6hM6lZL06MHzoTzhOi5ctJzenz/PXwx5h3k5bGzyjsFhYb2H
         3Evp9mJUcZd6GVkqN+SS4gmMbm3Z8tkDFAUIN+8I8PuBpjSBngyfT+pviRv1KcI0Bny9
         lfV8/4yt2L+zv1YTEEj6i5wXv6oEvIQLA7V9e3hHUga6JiL7xnZdr+7uF5sgNNxPeQBL
         /IwCsZJYDQrIaWFJ9RXgd3ocCrU+RFv5IHIGjxAuSACQlqyo4IqpsRMqY+AqZN2k7vhw
         qvLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :cc:to:from:subject:message-id:dkim-signature
         :arc-authentication-results;
        bh=8GR5vTjji6zznliOczB1ESt4MkM3HJ9KrArIWyjSyJs=;
        b=juq94UFzVOOFFWdY0pLU8fn1EvaRAywLiRmmqXBim7qG81EKqQehAJbadBH5HOXGww
         x2GcRxY7c6Pil09EVx5kYt+pKxc9/Thx5N8GJkjnnvnmp/BwiwGTib6Ja4+5g5yfL6qL
         j6kYiq8boKTeLkrZb4paNqvF1EaMqbl4Y6qXSBFJGR14+rUNDpMD5AD5Y22vK44NGb9j
         zRxO+SYm3xxWUVuwx7mVqW5k8buAqQpXKLUrkm0YOXlhbjGp7L+Krbb87xwZ/cHmH3l2
         2YXtQK+qqizlwVlnGNMtEgsAds93lQjC0kUzBCp+FTXuwbygBugNAM3b/JmARS+I7UGW
         nb4g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dkTujeEg;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c01::22b as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-pl0-x22b.google.com (mail-pl0-x22b.google.com. [2607:f8b0:400e:c01::22b])
        by gmr-mx.google.com with ESMTPS id y19si24778vky.4.2018.02.16.09.35.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Feb 2018 09:35:58 -0800 (PST)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c01::22b as permitted sender) client-ip=2607:f8b0:400e:c01::22b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dkTujeEg;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c01::22b as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl0-x22b.google.com with SMTP id p5so2025084plo.12
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Feb 2018 09:35:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=8GR5vTjji6zznliOczB1ESt4MkM3HJ9KrArIWyjSyJs=;
        b=dkTujeEgZluT4Lm0b5U0jSPJLUAybo5A5Vc29MtkuJlANCC14Lkib4kcAnH4xlodMn
         jyNz5hdm6Gl3g1rSvhyNckUFBkKjqRhj2RiuCK4jX6ZJuH0ivQxjpGjsuEB83aLX9LOU
         nKGywOCOn0Y1LWoUIHNNfrwXZUMTDk6LOKgEMoswNL3fdJJ9fclULq0/1wqLEDN+X57G
         XgYoJy7Jn/QeOm2ZPsVbpWz6atdeApAcLQTEq1xDmO2nyBVLH0+ttdtVRgkpoK3YZ5kC
         R5ZM+8YgUSe5rds627/KM9tHWtOyLnbxtTiWveWlca4jwdjIT1GpxGHIFNIPP8eYsN0w
         MHJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=8GR5vTjji6zznliOczB1ESt4MkM3HJ9KrArIWyjSyJs=;
        b=SdVLbISg6IUqqVd+THnKoXQs7sl3AAuaAIFD5U3nC8Qb8iGPAggtf1zzIS84n4TOsG
         dbBi3GTQSKZ1UzMCX00U82VfuU12eryCCQuSPDU4kIzxv5PXjtIrE+zXYSzv1bhEiKkl
         UxVNh6fzZrazaNO5tfYdtezo/jVx70A7ArCPh0UednyPlug5GjRTcvmXRWIMwZALRi82
         2Gq0qlsEK2hnPnnNQ5JnbGWk4E8Wq5LDW03nVgI/ENUi0odImJXr9wu473Nh6vfNf7kb
         i807s4rtjhwAc5JBE6yDaM92QjSvvwjI7jBXjXt+kJxxGBD2oReCh8enzf/awN519BbN
         t+eA==
X-Gm-Message-State: APf1xPCaSO8I+dz3VIPjWIqDsYSucBPjpbgS4yrLvX4b02A1sWGNJMvV
	r0lGI1xYuYiA32SfmSjO6Bo=
X-Received: by 2002:a17:902:5186:: with SMTP id y6-v6mr6365587plh.188.1518802558135;
        Fri, 16 Feb 2018 09:35:58 -0800 (PST)
Return-Path: <shreeya.patel23498@gmail.com>
Received: from [10.0.2.15] ([103.212.140.144])
        by smtp.googlemail.com with ESMTPSA id y22sm49852319pfd.9.2018.02.16.09.35.55
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Feb 2018 09:35:57 -0800 (PST)
Message-ID: <1518802552.4426.5.camel@gmail.com>
Subject: Re: [PATCH NAND 0/5] Replace printk statements with pr_*macros
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc: Boris Brezillon <boris.brezillon@free-electrons.com>, Richard Weinberger
 <richard@nod.at>, David Woodhouse <dwmw2@infradead.org>, Brian Norris
 <computersforpeace@gmail.com>, Marek Vasut <marek.vasut@gmail.com>, Cyrille
 Pitchen <cyrille.pitchen@wedev4u.fr>, outreachy-kernel
 <outreachy-kernel@googlegroups.com>,  linux-mtd@lists.infradead.org
Date: Fri, 16 Feb 2018 23:05:52 +0530
In-Reply-To: <CAAEAJfAg_hei2PF37_oX2tf+Mv43ye-nEOt+KRVFerp1Jfzn2Q@mail.gmail.com>
References: <cover.1518797480.git.shreeya.patel23498@gmail.com>
	 <CAAEAJfAg_hei2PF37_oX2tf+Mv43ye-nEOt+KRVFerp1Jfzn2Q@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.18.5.2-0ubuntu3.2 
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit

On Fri, 2018-02-16 at 14:19 -0300, Ezequiel Garcia wrote:
> Hi Shreeya,
> 
> Thanks for the contribution.
> 
> On 16 February 2018 at 13:50, Shreeya Patel
> <shreeya.patel23498@gmail.com> wrote:
> > 
> > This patchset removes all the log levels i.e. KERN_WARN,
> > KERN_NOTICE, KERN_ERR, KERN_INFO, KERN_DEBUG used in the printk
> > statements and replaces the printk statements with appropriate
> > pr_*macros.
> > According to the kernel coding style, pr_*macro is the preferred
> > way to print the message.
> > 
> So, two things to begin with.
> 
> First of all, despite this contribution being part of outreachy,
> I believe you can include mailing lists in your case.
> 
> In other words, don't use the "nol" option in get_maintainer
> script and Cc the MTD mailing list: linux-mtd at lists.infradead.org.

Ok. I'll take care of this.
> 
> > 
> > 
> > Shreeya Patel (5):
> >   mtd/nand: Replace printk with pr_warn
> >   mtd/nand: Replace printk with pr_notice
> >   mtd/nand: Replace printk with pr_err
> >   mtd/nand: Replace printk with pr_info
> >   mtd/nand: Replace printk with pr_debug
> > 
> This is a non-usual split. We usually split patches per-driver,
> instead of grouping all the pr_{} of a given type together.
> 
> Can you re-do the series? Grouping the changes per-driver,
> i.e. all the pr_{} changes in cafe_nand.c together, and so on.

Yes, I'll do it again. :)

Also, I wanted to ask you that there are still printk statements 
present in the driver which are just printing the message i.e. they
don't include any log levels.
So should I leave them as it is?

Thanks for your reviews 
> 
> > 
> >  drivers/mtd/nand/ams-delta.c     |  4 +--
> >  drivers/mtd/nand/cafe_nand.c     |  4 +--
> >  drivers/mtd/nand/cs553x_nand.c   |  8 ++---
> >  drivers/mtd/nand/diskonchip.c    | 76 +++++++++++++++++++++-------
> > ------------
> >  drivers/mtd/nand/fsl_elbc_nand.c |  4 +--
> >  drivers/mtd/nand/fsl_ifc_nand.c  |  2 +-
> >  drivers/mtd/nand/mxc_nand.c      |  2 +-
> >  drivers/mtd/nand/nand_bch.c      | 12 +++----
> >  drivers/mtd/nand/nandsim.c       | 10 +++---
> >  drivers/mtd/nand/r852.c          |  2 +-
> >  drivers/mtd/nand/r852.h          |  6 ++--
> >  drivers/mtd/nand/sh_flctl.c      |  2 +-
> >  drivers/mtd/nand/sm_common.c     |  5 ++-
> >  13 files changed, 70 insertions(+), 67 deletions(-)
> > 
> > --
> > 2.7.4
> > 
> 
> 

