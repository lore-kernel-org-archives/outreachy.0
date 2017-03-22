X-GM-THRID: 6400173146424475648
X-Received: by 10.28.211.145 with SMTP id k139mr122815wmg.8.1490178212315;
        Wed, 22 Mar 2017 03:23:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.155.194 with SMTP id d185ls99022lfe.2.gmail; Wed, 22 Mar
 2017 03:23:30 -0700 (PDT)
X-Received: by 10.25.196.68 with SMTP id u65mr5053951lff.0.1490178210249;
        Wed, 22 Mar 2017 03:23:30 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id q207si1466429wme.3.2017.03.22.03.23.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Mar 2017 03:23:30 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,204,1486422000"; 
   d="scan'208";a="265657370"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 22 Mar 2017 11:23:29 +0100
Date: Wed, 22 Mar 2017 11:23:27 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arushi Singhal <arushisinghal19971997@gmail.com>
cc: oleg.drokin@intel.com, Andreas Dilger <andreas.dilger@intel.com>, 
    James Simmons <jsimmons@infradead.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    lustre-devel@lists.lustre.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: media: Replace a bit shift
 by a use of BIT.
In-Reply-To: <20170322042028.GA22848@arushi-HP-Pavilion-Notebook>
Message-ID: <alpine.DEB.2.20.1703221122150.3413@hadrien>
References: <20170322042028.GA22848@arushi-HP-Pavilion-Notebook>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 22 Mar 2017, Arushi Singhal wrote:

> This patch replaces bit shifting on 1 with the BIT(x) macro.
> This was done with coccinelle:
> @@
> constant c;
> @@
>
> -1 << c
> +BIT(c)
>
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
>  drivers/staging/octeon/ethernet-tx.c | 4 ++--

What is the connection to media?  You also seem to have picked up the
Lustre maintainers, who are not relevant.

julia

>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/octeon/ethernet-tx.c b/drivers/staging/octeon/ethernet-tx.c
> index ff4119e8de42..f00186ac4e27 100644
> --- a/drivers/staging/octeon/ethernet-tx.c
> +++ b/drivers/staging/octeon/ethernet-tx.c
> @@ -381,7 +381,7 @@ int cvm_oct_xmit(struct sk_buff *skb, struct net_device *dev)
>  	    (ip_hdr(skb)->version == 4) &&
>  	    (ip_hdr(skb)->ihl == 5) &&
>  	    ((ip_hdr(skb)->frag_off == 0) ||
> -	     (ip_hdr(skb)->frag_off == htons(1 << 14))) &&
> +	     (ip_hdr(skb)->frag_off == htons(BIT(14)))) &&
>  	    ((ip_hdr(skb)->protocol == IPPROTO_TCP) ||
>  	     (ip_hdr(skb)->protocol == IPPROTO_UDP))) {
>  		/* Use hardware checksum calc */
> @@ -613,7 +613,7 @@ int cvm_oct_xmit_pow(struct sk_buff *skb, struct net_device *dev)
>  #endif
>  		work->word2.s.is_frag = !((ip_hdr(skb)->frag_off == 0) ||
>  					  (ip_hdr(skb)->frag_off ==
> -					      1 << 14));
> +					      BIT(14)));
>  #if 0
>  		/* Assume Linux is sending a good packet */
>  		work->word2.s.IP_exc = 0;
> --
> 2.11.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170322042028.GA22848%40arushi-HP-Pavilion-Notebook.
> For more options, visit https://groups.google.com/d/optout.
>

