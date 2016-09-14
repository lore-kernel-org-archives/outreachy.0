X-GM-THRID: 6330275775734874112
X-Received: by 10.28.31.209 with SMTP id f200mr1553965wmf.4.1473884514780;
        Wed, 14 Sep 2016 13:21:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.0.229 with SMTP id e98ls157802lji.45.gmail; Wed, 14 Sep
 2016 13:21:53 -0700 (PDT)
X-Received: by 10.46.71.207 with SMTP id u198mr882402lja.2.1473884513957;
        Wed, 14 Sep 2016 13:21:53 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 82si27482wmg.3.2016.09.14.13.21.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 13:21:53 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,335,1470693600"; 
   d="scan'208";a="236551498"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 14 Sep 2016 22:21:53 +0200
Date: Wed, 14 Sep 2016 22:21:52 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: sayli karnik <karniksayli1995@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH 4/6] staging: ks7010: ks7010_sdio.c:
 Remove unnecessary blank lines
In-Reply-To: <ef5c8c6f3229b6052e053974768a5c0b87549246.1473877138.git.karniksayli1995@gmail.com>
Message-ID: <alpine.DEB.2.10.1609142221360.3322@hadrien>
References: <cover.1473877138.git.karniksayli1995@gmail.com> <ef5c8c6f3229b6052e053974768a5c0b87549246.1473877138.git.karniksayli1995@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Thu, 15 Sep 2016, sayli karnik wrote:

> The patch removes unnecessary blank lines as detected by checkpatch.pl.
>
> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
> ---
>  drivers/staging/ks7010/ks7010_sdio.c | 4 ----
>  1 file changed, 4 deletions(-)
>
> diff --git a/drivers/staging/ks7010/ks7010_sdio.c b/drivers/staging/ks7010/ks7010_sdio.c
> index 1e109dd..4a918b5 100644
> --- a/drivers/staging/ks7010/ks7010_sdio.c
> +++ b/drivers/staging/ks7010/ks7010_sdio.c
> @@ -182,7 +182,6 @@ int _ks_wlan_hw_power_save(struct ks_wlan_private *priv)
>
>  	if (priv->reg.operation_mode == MODE_INFRASTRUCTURE &&
>  	    (priv->connect_status & CONNECT_STATUS_MASK) == CONNECT_STATUS) {
> -
>  		//DPRINTK(1,"psstatus.status=%d\n",atomic_read(&priv->psstatus.status));

Code under comments can also be removed.

julia

>  		if (priv->dev_state == DEVICE_STATE_SLEEP) {
>  			switch (atomic_read(&priv->psstatus.status)) {
> @@ -246,7 +245,6 @@ int _ks_wlan_hw_power_save(struct ks_wlan_private *priv)
>  				break;
>  			}
>  		}
> -
>  	}
>
>  	return rc;
> @@ -346,7 +344,6 @@ static void tx_device_task(void *dev)
>  						   &priv->ks_wlan_hw.rw_wq, 1);
>  				return;
>  			}
> -
>  		}
>  		kfree(sp->sendp);	/* allocated memory free */
>  		if (sp->complete_handler)	/* TX Complete */
> @@ -605,7 +602,6 @@ static void ks_sdio_interrupt(struct sdio_func *func)
>  				}
>  				complete(&priv->psstatus.wakeup_wait);
>  			}
> -
>  		}
>
>  		do {
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/ef5c8c6f3229b6052e053974768a5c0b87549246.1473877138.git.karniksayli1995%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

