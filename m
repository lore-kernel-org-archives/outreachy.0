X-GM-THRID: 6744906774126526464
X-Received: by 2002:a19:8c14:: with SMTP id o20mr18862091lfd.158.1570513610360;
        Mon, 07 Oct 2019 22:46:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:9d9a:: with SMTP id c26ls291782ljj.9.gmail; Mon, 07 Oct
 2019 22:46:49 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwB1c9LeT9lMdC2CUf1nKHS2bXayPvuo4JQyOdXkEqYDnuzoku6XJ4gVrJkL020kkoapf+i
X-Received: by 2002:a2e:96cd:: with SMTP id d13mr20939066ljj.89.1570513609250;
        Mon, 07 Oct 2019 22:46:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570513609; cv=none;
        d=google.com; s=arc-20160816;
        b=uz19e9K/ZHRQTrtvp0dfu0GirmUtbJWySZ9IC2OBa7nRsfgMNoHBVNSsRGqnN/EuoT
         2175/TLKMTQwY5KdZ1R7SjLlVbajwSkGNYeT/xocL8zulhRlgrHAFW4epsI+e/1wRiYW
         unt/qojGsqWe3d+qkdEI+JovKPA11hunv+VT9pe+Jahw2TJCsNikQP5BTOofHhdP1Xvl
         ptfulPKQXKBY5ttIi9JNE0msvD1ncTGmDdstTRMcsDLFnGkp5R2Y8aIB3pi5v8dIqCZ/
         tPLWe9p3f8sIn24wSO5Rq7WR97LnfiWs5w6aqR4WAv/48l/TLs5WOfnf71CWKtViXgYj
         hg0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=T++K8FfVdbypIAWm068fEp7EWGh7aKNiSCs54KPyFgo=;
        b=qLR+WXat2grHoWLFo2vm9N6pG6xgI/98xj3EPASYYyzlVbLfA9LcYRNuVxHg2uQWjj
         qWeAN6nwW/aFDLFWCbYbMas1WcQo5Uj9Se+JQUoOFwXIVA2GnnmuGNPSjjM9dY2kJTPG
         hWA682RKuXHHGosLJV63lLn38XNrBvvEmcsQdGTOZSt+ow0FBFfJ0rVIc29Sg+tQXDA0
         KofnAHyo9Nfh9dD/crO1IuUwsi+S7L2xBnicnSyiQ5WrdUUwJBqadvG7/Xd4FKhvaQyZ
         FkpO5DXm3MmcmoNkYOrJq6EtNSObtx/2xijTK2+OOiaWmDh5QW2iX21pWVRgf/oXKvpb
         6H1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id z9si1656074ljj.4.2019.10.07.22.46.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Oct 2019 22:46:49 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.67,269,1566856800"; 
   d="scan'208";a="321940512"
Received: from 81-65-53-202.rev.numericable.fr (HELO hadrien) ([81.65.53.202])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 08 Oct 2019 07:46:48 +0200
Date: Tue, 8 Oct 2019 07:46:47 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: "Javier F. Arias" <jarias.linux@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8723bs: Replace string
 with identifier
In-Reply-To: <20191008024316.rqpvni26uqoulru3@gmail.com>
Message-ID: <alpine.DEB.2.21.1910080746110.2638@hadrien>
References: <20191008024316.rqpvni26uqoulru3@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 7 Oct 2019, Javier F. Arias wrote:

> Replace the hardcoded function name with it's predefined identifier.
> Issue found by checkpatch.
>
> Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
> ---
> Changes in v2:
>   - Fixed a typo in the commit message.


Sorry, but there's still another one: it's = it is, not the possessive
version of it.  So "its".

julia
>
>  drivers/staging/rtl8723bs/core/rtw_xmit.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
> index 6f7a63f53d4f..fef9f1f9ba2c 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_xmit.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c
> @@ -2310,7 +2310,7 @@ s32 rtw_xmit(struct adapter *padapter, _pkt **ppkt)
>
>  	if (!pxmitframe) {
>  		drop_cnt++;
> -		RT_TRACE(_module_xmit_osdep_c_, _drv_err_, ("rtw_xmit: no more pxmitframe\n"));
> +		RT_TRACE(_module_xmit_osdep_c_, _drv_err_, ("%s: no more pxmitframe\n", __func__));
>  		DBG_COUNTER(padapter->tx_logs.core_tx_err_pxmitframe);
>  		return -1;
>  	}
> @@ -2318,7 +2318,7 @@ s32 rtw_xmit(struct adapter *padapter, _pkt **ppkt)
>  	res = update_attrib(padapter, *ppkt, &pxmitframe->attrib);
>
>  	if (res == _FAIL) {
> -		RT_TRACE(_module_xmit_osdep_c_, _drv_err_, ("rtw_xmit: update attrib fail\n"));
> +		RT_TRACE(_module_xmit_osdep_c_, _drv_err_, ("%s: update attrib fail\n", __func__));
>  		#ifdef DBG_TX_DROP_FRAME
>  		DBG_871X("DBG_TX_DROP_FRAME %s update attrib fail\n", __func__);
>  		#endif
> --
> 2.20.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191008024316.rqpvni26uqoulru3%40gmail.com.
>

