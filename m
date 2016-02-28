X-GM-THRID: 6256432219438448640
X-Received: by 10.112.170.7 with SMTP id ai7mr1151646lbc.1.1456689179752;
        Sun, 28 Feb 2016 11:52:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.132.74 with SMTP id g71ls428675lfd.5.gmail; Sun, 28 Feb
 2016 11:52:59 -0800 (PST)
X-Received: by 10.112.158.138 with SMTP id wu10mr1183496lbb.11.1456689179205;
        Sun, 28 Feb 2016 11:52:59 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id c140si205104wmh.1.2016.02.28.11.52.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 11:52:59 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,516,1449529200"; 
   d="scan'208";a="204956851"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 28 Feb 2016 20:52:58 +0100
Date: Sun, 28 Feb 2016 20:52:58 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Sandhya Bankar <bankarsandhya512@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] Staging: rtl8192e: Use
 ether_addr_equal_64bits() instead of ether_addr_equal().
In-Reply-To: <20160228115215.GA4726@sandhya>
Message-ID: <alpine.DEB.2.02.1602282052450.2075@localhost6.localdomain6>
References: <20160228115215.GA4726@sandhya>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 28 Feb 2016, Sandhya Bankar wrote:

> Use ether_addr_equal_64bits() instead of ether_addr_equal().

Again, explain why it is correct and a good idea.

julia

> 
> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> ---
>  drivers/staging/rtl8192e/rtllib_softmac.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192e/rtllib_softmac.c b/drivers/staging/rtl8192e/rtllib_softmac.c
> index 25b5b5e..07514e8 100644
> --- a/drivers/staging/rtl8192e/rtllib_softmac.c
> +++ b/drivers/staging/rtl8192e/rtllib_softmac.c
> @@ -1837,8 +1837,9 @@ static short probe_rq_parse(struct rtllib_device *ieee, struct sk_buff *skb,
>  		return -1; /* corrupted */
>  
>  	bssid_match =
> -	  (!ether_addr_equal(header->addr3, ieee->current_network.bssid)) &&
> -	  (!is_broadcast_ether_addr(header->addr3));
> +	  (!ether_addr_equal_64bits(header->addr3,
> +		ieee->current_network.bssid)) &&
> +		(!is_broadcast_ether_addr(header->addr3));
>  	if (bssid_match)
>  		return -1;
>  
> -- 
> 1.8.3.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160228115215.GA4726%40sandhya.
> For more options, visit https://groups.google.com/d/optout.
> 

