X-GM-THRID: 6388519093491728384
X-Received: by 10.223.175.117 with SMTP id z108mr541687wrc.17.1487445191112;
        Sat, 18 Feb 2017 11:13:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.7.9 with SMTP id 9ls353114ljh.30.gmail; Sat, 18 Feb 2017
 11:13:10 -0800 (PST)
X-Received: by 10.46.78.9 with SMTP id c9mr1329323ljb.20.1487445190442;
        Sat, 18 Feb 2017 11:13:10 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id p185si423976wme.1.2017.02.18.11.13.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Feb 2017 11:13:10 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,174,1484002800"; 
   d="scan'208";a="261105250"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 18 Feb 2017 20:12:58 +0100
Date: Sat, 18 Feb 2017 20:12:57 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: simran singhal <singhalsimran0@gmail.com>
cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 6/6] staging: rtl8192e: Removed
 unnecessary parentheses
In-Reply-To: <20170218183648.GA2680@singhal-Inspiron-5558>
Message-ID: <alpine.DEB.2.20.1702182012240.2383@hadrien>
References: <20170218183648.GA2680@singhal-Inspiron-5558>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 19 Feb 2017, simran singhal wrote:

> Extra parentheses were causing checkpatch issues
> and were removed.
>
> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
> ---
>  drivers/staging/rtl8192e/rtl819x_HTProc.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/rtl8192e/rtl819x_HTProc.c b/drivers/staging/rtl8192e/rtl819x_HTProc.c
> index cded0f4..1391c91 100644
> --- a/drivers/staging/rtl8192e/rtl819x_HTProc.c
> +++ b/drivers/staging/rtl8192e/rtl819x_HTProc.c
> @@ -297,7 +297,7 @@ void HTConstructCapabilityElement(struct rtllib_device *ieee, u8 *posHTCap,
>  		u8	EWC11NHTCap[] = {0x00, 0x90, 0x4c, 0x33};
>
>  		memcpy(posHTCap, EWC11NHTCap, sizeof(EWC11NHTCap));
> -		pCapELE = (struct ht_capab_ele *)&(posHTCap[4]);
> +		pCapELE = (struct ht_capab_ele *)&posHTCap[4];
>  		*len = 30 + 2;
>  	} else {
>  		pCapELE = (struct ht_capab_ele *)posHTCap;
> @@ -663,13 +663,13 @@ void HTInitializeHTInfo(struct rtllib_device *ieee)
>  	pHTInfo->CurrentMPDUDensity = pHTInfo->MPDU_Density;
>  	pHTInfo->CurrentAMPDUFactor = pHTInfo->AMPDU_Factor;
>
> -	memset((void *)(&(pHTInfo->SelfHTCap)), 0,
> +	memset((void *)(&pHTInfo->SelfHTCap), 0,

You don't need the parens around the argument of the cast either.

julia

>  		sizeof(pHTInfo->SelfHTCap));
> -	memset((void *)(&(pHTInfo->SelfHTInfo)), 0,
> +	memset((void *)(&pHTInfo->SelfHTInfo), 0,
>  		sizeof(pHTInfo->SelfHTInfo));
> -	memset((void *)(&(pHTInfo->PeerHTCapBuf)), 0,
> +	memset((void *)(&pHTInfo->PeerHTCapBuf), 0,
>  		sizeof(pHTInfo->PeerHTCapBuf));
> -	memset((void *)(&(pHTInfo->PeerHTInfoBuf)), 0,
> +	memset((void *)(&pHTInfo->PeerHTInfoBuf), 0,
>  		sizeof(pHTInfo->PeerHTInfoBuf));
>
>  	pHTInfo->bSwBwInProgress = false;
> @@ -685,7 +685,7 @@ void HTInitializeHTInfo(struct rtllib_device *ieee)
>  	pHTInfo->IOTRaFunc = 0;
>
>  	{
> -		u8 *RegHTSuppRateSets = &(ieee->RegHTSuppRateSet[0]);
> +		u8 *RegHTSuppRateSets = &ieee->RegHTSuppRateSet[0];
>
>  		RegHTSuppRateSets[0] = 0xFF;
>  		RegHTSuppRateSets[1] = 0xFF;
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170218183648.GA2680%40singhal-Inspiron-5558.
> For more options, visit https://groups.google.com/d/optout.
>

