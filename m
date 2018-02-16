X-GM-THRID: 6523195637320646656
X-Received: by 10.176.73.102 with SMTP id a35mr970357uad.106.1518803558968;
        Fri, 16 Feb 2018 09:52:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.31.196.71 with SMTP id u68ls1007011vkf.5.gmail; Fri, 16 Feb
 2018 09:52:37 -0800 (PST)
X-Google-Smtp-Source: AH8x227WC+C3lHc4VqI06DBArtO/H18kF85MHw94WosuZLkeRALmc2BQ+6ibMkAMqyhIFl4k6UBf
X-Received: by 10.31.2.199 with SMTP id 190mr6199690vkc.118.1518803557677;
        Fri, 16 Feb 2018 09:52:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518803557; cv=none;
        d=google.com; s=arc-20160816;
        b=vTvh1xA+f0i/mfXgwHAOPvJuGnEut4HbAsK+9KD7oZXCx0D6NYAjirJhqY1clxibYd
         y+vkFh+YYEDO/vdnn3+9INrSRMglXJaiCpXgcyABCBpvkVbKCip8K4/6sFnB1ZWWX/lY
         Btr04ywNG57SXNoyCfMVaYSvADkj/bCFBvVo4yqDbIzNvLPe7ThZl4Y1qEyeumqm6WGc
         9Pozru5fqIMKw7kwDEBz6VGwBFUxNTUaF31w3sQFnuExZXGJFUKDhkEdd7e3K6onZ2y4
         uLa29Ohb6YmORri6F+L+AA/VP5FlusLPxEmtRb6T8DUc7foX1etITYowY75zE5o/Qy51
         QbTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :cc:to:from:subject:message-id:dkim-signature
         :arc-authentication-results;
        bh=UKrUD2aZ6/f11dUqLwANndqM9ShU2MquMPdOoWSVIVQ=;
        b=qHL9KaN7ZkHLOa8KvtqRFGyFiiFVUmi4KH2UqZWO79nRssn6BO/ShP7YoufCMNRf50
         xSrlNo85k8To0JgQU56DmUzSZ2sGhBK96q9c8HjsPL2cGuthSl/ZXxTDSCW7rrxoCIuO
         SjhXYmibHpRP3izosT3TfYSzqjW/YWjXg4VUYI9iOJNw74AaMaGIyswT8PnGaIdp1io3
         OtuKJX217tuPkL9cwaDO8+ROaM8RIolYwDlVh556MiKrneuKBwasrFebCxOTgLRtsa8G
         9VLWUznNLT+3Z7cuycLaFGmrd+nNTe8Wf02p0W/1SKGIki2j95E4DTeThkCZA0sbr4dz
         JUyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Dt+WQf4E;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c01::244 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-pl0-x244.google.com (mail-pl0-x244.google.com. [2607:f8b0:400e:c01::244])
        by gmr-mx.google.com with ESMTPS id e24si379458ual.1.2018.02.16.09.52.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Feb 2018 09:52:37 -0800 (PST)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c01::244 as permitted sender) client-ip=2607:f8b0:400e:c01::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Dt+WQf4E;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c01::244 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl0-x244.google.com with SMTP id g18so2057659plo.7
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Feb 2018 09:52:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=UKrUD2aZ6/f11dUqLwANndqM9ShU2MquMPdOoWSVIVQ=;
        b=Dt+WQf4Ee32xzgtAm3VFP67r4WyUycQWT4st9zy80XjjIVKZQ5kk6lakuJ2qTYr249
         nHorq23XB1JX5Xr/tXw41pgzR4AFFScMutt9f+Q+buL2kVswDT/8dJ5rBDsN6YI3Gajt
         5e+IZ4EL+DV3NIlSrgOtd6QEzLmxH1qngp37HZCu0U9t05EjI6mIUOUSonR138ZkIF4x
         UbVp7IArsVJ+85d/6hB8uvmYacYdZdVWQNgR29CRgaXVDgzmKgAq1Tud/RdfJtxIboJq
         NhIBh/Q5XexM34oSZi7jv7sO/Gw7hK7iawGPrSRkeOGHhkLzjIXfAd4j0cfi57w9yCdF
         3eSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=UKrUD2aZ6/f11dUqLwANndqM9ShU2MquMPdOoWSVIVQ=;
        b=Ty0++ITbToYQR2yv43QGjVXulcDglmEK3peBYj1un39p05cX5N+9a9i8uIbjbHlPqH
         SLuqTlhEYqZbiKJSSJU5rqXOu4f9FJcVlARUWIqFOTamkVdaVyXYI7ribhxmP6bKagFh
         R8Y+PE8HaK5efXgkc3BiKrmXQ9MyIgKdu0YucsT14NvZTBzJw02P8mFJ/42U7oQrn5cK
         PMdspw9lRG3uY610+uOh5NGYpw8zftuCs01hPJsx0QbB530LRH1ogrj+GufeFY4RJPZs
         EDy4Hl+NARXr3o6VVeHBIX+2ka3BfR6n7lmhRTw9ABN2GyWx8KqWMu80VwSQ06dGUEnt
         xuiw==
X-Gm-Message-State: APf1xPAAoPF9/ZwM41oIKV7FjNSCITc0taAjmiv+9bOthgFQHNWF/lnB
	DMrC4r+WFVS2yyTCPxRJ+CY=
X-Received: by 2002:a17:902:f83:: with SMTP id 3-v6mr6604021plz.287.1518803557167;
        Fri, 16 Feb 2018 09:52:37 -0800 (PST)
Return-Path: <shreeya.patel23498@gmail.com>
Received: from [10.0.2.15] ([103.212.140.144])
        by smtp.googlemail.com with ESMTPSA id e23sm48406676pff.144.2018.02.16.09.52.34
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Feb 2018 09:52:36 -0800 (PST)
Message-ID: <1518803551.4566.7.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH NAND 1/5] mtd/nand: Replace printk
 with pr_warn
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: boris.brezillon@free-electrons.com, richard@nod.at, dwmw2@infradead.org,
  computersforpeace@gmail.com, marek.vasut@gmail.com,
 cyrille.pitchen@wedev4u.fr,  outreachy-kernel@googlegroups.com,
 ezequiel@vanguardiasur.com.ar
Date: Fri, 16 Feb 2018 23:22:31 +0530
In-Reply-To: <alpine.DEB.2.20.1802161808120.4340@hadrien>
References: <cover.1518797480.git.shreeya.patel23498@gmail.com>
	 <49b0ddeaf74e473b0a5cd2a9fe2a3d0351349912.1518797480.git.shreeya.patel23498@gmail.com>
	 <alpine.DEB.2.20.1802161808120.4340@hadrien>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.18.5.2-0ubuntu3.2 
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit

On Fri, 2018-02-16 at 18:08 +0100, Julia Lawall wrote:
> 
> On Fri, 16 Feb 2018, Shreeya Patel wrote:
> 
> > 
> > pr_*macro is the preferred way to print messages, replace all
> > printk(KERN_WARN, ...) with pr_warn.
> It looks like it should be possible to use dev_warn?

Yes, I'll check this out.
Majority of the files in the Nand driver uses dev_warn
but also some files have pr_warn.
So I'll see what will be the best use and why to use.

Thanks

> 
> julia
> 
> > 
> > 
> > 
> > Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
> > ---
> >  drivers/mtd/nand/ams-delta.c   |  2 +-
> >  drivers/mtd/nand/cafe_nand.c   |  4 ++--
> >  drivers/mtd/nand/cs553x_nand.c |  2 +-
> >  drivers/mtd/nand/diskonchip.c  |  8 ++++----
> >  drivers/mtd/nand/mxc_nand.c    |  2 +-
> >  drivers/mtd/nand/nand_bch.c    | 10 +++++-----
> >  drivers/mtd/nand/nandsim.c     |  2 +-
> >  7 files changed, 15 insertions(+), 15 deletions(-)
> > 
> > diff --git a/drivers/mtd/nand/ams-delta.c b/drivers/mtd/nand/ams-
> > delta.c
> > index dcec9cf..24b1c24 100644
> > --- a/drivers/mtd/nand/ams-delta.c
> > +++ b/drivers/mtd/nand/ams-delta.c
> > @@ -185,7 +185,7 @@ static int ams_delta_init(struct
> > platform_device *pdev)
> >  	/* Allocate memory for MTD device structure and private
> > data */
> >  	this = kzalloc(sizeof(struct nand_chip), GFP_KERNEL);
> >  	if (!this) {
> > -		printk (KERN_WARNING "Unable to allocate E3 NAND
> > MTD device structure.\n");
> > +		pr_warn("Unable to allocate E3 NAND MTD device
> > structure.\n");
> >  		err = -ENOMEM;
> >  		goto out;
> >  	}
> > diff --git a/drivers/mtd/nand/cafe_nand.c
> > b/drivers/mtd/nand/cafe_nand.c
> > index bc558c4..1e84a6e 100644
> > --- a/drivers/mtd/nand/cafe_nand.c
> > +++ b/drivers/mtd/nand/cafe_nand.c
> > @@ -773,8 +773,8 @@ static int cafe_nand_probe(struct pci_dev
> > *pdev,
> >  		cafe->nand.bbt_td = &cafe_bbt_main_descr_512;
> >  		cafe->nand.bbt_md = &cafe_bbt_mirror_descr_512;
> >  	} else {
> > -		printk(KERN_WARNING "Unexpected NAND flash
> > writesize %d. Aborting\n",
> > -		       mtd->writesize);
> > +		pr_warn("Unexpected NAND flash writesize %d.
> > Aborting\n",
> > +			mtd->writesize);
> >  		goto out_free_dma;
> >  	}
> >  	cafe->nand.ecc.mode = NAND_ECC_HW_SYNDROME;
> > diff --git a/drivers/mtd/nand/cs553x_nand.c
> > b/drivers/mtd/nand/cs553x_nand.c
> > index d488775..d4269a4 100644
> > --- a/drivers/mtd/nand/cs553x_nand.c
> > +++ b/drivers/mtd/nand/cs553x_nand.c
> > @@ -211,7 +211,7 @@ static int __init cs553x_init_one(int cs, int
> > mmio, unsigned long adr)
> >  	/* map physical address */
> >  	this->IO_ADDR_R = this->IO_ADDR_W = ioremap(adr, 4096);
> >  	if (!this->IO_ADDR_R) {
> > -		printk(KERN_WARNING "ioremap cs553x NAND @0x%08lx
> > failed\n", adr);
> > +		pr_warn("ioremap cs553x NAND @0x%08lx failed\n",
> > adr);
> >  		err = -EIO;
> >  		goto out_mtd;
> >  	}
> > diff --git a/drivers/mtd/nand/diskonchip.c
> > b/drivers/mtd/nand/diskonchip.c
> > index c3aa53c..dac4aec 100644
> > --- a/drivers/mtd/nand/diskonchip.c
> > +++ b/drivers/mtd/nand/diskonchip.c
> > @@ -1015,7 +1015,7 @@ static int __init find_media_headers(struct
> > mtd_info *mtd, u_char *buf, const ch
> >  		if (retlen != mtd->writesize)
> >  			continue;
> >  		if (ret) {
> > -			printk(KERN_WARNING "ECC error scanning
> > DOC at 0x%x\n", offs);
> > +			pr_warn("ECC error scanning DOC at
> > 0x%x\n", offs);
> >  		}
> >  		if (memcmp(buf, id, 6))
> >  			continue;
> > @@ -1030,7 +1030,7 @@ static int __init find_media_headers(struct
> > mtd_info *mtd, u_char *buf, const ch
> >  		return 2;
> >  	}
> >  	if (doc->mh0_page == -1) {
> > -		printk(KERN_WARNING "DiskOnChip %s Media Header
> > not found.\n", id);
> > +		pr_warn("DiskOnChip %s Media Header not found.\n",
> > id);
> >  		return 0;
> >  	}
> >  	/* Only one mediaheader was found.  We want buf to contain
> > a
> > @@ -1093,7 +1093,7 @@ static inline int __init nftl_partscan(struct
> > mtd_info *mtd, struct mtd_partitio
> >  			maxblocks = min(32768U, (maxblocks << 1) +
> > psize);
> >  			mh->UnitSizeFactor--;
> >  		}
> > -		printk(KERN_WARNING "UnitSizeFactor=0x00
> > detected.  Correct value is assumed to be 0x%02x.\n", mh-
> > >UnitSizeFactor);
> > +		pr_warn("UnitSizeFactor=0x00 detected. Correct
> > value is assumed to be 0x%02x.\n", mh->UnitSizeFactor);
> >  	}
> > 
> >  	/* NOTE: The lines below modify internal variables of the
> > NAND and MTD
> > @@ -1512,7 +1512,7 @@ static int __init doc_probe(unsigned long
> > physadr)
> >  	tmpb = ReadDOC_(virtadr, reg) & DOC_TOGGLE_BIT;
> >  	tmpc = ReadDOC_(virtadr, reg) & DOC_TOGGLE_BIT;
> >  	if ((tmp == tmpb) || (tmp != tmpc)) {
> > -		printk(KERN_WARNING "Possible DiskOnChip at 0x%lx
> > failed TOGGLE test, dropping.\n", physadr);
> > +		pr_warn("Possible DiskOnChip at 0x%lx failed
> > TOGGLE test, dropping.\n", physadr);
> >  		ret = -ENODEV;
> >  		goto notfound;
> >  	}
> > diff --git a/drivers/mtd/nand/mxc_nand.c
> > b/drivers/mtd/nand/mxc_nand.c
> > index 53e5e03..e99c272 100644
> > --- a/drivers/mtd/nand/mxc_nand.c
> > +++ b/drivers/mtd/nand/mxc_nand.c
> > @@ -634,7 +634,7 @@ static int mxc_nand_correct_data_v2_v3(struct
> > mtd_info *mtd, u_char *dat,
> >  	do {
> >  		err = ecc_stat & ecc_bit_mask;
> >  		if (err > err_limit) {
> > -			printk(KERN_WARNING "UnCorrectable RS-ECC
> > Error\n");
> > +			pr_warn("UnCorrectable RS-ECC Error\n");
> >  			return -EBADMSG;
> >  		} else {
> >  			ret += err;
> > diff --git a/drivers/mtd/nand/nand_bch.c
> > b/drivers/mtd/nand/nand_bch.c
> > index 505441c..366c04a 100644
> > --- a/drivers/mtd/nand/nand_bch.c
> > +++ b/drivers/mtd/nand/nand_bch.c
> > @@ -134,7 +134,7 @@ struct nand_bch_control *nand_bch_init(struct
> > mtd_info *mtd)
> >  	}
> > 
> >  	if (!eccsize || !eccbytes) {
> > -		printk(KERN_WARNING "ecc parameters not
> > supplied\n");
> > +		pr_warn("ecc parameters not supplied\n");
> >  		goto fail;
> >  	}
> > 
> > @@ -151,8 +151,8 @@ struct nand_bch_control *nand_bch_init(struct
> > mtd_info *mtd)
> > 
> >  	/* verify that eccbytes has the expected value */
> >  	if (nbc->bch->ecc_bytes != eccbytes) {
> > -		printk(KERN_WARNING "invalid eccbytes %u, should
> > be %u\n",
> > -		       eccbytes, nbc->bch->ecc_bytes);
> > +		pr_warn("invalid eccbytes %u, should be %u\n",
> > +			eccbytes, nbc->bch->ecc_bytes);
> >  		goto fail;
> >  	}
> > 
> > @@ -166,7 +166,7 @@ struct nand_bch_control *nand_bch_init(struct
> > mtd_info *mtd)
> > 
> >  	/* sanity checks */
> >  	if (8*(eccsize+eccbytes) >= (1 << m)) {
> > -		printk(KERN_WARNING "eccsize %u is too large\n",
> > eccsize);
> > +		pr_warn("eccsize %u is too large\n", eccsize);
> >  		goto fail;
> >  	}
> > 
> > @@ -181,7 +181,7 @@ struct nand_bch_control *nand_bch_init(struct
> > mtd_info *mtd)
> >  	nand->ecc.steps = eccsteps;
> >  	nand->ecc.total = eccsteps * eccbytes;
> >  	if (mtd_ooblayout_count_eccbytes(mtd) !=
> > (eccsteps*eccbytes)) {
> > -		printk(KERN_WARNING "invalid ecc layout\n");
> > +		pr_warn("invalid ecc layout\n");
> >  		goto fail;
> >  	}
> > 
> > diff --git a/drivers/mtd/nand/nandsim.c
> > b/drivers/mtd/nand/nandsim.c
> > index 246b439..b2436ea 100644
> > --- a/drivers/mtd/nand/nandsim.c
> > +++ b/drivers/mtd/nand/nandsim.c
> > @@ -188,7 +188,7 @@ MODULE_PARM_DESC(bch,		 "Enable
> > BCH ecc and set how many bits should "
> >  #define NS_DBG(args...) \
> >  	do { if (dbg) printk(KERN_DEBUG NS_OUTPUT_PREFIX " debug:
> > " args); } while(0)
> >  #define NS_WARN(args...) \
> > -	do { printk(KERN_WARNING NS_OUTPUT_PREFIX " warning: "
> > args); } while(0)
> > +	do { pr_warn(NS_OUTPUT_PREFIX " warning: " args); }
> > while(0)
> >  #define NS_ERR(args...) \
> >  	do { printk(KERN_ERR NS_OUTPUT_PREFIX " error: " args); }
> > while(0)
> >  #define NS_INFO(args...) \
> > --
> > 2.7.4
> > 
> > --
> > You received this message because you are subscribed to the Google
> > Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it,
> > send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.
> > com.
> > To view this discussion on the web visit https://groups.google.com/
> > d/msgid/outreachy-
> > kernel/49b0ddeaf74e473b0a5cd2a9fe2a3d0351349912.1518797480.git.shre
> > eya.patel23498%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> > 

