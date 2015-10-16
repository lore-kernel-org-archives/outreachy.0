X-GM-THRID: 6206282778545225728
X-Received: by 10.180.91.233 with SMTP id ch9mr1380352wib.4.1445013265546;
        Fri, 16 Oct 2015 09:34:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.39.195 with SMTP id r3ls183334wik.47.gmail; Fri, 16 Oct
 2015 09:34:25 -0700 (PDT)
X-Received: by 10.180.106.197 with SMTP id gw5mr1376944wib.7.1445013265158;
        Fri, 16 Oct 2015 09:34:25 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id hs5si144236wib.1.2015.10.16.09.34.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Oct 2015 09:34:25 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,689,1437429600"; 
   d="scan'208";a="183167251"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 16 Oct 2015 18:34:24 +0200
Date: Fri, 16 Oct 2015 18:34:19 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Alison Schofield <amsfield22@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: r8723au: replace explicit
 NULL comparisons with !
In-Reply-To: <20151016162645.GA17124@Ubuntu-D830>
Message-ID: <alpine.DEB.2.10.1510161834030.2459@hadrien>
References: <20151016162645.GA17124@Ubuntu-D830>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 16 Oct 2015, Alison Schofield wrote:

> Replace explicit NULL comparisons with ! operator to simplify code.

They actually aren't both NULL comparisons.

julia

>
> Signed-off-by: Alison Schofield <amsfield22@gmail.com>
> ---
>  drivers/staging/rtl8723au/core/rtw_ap.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/rtl8723au/core/rtw_ap.c b/drivers/staging/rtl8723au/core/rtw_ap.c
> index 65b209a..59bb3da 100644
> --- a/drivers/staging/rtl8723au/core/rtw_ap.c
> +++ b/drivers/staging/rtl8723au/core/rtw_ap.c
> @@ -919,8 +919,8 @@ int rtw_check_beacon_data23a(struct rtw_adapter *padapter,
>  			break;
>  		}
>
> -		if ((p == NULL) || (ie_len == 0))
> -				break;
> +		if (!p || !ie_len)
> +			break;
>  	}
>
>  	/* wmm */
> --
> 2.1.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151016162645.GA17124%40Ubuntu-D830.
> For more options, visit https://groups.google.com/d/optout.
>

