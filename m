X-GM-THRID: 6390398326038069248
X-Received: by 10.28.153.75 with SMTP id b72mr394479wme.14.1487881954185;
        Thu, 23 Feb 2017 12:32:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.34.2 with SMTP id i2ls34905wmi.4.canary-gmail; Thu, 23 Feb
 2017 12:32:33 -0800 (PST)
X-Received: by 10.28.48.71 with SMTP id w68mr373121wmw.15.1487881953530;
        Thu, 23 Feb 2017 12:32:33 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id p185si234177wme.1.2017.02.23.12.32.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Feb 2017 12:32:33 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,198,1484002800"; 
   d="scan'208";a="214528137"
Received: from 198.67.28.109.rev.sfr.net (HELO [192.168.1.69]) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 23 Feb 2017 21:32:32 +0100
Date: Thu, 23 Feb 2017 21:32:32 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Gargi Sharma <gs051095@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192e: replace explicit
 NULL comparison
In-Reply-To: <1487880419-28962-1-git-send-email-gs051095@gmail.com>
Message-ID: <alpine.DEB.2.20.1702232132020.2103@hadrien>
References: <1487880419-28962-1-git-send-email-gs051095@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

On Fri, 24 Feb 2017, Gargi Sharma wrote:

> Replace explicit NULL comparison with ! operator to
> simplify code.

This change is already made in my kernel, suggesting that I already acked
some other patch doing the same thing.

julia

>
> Found with Coccinelle script:
> @@
> expression ptr;
> position p;
> statement s0, s1;
> @@
>
> ptr@p =
> \(kmalloc\|devm_kzalloc\|kmalloc_array\|devm_ioremap\|usb_alloc_urb\|
> alloc_netdev\|dev_alloc_skb\)(...)
> ... when != ptr
>
> if (
> (
> + !
> ptr
> - == NULL
> )
> ) s0 else s1
>
> Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> ---
>  drivers/staging/rtl8192e/rtl819x_BAProc.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/rtl8192e/rtl819x_BAProc.c b/drivers/staging/rtl8192e/rtl819x_BAProc.c
> index 20260af..1d39631 100644
> --- a/drivers/staging/rtl8192e/rtl819x_BAProc.c
> +++ b/drivers/staging/rtl8192e/rtl819x_BAProc.c
> @@ -88,7 +88,7 @@ static struct sk_buff *rtllib_ADDBA(struct rtllib_device *ieee, u8 *Dst,
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1487880419-28962-1-git-send-email-gs051095%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

