X-GM-THRID: 6524254373964414976
X-Received: by 10.157.83.25 with SMTP id g25mr223116oth.104.1519069199574;
        Mon, 19 Feb 2018 11:39:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.202.76.8 with SMTP id z8ls907756oia.1.gmail; Mon, 19 Feb 2018
 11:39:58 -0800 (PST)
X-Google-Smtp-Source: AH8x224iNzkHCMRgL8W5PtWXB5cwi0/6H9oX90FuXilWdzFW4PHZMA67+69gMBNx1AqCGNzobqpB
X-Received: by 10.202.108.65 with SMTP id h62mr8060181oic.17.1519069198570;
        Mon, 19 Feb 2018 11:39:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519069198; cv=none;
        d=google.com; s=arc-20160816;
        b=nXHaF+GkCF8Yy+vCHDjHogwJQGR2bCOd3yDXgvrx9lRm11o4tvoaOnOV4+4l4EiDs9
         PaortYkZBH03wFxHozDDF+5FlY3HlfEqHux0mDfa66XtJHLhKYaPVgDBzdyzEnPrUr8w
         wuGZ/UObEsIMsEDu9+reHoD9SF1hIuG08zzK3K/X9vHBwXcXo7CqwziOB/lybEp2INjN
         V13l40LrxCFPxae/Cf+Lg1sCXWyhBJN7hIwhldZZg7p1vB+BBHjxM19vGVmvP5xr1cFx
         LYC4zGCDdx870UzfyYhKTEM2PQ517ipMWgArj1SobPEQTfIVXuDyNElLWGXHzp+X85UF
         Moug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :cc:to:from:subject:message-id:dkim-signature
         :arc-authentication-results;
        bh=pAThaJ4iqdyOgeLmLxpyKMZa3z6IfcG2EDbN0UMyBcA=;
        b=v0/pOA24Ay+56XLbrPG3b/MaaqXwotEy6K1al06WcXe1tmBeoJKVvp44dwXuxADnmE
         NgC08w1M09Sgr8jjysBj5rinkDLPYUQcVMUC/knxTCqWUu7zQv4hVc0CBjoqEsJ/Ixlv
         LsaahEmiLLc90USwJddXL6dtagtOmaGvVNevOxuV6wakCwCun6EQIKrfRV6Cv8dL1vj1
         vbf++6UJnKA0IGglPrACMAk+eCSeDjUT0BIM/htX5jraXeW6RFohRWOxSdp5O3i+58Et
         ENKQXXxdDzB3i/22BP8sLLcfkyTKLEe9lVoFh5gp+bnbVKhlSTM4qf0eBsBFjia1GB74
         /Mig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aVqsc7vp;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c05::22b as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-pg0-x22b.google.com (mail-pg0-x22b.google.com. [2607:f8b0:400e:c05::22b])
        by gmr-mx.google.com with ESMTPS id q12si494595oti.2.2018.02.19.11.39.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Feb 2018 11:39:58 -0800 (PST)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c05::22b as permitted sender) client-ip=2607:f8b0:400e:c05::22b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aVqsc7vp;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c05::22b as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x22b.google.com with SMTP id w17so6237318pgv.6
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Feb 2018 11:39:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=pAThaJ4iqdyOgeLmLxpyKMZa3z6IfcG2EDbN0UMyBcA=;
        b=aVqsc7vpRkyhq3Kw9JovTEfBNU+DVHm2oESybNdKmGCFGxWILFXfeQs7sQAEoSogc7
         lSAo687uqmvSvX02oBSmASt8zRsKW/Fj7L6D4vQw5tsRxlhjuPcB36dX38BvXqSWKTBC
         5TWbogOdJV7cupzBjrWEjfTCchpP8AsUie4fE8jl+y5SrAvhnHXxt0jaQFA0NdugYTgb
         RpF+yeGAxt+jDKL5+jpUjLDNwGrGj+ttIhAJpHZubqxNG4CLYFtfoLN0tLASUh/nhzD4
         tUHeEv87v1uX/U/TaBe/Lb+RChBlfNHpNjxZtCsF8ZY5drV+LCklqktjqziJqdHYlTIV
         OnNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=pAThaJ4iqdyOgeLmLxpyKMZa3z6IfcG2EDbN0UMyBcA=;
        b=fTMLLHYVxT2XbBWhRIELPdcuq49Rh5rAaS5JdbIlpTcOxzbm7o/DBjk43tR6RG+N2d
         zxmdrBEJnmufcdnCC9YWporENueLDqLK2LaNMPkUuqj7jrA1CQz7lP7SUYOEYDtelun0
         2SXbct5I+m5bP6hUkfOdIzBe4FtRc8XhMyDJFMvx4AOScZe8tpri3Wm+sdl2kUZ7L6yO
         JLAB+sx1BeJ5uyaomTIxGMkNVrPXVmrOwn+THPzwwxgjwJEO9CgyF7k7PP5DG8rGgB+p
         /zyKGChVBXyU4Gg5gHLyZ52aw21mt3xACNzoQNdP7c4DXt0JrNiwkWjuSgphzFF1ukec
         638w==
X-Gm-Message-State: APf1xPAuOsrsGV/zoV6NuCg85Do7Qs8Ul4a5lluxWNkpF+5AghaCbDkQ
	ZSnQJFz+YoiMcP7f5NyT7Ms=
X-Received: by 10.99.112.20 with SMTP id l20mr13385006pgc.412.1519069198118;
        Mon, 19 Feb 2018 11:39:58 -0800 (PST)
Return-Path: <shreeya.patel23498@gmail.com>
Received: from [10.0.2.15] ([103.212.140.144])
        by smtp.googlemail.com with ESMTPSA id j25sm61197960pfi.118.2018.02.19.11.39.54
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Feb 2018 11:39:57 -0800 (PST)
Message-ID: <1519069191.2102.3.camel@gmail.com>
Subject: Re: [PATCH NAND] mtd: nand: Replace printk() with appropriate
 dev_*macro()
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: Boris Brezillon <boris.brezillon@bootlin.com>
Cc: boris.brezillon@free-electrons.com, richard@nod.at, dwmw2@infradead.org,
  computersforpeace@gmail.com, marek.vasut@gmail.com,
 cyrille.pitchen@wedev4u.fr,  maximlevitsky@gmail.com,
 linux-mtd@lists.infradead.org,  linux-kernel@vger.kernel.org,
 ezequiel@vanguardiasur.com.ar,  outreachy-kernel@googlegroups.com
Date: Tue, 20 Feb 2018 01:09:51 +0530
In-Reply-To: <20180219161216.4f3ec2f3@bbrezillon>
References: <1519046339-9678-1-git-send-email-shreeya.patel23498@gmail.com>
	 <20180219161216.4f3ec2f3@bbrezillon>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.18.5.2-0ubuntu3.2 
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit

On Mon, 2018-02-19 at 16:12 +0100, Boris Brezillon wrote:
> On Mon, 19 Feb 2018 18:48:59 +0530
> Shreeya Patel <shreeya.patel23498@gmail.com> wrote:
> 
> > 
> > Replace printks having a log level with the appropriate
> > dev_*macro.
> > Also, use pdev->dev as it is guaranteed in each case to be
> > properly initialized when passed into dev_*macro().
> > 
> > Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
> > ---
> >  drivers/mtd/nand/ams-delta.c | 6 ++++--
> >  drivers/mtd/nand/cafe_nand.c | 5 +++--
> >  drivers/mtd/nand/sh_flctl.c  | 2 +-
> >  3 files changed, 8 insertions(+), 5 deletions(-)
> > 
> > diff --git a/drivers/mtd/nand/ams-delta.c b/drivers/mtd/nand/ams-
> > delta.c
> > index dcec9cf..2419ca8 100644
> > --- a/drivers/mtd/nand/ams-delta.c
> > +++ b/drivers/mtd/nand/ams-delta.c
> > @@ -185,7 +185,8 @@ static int ams_delta_init(struct
> > platform_device *pdev)
> >  	/* Allocate memory for MTD device structure and private
> > data */
> >  	this = kzalloc(sizeof(struct nand_chip), GFP_KERNEL);
> >  	if (!this) {
> > -		printk (KERN_WARNING "Unable to allocate E3 NAND
> > MTD device structure.\n");
> > +		dev_warn(&pdev->dev,
> > +			 "Unable to allocate E3 NAND MTD device
> > structure.\n");
> >  		err = -ENOMEM;
> >  		goto out;
> >  	}
> > @@ -219,7 +220,8 @@ static int ams_delta_init(struct
> > platform_device *pdev)
> >  		this->dev_ready = ams_delta_nand_ready;
> >  	} else {
> >  		this->dev_ready = NULL;
> > -		printk(KERN_NOTICE "Couldn't request gpio for
> > Delta NAND ready.\n");
> > +		dev_notice(&pdev->dev,
> > +			   "Couldn't request gpio for Delta NAND
> > ready.\n");
> >  	}
> >  	/* 25 us command delay time */
> >  	this->chip_delay = 30;
> > diff --git a/drivers/mtd/nand/cafe_nand.c
> > b/drivers/mtd/nand/cafe_nand.c
> > index bc558c4..51f58ea 100644
> > --- a/drivers/mtd/nand/cafe_nand.c
> > +++ b/drivers/mtd/nand/cafe_nand.c
> > @@ -773,8 +773,9 @@ static int cafe_nand_probe(struct pci_dev
> > *pdev,
> >  		cafe->nand.bbt_td = &cafe_bbt_main_descr_512;
> >  		cafe->nand.bbt_md = &cafe_bbt_mirror_descr_512;
> >  	} else {
> > -		printk(KERN_WARNING "Unexpected NAND flash
> > writesize %d. Aborting\n",
> > -		       mtd->writesize);
> > +		dev_warn(&cafe->pdev->dev,
> > +			 "Unexpected NAND flash writesize %d.
> > Aborting\n",
> > +			 mtd->writesize);
> >  		goto out_free_dma;
> I see plenty of printk()s (or pr_xxx()s if this patch is applied
> after
> the printk() -> pr_xxx() replacement) that are not converted to
> dev_xxx() in this driver. If we start using dev_xxx() it should be
> used
> consistently.
> 
> How about we convert all printk()s to pr_xxx()s first (what you do in
> your first patch), including those you convert to dev_xxx() here, and
> then we consider patching some of the drivers to use dev_xxx()
> instead
> of pr_xxx().

Yes, this will be better :)
I'll include these changes in my pr_xxx() patch.
Then we will work for dev_xxx().

Thanks

> 
> > 
> >  	}
> >  	cafe->nand.ecc.mode = NAND_ECC_HW_SYNDROME;
> > diff --git a/drivers/mtd/nand/sh_flctl.c
> > b/drivers/mtd/nand/sh_flctl.c
> > index e7f3c98..c534c49 100644
> > --- a/drivers/mtd/nand/sh_flctl.c
> > +++ b/drivers/mtd/nand/sh_flctl.c
> > @@ -877,7 +877,7 @@ static void flctl_cmdfunc(struct mtd_info *mtd,
> > unsigned int command,
> >  			else if (!flctl->seqin_column)
> >  				execmd_write_page_sector(mtd);
> >  			else
> > -				printk(KERN_ERR "Invalid address
> > !?\n");
> > +				dev_err(&flctl->pdev->dev,
> > "Invalid address !?\n");
> >  			break;
> >  		}
> >  		set_cmd_regs(mtd, command, (command << 8) |
> > NAND_CMD_SEQIN);
> 
> 

