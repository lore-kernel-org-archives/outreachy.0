X-GM-THRID: 6883501515077582848
X-Received: by 2002:a2e:3a12:: with SMTP id h18mr2263578lja.225.1602691336391;
        Wed, 14 Oct 2020 09:02:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:554:: with SMTP id 81ls2173205lff.1.gmail; Wed, 14 Oct
 2020 09:02:13 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwkca2MMd+MlsbNkAN40ZBWR0Rk5MGvHA3mME9JbsYowIFkfoqfdMpepp9lR6W6GR05mM9o
X-Received: by 2002:a05:6512:2098:: with SMTP id t24mr19534lfr.116.1602691333324;
        Wed, 14 Oct 2020 09:02:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602691333; cv=none;
        d=google.com; s=arc-20160816;
        b=K6Ut+2/zJNwPidRy+vMsRP4i3Sv4dCeP+3QGW2z/AcV/IvvSKAEVrYu83maZoGh5MQ
         qaCJryKJGeEJFc3s5fHJBUsoo9sR4Xh5NLK3GHfRymJkAqHunfUyEFAzHr7SNRakahoJ
         7Z//fwGlkyAnukGeDCVU1QaL4JVqMFDE9kFz48NBmrqxIGtdoAdRL5vJ9QQ3Z4wnslgJ
         vAfCj1YhXxHnnHaFDe2VZIQAoVCOuUmWOO3ZbV3eG52O21/NilAoI0oN9KXT2WfHm4ej
         K6Xf9Igp4G2GnmmtIGFlDa3ItzUGpnUCiPzpLStRl27ji0+jpOE1ujhRjBtynzNbJyE7
         Bivg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=JXoP8aef5LfUk38VRLTw8kKERklm7yfQH9+Y1+tvpEI=;
        b=D93rELnbzZOb3BKtyHTt7BUus1Rm9E6aDC5Juv3H0qYPY2hNZI7q+9GQHCVppo5ni0
         A8b1Xh/7G2bKvZXA4KiE5MvbZV8+CCmxwDQPYhkDJKH4zI+gGxiOWF6RoIBhGcPd2pwX
         Jgwju+Uud5za6mZ9HDbsrdmYnBnwFM1fpk3MF6TqCnyet+BOpmy4DbybjAJ6gnjNW1iL
         6Y/ZoiU3RoXWTHvKMzMhxNC9ZBq9xGOCAVvEWcI29wxJCTbFt8hp4jLdciNVV4c7MnxN
         A27kXAycJ7LR+6HsZNtLEN8ZJzbx4eIeD6s7aeqwelzD0Di5dXENwM8XMbEeZxvOILO6
         +u4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id n5si262lji.5.2020.10.14.09.02.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2020 09:02:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.77,375,1596492000"; 
   d="scan'208";a="361784866"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 14 Oct 2020 18:01:39 +0200
Date: Wed, 14 Oct 2020 18:01:39 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Deepak R Varma <mh12gx2825@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Forest Bond <forest@alittletooquiet.net>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: vt6655: rearrange lines
 exceeding 100 columns
In-Reply-To: <20201014154121.GA23584@ubuntu204>
Message-ID: <alpine.DEB.2.22.394.2010141801041.2687@hadrien>
References: <20201014154121.GA23584@ubuntu204>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 14 Oct 2020, Deepak R Varma wrote:

> Rearrange lines that are longer than 100 columns width. Issue reported
> by chckpatch script.
>
> Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
>
> ---
>
>  drivers/staging/vt6655/device_main.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/vt6655/device_main.c b/drivers/staging/vt6655/device_main.c
> index 09ab6d6f2429..4fc90b111f9d 100644
> --- a/drivers/staging/vt6655/device_main.c
> +++ b/drivers/staging/vt6655/device_main.c
> @@ -461,7 +461,10 @@ static bool device_init_rings(struct vnt_private *priv)
>  		priv->opts.rx_descs0 * sizeof(struct vnt_rx_desc);
>
>  	priv->tx0_bufs = dma_alloc_coherent(&priv->pcid->dev,
> -					    priv->opts.tx_descs[0] * PKT_BUF_SZ + priv->opts.tx_descs[1] * PKT_BUF_SZ + CB_BEACON_BUF_SIZE + CB_MAX_BUF_SIZE,
> +					    priv->opts.tx_descs[0] * PKT_BUF_SZ +
> +					    priv->opts.tx_descs[1] * PKT_BUF_SZ +
> +					    CB_BEACON_BUF_SIZE +
> +					    CB_MAX_BUF_SIZE,
>  					    &priv->tx_bufs_dma0, GFP_ATOMIC);
>  	if (!priv->tx0_bufs) {
>  		dev_err(&priv->pcid->dev, "allocate buf dma memory failed\n");
> @@ -1077,7 +1080,8 @@ static void vnt_interrupt_process(struct vnt_private *priv)
>  			    priv->op_mode == NL80211_IFTYPE_ADHOC) &&
>  			    priv->vif->bss_conf.enable_beacon) {
>  				MACvOneShotTimer1MicroSec(priv,
> -							  (priv->vif->bss_conf.beacon_int - MAKE_BEACON_RESERVED) << 10);
> +							  (priv->vif->bss_conf.beacon_int -
> +							   MAKE_BEACON_RESERVED) << 10);

Maybe it would make more sense to shorten the function name?

Also the {} are not needed.

julia


>  			}
>
>  			/* TODO: adhoc PS mode */
> --
> 2.25.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20201014154121.GA23584%40ubuntu204.
>

