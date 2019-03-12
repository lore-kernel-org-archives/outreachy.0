X-GM-THRID: 6667323453570285568
X-Received: by 2002:a05:6402:1659:: with SMTP id s25mr269069edx.2.1552372249326;
        Mon, 11 Mar 2019 23:30:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:2a9b:: with SMTP id l27ls3789169eje.10.gmail; Mon,
 11 Mar 2019 23:30:48 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyGiy4atVw/jvTvl8TlCm4ARcfYgsFyksIPaD61d4tJ8yTRE3oylGFsuKY9fImnQrtdplm6
X-Received: by 2002:a17:906:1850:: with SMTP id w16mr4091252eje.7.1552372248268;
        Mon, 11 Mar 2019 23:30:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552372248; cv=none;
        d=google.com; s=arc-20160816;
        b=rg0jYy8ytkQM76Ty65Vatg4IB3rcGmR+yMLU3m+YB/sZdjWqTgl1kHSjnG2Zg9yD3M
         8rcFvz98TbG2YN/UbFsgS45A942Ln9b/aaTTLBZCOg87JAPh0dRF897IRmamQJY+GrY5
         OrFHt2OEc0IAimh0IKGCVxdlgfvevlHa0KFPb37P6A/NNQpYzDiaFKvxXl132ys8EbTQ
         Lq6xSDaZr4xoA7v0GwiN6Ca48op8ovgFNsTlRQc0IazS/A54o3+9i99aajuPmPfgz2D7
         C09O54/QJrD6AEsJVR753E/Q6RK4ref5zR5APT39SpiasbRyKEtje3n4Cc9dAggLWCnU
         QjTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=a1pnp3nB4v13c6wvH3apQYHEFAPYS2I5YYP/0bo6hJg=;
        b=vCWaJWfQPN/JNlJEw0aN9OMFqU4Sm/uZfcN+DVMMCXi6JuSQCxZy0GNdtEucuCITZE
         sx1GFieLnEys3+pjXhtRFaicNr7hWFuk5UBtRSBFOJp8XUed0h788pv+Wdx+EXUI9BfD
         F607mr1WdmciPegWqIbYLAz7fN1mPGYpEym3uhI7oLlb/xJV6A2MjxD7vowP6kMXwvdR
         ooIjy1nFL6EtK+9Hu1ihg02e10VISH7M9BpidatiDY9upTSvwz5jNMvbENkfexnnte0Y
         QjKNx/TOqkebCKugIkQvxTiiGXDi3W51aV8aox9IGcvZPZXEvRJ9esfTycEC6huvdb+o
         a6qQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id h5si939020ejq.0.2019.03.11.23.30.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Mar 2019 23:30:48 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,470,1544482800"; 
   d="scan'208";a="298904146"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 12 Mar 2019 07:30:47 +0100
Date: Tue, 12 Mar 2019 07:30:47 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Branden Bonaby <brandonbonaby94@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] staging: octeon: Lines should not
 end with a '('
In-Reply-To: <20190312024806.13728-1-brandonbonaby94@gmail.com>
Message-ID: <alpine.DEB.2.21.1903120729470.2728@hadrien>
References: <20190312021955.12939-1-brandonbonaby94@gmail.com> <20190312024806.13728-1-brandonbonaby94@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 11 Mar 2019, Branden Bonaby wrote:

> Start function arguments immediately after opening bracket.
> CHECK: Lines should not end with a '('.
>
> Signed-off-by: Branden Bonaby <brandonbonaby94@gmail.com>
> ---
> Changes in v2:
> 	combined both patches that change the same thing into 1 patch
> Changes in v3:
> 	changed subject line to match correct subsystem and driver

It's probably not worth changing in this case, but normally the v3 should
be on top.  For someone who is reading through your series of patches,
they are most interested in what changed since the previous one they read.

julia

>
>  drivers/staging/octeon/ethernet-tx.c | 20 +++++++++++---------
>  1 file changed, 11 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/staging/octeon/ethernet-tx.c b/drivers/staging/octeon/ethernet-tx.c
> index 317c9720467c..20f513fbaa85 100644
> --- a/drivers/staging/octeon/ethernet-tx.c
> +++ b/drivers/staging/octeon/ethernet-tx.c
> @@ -214,8 +214,10 @@ int cvm_oct_xmit(struct sk_buff *skb, struct net_device *dev)
>  				 * Get the number of skbuffs in use
>  				 * by the hardware
>  				 */
> -				skb_to_free = cvmx_fau_fetch_and_add32(
> -					priv->fau + qos * 4, MAX_SKB_TO_FREE);
> +				skb_to_free =
> +				     cvmx_fau_fetch_and_add32(priv->fau +
> +							      qos * 4,
> +							      MAX_SKB_TO_FREE);
>  			}
>  			skb_to_free = cvm_oct_adjust_skb_to_free(skb_to_free,
>  								 priv->fau +
> @@ -280,9 +282,9 @@ int cvm_oct_xmit(struct sk_buff *skb, struct net_device *dev)
>  		for (i = 0; i < skb_shinfo(skb)->nr_frags; i++) {
>  			struct skb_frag_struct *fs = skb_shinfo(skb)->frags + i;
>
> -			hw_buffer.s.addr = XKPHYS_TO_PHYS(
> -				(u64)(page_address(fs->page.p) +
> -				fs->page_offset));
> +			hw_buffer.s.addr =
> +				XKPHYS_TO_PHYS((u64)(page_address(fs->page.p) +
> +					       fs->page_offset));
>  			hw_buffer.s.size = fs->size;
>  			CVM_OCT_SKB_CB(skb)[i + 1] = hw_buffer.u64;
>  		}
> @@ -413,8 +415,8 @@ int cvm_oct_xmit(struct sk_buff *skb, struct net_device *dev)
>  		queue_type = QUEUE_HW;
>  	}
>  	if (USE_ASYNC_IOBDMA)
> -		cvmx_fau_async_fetch_and_add32(
> -				CVMX_SCR_SCRATCH, FAU_TOTAL_TX_TO_CLEAN, 1);
> +		cvmx_fau_async_fetch_and_add32(CVMX_SCR_SCRATCH,
> +					       FAU_TOTAL_TX_TO_CLEAN, 1);
>
>  	spin_lock_irqsave(&priv->tx_free_list[qos].lock, flags);
>
> @@ -491,8 +493,8 @@ int cvm_oct_xmit(struct sk_buff *skb, struct net_device *dev)
>  		cvmx_scratch_write64(CVMX_SCR_SCRATCH, old_scratch);
>  		cvmx_scratch_write64(CVMX_SCR_SCRATCH + 8, old_scratch2);
>  	} else {
> -		total_to_clean = cvmx_fau_fetch_and_add32(
> -						FAU_TOTAL_TX_TO_CLEAN, 1);
> +		total_to_clean =
> +			cvmx_fau_fetch_and_add32(FAU_TOTAL_TX_TO_CLEAN, 1);
>  	}
>
>  	if (total_to_clean & 0x3ff) {
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190312024806.13728-1-brandonbonaby94%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

