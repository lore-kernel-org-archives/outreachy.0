X-GM-THRID: 6524254373964414976
X-Received: by 10.80.138.132 with SMTP id j4mr209053edj.4.1519053149373;
        Mon, 19 Feb 2018 07:12:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.171.6 with SMTP id s6ls4256394edc.2.gmail; Mon, 19 Feb 2018
 07:12:27 -0800 (PST)
X-Google-Smtp-Source: AH8x22776CE7N5Jw+l8Qs9KC0MTVjZ0AncVLqsvJbEJgYyvkd/cQtWS2XJZN9VxvCoJ3nhysNWgU
X-Received: by 10.80.166.153 with SMTP id e25mr874818edc.7.1519053147971;
        Mon, 19 Feb 2018 07:12:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519053147; cv=none;
        d=google.com; s=arc-20160816;
        b=mEF+8EQz+2BVkz5+tpt5fQyCBaCRrZ8RBp1llgsexVW7oMjqSo4H40VN9mTnvbQnbZ
         39irnBtPs94ot1wOr425LKWU1KQtrRI5Ok8dLTWmtaRp1Z1jyTVMBoWFuRrWJmDy5Tb9
         1kWPQhhzpAJCgHWLSczmNb3xl0BS3dm9MGYJF9Qk4SN38UZ6Yww842kkkvPqZ/Hp6f0o
         XCyUp0icpxWxUe2b3AYlMHvZNjiP5shdlL5M8VnrFylroUu80vGcHi14Rwr6A55SVhTc
         evK+hmodvnXICl1o0SCTV+Q11VDanT8MIXd/jylO+tMc3RnQ0GD+PbrCeSz27Z2NC8Gx
         ZpxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=19YqIVYYnBAabU6VbqoTrDsCbIi6r5Sa467R0HyVEoA=;
        b=tq+Yn2SyU7tQCEW0GAOFYKXytEt4UACXiZc3Yk7PRZljTRCJ+VsD8QT2TzMWuwT8G7
         CPcS/ysg0Tf7KdH+0ykq9a6umkc4mFx453Y5nCZzclEQQOZXJvME0LDGlE5FALo04dRy
         LrULskbWfvPXxNrvWsAkpbogSFNfo8NIRxvt+q81hD3oEqT6LRFpHe34pqJxkJuJuqal
         kd7y41gJAWjJGs8MvnTvcVRRGbLi4AbPVvWogmvctHjEYjMfzuonglgcNRRNaJkt9/Uk
         FS4O6ngfPqms0or7VuVLbyiJj8pweSk/13txorGH/ODUKN2R6jr6mfRZWoRVtCDBHbK/
         T4+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of boris.brezillon@bootlin.com designates 62.4.15.54 as permitted sender) smtp.mailfrom=boris.brezillon@bootlin.com
Return-Path: <boris.brezillon@bootlin.com>
Received: from mail.free-electrons.com (mail.free-electrons.com. [62.4.15.54])
        by gmr-mx.google.com with ESMTP id t4si475813edt.2.2018.02.19.07.12.27
        for <outreachy-kernel@googlegroups.com>;
        Mon, 19 Feb 2018 07:12:27 -0800 (PST)
Received-SPF: pass (google.com: domain of boris.brezillon@bootlin.com designates 62.4.15.54 as permitted sender) client-ip=62.4.15.54;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of boris.brezillon@bootlin.com designates 62.4.15.54 as permitted sender) smtp.mailfrom=boris.brezillon@bootlin.com
Received: by mail.free-electrons.com (Postfix, from userid 110)
	id 1BC48207CF; Mon, 19 Feb 2018 16:12:27 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	mail.free-electrons.com
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED,SHORTCIRCUIT,
	URIBL_BLOCKED shortcircuit=ham autolearn=disabled version=3.4.0
Received: from bbrezillon (LStLambert-657-1-97-87.w90-63.abo.wanadoo.fr [90.63.216.87])
	by mail.free-electrons.com (Postfix) with ESMTPSA id 94F8720719;
	Mon, 19 Feb 2018 16:12:16 +0100 (CET)
Date: Mon, 19 Feb 2018 16:12:16 +0100
From: Boris Brezillon <boris.brezillon@bootlin.com>
To: Shreeya Patel <shreeya.patel23498@gmail.com>
Cc: boris.brezillon@free-electrons.com, richard@nod.at, dwmw2@infradead.org,
 computersforpeace@gmail.com, marek.vasut@gmail.com,
 cyrille.pitchen@wedev4u.fr, maximlevitsky@gmail.com,
 linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
 ezequiel@vanguardiasur.com.ar, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH NAND] mtd: nand: Replace printk() with appropriate
 dev_*macro()
Message-ID: <20180219161216.4f3ec2f3@bbrezillon>
In-Reply-To: <1519046339-9678-1-git-send-email-shreeya.patel23498@gmail.com>
References: <1519046339-9678-1-git-send-email-shreeya.patel23498@gmail.com>
X-Mailer: Claws Mail 3.15.0-dirty (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Mon, 19 Feb 2018 18:48:59 +0530
Shreeya Patel <shreeya.patel23498@gmail.com> wrote:

> Replace printks having a log level with the appropriate
> dev_*macro.
> Also, use pdev->dev as it is guaranteed in each case to be
> properly initialized when passed into dev_*macro().
> 
> Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
> ---
>  drivers/mtd/nand/ams-delta.c | 6 ++++--
>  drivers/mtd/nand/cafe_nand.c | 5 +++--
>  drivers/mtd/nand/sh_flctl.c  | 2 +-
>  3 files changed, 8 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/mtd/nand/ams-delta.c b/drivers/mtd/nand/ams-delta.c
> index dcec9cf..2419ca8 100644
> --- a/drivers/mtd/nand/ams-delta.c
> +++ b/drivers/mtd/nand/ams-delta.c
> @@ -185,7 +185,8 @@ static int ams_delta_init(struct platform_device *pdev)
>  	/* Allocate memory for MTD device structure and private data */
>  	this = kzalloc(sizeof(struct nand_chip), GFP_KERNEL);
>  	if (!this) {
> -		printk (KERN_WARNING "Unable to allocate E3 NAND MTD device structure.\n");
> +		dev_warn(&pdev->dev,
> +			 "Unable to allocate E3 NAND MTD device structure.\n");
>  		err = -ENOMEM;
>  		goto out;
>  	}
> @@ -219,7 +220,8 @@ static int ams_delta_init(struct platform_device *pdev)
>  		this->dev_ready = ams_delta_nand_ready;
>  	} else {
>  		this->dev_ready = NULL;
> -		printk(KERN_NOTICE "Couldn't request gpio for Delta NAND ready.\n");
> +		dev_notice(&pdev->dev,
> +			   "Couldn't request gpio for Delta NAND ready.\n");
>  	}
>  	/* 25 us command delay time */
>  	this->chip_delay = 30;
> diff --git a/drivers/mtd/nand/cafe_nand.c b/drivers/mtd/nand/cafe_nand.c
> index bc558c4..51f58ea 100644
> --- a/drivers/mtd/nand/cafe_nand.c
> +++ b/drivers/mtd/nand/cafe_nand.c
> @@ -773,8 +773,9 @@ static int cafe_nand_probe(struct pci_dev *pdev,
>  		cafe->nand.bbt_td = &cafe_bbt_main_descr_512;
>  		cafe->nand.bbt_md = &cafe_bbt_mirror_descr_512;
>  	} else {
> -		printk(KERN_WARNING "Unexpected NAND flash writesize %d. Aborting\n",
> -		       mtd->writesize);
> +		dev_warn(&cafe->pdev->dev,
> +			 "Unexpected NAND flash writesize %d. Aborting\n",
> +			 mtd->writesize);
>  		goto out_free_dma;

I see plenty of printk()s (or pr_xxx()s if this patch is applied after
the printk() -> pr_xxx() replacement) that are not converted to
dev_xxx() in this driver. If we start using dev_xxx() it should be used
consistently.

How about we convert all printk()s to pr_xxx()s first (what you do in
your first patch), including those you convert to dev_xxx() here, and
then we consider patching some of the drivers to use dev_xxx() instead
of pr_xxx().

>  	}
>  	cafe->nand.ecc.mode = NAND_ECC_HW_SYNDROME;
> diff --git a/drivers/mtd/nand/sh_flctl.c b/drivers/mtd/nand/sh_flctl.c
> index e7f3c98..c534c49 100644
> --- a/drivers/mtd/nand/sh_flctl.c
> +++ b/drivers/mtd/nand/sh_flctl.c
> @@ -877,7 +877,7 @@ static void flctl_cmdfunc(struct mtd_info *mtd, unsigned int command,
>  			else if (!flctl->seqin_column)
>  				execmd_write_page_sector(mtd);
>  			else
> -				printk(KERN_ERR "Invalid address !?\n");
> +				dev_err(&flctl->pdev->dev, "Invalid address !?\n");
>  			break;
>  		}
>  		set_cmd_regs(mtd, command, (command << 8) | NAND_CMD_SEQIN);



-- 
Boris Brezillon, Bootlin (formerly Free Electrons)
Embedded Linux and Kernel engineering
http://bootlin.com

