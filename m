X-GM-THRID: 6388342428982575104
X-Received: by 10.46.20.27 with SMTP id u27mr1379131ljd.4.1487425575238;
        Sat, 18 Feb 2017 05:46:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.56.76 with SMTP id d12ls270785lfj.49.gmail; Sat, 18 Feb
 2017 05:46:14 -0800 (PST)
X-Received: by 10.25.80.83 with SMTP id z19mr1237213lfj.8.1487425573994;
        Sat, 18 Feb 2017 05:46:13 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id d5si287337wmc.1.2017.02.18.05.46.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Feb 2017 05:46:13 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,174,1484002800"; 
   d="scan'208";a="213894053"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 18 Feb 2017 14:46:10 +0100
Date: Sat, 18 Feb 2017 14:46:05 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: simran singhal <singhalsimran0@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH v2 1/6] staging: rtl8192e: Replaced
 comparison to NULL statements
In-Reply-To: <20170218134248.GA21186@singhal-Inspiron-5558>
Message-ID: <alpine.DEB.2.20.1702181445530.3112@hadrien>
References: <20170218134248.GA21186@singhal-Inspiron-5558>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 18 Feb 2017, simran singhal wrote:

> This patch removes the explicit NULL comparison. This issue was found by
> checkpatch.
>
> Signed-off-by: simran singhal <singhalsimran0@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>
>  v2:
>    -Modified commit message
>
>  drivers/staging/rtl8192e/rtl819x_BAProc.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/rtl8192e/rtl819x_BAProc.c b/drivers/staging/rtl8192e/rtl819x_BAProc.c
> index 20260af..bdbd21c 100644
> --- a/drivers/staging/rtl8192e/rtl819x_BAProc.c
> +++ b/drivers/staging/rtl8192e/rtl819x_BAProc.c
> @@ -83,12 +83,12 @@ static struct sk_buff *rtllib_ADDBA(struct rtllib_device *ieee, u8 *Dst,
>  	netdev_dbg(ieee->dev, "%s(): frame(%d) sentd to: %pM, ieee->dev:%p\n",
>  		   __func__, type, Dst, ieee->dev);
>
> -	if (pBA == NULL) {
> +	if (!pBA) {
>  		netdev_warn(ieee->dev, "pBA is NULL\n");
>  		return NULL;
>  	}
>  	skb = dev_alloc_skb(len + sizeof(struct rtllib_hdr_3addr));
> -	if (skb == NULL)
> +	if (!skb)
>  		return NULL;
>
>  	memset(skb->data, 0, sizeof(struct rtllib_hdr_3addr));
> @@ -154,7 +154,7 @@ static struct sk_buff *rtllib_DELBA(struct rtllib_device *ieee, u8 *dst,
>  	DelbaParamSet.field.TID	= pBA->BaParamSet.field.TID;
>
>  	skb = dev_alloc_skb(len + sizeof(struct rtllib_hdr_3addr));
> -	if (skb == NULL)
> +	if (!skb)
>  		return NULL;
>
>  	skb_reserve(skb, ieee->tx_headroom);
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170218134248.GA21186%40singhal-Inspiron-5558.
> For more options, visit https://groups.google.com/d/optout.
>

