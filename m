X-GM-THRID: 6674267883353145344
X-Received: by 2002:a1c:9d49:: with SMTP id g70mr787992wme.6.1554020104777;
        Sun, 31 Mar 2019 01:15:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:4e14:: with SMTP id g20ls874949wmh.1.gmail; Sun, 31 Mar
 2019 01:15:04 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwTpVyiVCG2fNHbfeSv2BDumuCDzId1pABzGk091F4phiuaYHppqbbd68AluyLlRGTyCBxl
X-Received: by 2002:a1c:2044:: with SMTP id g65mr845568wmg.8.1554020103961;
        Sun, 31 Mar 2019 01:15:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554020103; cv=none;
        d=google.com; s=arc-20160816;
        b=Hcuo1Ua11ix3IFCz39Xu8egWG9++gCdBxVbIxVcWO9kuW1HNGN10cKhlV2XKEgXUHx
         ggfHYjeWS6WdvHWazqVdImpVf8+ta/OLtNDoqNohdjwCjbvA7F/6JrgcteDUnq/ECiQM
         7OYHvITxN63cj3PZGMq5W5T315WmN80v4Yu4BsO3K6ydDHMcysy8G8EoaDplBlcMIa3Q
         4IRY+rZsycPzLXLSgzDKuBbR/TnxEz78AirLTjXSY7VA44baTD0JS2cSGc/hB31Cyqks
         ZKKIGnhTuW4uCwvr/fY/d18ohtBLcWDROfYpEufK9R2go6hmv7Yl8R/si7pI8N1DGv48
         +/cQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=d737IE9+y2e9F0ULTsgUXYj+1CbHf1nznM9yvjxymGQ=;
        b=GRF67XgQEP1AMbA7rplwBBkJJkMxjWxDHwxgio9DP4y71q3hGqwxv/TI4JvkfbzfQe
         fVyC/COZAWSbowTCFHbcDXnSFDxlCvRNiDTgqEeesoP4f2HlTitxK5k8rtTVO9pxRwoy
         QNu7u6uWNBp1NZCrSUpHKjbbZAYm6PfGHsUOF68gd6ZlqISpOhNvnd+E+mYLaVNkNEuX
         xCo6gQarOlvloU92qLWuBueEuV1vBYr+7sjNjBr4ea7wqjCNswHNkQ76MTkGzXL6gqph
         YAc4EiDu7jL6snFtedHT4C3PuKcx3WHt3T39pBpArphTUxshEKnF52fpEM71tALyJ6Su
         NFhQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id p14si195242wmh.2.2019.03.31.01.15.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 01:15:03 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,291,1549926000"; 
   d="scan'208";a="376505166"
Received: from abo-75-106-68.mrs.modulonet.fr (HELO hadrien) ([85.68.106.75])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 31 Mar 2019 10:15:03 +0200
Date: Sun, 31 Mar 2019 10:15:03 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Himadri Pandya <himadri18.07@gmail.com>
cc: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3 6/7] staging: rtl8712: remove
 unnecessary NULL check
In-Reply-To: <20190331022155.68569-7-himadri18.07@gmail.com>
Message-ID: <alpine.DEB.2.21.1903311013430.2578@hadrien>
References: <20190330192742.65250-1-himadri18.07@gmail.com> <20190331022155.68569-1-himadri18.07@gmail.com> <20190331022155.68569-7-himadri18.07@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 31 Mar 2019, Himadri Pandya wrote:

> Remove unnecessary NULL check for wlan_network *pnetwork because
> container_of will not return NULL in this usage.

Actually, it is possible that it can, because of the obscure reason that
the list field is at the top of the structure.  You can see if it is
possible and useful to make the same check without the container_of call.

julia


>
> Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
> ---
>  drivers/staging/rtl8712/rtl871x_mlme.c | 2 --
>  1 file changed, 2 deletions(-)
>
> diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
> index 1a15c45aa83b..be44c6b2819b 100644
> --- a/drivers/staging/rtl8712/rtl871x_mlme.c
> +++ b/drivers/staging/rtl8712/rtl871x_mlme.c
> @@ -1119,8 +1119,6 @@ int r8712_select_and_join_from_scan(struct mlme_priv *pmlmepriv)
>  		}
>  		pnetwork = container_of(pmlmepriv->pscanned,
>  					struct wlan_network, list);
> -		if (pnetwork == NULL)
> -			return _FAIL;
>  		pmlmepriv->pscanned = pmlmepriv->pscanned->next;
>  		if (pmlmepriv->assoc_by_bssid) {
>  			dst_ssid = pnetwork->network.MacAddress;
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190331022155.68569-7-himadri18.07%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

