X-GM-THRID: 6252682956300615680
X-Received: by 10.112.170.7 with SMTP id ai7mr2178767lbc.1.1455930816262;
        Fri, 19 Feb 2016 17:13:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.132.7 with SMTP id g7ls41681wmd.39.canary; Fri, 19 Feb 2016
 17:13:35 -0800 (PST)
X-Received: by 10.28.47.211 with SMTP id v202mr2375wmv.3.1455930815683;
        Fri, 19 Feb 2016 17:13:35 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id v197si446711wmv.1.2016.02.19.17.13.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Feb 2016 17:13:35 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 55ACFEA7;
	Sat, 20 Feb 2016 01:13:34 +0000 (UTC)
Date: Fri, 19 Feb 2016 17:13:34 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Bhumika Goyal <bhumirks@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: wilc1000: Remove all struct
 typedefs from .c files
Message-ID: <20160220011334.GB9757@kroah.com>
References: <1455816184-25563-1-git-send-email-bhumirks@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1455816184-25563-1-git-send-email-bhumirks@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Thu, Feb 18, 2016 at 10:53:04PM +0530, Bhumika Goyal wrote:
> Using typedef for a structure type is not suggested in Linux kernel coding
> style guidelines. So remove typedefs from structures wilc_sdio_t,wilc_spi_t
> and wilc_mac_cfg_t.
> 
> The following semantic patch detects cases:
> 
> @tn1@
> type td;
> @@
> 
> typedef struct { ... } td;
> 
> @script:python tf@
> td << tn1.td;
> tdres;
> @@
> coccinelle.tdres = td;
> 
> @@ type tn1.td;
> identifier tf.tdres;
> @@
> -typedef
>  struct
> + tdres
>   { ... }
> -td
>   ;
> @@ type tn1.td;
> identifier tf.tdres;
> @@
> -td
> + struct tdres
> 
> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> ---
>  drivers/staging/wilc1000/wilc_sdio.c     |  8 ++++----
>  drivers/staging/wilc1000/wilc_spi.c      |  8 ++++----
>  drivers/staging/wilc1000/wilc_wlan_cfg.c | 10 +++++-----
>  3 files changed, 13 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/staging/wilc1000/wilc_sdio.c b/drivers/staging/wilc1000/wilc_sdio.c
> index 963875af..5684c47 100644
> --- a/drivers/staging/wilc1000/wilc_sdio.c
> +++ b/drivers/staging/wilc1000/wilc_sdio.c
> @@ -30,15 +30,15 @@ static const struct sdio_device_id wilc_sdio_ids[] = {
>  
>  #define WILC_SDIO_BLOCK_SIZE 512
>  
> -typedef struct {
> +struct wilc_sdio_t {

Why use "_t" as a suffix on the struct name?  We know it's a structure,
so just use 'struct wilc_sdio' please.

thanks,

greg k-h

