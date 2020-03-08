X-GM-THRID: 6801919650078654464
X-Received: by 2002:ac2:55b7:: with SMTP id y23mr1322709lfg.140.1583695916856;
        Sun, 08 Mar 2020 12:31:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:8718:: with SMTP id m24ls1367143lji.3.gmail; Sun, 08 Mar
 2020 12:31:55 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsxlOmAlYFGVKsG+H6guBRPPsC9M5PHYr4CliIxoFLeCCXe1JrwJa7io0/FZZEMkU1wVKPM
X-Received: by 2002:a2e:86d0:: with SMTP id n16mr7711645ljj.117.1583695915353;
        Sun, 08 Mar 2020 12:31:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583695915; cv=none;
        d=google.com; s=arc-20160816;
        b=aR7H8TeMX+9y3u7YwZrdXqyEWiIkYf+uEqwIE9GRD7pBq6HQFGO4v8TvJkPnAs67no
         Zw/NyXSPi4EnTvUynXGFIebNTtsPq8naqekv+T97Yq16vidPy1jgI24VFeRiynVlvjH5
         CPnuTswGMiaQo3QsZ8sDps92eK+uuVw+eilhWhI6ae7MUBtplMt2I4dZk72hraprGJQj
         +AvHBGc0dnarWk+/qApxnRS2CtZTOtcEhvO75QwOUiJhYfh1RloYuv4N//tTh7EEU6Rf
         mdfshyX6nGo/ABwBPdglQak8h+Clm3fySUPeBZ9lhcaswjKYl5pAqfrla3b7Uc1KbstU
         QCCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=1Gjafcw2el5TWQLfiazV1c6ylkw/J4dr5mwX99DGTKg=;
        b=xjAhdfYRL5M4aW8sPPnrnGa0xqh8WBX3Sps6OtVC0WgSHbUSkoV16tePw6bi+w8nJY
         qisJzVP3SvzissoQJMNek1qh6MwGob45CfPJihMGQ5CklZAhlGI95MGTNsFDjmUrrZEu
         V1F9nnxjBUXGX/m+01bD35XMaeIjqdP+SrayiQsjOPgxu/+4bXcgA28eI5q7cGkglF3F
         p6CFsqGYm7pFFuAXJH/+lAFnc4cN+9ZqbmUaf7naPTAKK5uWWIhynYvV2TAt+lk6dW2W
         S7I/oNn0iPa4mya6t5xBzuLMu+pRbBO5IBkkEEKCYY2oW4h/g/unejVOAcCh/C0DqcE0
         kaFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id t3si93151lfq.5.2020.03.08.12.31.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 Mar 2020 12:31:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,530,1574118000"; 
   d="scan'208";a="439382032"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 08 Mar 2020 20:31:54 +0100
Date: Sun, 8 Mar 2020 20:31:53 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Shreeya Patel <shreeya.patel23498@gmail.com>
cc: Larry.Finger@lwfinger.net, gregkh@linuxfoundation.org, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com, sbrivio@redhat.com, 
    daniel.baluta@gmail.com, nramas@linux.microsoft.com, hverkuil@xs4all.nl
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: Add space around
 operator
In-Reply-To: <20200308192152.26403-1-shreeya.patel23498@gmail.com>
Message-ID: <alpine.DEB.2.21.2003082030310.2400@hadrien>
References: <20200308192152.26403-1-shreeya.patel23498@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

On Mon, 9 Mar 2020, Shreeya Patel wrote:

> Add space around & operator for improving the code
> readability.

I guess you found this with checkpatch.  If so, it could be nice to add
"Reported by checkpatch." to the log message.  OK otherwise.

Acked-by: Julia Lawall <julia.lawall@inria.fr>

>
> Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
> ---
>  drivers/staging/rtl8188eu/core/rtw_mlme.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme.c b/drivers/staging/rtl8188eu/core/rtw_mlme.c
> index e764436e120f..8da955e8343b 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_mlme.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_mlme.c
> @@ -924,7 +924,7 @@ static void rtw_joinbss_update_network(struct adapter *padapter, struct wlan_net
>  	/* update fw_state will clr _FW_UNDER_LINKING here indirectly */
>  	switch (pnetwork->network.InfrastructureMode) {
>  	case Ndis802_11Infrastructure:
> -		if (pmlmepriv->fw_state&WIFI_UNDER_WPS)
> +		if (pmlmepriv->fw_state & WIFI_UNDER_WPS)
>  			pmlmepriv->fw_state = WIFI_STATION_STATE|WIFI_UNDER_WPS;
>  		else
>  			pmlmepriv->fw_state = WIFI_STATION_STATE;
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200308192152.26403-1-shreeya.patel23498%40gmail.com.
>

