X-GM-THRID: 6249638056866873344
X-Received: by 10.28.158.216 with SMTP id h207mr1279926wme.4.1455109367999;
        Wed, 10 Feb 2016 05:02:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.166.143 with SMTP id p137ls106413lfe.108.gmail; Wed, 10 Feb
 2016 05:02:47 -0800 (PST)
X-Received: by 10.112.135.234 with SMTP id pv10mr4627136lbb.24.1455109367395;
        Wed, 10 Feb 2016 05:02:47 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id c143si102765wmd.1.2016.02.10.05.02.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Feb 2016 05:02:47 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,425,1449529200"; 
   d="scan'208";a="202470623"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 10 Feb 2016 14:02:47 +0100
Date: Wed, 10 Feb 2016 14:02:45 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Rakhi Sharma <rakhish1994@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] drivers: staging: rtl8712: Use
 ether_addr_copy() over memcpy()
In-Reply-To: <1455107239-16386-1-git-send-email-rakhish1994@gmail.com>
Message-ID: <alpine.DEB.2.10.1602101402170.3493@hadrien>
References: <1455107239-16386-1-git-send-email-rakhish1994@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Wed, 10 Feb 2016, Rakhi Sharma wrote:

> Waring is removed by using ether_addr_copy() over memcpy().
> WARNING: Prefer ether_addr_copy() over memcpy() if the Ethernet addresses are
> __aligned(2)

You need to show that the addresses concerned actually are aligned.

julia

> Signed-off-by: Rakhi Sharma <rakhish1994@gmail.com>
> ---
>  drivers/staging/rtl8712/rtl871x_recv.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/staging/rtl8712/rtl871x_recv.c b/drivers/staging/rtl8712/rtl871x_recv.c
> index 4ff5301..2d5231a 100644
> --- a/drivers/staging/rtl8712/rtl871x_recv.c
> +++ b/drivers/staging/rtl8712/rtl871x_recv.c
> @@ -358,11 +358,11 @@ static sint sta2sta_data_frame(struct _adapter *adapter,
>  			sta_addr = pattrib->src;
>  		}
>  	} else if (check_fwstate(pmlmepriv, WIFI_MP_STATE)) {
> -		memcpy(pattrib->dst, GetAddr1Ptr(ptr), ETH_ALEN);
> -		memcpy(pattrib->src, GetAddr2Ptr(ptr), ETH_ALEN);
> -		memcpy(pattrib->bssid, GetAddr3Ptr(ptr), ETH_ALEN);
> -		memcpy(pattrib->ra, pattrib->dst, ETH_ALEN);
> -		memcpy(pattrib->ta, pattrib->src, ETH_ALEN);
> +		ether_addr_copy(pattrib->dst, GetAddr1Ptr(ptr));
> +		ether_addr_copy(pattrib->src, GetAddr2Ptr(ptr));
> +		ether_addr_copy(pattrib->bssid, GetAddr3Ptr(ptr));
> +		ether_addr_copy(pattrib->ra, pattrib->dst);
> +		ether_addr_copy(pattrib->ta, pattrib->src);
>  		sta_addr = mybssid;
>  	} else {
>  		ret  = _FAIL;
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1455107239-16386-1-git-send-email-rakhish1994%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

