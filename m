X-GM-THRID: 6208412714735239168
X-Received: by 10.112.55.69 with SMTP id q5mr3426968lbp.24.1445510107147;
        Thu, 22 Oct 2015 03:35:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.170.72 with SMTP id t69ls285755lfe.56.gmail; Thu, 22 Oct
 2015 03:35:03 -0700 (PDT)
X-Received: by 10.112.132.10 with SMTP id oq10mr3435173lbb.1.1445510103725;
        Thu, 22 Oct 2015 03:35:03 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id bn7si662690wib.0.2015.10.22.03.35.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 03:35:03 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.20,181,1444687200"; 
   d="scan'208";a="151418469"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 22 Oct 2015 12:34:52 +0200
Date: Thu, 22 Oct 2015 12:34:41 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Shivani Bhardwaj <shivanib134@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: wilc1000: coreconfigurator:
 Drop unneeded wrapper functions
In-Reply-To: <20151022101158.GA17223@ubuntu>
Message-ID: <alpine.DEB.2.10.1510221232200.2607@hadrien>
References: <20151022101158.GA17223@ubuntu>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 22 Oct 2015, Shivani Bhardwaj wrote:

> Remove the wrapper functions get_address1, get_address2 and get_address3
> as they are not required and replace their calls by suitable functions.

The existing functions serve two purposes:

1.  They make clear that an ethernet address is being copied
2.  They hide the offsets

To preserve the first property, the kernel has a function for copying
ethernet addresses.

To preserve the second property, maybe it would be possible to #define
constants that describe the offsets, if there is any way to figure out
what they semantically mean.

julia

> Semantic patch used:
> @@
> identifier f,g;
> @@
>
> *f(...) {
>  g(...); }
>
> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> ---
>  drivers/staging/wilc1000/coreconfigurator.c | 38 ++++++++++-------------------
>  1 file changed, 13 insertions(+), 25 deletions(-)
>
> diff --git a/drivers/staging/wilc1000/coreconfigurator.c b/drivers/staging/wilc1000/coreconfigurator.c
> index 427adfd..38bc2c4 100644
> --- a/drivers/staging/wilc1000/coreconfigurator.c
> +++ b/drivers/staging/wilc1000/coreconfigurator.c
> @@ -171,38 +171,26 @@ static inline u8 get_from_ds(u8 *header)
>  	return ((header[1] & 0x02) >> 1);
>  }
>
> -/* This function extracts the MAC Address in 'address1' field of the MAC     */
> -/* header and updates the MAC Address in the allocated 'addr' variable.      */
> -static inline void get_address1(u8 *pu8msa, u8 *addr)
> -{
> -	memcpy(addr, pu8msa + 4, 6);
> -}
> -
> -/* This function extracts the MAC Address in 'address2' field of the MAC     */
> -/* header and updates the MAC Address in the allocated 'addr' variable.      */
> -static inline void get_address2(u8 *pu8msa, u8 *addr)
> -{
> -	memcpy(addr, pu8msa + 10, 6);
> -}
> -
> -/* This function extracts the MAC Address in 'address3' field of the MAC     */
> -/* header and updates the MAC Address in the allocated 'addr' variable.      */
> -static inline void get_address3(u8 *pu8msa, u8 *addr)
> -{
> -	memcpy(addr, pu8msa + 16, 6);
> -}
> -
>  /* This function extracts the BSSID from the incoming WLAN packet based on   */
> -/* the 'from ds' bit, and updates the MAC Address in the allocated 'addr'    */
> +/* the 'from ds' bit, and updates the MAC Address in the allocated 'data'    */
>  /* variable.                                                                 */
>  static inline void get_BSSID(u8 *data, u8 *bssid)
>  {
>  	if (get_from_ds(data) == 1)
> -		get_address2(data, bssid);
> +		/* Extract the MAC Address in 'address2' field of the MAC */
> +		/* header and update the MAC Address in the allocated 'data'
> +		 * variable. */
> +		memcpy(data, bssid + 10, 6);
>  	else if (get_to_ds(data) == 1)
> -		get_address1(data, bssid);
> +		/* Extract the MAC Address in 'address1' field of the MAC */
> +		/* header and update the MAC Address in the allocated 'data'
> +		 * variable. */
> +		memcpy(data, bssid + 4, 6);
>  	else
> -		get_address3(data, bssid);
> +		/* Extract the MAC Address in 'address3' field of the MAC */
> +		/* header and update the MAC Address in the allocated 'data'
> +		 * variable. */
> +		memcpy(data, bssid + 16, 6);
>  }
>
>  /* This function extracts the SSID from a beacon/probe response frame        */
> --
> 2.1.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151022101158.GA17223%40ubuntu.
> For more options, visit https://groups.google.com/d/optout.
>

