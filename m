X-GM-THRID: 6528348507963654144
X-Received: by 10.28.167.135 with SMTP id q129mr171866wme.28.1520000925957;
        Fri, 02 Mar 2018 06:28:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.126.75 with SMTP id z72ls337758wmc.12.gmail; Fri, 02 Mar
 2018 06:28:44 -0800 (PST)
X-Google-Smtp-Source: AG47ELv1q6M+ACUbq0QAJe3ZUNqnF9c2+cTC0x3Iff7Z+mcanhG9mzYe4SzdSR10xPauqCCyFkDG
X-Received: by 10.28.99.8 with SMTP id x8mr175940wmb.13.1520000924906;
        Fri, 02 Mar 2018 06:28:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520000924; cv=none;
        d=google.com; s=arc-20160816;
        b=k0CEDTh0JQkyiWEJ/aSYEPboavra5LDQZmFKLnkJ4sdr4GJEo0MB1f2NpniVxvvj4l
         lSGAMYsEgyyIf0g6+L6snHtN1VDzj0Y2g7M8fTus4MJhi/yq9sskPzbEwTp/dHAdcLms
         TyeCjq8fSC94+cDbgxmrbipLF7m3SqAsmJmXNsnjRO/rKPYJ9UZm8qGxbKdwK/3AJ2KP
         Ara/BJhwulHvKFnbHCTs9cbvlTCJQiPROWFS5zdvUbPePOJxs61W2oc9ltqfeG8ddKCA
         4WxpIn6OdbR3oTzSj5hmrqa+FfQarkFYq9cpZ5lwajfZ+ceDp9wPbgQCPhmk9cya/pOw
         5J+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=T2EyH2sBnRGaLD0kCLT5zEy5kFhZ3U2bQqsgTwB9/TA=;
        b=s+dAG/mH9e5a3h2d7yKmi9AvVbyg8W7hJjrefWyyQs7HUV25Pxvr3D9y8ajSIJXF0d
         eHVnKHZqNNYKcotjd+x+ZJ+7EiDpSRWNEL8QGj3TBMgY97e3CwO13zgwrpzeXKGVq0Gz
         yqmS3KjdjlWdFMjJKQQqAwuReul4JMxoC0YLyjnzPiVrIvj+2byYZZznk0gIPNcbqGLm
         8B4tXYe3lpI0YYDJGGyM3+LdsC+RIx69Vx4qsjbwLKtIVLniduMeHFGwzkxhTFkjQxgU
         x6G7qyxVYsVjYD9EeyN48KvbLXFm2BMLJGhxnijQB7tbbUNtIyFZBoHoTpN1K1zYGyTj
         w9Nw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 51si426468wrw.0.2018.03.02.06.28.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Mar 2018 06:28:44 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,412,1515452400"; 
   d="scan'208";a="256721956"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Mar 2018 15:28:44 +0100
Date: Fri, 2 Mar 2018 15:28:43 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Santha Meena Ramamoorthy <santhameena13@gmail.com>
cc: gregkh@linuxfoundation.org, forest@alittletooquiet.net, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: vt6655: remove unnecessary
 parentheses
In-Reply-To: <1519999552-19961-1-git-send-email-santhameena13@gmail.com>
Message-ID: <alpine.DEB.2.20.1803021528310.17455@hadrien>
References: <1519999552-19961-1-git-send-email-santhameena13@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 2 Mar 2018, Santha Meena Ramamoorthy wrote:

> Remove unnecessary parentheses around variables to conform to the Linux
> kernel coding style. Issue found using checkpatch.
>
> Signed-off-by: Santha Meena Ramamoorthy <santhameena13@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  drivers/staging/vt6655/device_main.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/vt6655/device_main.c b/drivers/staging/vt6655/device_main.c
> index 0dc9020..fbc4bc6 100644
> --- a/drivers/staging/vt6655/device_main.c
> +++ b/drivers/staging/vt6655/device_main.c
> @@ -543,7 +543,7 @@ static void device_init_rd0_ring(struct vnt_private *priv)
>  		if (!device_alloc_rx_buf(priv, desc))
>  			dev_err(&priv->pcid->dev, "can not alloc rx bufs\n");
>
> -		desc->next = &(priv->aRD0Ring[(i + 1) % priv->opts.rx_descs0]);
> +		desc->next = &priv->aRD0Ring[(i + 1) % priv->opts.rx_descs0];
>  		desc->next_desc = cpu_to_le32(curr + sizeof(struct vnt_rx_desc));
>  	}
>
> @@ -567,7 +567,7 @@ static void device_init_rd1_ring(struct vnt_private *priv)
>  		if (!device_alloc_rx_buf(priv, desc))
>  			dev_err(&priv->pcid->dev, "can not alloc rx bufs\n");
>
> -		desc->next = &(priv->aRD1Ring[(i+1) % priv->opts.rx_descs1]);
> +		desc->next = &priv->aRD1Ring[(i+1) % priv->opts.rx_descs1];
>  		desc->next_desc = cpu_to_le32(curr + sizeof(struct vnt_rx_desc));
>  	}
>
> @@ -581,7 +581,7 @@ static void device_free_rd0_ring(struct vnt_private *priv)
>  	int i;
>
>  	for (i = 0; i < priv->opts.rx_descs0; i++) {
> -		struct vnt_rx_desc *desc = &(priv->aRD0Ring[i]);
> +		struct vnt_rx_desc *desc = &priv->aRD0Ring[i];
>  		struct vnt_rd_info *rd_info = desc->rd_info;
>
>  		dma_unmap_single(&priv->pcid->dev, rd_info->skb_dma,
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1519999552-19961-1-git-send-email-santhameena13%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

