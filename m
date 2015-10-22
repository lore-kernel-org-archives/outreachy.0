X-GM-THRID: 6208553968461676544
X-Received: by 10.112.16.229 with SMTP id j5mr4028143lbd.6.1445542193858;
        Thu, 22 Oct 2015 12:29:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.16.222 with SMTP id 91ls376683lfq.12.gmail; Thu, 22 Oct
 2015 12:29:53 -0700 (PDT)
X-Received: by 10.112.55.69 with SMTP id q5mr4024365lbp.24.1445542193267;
        Thu, 22 Oct 2015 12:29:53 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id hc2si8269wib.3.2015.10.22.12.29.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 12:29:53 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.20,184,1444687200"; 
   d="scan'208";a="184078091"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 22 Oct 2015 21:29:52 +0200
Date: Thu, 22 Oct 2015 21:29:52 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Shivani Bhardwaj <shivanib134@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: wilc1000: coreconfigurator:
 Remove unnecessary wrapper function
In-Reply-To: <20151022192006.GA23576@ubuntu>
Message-ID: <alpine.DEB.2.02.1510222128020.2066@localhost6.localdomain6>
References: <20151022192006.GA23576@ubuntu>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 23 Oct 2015, Shivani Bhardwaj wrote:

> Remove the function get_current_channel() and replace its calls by
> get_current_channel_802_11n() as the former function's definition
> involves only returning the value of latter function.
> Semantic patch used to find out the issue:
> 
> @@
> identifier f,g;
> @@
> 
> *f(...) {
>  return g(...); }
> 
> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> ---
>  drivers/staging/wilc1000/coreconfigurator.c | 14 +++++---------
>  1 file changed, 5 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/staging/wilc1000/coreconfigurator.c b/drivers/staging/wilc1000/coreconfigurator.c
> index 6dfe26d..f20f2f3 100644
> --- a/drivers/staging/wilc1000/coreconfigurator.c
> +++ b/drivers/staging/wilc1000/coreconfigurator.c
> @@ -331,13 +331,6 @@ u8 get_current_channel_802_11n(u8 *pu8msa, u16 u16RxLen)
>  	return 0;  /* no MIB here */
>  }
>  
> -u8 get_current_channel(u8 *pu8msa, u16 u16RxLen)
> -{
> -	/* Extract current channel information from */
> -	/* the beacon/probe response frame          */
> -	return get_current_channel_802_11n(pu8msa, u16RxLen);
> -}
> -
>  /**
>   *  @brief                      parses the received 'N' message
>   *  @details
> @@ -425,8 +418,11 @@ s32 parse_network_info(u8 *pu8MsgBuffer, tstrNetworkInfo **ppstrNetworkInfo)
>  		/* Get BSSID */
>  		get_BSSID(pu8msa, pstrNetworkInfo->au8bssid);
>  
> -		/* Get the current channel */
> -		pstrNetworkInfo->u8channel = get_current_channel(pu8msa, (u16RxLen + FCS_LEN));
> +		/* 
> +		 * Extract current channel information from
> +		 * the beacon/probe response frame 
> +		 */
> +		pstrNetworkInfo->u8channel = get_current_channel_802_11n(pu8msa, (u16RxLen + FCS_LEN));

This goes way over 80 characters.  I know the code went over 80 characters 
before, but in constructing the new code, you could respect the 80 
character limit at the same time.

Another issue, if someone is looking for something to do with Coccinelle, 
is that the parentheses on the second argument above and on the addition 
below are not necessary.  But fixing that shouldn't be in the same patch.

julia

>  
>  		/* Get beacon period */
>  		u8index = (MAC_HDR_LEN + TIME_STAMP_LEN);
> -- 
> 2.1.0
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151022192006.GA23576%40ubuntu.
> For more options, visit https://groups.google.com/d/optout.
> 

