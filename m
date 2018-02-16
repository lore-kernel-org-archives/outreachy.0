X-GM-THRID: 6523195637320646656
X-Received: by 10.28.129.133 with SMTP id c127mr274818wmd.8.1518800913802;
        Fri, 16 Feb 2018 09:08:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.129.141 with SMTP id c135ls418920wmd.11.canary-gmail; Fri,
 16 Feb 2018 09:08:32 -0800 (PST)
X-Google-Smtp-Source: AH8x2268aFSeUm97i0b4HYlajH5Dcfn6Q7PU5k3RskeI/0aJdh7XNdEPShdgcCYvS6qw8ssxB7bZ
X-Received: by 10.28.135.133 with SMTP id j127mr1119221wmd.7.1518800912730;
        Fri, 16 Feb 2018 09:08:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518800912; cv=none;
        d=google.com; s=arc-20160816;
        b=tIZVuL4oc+3BWRMlnfBQn1izpDkl7mbFTd7lYjQhokRsd+yZM0LpZUSa87x2HJA2o3
         rZ49iRDryk9hgVmPZPjGXLiZXUL4Ti+CG2WUBlw0i3FWvArCwjNFNy+UdG3bFVPnb0Ac
         WPL/Sb/l7uUEzknmKpoiqmXcyoCLgw7hSt/I31UuRStZUF3au5r8kUB55KZvevgY6jtz
         1E3jWeJqRn3GFSxJlt4gx1sLZdS90ruAQCCrLUYrxZXvQ6QeIy5n4RpLjOSh4p4yzhHc
         7yGIWr794W9Z3O85IwWPw30yRxa1qHz3AEr3eH81aeciqI6gnt5CRz/qDybf9JfjM8uc
         AhqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=ehg6WVC1CSngsJ/ndj9sWJZKm7/gQIKhMUaSmMe4mDI=;
        b=PKAJqyXSS/YlAi6lTQV45siK2jKB4SCYJB0d4CNcIwIYz55nZ7yfgdLajw2wENqr77
         jMHFnqe4YGlVRQ8ex7cmzKt1pW6V+L2WiESqV0YhMBu6hjs+pnNV5omX12lMQwV5v9Wu
         9ai6UlNWZt+JsaFBI5vPL37Kg94e5dmJMU/4ZqN/e4euQoF0HJJiOTtFiPwd1BhBwIXs
         9qzD+qLa4BGwslrp533v7Vk8THGxXBUNk32JMTd8AMkGq1CDPhzkxfXR5Y5vxfbahWC5
         pidP4FqdB9jOKj6jWl+2LO4id6j3aYqSQl4yGUbarU5+Xcure2Erbve9qmbyghjL8Asz
         gQmw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id e14si154091wmg.0.2018.02.16.09.08.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Feb 2018 09:08:32 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.46,520,1511823600"; 
   d="scan'208";a="313982555"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Feb 2018 18:08:32 +0100
Date: Fri, 16 Feb 2018 18:08:31 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Shreeya Patel <shreeya.patel23498@gmail.com>
cc: boris.brezillon@free-electrons.com, richard@nod.at, dwmw2@infradead.org, 
    computersforpeace@gmail.com, marek.vasut@gmail.com, 
    cyrille.pitchen@wedev4u.fr, outreachy-kernel@googlegroups.com, 
    ezequiel@vanguardiasur.com.ar
Subject: Re: [Outreachy kernel] [PATCH NAND 1/5] mtd/nand: Replace printk
 with pr_warn
In-Reply-To: <49b0ddeaf74e473b0a5cd2a9fe2a3d0351349912.1518797480.git.shreeya.patel23498@gmail.com>
Message-ID: <alpine.DEB.2.20.1802161808120.4340@hadrien>
References: <cover.1518797480.git.shreeya.patel23498@gmail.com> <49b0ddeaf74e473b0a5cd2a9fe2a3d0351349912.1518797480.git.shreeya.patel23498@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 16 Feb 2018, Shreeya Patel wrote:

> pr_*macro is the preferred way to print messages, replace all
> printk(KERN_WARN, ...) with pr_warn.

It looks like it should be possible to use dev_warn?

julia

>
>
> Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
> ---
>  drivers/mtd/nand/ams-delta.c   |  2 +-
>  drivers/mtd/nand/cafe_nand.c   |  4 ++--
>  drivers/mtd/nand/cs553x_nand.c |  2 +-
>  drivers/mtd/nand/diskonchip.c  |  8 ++++----
>  drivers/mtd/nand/mxc_nand.c    |  2 +-
>  drivers/mtd/nand/nand_bch.c    | 10 +++++-----
>  drivers/mtd/nand/nandsim.c     |  2 +-
>  7 files changed, 15 insertions(+), 15 deletions(-)
>
> diff --git a/drivers/mtd/nand/ams-delta.c b/drivers/mtd/nand/ams-delta.c
> index dcec9cf..24b1c24 100644
> --- a/drivers/mtd/nand/ams-delta.c
> +++ b/drivers/mtd/nand/ams-delta.c
> @@ -185,7 +185,7 @@ static int ams_delta_init(struct platform_device *pdev)
>  	/* Allocate memory for MTD device structure and private data */
>  	this = kzalloc(sizeof(struct nand_chip), GFP_KERNEL);
>  	if (!this) {
> -		printk (KERN_WARNING "Unable to allocate E3 NAND MTD device structure.\n");
> +		pr_warn("Unable to allocate E3 NAND MTD device structure.\n");
>  		err = -ENOMEM;
>  		goto out;
>  	}
> diff --git a/drivers/mtd/nand/cafe_nand.c b/drivers/mtd/nand/cafe_nand.c
> index bc558c4..1e84a6e 100644
> --- a/drivers/mtd/nand/cafe_nand.c
> +++ b/drivers/mtd/nand/cafe_nand.c
> @@ -773,8 +773,8 @@ static int cafe_nand_probe(struct pci_dev *pdev,
>  		cafe->nand.bbt_td = &cafe_bbt_main_descr_512;
>  		cafe->nand.bbt_md = &cafe_bbt_mirror_descr_512;
>  	} else {
> -		printk(KERN_WARNING "Unexpected NAND flash writesize %d. Aborting\n",
> -		       mtd->writesize);
> +		pr_warn("Unexpected NAND flash writesize %d. Aborting\n",
> +			mtd->writesize);
>  		goto out_free_dma;
>  	}
>  	cafe->nand.ecc.mode = NAND_ECC_HW_SYNDROME;
> diff --git a/drivers/mtd/nand/cs553x_nand.c b/drivers/mtd/nand/cs553x_nand.c
> index d488775..d4269a4 100644
> --- a/drivers/mtd/nand/cs553x_nand.c
> +++ b/drivers/mtd/nand/cs553x_nand.c
> @@ -211,7 +211,7 @@ static int __init cs553x_init_one(int cs, int mmio, unsigned long adr)
>  	/* map physical address */
>  	this->IO_ADDR_R = this->IO_ADDR_W = ioremap(adr, 4096);
>  	if (!this->IO_ADDR_R) {
> -		printk(KERN_WARNING "ioremap cs553x NAND @0x%08lx failed\n", adr);
> +		pr_warn("ioremap cs553x NAND @0x%08lx failed\n", adr);
>  		err = -EIO;
>  		goto out_mtd;
>  	}
> diff --git a/drivers/mtd/nand/diskonchip.c b/drivers/mtd/nand/diskonchip.c
> index c3aa53c..dac4aec 100644
> --- a/drivers/mtd/nand/diskonchip.c
> +++ b/drivers/mtd/nand/diskonchip.c
> @@ -1015,7 +1015,7 @@ static int __init find_media_headers(struct mtd_info *mtd, u_char *buf, const ch
>  		if (retlen != mtd->writesize)
>  			continue;
>  		if (ret) {
> -			printk(KERN_WARNING "ECC error scanning DOC at 0x%x\n", offs);
> +			pr_warn("ECC error scanning DOC at 0x%x\n", offs);
>  		}
>  		if (memcmp(buf, id, 6))
>  			continue;
> @@ -1030,7 +1030,7 @@ static int __init find_media_headers(struct mtd_info *mtd, u_char *buf, const ch
>  		return 2;
>  	}
>  	if (doc->mh0_page == -1) {
> -		printk(KERN_WARNING "DiskOnChip %s Media Header not found.\n", id);
> +		pr_warn("DiskOnChip %s Media Header not found.\n", id);
>  		return 0;
>  	}
>  	/* Only one mediaheader was found.  We want buf to contain a
> @@ -1093,7 +1093,7 @@ static inline int __init nftl_partscan(struct mtd_info *mtd, struct mtd_partitio
>  			maxblocks = min(32768U, (maxblocks << 1) + psize);
>  			mh->UnitSizeFactor--;
>  		}
> -		printk(KERN_WARNING "UnitSizeFactor=0x00 detected.  Correct value is assumed to be 0x%02x.\n", mh->UnitSizeFactor);
> +		pr_warn("UnitSizeFactor=0x00 detected. Correct value is assumed to be 0x%02x.\n", mh->UnitSizeFactor);
>  	}
>
>  	/* NOTE: The lines below modify internal variables of the NAND and MTD
> @@ -1512,7 +1512,7 @@ static int __init doc_probe(unsigned long physadr)
>  	tmpb = ReadDOC_(virtadr, reg) & DOC_TOGGLE_BIT;
>  	tmpc = ReadDOC_(virtadr, reg) & DOC_TOGGLE_BIT;
>  	if ((tmp == tmpb) || (tmp != tmpc)) {
> -		printk(KERN_WARNING "Possible DiskOnChip at 0x%lx failed TOGGLE test, dropping.\n", physadr);
> +		pr_warn("Possible DiskOnChip at 0x%lx failed TOGGLE test, dropping.\n", physadr);
>  		ret = -ENODEV;
>  		goto notfound;
>  	}
> diff --git a/drivers/mtd/nand/mxc_nand.c b/drivers/mtd/nand/mxc_nand.c
> index 53e5e03..e99c272 100644
> --- a/drivers/mtd/nand/mxc_nand.c
> +++ b/drivers/mtd/nand/mxc_nand.c
> @@ -634,7 +634,7 @@ static int mxc_nand_correct_data_v2_v3(struct mtd_info *mtd, u_char *dat,
>  	do {
>  		err = ecc_stat & ecc_bit_mask;
>  		if (err > err_limit) {
> -			printk(KERN_WARNING "UnCorrectable RS-ECC Error\n");
> +			pr_warn("UnCorrectable RS-ECC Error\n");
>  			return -EBADMSG;
>  		} else {
>  			ret += err;
> diff --git a/drivers/mtd/nand/nand_bch.c b/drivers/mtd/nand/nand_bch.c
> index 505441c..366c04a 100644
> --- a/drivers/mtd/nand/nand_bch.c
> +++ b/drivers/mtd/nand/nand_bch.c
> @@ -134,7 +134,7 @@ struct nand_bch_control *nand_bch_init(struct mtd_info *mtd)
>  	}
>
>  	if (!eccsize || !eccbytes) {
> -		printk(KERN_WARNING "ecc parameters not supplied\n");
> +		pr_warn("ecc parameters not supplied\n");
>  		goto fail;
>  	}
>
> @@ -151,8 +151,8 @@ struct nand_bch_control *nand_bch_init(struct mtd_info *mtd)
>
>  	/* verify that eccbytes has the expected value */
>  	if (nbc->bch->ecc_bytes != eccbytes) {
> -		printk(KERN_WARNING "invalid eccbytes %u, should be %u\n",
> -		       eccbytes, nbc->bch->ecc_bytes);
> +		pr_warn("invalid eccbytes %u, should be %u\n",
> +			eccbytes, nbc->bch->ecc_bytes);
>  		goto fail;
>  	}
>
> @@ -166,7 +166,7 @@ struct nand_bch_control *nand_bch_init(struct mtd_info *mtd)
>
>  	/* sanity checks */
>  	if (8*(eccsize+eccbytes) >= (1 << m)) {
> -		printk(KERN_WARNING "eccsize %u is too large\n", eccsize);
> +		pr_warn("eccsize %u is too large\n", eccsize);
>  		goto fail;
>  	}
>
> @@ -181,7 +181,7 @@ struct nand_bch_control *nand_bch_init(struct mtd_info *mtd)
>  	nand->ecc.steps = eccsteps;
>  	nand->ecc.total = eccsteps * eccbytes;
>  	if (mtd_ooblayout_count_eccbytes(mtd) != (eccsteps*eccbytes)) {
> -		printk(KERN_WARNING "invalid ecc layout\n");
> +		pr_warn("invalid ecc layout\n");
>  		goto fail;
>  	}
>
> diff --git a/drivers/mtd/nand/nandsim.c b/drivers/mtd/nand/nandsim.c
> index 246b439..b2436ea 100644
> --- a/drivers/mtd/nand/nandsim.c
> +++ b/drivers/mtd/nand/nandsim.c
> @@ -188,7 +188,7 @@ MODULE_PARM_DESC(bch,		 "Enable BCH ecc and set how many bits should "
>  #define NS_DBG(args...) \
>  	do { if (dbg) printk(KERN_DEBUG NS_OUTPUT_PREFIX " debug: " args); } while(0)
>  #define NS_WARN(args...) \
> -	do { printk(KERN_WARNING NS_OUTPUT_PREFIX " warning: " args); } while(0)
> +	do { pr_warn(NS_OUTPUT_PREFIX " warning: " args); } while(0)
>  #define NS_ERR(args...) \
>  	do { printk(KERN_ERR NS_OUTPUT_PREFIX " error: " args); } while(0)
>  #define NS_INFO(args...) \
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/49b0ddeaf74e473b0a5cd2a9fe2a3d0351349912.1518797480.git.shreeya.patel23498%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

