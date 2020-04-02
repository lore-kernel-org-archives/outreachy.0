X-GM-THRID: 6811027108156932096
X-Received: by 2002:a67:1447:: with SMTP id 68mr3467498vsu.163.1585848738324;
        Thu, 02 Apr 2020 10:32:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9f:21e4:: with SMTP id 91ls328706uac.5.gmail; Thu, 02 Apr
 2020 10:32:16 -0700 (PDT)
X-Google-Smtp-Source: APiQypKl81p5QPeQUxdlyCo8HMBOY0s1IKzQHBupnleFnBT2HKNqLASyaXE/aktmze3ZhgraR/sZ
X-Received: by 2002:a25:a0ce:: with SMTP id i14mr7310976ybm.130.1585848736393;
        Thu, 02 Apr 2020 10:32:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585848736; cv=none;
        d=google.com; s=arc-20160816;
        b=zYwBfB4Z9UEQpIoZOrwRInluHKmpOw0wncbuT5DnJDZ2ylFGPzzW8C5AVzKVOijk6R
         +oPSqpP75Mgm1N8KQo2EB/J8dUArUHtqXbMqn4PTH0/PqHauvI5RwrOWPAzW8pENq+zE
         dzMJ8JvVIOmQ6tuX0JKjCp/w6+A0+spdMog9TGtcCjz35zkiZslTwd6+ff/cZdDLRy0A
         KUo7pRsntO35ebcitA7i01DoS7379C/n7UT78bdrDGDtI1mqHf2OmBR632plN0nY+Ant
         VdDYbyp9Zq3ExCF2mzFQ2yISHVT6u8+dxhlqpjxjWAHC6sAMZwwpzb0KAAO3m7OfMYnl
         f1AQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=6+0UntGQgMBjuu+W3eJ24WYRbm0NQoFPmfptaPcJ0HY=;
        b=Ndpc+Xr3NeAwAHnG6dbr+8EK92Z5Yyx7dJEk2q3SnC9B+rCfYAOxz9SkTHTBspUN0j
         KuwmQlxPQbs+nb8RkiUAYsPBthMx1yFgqFlF3cavQ0tgaqBNG9rtZa+wIOWyDLuXqf1v
         Zyov8kvW/dNuVeQ0gyhhZfRw0KeP2jfgMylm2D5lrD8V2lgLDA9b7+3k/TMVPNPxyUgr
         mxrvCTAMerQU1YukyhUhPLNRLq35r/t0Bib0T0s8SQE4CsjV0OA4T80RA9cEUz/OtuC8
         cIOSzlk3swvvLcDlNy4TNzITV451utFAf1uhz6t04uE76IefpjLG3dZumnTTiw4PERzf
         XTSQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=JJEVY7Za;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y140si428223ybe.1.2020.04.02.10.32.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Apr 2020 10:32:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=JJEVY7Za;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 1217E20737;
	Thu,  2 Apr 2020 17:32:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1585848735;
	bh=l5JSx+89T0JCELfOZerIl/CCaYlIctpKrksckPrxBGQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JJEVY7Zajey5wy5rGqYH7evA3JERLv1BMo2Qk+zsv+f2+Qpi+FtIF2WdcdQq1cfFz
	 s+SZC9LYlUMHxRSVLp6VgbPKsP06EzJm4AODZ99usjrWW2WLPGKKfwmNedbsNrCBAG
	 OFvYI0ow1gC1Du3DEWe1GF3qkT5jJRxfmVGezS6g=
Date: Thu, 2 Apr 2020 19:32:13 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: "John B. Wyatt IV" <jbwyatt4@gmail.com>
Cc: outreachy-kernel@googlegroups.com,
	Harold =?iso-8859-1?Q?Andr=E9?= <harold.andre@gmx.fr>,
	YueHaibing <yuehaibing@huawei.com>,
	"Gustavo A. R. Silva" <gustavo@embeddedor.com>,
	Nishka Dasgupta <nishka.dasgupta@yahoo.com>,
	Stephen Boyd <swboyd@chromium.org>
Subject: Re: [PATCH] staging: ralink-gdma: Move blank line to fix warning
Message-ID: <20200402173213.GD3218351@kroah.com>
References: <20200402082309.839063-1-jbwyatt4@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200402082309.839063-1-jbwyatt4@gmail.com>

On Thu, Apr 02, 2020 at 01:23:09AM -0700, John B. Wyatt IV wrote:
> Move a blank line within a struct to fix/silence a style warning.
> 
> Reported by checkpatch.
> 
> Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
> ---
> Note:
> ralink-gdma does not build; even with make allyesconfig.
> I did not find a menu option with make menuconfig.
> 
>  drivers/staging/ralink-gdma/ralink-gdma.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/ralink-gdma/ralink-gdma.c b/drivers/staging/ralink-gdma/ralink-gdma.c
> index eabf1093328e..9c398048daac 100644
> --- a/drivers/staging/ralink-gdma/ralink-gdma.c
> +++ b/drivers/staging/ralink-gdma/ralink-gdma.c
> @@ -122,9 +122,9 @@ struct gdma_dma_dev {
>  	struct gdma_data *data;
>  	void __iomem *base;
>  	struct tasklet_struct task;
> +
>  	volatile unsigned long chan_issued;
>  	atomic_t cnt;
> -
>  	struct gdma_dmaengine_chan chan[];
>  };

That's a funny style warning, and this patch isn't correct, sorry.

Please see the archives for the many times this has come up.

Remember, checkpatch is just a guide, it's not always right, you always
have to use your brain in considering what it is telling you.

thanks,

greg k-h

