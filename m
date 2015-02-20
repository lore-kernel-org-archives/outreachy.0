X-GM-THRID: 1123382460416
X-Received: by 10.180.13.98 with SMTP id g2mr198030wic.3.1424418707630;
        Thu, 19 Feb 2015 23:51:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.93.228 with SMTP id cx4ls42215wib.29.gmail; Thu, 19 Feb
 2015 23:51:47 -0800 (PST)
X-Received: by 10.180.12.146 with SMTP id y18mr1185591wib.6.1424418707315;
        Thu, 19 Feb 2015 23:51:47 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id el6si48349wib.2.2015.02.19.23.51.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Thu, 19 Feb 2015 23:51:47 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,613,1418079600"; 
   d="scan'208";a="100703367"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 20 Feb 2015 08:51:46 +0100
Date: Fri, 20 Feb 2015 08:51:45 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Vaishali Thakkar <vthakkar1994@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: Remove unused
 struct ndis_802_11_key
In-Reply-To: <20150220072850.GA8648@vaishali-Ideapad-Z570>
Message-ID: <alpine.DEB.2.02.1502200851350.2045@localhost6.localdomain6>
References: <20150220072850.GA8648@vaishali-Ideapad-Z570>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 20 Feb 2015, Vaishali Thakkar wrote:

> This patch removes struct ndis_802_11_key as it is defined
> in a header file but never used.

How did you find it?

julia

> Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
> ---
>  drivers/staging/rtl8188eu/include/wlan_bssdef.h | 10 ----------
>  1 file changed, 10 deletions(-)
> 
> diff --git a/drivers/staging/rtl8188eu/include/wlan_bssdef.h b/drivers/staging/rtl8188eu/include/wlan_bssdef.h
> index 53b1bd8..85b99da 100644
> --- a/drivers/staging/rtl8188eu/include/wlan_bssdef.h
> +++ b/drivers/staging/rtl8188eu/include/wlan_bssdef.h
> @@ -156,16 +156,6 @@ enum ndis_802_11_reload_def {
>  	Ndis802_11ReloadWEPKeys
>  };
>  
> -/*  Key mapping keys require a BSSID */
> -struct ndis_802_11_key {
> -	u32           Length;             /*  Length of this structure */
> -	u32           KeyIndex;
> -	u32           KeyLength;          /*  length of key in bytes */
> -	unsigned char BSSID[ETH_ALEN];
> -	unsigned long long KeyRSC;
> -	u8           KeyMaterial[32];  /* var len depending on above field */
> -};
> -
>  struct ndis_802_11_remove_key {
>  	u32                   Length;        /*  Length */
>  	u32                   KeyIndex;
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150220072850.GA8648%40vaishali-Ideapad-Z570.
> For more options, visit https://groups.google.com/d/optout.
> 

