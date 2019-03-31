X-GM-THRID: 6674450234072891392
X-Received: by 2002:a1c:6708:: with SMTP id b8mr851368wmc.25.1554022998672;
        Sun, 31 Mar 2019 02:03:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:fb11:: with SMTP id c17ls434722wrr.13.gmail; Sun, 31 Mar
 2019 02:03:17 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwH+lbGcJrkRz67SMp7J+3Kk3Bc3cSUEAZ9OoVYnghY+jT9TXTCviwpVg6NSnt/6q9boC8h
X-Received: by 2002:adf:fc49:: with SMTP id e9mr1536717wrs.29.1554022997805;
        Sun, 31 Mar 2019 02:03:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554022997; cv=none;
        d=google.com; s=arc-20160816;
        b=dnia07rfQxwq2kWExObGM00rBaOw5vr0wMiWhM4creq3NwsNyVWDftks90gCS5G3qG
         r31YXnVpa4BskR/PlvpoTARuWJpPLoFN5qsu9JEcXeR2UTVvOLpBo+cnAYcj4lJrWnrL
         Kv8Q1Vlkc+dTfJofpF3oe3BQnkQ1hn+FmnehF3823mI6mtunfuj/zcK0iSpeOQ7bsvZd
         QX8oHA3K8SUSg2/BJl9lBuvuO3/2xMzx4dGWDQ59XNMEeWjJsMOyN7LA9FtN9QP5wb9m
         9QnRlsPa1H4N2Xayo4WQW25Rham9KxhhK4voNHmr4yKNBUiY6glG8LgqSSb+Z297rgrb
         HlFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=BXLFpAlHmHhb8765cUtUm8AASabRXN+3ZL+ECtOlHOE=;
        b=hKa+0bd1BQw0Nt6VO9ePDQTQUUvJM6L6JKFVfIko0NBIoOTnWwSQtvMaEDD0bB/TRT
         SY3CgjJ6AYpoAp8UnIJhYN/LYoLXyV4vUjevfKKD2vwaltB8plaZu+mO87pX5Zer7/4Z
         4vTrc3VJfnpSA+DK8wyxZFjrY6ujTyoK8DT2hqUiljujFvrksvB7auEEYbeGN28X1G7/
         RUUtL9G/eMhdAG4BD43jFugsJFnlsZzPEbm01sNl2MzBRvXcz7Clu+pd7vg4eUyIN0hK
         uk3o3d/O0eDwY55hCZcYHBhEvfA6j0RGy3IAH0zlJI2qmesFrLknfaICtOpuXgfH/Pt5
         iiuA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id k15si363030wrq.1.2019.03.31.02.03.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 02:03:17 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,292,1549926000"; 
   d="scan'208";a="376507904"
Received: from abo-75-106-68.mrs.modulonet.fr (HELO hadrien) ([85.68.106.75])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 31 Mar 2019 11:03:17 +0200
Date: Sun, 31 Mar 2019 11:03:17 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 8/9] staging: rtl8723bs: os_dep:
 ioctl_linux.c: Avoid CamelCase "pPMK"
In-Reply-To: <2494c4c09f776e7c9b4c80bbeea8d8973a5b69e4.1554016131.git.payal.s.kshirsagar.98@gmail.com>
Message-ID: <alpine.DEB.2.21.1903311102330.2578@hadrien>
References: <cover.1554016131.git.payal.s.kshirsagar.98@gmail.com> <2494c4c09f776e7c9b4c80bbeea8d8973a5b69e4.1554016131.git.payal.s.kshirsagar.98@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 31 Mar 2019, Payal Kshirsagar wrote:

> Change variable name "pPMK" to "PMK"
> to avoid camelcase style issue.

The p is actually hungarian notation.

It would be good to lowercase the variable as well (pmk).  Normally only
macros are in all upper case.

julia

>
> Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> ---
>  drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> index 9f085a3..fbde2eb 100644
> --- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> +++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> @@ -946,7 +946,7 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
>  	u8 j, bl_inserted = false;
>  	int ret = false;
>  	struct security_priv *psecuritypriv = &padapter->securitypriv;
> -	struct iw_pmksa *pPMK = (struct iw_pmksa *)extra;
> +	struct iw_pmksa *PMK = (struct iw_pmksa *)extra;
>  	u8 strZeroMacAddress[ETH_ALEN] = { 0x00 };
>  	u8 strIssueBssid[ETH_ALEN] = { 0x00 };
>
> @@ -957,8 +957,8 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
>  	If cmd is IW_PMKSA_REMOVE, it means the wpa_supplicant wants to remove a PMKID/BSSID from driver.
>  	*/
>
> -	memcpy(strIssueBssid, pPMK->bssid.sa_data, ETH_ALEN);
> -	if (pPMK->cmd == IW_PMKSA_ADD) {
> +	memcpy(strIssueBssid, PMK->bssid.sa_data, ETH_ALEN);
> +	if (PMK->cmd == IW_PMKSA_ADD) {
>  		DBG_871X("[rtw_wx_set_pmkid] IW_PMKSA_ADD!\n");
>  		if (!memcmp(strIssueBssid, strZeroMacAddress, ETH_ALEN))
>  			return ret;
> @@ -972,7 +972,7 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
>  			if (!memcmp(psecuritypriv->PMKIDList[j].Bssid, strIssueBssid, ETH_ALEN)) {
>  				/*  BSSID is matched, the same AP => rewrite with new PMKID. */
>  				DBG_871X("[rtw_wx_set_pmkid] BSSID exists in the PMKList.\n");
> -				memcpy(psecuritypriv->PMKIDList[j].PMKID, pPMK->pmkid, IW_PMKID_LEN);
> +				memcpy(psecuritypriv->PMKIDList[j].PMKID, PMK->pmkid, IW_PMKID_LEN);
>  				psecuritypriv->PMKIDList[j].bUsed = true;
>  				psecuritypriv->PMKIDIndex = j+1;
>  				bl_inserted = true;
> @@ -985,13 +985,13 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
>  			DBG_871X("[rtw_wx_set_pmkid] Use the new entry index = %d for this PMKID.\n",
>  				  psecuritypriv->PMKIDIndex);
>  			memcpy(psecuritypriv->PMKIDList[psecuritypriv->PMKIDIndex].Bssid, strIssueBssid, ETH_ALEN);
> -			memcpy(psecuritypriv->PMKIDList[psecuritypriv->PMKIDIndex].PMKID, pPMK->pmkid, IW_PMKID_LEN);
> +			memcpy(psecuritypriv->PMKIDList[psecuritypriv->PMKIDIndex].PMKID, PMK->pmkid, IW_PMKID_LEN);
>  			psecuritypriv->PMKIDList[psecuritypriv->PMKIDIndex].bUsed = true;
>  			psecuritypriv->PMKIDIndex++;
>  			if (psecuritypriv->PMKIDIndex == 16)
>  				psecuritypriv->PMKIDIndex = 0;
>  		}
> -	} else if (pPMK->cmd == IW_PMKSA_REMOVE) {
> +	} else if (PMK->cmd == IW_PMKSA_REMOVE) {
>  		DBG_871X("[rtw_wx_set_pmkid] IW_PMKSA_REMOVE!\n");
>  		ret = true;
>  		for (j = 0 ; j<NUM_PMKID_CACHE; j++) {
> @@ -1002,7 +1002,7 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
>  				break;
>  			}
>  		}
> -	} else if (pPMK->cmd == IW_PMKSA_FLUSH) {
> +	} else if (PMK->cmd == IW_PMKSA_FLUSH) {
>  		DBG_871X("[rtw_wx_set_pmkid] IW_PMKSA_FLUSH!\n");
>  		memset(&psecuritypriv->PMKIDList[0], 0x00, sizeof(RT_PMKID_LIST) * NUM_PMKID_CACHE);
>  		psecuritypriv->PMKIDIndex = 0;
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/2494c4c09f776e7c9b4c80bbeea8d8973a5b69e4.1554016131.git.payal.s.kshirsagar.98%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

