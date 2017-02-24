X-GM-THRID: 6388471626392928256
X-Received: by 10.99.146.15 with SMTP id o15mr1216339pgd.8.1487956105574;
        Fri, 24 Feb 2017 09:08:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.38.42 with SMTP id a39ls7719132otb.26.gmail; Fri, 24 Feb
 2017 09:08:25 -0800 (PST)
X-Received: by 10.157.44.245 with SMTP id e50mr1231088otd.117.1487956105211;
        Fri, 24 Feb 2017 09:08:25 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id h130si1649323pfe.1.2017.02.24.09.08.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Feb 2017 09:08:25 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 879AC259;
	Fri, 24 Feb 2017 17:08:24 +0000 (UTC)
Date: Fri, 24 Feb 2017 18:08:18 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: ks7010: Block comments use * on subsequent lines
Message-ID: <20170224170818.GA7219@kroah.com>
References: <20170218153233.GA6466@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170218153233.GA6466@arushi-HP-Pavilion-Notebook>
User-Agent: Mutt/1.7.2 (2016-11-26)

On Sat, Feb 18, 2017 at 09:02:33PM +0530, Arushi Singhal wrote:
> Some of the block comments styles are not encouraged:
> for example:
> /*
> block comment without introductory *
> */
> and
> /*
> * block comment with line terminating */
> 
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
>  drivers/staging/ks7010/ks7010_sdio.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/ks7010/ks7010_sdio.c b/drivers/staging/ks7010/ks7010_sdio.c
> index a604c83c957e..2c263f98bdbb 100644
> --- a/drivers/staging/ks7010/ks7010_sdio.c
> +++ b/drivers/staging/ks7010/ks7010_sdio.c
> @@ -495,8 +495,10 @@ static void ks7010_rw_function(struct work_struct *work)
>  	/* wiat after WAKEUP */
>  	while (time_after(priv->last_wakeup + ((30 * HZ) / 1000), jiffies)) {
>  		DPRINTK(4, "wait after WAKEUP\n");
> -/*		queue_delayed_work(priv->ks_wlan_hw.ks7010sdio_wq,&priv->ks_wlan_hw.rw_wq,
> -		(priv->last_wakeup + ((30*HZ)/1000) - jiffies));*/
> +/* 
> + *   queue_delayed_work(priv->ks_wlan_hw.ks7010sdio_wq,&priv->ks_wlan_hw.rw_wq,
> + *   (priv->last_wakeup + ((30*HZ)/1000) - jiffies));
> + */

Why did you loose the correct indentation here when you commented this
out?

If it's commented out, why not just delete the code instead?

thanks,

greg k-h

