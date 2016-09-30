X-GM-THRID: 6336167354964115456
X-Received: by 10.25.228.71 with SMTP id b68mr614792lfh.0.1475256725265;
        Fri, 30 Sep 2016 10:32:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.47.21 with SMTP id v21ls503175wmv.23.gmail; Fri, 30 Sep
 2016 10:32:04 -0700 (PDT)
X-Received: by 10.28.198.2 with SMTP id w2mr364035wmf.3.1475256724592;
        Fri, 30 Sep 2016 10:32:04 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id a126si373662wmd.1.2016.09.30.10.32.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Sep 2016 10:32:04 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,273,1473112800"; 
   d="scan'208";a="195235943"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 30 Sep 2016 19:32:03 +0200
Date: Fri, 30 Sep 2016 19:32:02 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Anchal Jain <anchalj109@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: rtl8188eu: core: rtw_ap:
 remove boolean comparison
In-Reply-To: <20160930164424.GA4879@life-desktop>
Message-ID: <alpine.DEB.2.10.1609301931330.3399@hadrien>
References: <20160930164424.GA4879@life-desktop>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Fri, 30 Sep 2016, Anchal Jain wrote:

> Boolean tests do not need explicit comparison to true or false.
>
> Signed-off-by: Anchal Jain <anchalj109@gmail.com>
> ---
>  drivers/staging/rtl8188eu/core/rtw_ap.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
> index 79d326a..fbe9941 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_ap.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_ap.c
> @@ -767,7 +767,7 @@ static void start_bss_network(struct adapter *padapter, u8 *pbuf)
>  		update_hw_ht_param(padapter);
>  	}
>
> -	if (pmlmepriv->cur_network.join_res != true) { /* setting only at  first time */
> +	if (pmlmepriv->cur_network.join_res) { /* setting only at  first time */

It looks like you have inverted the sense of the test.

julia

>  		/* WEP Key will be set before this function, do not clear CAM. */
>  		if ((psecuritypriv->dot11PrivacyAlgrthm != _WEP40_) &&
>  		    (psecuritypriv->dot11PrivacyAlgrthm != _WEP104_))
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160930164424.GA4879%40life-desktop.
> For more options, visit https://groups.google.com/d/optout.
>

