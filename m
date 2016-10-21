X-GM-THRID: 6343724675739156480
X-Received: by 10.200.42.164 with SMTP id b33mr5081702qta.3.1477026571465;
        Thu, 20 Oct 2016 22:09:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.32.211 with SMTP id g202ls1023322lfg.11.gmail; Thu, 20 Oct
 2016 22:09:30 -0700 (PDT)
X-Received: by 10.25.201.81 with SMTP id z78mr500375lff.22.1477026570205;
        Thu, 20 Oct 2016 22:09:30 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id f4si103332wmf.1.2016.10.20.22.09.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 20 Oct 2016 22:09:30 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,374,1473112800"; 
   d="scan'208";a="197600500"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 21 Oct 2016 07:09:29 +0200
Date: Fri, 21 Oct 2016 07:09:28 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Elise Lennion <elise.lennion@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/3] staging: rtl8192e: Standardize
 test for NULL.
In-Reply-To: <20161021013132.GA27656@lennorien.com>
Message-ID: <alpine.DEB.2.20.1610210708560.1901@hadrien>
References: <20161021013132.GA27656@lennorien.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

No more mailing list.  You can just send the patch to whoevere
get_maintainers tells you.

julia

On Thu, 20 Oct 2016, Elise Lennion wrote:

> The test for NULL of the return variable of functions was changed from
> (ret == NULL) to !ret to match the standard.
>
> Coccinelle was used with semantic patch:
> @@
> expression e;
> identifier id, f;
> statement S;
> @@
>
> f(...) { <+...
>
> id =
> \(kmalloc\|devm_kzalloc\|kmalloc_array\|devm_ioremap
> \|usb_alloc_urb\|alloc_netdev\|dev_alloc_skb\) (...)
>
> ... when any
>     when != id = e
>
> + if (!id)
> - if (\(NULL == id\|id == NULL\))
> S
>
> ...+> }
>
> Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
> ---
>  drivers/staging/rtl8192e/rtl8192e/r8192E_cmdpkt.c | 2 +-
>  drivers/staging/rtl8192e/rtllib_rx.c              | 4 ++--
>  2 files changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/rtl8192e/rtl8192e/r8192E_cmdpkt.c b/drivers/staging/rtl8192e/rtl8192e/r8192E_cmdpkt.c
> index f9003a2..757ffd4 100644
> --- a/drivers/staging/rtl8192e/rtl8192e/r8192E_cmdpkt.c
> +++ b/drivers/staging/rtl8192e/rtl8192e/r8192E_cmdpkt.c
> @@ -49,7 +49,7 @@ bool rtl92e_send_cmd_pkt(struct net_device *dev, u32 type, const void *data,
>  		else
>  			skb = dev_alloc_skb(frag_length + 4);
>
> -		if (skb == NULL) {
> +		if (!skb) {
>  			rt_status = false;
>  			goto Failed;
>  		}
> diff --git a/drivers/staging/rtl8192e/rtllib_rx.c b/drivers/staging/rtl8192e/rtllib_rx.c
> index c743182..93ebc26 100644
> --- a/drivers/staging/rtl8192e/rtllib_rx.c
> +++ b/drivers/staging/rtl8192e/rtllib_rx.c
> @@ -130,7 +130,7 @@ rtllib_frag_cache_get(struct rtllib_device *ieee,
>  				    ETH_ALEN /* WDS */ +
>  				    /* QOS Control */
>  				    (RTLLIB_QOS_HAS_SEQ(fc) ? 2 : 0));
> -		if (skb == NULL)
> +		if (!skb)
>  			return NULL;
>
>  		entry = &ieee->frag_cache[tid][ieee->frag_next_idx[tid]];
> @@ -1430,7 +1430,7 @@ static int rtllib_rx_InfraAdhoc(struct rtllib_device *ieee, struct sk_buff *skb,
>  	/* skb: hdr + (possible reassembled) full plaintext payload */
>  	payload = skb->data + hdrlen;
>  	rxb = kmalloc(sizeof(struct rtllib_rxb), GFP_ATOMIC);
> -	if (rxb == NULL)
> +	if (!rxb)
>  		goto rx_dropped;
>
>  	/* to parse amsdu packets */
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161021013132.GA27656%40lennorien.com.
> For more options, visit https://groups.google.com/d/optout.
>

