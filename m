X-GM-THRID: 6810562968301862912
X-Received: by 2002:a17:906:114a:: with SMTP id i10mr8572924eja.86.1585742825648;
        Wed, 01 Apr 2020 05:07:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:8ad5:: with SMTP id k21ls16554003edk.0.gmail; Wed, 01
 Apr 2020 05:07:04 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vutbqrDXFn1qSxI55dtBv9jCfzOTF7z80F6Btahq5T5bIpFfCQXJ9wB2d/gs7BSLvMvK9Ze
X-Received: by 2002:a05:6402:1767:: with SMTP id da7mr21050902edb.150.1585742824073;
        Wed, 01 Apr 2020 05:07:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585742824; cv=none;
        d=google.com; s=arc-20160816;
        b=dFbO4L7XY/zQAZ/axGRBsG91BsVH8edo8+ipH1t9uFhP7PFQ/wClvTrLR4RHOCkYd5
         b4zuez7HSJ5Msl7sDb7giqHl5CsG5eBwV4UNqqK4ROaUGecPjlvpd4Ev8Bfuc0/ZGny3
         ALF5mdpCq9XGEyhAWpJVFEUvprCuQ55RHYNPox6DRBK8xiRBlwJ8qDuSQWTkcE7ht08/
         2FnIF1FJhx6tizmqfMXYrcXtkXUoAz+tgMcpF3NXgM5y4opqVB810pm8e0mhcxfGKoBj
         bUXeQbGIvSiSPNxJwkg2NP+zf+d7jiX8Bso/Z8cFTflCFi1QZF+SQ+eLRetKesJosQJi
         PsvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=XBBEr9PJONwB5+Q+R0f7Q45c9LQx+rVTZMuNAJu2MUs=;
        b=E6dS1Ksdcpid4p6tcRmT0YUB3ztbBNfbvYn1wgeDoHClx+uAaDRmQ48I/t7eL/+Rb0
         gouZNH1w6WXdAALHEzpFDNYLG1OeeQnr8cRgNusozOsx5x3n/VeVulXt7oRg0ylY7xJY
         R5AoE79fSUh4fnMjct6Ot8+GHatOKIFEuLhduiCl5yPzfnEIzsS/8xteXMmDXBLfTA4q
         hgg/G04/4NLfpgP8vEm+ocWqwm945Fe84VzofOmj3Mv5KUFO7sjTSzGzwz4qusAHru5Q
         85m/dOid585kYD+Plj5kr9O9JlPBh3FiGpJu9CWSJ++DgCF4SZObD0EQPOELGo9b4zLB
         U7rg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id f2si101371edm.1.2020.04.01.05.07.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Apr 2020 05:07:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.72,331,1580770800"; 
   d="scan'208";a="443330334"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 01 Apr 2020 14:07:03 +0200
Date: Wed, 1 Apr 2020 14:07:03 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Briana Oursler <briana.oursler@gmail.com>
cc: sbrivio@redhat.com, gregkh@linuxfoundation.org, forest@alittletooquiet.net, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Patch v3 3/3] Staging: vt6655: Remove CARDbRadioPowerOn
 definition.
In-Reply-To: <e64c02aadd0b846604c755989b39f374161a87e0.1585707212.git.briana.oursler@gmail.com>
Message-ID: <alpine.DEB.2.21.2004011406200.10695@hadrien>
References: <cover.1585707212.git.briana.oursler@gmail.com> <e64c02aadd0b846604c755989b39f374161a87e0.1585707212.git.briana.oursler@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 31 Mar 2020, Briana Oursler wrote:

> Remove function CARDbRadioPowerOn that is never called, along with
> comments related to it.

Did you check whether any of the functions that it calls are only called
from here?

julia

>
> Signed-off-by: Briana Oursler <briana.oursler@gmail.com>
> ---
>  drivers/staging/vt6655/card.c | 55 -----------------------------------
>  drivers/staging/vt6655/card.h |  1 -
>  2 files changed, 56 deletions(-)
>
> diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
> index 222b6ef61d9c..67b23ab0b0d1 100644
> --- a/drivers/staging/vt6655/card.c
> +++ b/drivers/staging/vt6655/card.c
> @@ -17,7 +17,6 @@
>   *      CARDvSetFirstNextTBTT - Set NIC Beacon time
>   *      CARDvUpdateNextTBTT - Sync. NIC Beacon time
>   *      CARDbRadioPowerOff - Turn Off NIC Radio Power
> - *      CARDbRadioPowerOn - Turn On NIC Radio Power
>   *
>   * Revision History:
>   *      06-10-2003 Bryan YC Fan:  Re-write codes to support VT3253 spec.
> @@ -437,60 +436,6 @@ void CARDbRadioPowerOff(struct vnt_private *priv)
>  		      LED_ACTSET);  /* LED issue */
>  }
>
> -/*
> - * Description: Turn on Radio power
> - *
> - * Parameters:
> - *  In:
> - *      priv         - The adapter to be turned on
> - *  Out:
> - *      none
> - *
> - * Return Value: true if success; otherwise false
> - */
> -bool CARDbRadioPowerOn(struct vnt_private *priv)
> -{
> -	bool bResult = true;
> -
> -	pr_debug("chester power on\n");
> -	if (priv->bRadioControlOff) {
> -		if (priv->bHWRadioOff)
> -			pr_debug("chester bHWRadioOff\n");
> -		if (priv->bRadioControlOff)
> -			pr_debug("chester bRadioControlOff\n");
> -		return false; }
> -
> -	if (!priv->bRadioOff) {
> -		pr_debug("chester pbRadioOff\n");
> -		return true; }
> -
> -	BBvExitDeepSleep(priv, priv->byLocalID);
> -
> -	MACvRegBitsOn(priv->PortOffset, MAC_REG_HOSTCR, HOSTCR_RXON);
> -
> -	switch (priv->byRFType) {
> -	case RF_RFMD2959:
> -		MACvWordRegBitsOn(priv->PortOffset, MAC_REG_SOFTPWRCTL,
> -				  SOFTPWRCTL_TXPEINV);
> -		MACvWordRegBitsOff(priv->PortOffset, MAC_REG_SOFTPWRCTL,
> -				   SOFTPWRCTL_SWPE1);
> -		break;
> -
> -	case RF_AIROHA:
> -	case RF_AL2230S:
> -	case RF_AIROHA7230:
> -		MACvWordRegBitsOn(priv->PortOffset, MAC_REG_SOFTPWRCTL,
> -				  (SOFTPWRCTL_SWPE2 | SOFTPWRCTL_SWPE3));
> -		break;
> -	}
> -
> -	priv->bRadioOff = false;
> -	pr_debug("chester power on\n");
> -	MACvRegBitsOff(priv->PortOffset, MAC_REG_GPIOCTL0,
> -		       LED_ACTSET); /* LED issue */
> -	return bResult;
> -}
> -
>  void CARDvSafeResetTx(struct vnt_private *priv)
>  {
>  	unsigned int uu;
> diff --git a/drivers/staging/vt6655/card.h b/drivers/staging/vt6655/card.h
> index 32405027e269..568a2ddd6588 100644
> --- a/drivers/staging/vt6655/card.h
> +++ b/drivers/staging/vt6655/card.h
> @@ -55,7 +55,6 @@ unsigned char CARDbyGetPktType(struct vnt_private *priv);
>  void CARDvSafeResetTx(struct vnt_private *priv);
>  void CARDvSafeResetRx(struct vnt_private *priv);
>  void CARDbRadioPowerOff(struct vnt_private *priv);
> -bool CARDbRadioPowerOn(struct vnt_private *priv);
>  bool CARDbSetPhyParameter(struct vnt_private *priv, u8 bb_type);
>  bool CARDbUpdateTSF(struct vnt_private *priv, unsigned char byRxRate,
>  		    u64 qwBSSTimestamp);
> --
> 2.24.1
>
>

