X-GM-THRID: 6331768808573763584
X-Received: by 10.28.209.205 with SMTP id i196mr384765wmg.14.1474262339417;
        Sun, 18 Sep 2016 22:18:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.55.79 with SMTP id e76ls1628795wma.19.gmail; Sun, 18 Sep
 2016 22:18:58 -0700 (PDT)
X-Received: by 10.28.72.196 with SMTP id v187mr382231wma.0.1474262338759;
        Sun, 18 Sep 2016 22:18:58 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id s6si476390wmb.1.2016.09.18.22.18.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 22:18:58 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,360,1470693600"; 
   d="scan'208";a="237305487"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien.local) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 19 Sep 2016 07:18:58 +0200
Date: Mon, 19 Sep 2016 07:18:57 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: sayli karnik <karniksayli1995@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: ks7010: Remove unnecessary
 variable used to store return value
In-Reply-To: <20160918201634.GA28903@sayli-HP-15-Notebook-PC>
Message-ID: <alpine.DEB.2.10.1609190718240.4025@hadrien>
References: <20160918201634.GA28903@sayli-HP-15-Notebook-PC>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Mon, 19 Sep 2016, sayli karnik wrote:

> This patch removes an unnecessary variable used to store return values in order
> to reduce memory usage.
> Done using coccinelle:
> @@
> type T;
> constant C;
> identifier ret;
> @@
> - T ret = C;
> ... when != ret
> return
> - ret
> + C
> ;
>
> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  drivers/staging/ks7010/ks_hostif.c | 10 +++-------
>  1 file changed, 3 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
> index 8e33a43..2969feb 100644
> --- a/drivers/staging/ks7010/ks_hostif.c
> +++ b/drivers/staging/ks7010/ks_hostif.c
> @@ -100,8 +100,6 @@ static void ks_wlan_hw_wakeup_task(struct work_struct *work)
>  static
>  int ks_wlan_do_power_save(struct ks_wlan_private *priv)
>  {
> -	int rc = 0;
> -
>  	DPRINTK(4, "psstatus.status=%d\n", atomic_read(&priv->psstatus.status));
>
>  	if ((priv->connect_status & CONNECT_STATUS_MASK) == CONNECT_STATUS) {
> @@ -109,7 +107,7 @@ int ks_wlan_do_power_save(struct ks_wlan_private *priv)
>  	} else {
>  		priv->dev_state = DEVICE_STATE_READY;
>  	}
> -	return rc;
> +	return 0;
>  }
>
>  static
> @@ -221,7 +219,6 @@ int get_ap_information(struct ks_wlan_private *priv, struct ap_info_t *ap_info,
>  {
>  	unsigned char *bp;
>  	int bsize, offset;
> -	int rc = 0;
>
>  	DPRINTK(3, "\n");
>  	memset(ap, 0, sizeof(struct local_ap_t));
> @@ -319,7 +316,7 @@ int get_ap_information(struct ks_wlan_private *priv, struct ap_info_t *ap_info,
>  		bp += (*(bp + 1) + 2);	/* pointer update */
>  	}
>
> -	return rc;
> +	return 0;
>  }
>
>  static
> @@ -2704,7 +2701,6 @@ void hostif_sme_enqueue(struct ks_wlan_private *priv, unsigned short event)
>
>  int hostif_init(struct ks_wlan_private *priv)
>  {
> -	int rc = 0;
>  	int i;
>
>  	DPRINTK(3, "\n");
> @@ -2754,7 +2750,7 @@ int hostif_init(struct ks_wlan_private *priv)
>
>  	tasklet_init(&priv->sme_task, hostif_sme_task, (unsigned long)priv);
>
> -	return rc;
> +	return 0;
>  }
>
>  void hostif_exit(struct ks_wlan_private *priv)
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160918201634.GA28903%40sayli-HP-15-Notebook-PC.
> For more options, visit https://groups.google.com/d/optout.
>

