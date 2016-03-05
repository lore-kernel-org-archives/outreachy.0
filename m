X-GM-THRID: 6257874125297025024
X-Received: by 10.129.153.84 with SMTP id q81mr4630212ywg.58.1457164830238;
        Sat, 05 Mar 2016 00:00:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.230.1 with SMTP id su1ls5506obc.18.gmail; Sat, 05 Mar 2016
 00:00:29 -0800 (PST)
X-Received: by 10.182.118.169 with SMTP id kn9mr8929717obb.11.1457164829772;
        Sat, 05 Mar 2016 00:00:29 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id y20si1896888pfa.2.2016.03.05.00.00.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 05 Mar 2016 00:00:29 -0800 (PST)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x235.google.com with SMTP id fl4so47753855pad.0
        for <outreachy-kernel@googlegroups.com>; Sat, 05 Mar 2016 00:00:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=4Tn0tlAEOp0gEbLeB2yRILDwq8N3SBPyoYi2hlinNjU=;
        b=ckcC6zdZfZBh74VSyemT4UCugs9E3iXzRlB+1sDccni72JgdRkPK4GE5gadDxWq+SJ
         NOODccWkimxJUgpPP1N2qKpA9/21XQ6EnwqoKEHmXZFcmJCYMFENqlZXPeWki5LIKJhJ
         X58W3rEBG8Q4KcX36LFVQrCqzCaGSr3V73TciaNKyktxitaAddsOHkriYenY+DXHAdPU
         RKAwqHIXaKHiKGudnoACkVFe4aWmE6SyOuKKelcup/PNxJsKnSTA/85PoBfzBklP+iPL
         9QBqMGXjts9GB3vw44cIyuc2RUUkdexBJY0BBi2I4o7EBBd+IlH1pR1hDrVyTQfcpjC5
         9UNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent;
        bh=4Tn0tlAEOp0gEbLeB2yRILDwq8N3SBPyoYi2hlinNjU=;
        b=TnaCf0cH8fkr1PxdzKEgLe+QJPcEn64wz6mtwzU/9iaO+5onWapc+D2x0iqfv2xuEo
         WHVGjZfpoaSnZ7CkQaa57ZxKiYCGB3uDot6fNGnQFGgTzepujv4qSqXSbo6OKOCwWHOO
         jUxv73EXiUGhqaTqf8hFMLCFLL5WCG3FKIbPqeU+/fHdH2L8srqLC6Fp81vNPK02QmVT
         QiwomSKUmMbdggyQvvchGp1WPfBfAVtANkV4i9rhYboa7V/zoXdGfxXy0w0GRrFaf7H4
         bFv3JbODfK8blWW82Tzx9gQpXYgUPDO68hBLwreCbYj9BoCJuEEXXzR2wBf90CM1JGth
         WSBA==
X-Gm-Message-State: AD7BkJI4sKPwh63LEWLqtg/ozlZeRCfNoGmqVCFvnbCLDikHsHb5RfV4f0kCBtZ1bNDUBg==
X-Received: by 10.66.218.196 with SMTP id pi4mr18120680pac.147.1457164828169;
        Sat, 05 Mar 2016 00:00:28 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([203.215.121.160])
        by smtp.gmail.com with ESMTPSA id r62sm10371858pfr.26.2016.03.05.00.00.23
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 05 Mar 2016 00:00:23 -0800 (PST)
Date: Sat, 5 Mar 2016 16:00:20 +0800
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: "pooja.shamili" <poojashamili@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: mt29f_spinand: Replacing
 pr_info with dev_info after the call to devm_kzalloc
Message-ID: <20160305080019.GA28126@Socrates-Mint>
Mail-Followup-To: "pooja.shamili" <poojashamili@gmail.com>,
	outreachy-kernel@googlegroups.com
References: <20160303170735.GA3773@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160303170735.GA3773@localhost>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Thu, Mar 03, 2016 at 10:37:35PM +0530, pooja.shamili wrote:
> The function devm_kzalloc has a first argument of type struct device *.
> This is the type of argument required by printing functions such as
> dev_info, dev_err, etc. Thus, functions like pr_info should not normally
> be used after a call to devm_kzalloc. Thus, all pr_info occurances are
> replaced with dev_info function calls.
> 
> This was done using Coccinelle, the patch being:
> @@
> expression E1,E2;
> expression list args;
> @@
> 
> E1 = devm_kzalloc(E2, ...);
> <...
> - pr_info(
> + dev_info(E2,
> args);
> ...>
> 
> Signed-off-by: pooja.shamili <poojashamili@gmail.com>
> ---
>  drivers/staging/mt29f_spinand/mt29f_spinand.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/mt29f_spinand/mt29f_spinand.c b/drivers/staging/mt29f_spinand/mt29f_spinand.c
> index 75fe61c..791e36f 100644
> --- a/drivers/staging/mt29f_spinand/mt29f_spinand.c
> +++ b/drivers/staging/mt29f_spinand/mt29f_spinand.c
> @@ -893,7 +893,8 @@ static int spinand_probe(struct spi_device *spi_nand)
>  #else
>  	chip->ecc.mode	= NAND_ECC_SOFT;
>  	if (spinand_disable_ecc(spi_nand) < 0)
> -		pr_info("%s: disable ecc failed!\n", __func__);
> +		dev_info(&spi_nand->dev, "%s: disable ecc failed!\n",
> +			 __func__);
>  #endif
>  
>  	nand_set_flash_node(chip, spi_nand->dev.of_node);
> -- 
> 2.1.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160303170735.GA3773%40localhost.
> For more options, visit https://groups.google.com/d/optout.

Hello Pooja,

I'm also working on the semantic patch you presented here but I'm aiming
for the "extended" one. I'm using this driver to test my patch -- other
than what you have changed, I suggest you also convert the other pr_
calls on this driver even if it's by hand and add that to your commit
message. I think there are only 2 left, for consistency purposes.

Eva

