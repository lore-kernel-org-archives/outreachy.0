X-GM-THRID: 6471473522622332928
X-Received: by 10.28.184.78 with SMTP id i75mr1579270wmf.30.1506877769718;
        Sun, 01 Oct 2017 10:09:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.161.4 with SMTP id k4ls1605705wme.7.gmail; Sun, 01 Oct 2017
 10:09:28 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBQScm02pm7OJkB9BeDRPLcfBzefr1johVO/S6DySOqikrFNIH0h1Bpe3FxQcsQQIaOcYp4
X-Received: by 10.28.128.211 with SMTP id b202mr567974wmd.5.1506877768775;
        Sun, 01 Oct 2017 10:09:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506877768; cv=none;
        d=google.com; s=arc-20160816;
        b=S3wFB/ZsHHvc2a4QvxxkwEoUTJmEQHHav2XjcG5+Jp6+AXZ5bcCgim7y5mLCuX3vok
         8hpG8qtguAld1l5y0JW3PtB2VH6SrhXNEpoWgEKkE8GDaVli9YN8lYWqQPqtdEmkjlCb
         Tgz9q05UshchnoVgGGkXMPaBQA+309SuvZfqwTQ0WPoUJYBpzr6pNg43GxYrGICV0Syh
         +S1ExZ74Euz+xrEzMvODLRsKS41Av0VDj8pvzeCYMefLwqwz4eNbBOlAoao7m0PcU6+t
         62waf9Ri+ecoZAAYo9N3wU04dEZzsxvf3WeKRDWFoKhhvT8EngxHvo5E2Y04RprzzMuP
         VS+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=jhXqc2WdBRb3zK2lQHz2tykfjnDckPLN0UB6CVIKf5s=;
        b=dfZ4OahIq/lYsKN5UevMHWq3w4/7jL5llX2pY7UPLISkHFxCtfeHUgaYp8SoLxFb8V
         Vdu5ygZX9rkLMyODPQmk38Thuu2+t/PikiozljoiaBGIxYFtpIA5IbJBZBhnsGNVzlDc
         sqCNhu2qTkY7f3j6jlKK1kD2s4jwT546WjsW88xRqg0e0phAdlAZ58F9ZL/6dG6Y5nEy
         ZeAOc+ley4mtCQyOAkMHB3wOTK2eex+5A5UgUafj+tsw7xfQ5k9x5NiczrHO3Pzd6rIO
         /s4SuoKK3GRjKuUzrPUvhzu97009nOYBjIQHbqJn9lc71GnZmtG+RsDO2V20Y0/k1OWv
         SpHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id m74si662140wma.0.2017.10.01.10.09.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Oct 2017 10:09:28 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,465,1500933600"; 
   d="scan'208";a="293586119"
Received: from abo-88-122-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.122.88])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 01 Oct 2017 19:09:28 +0200
Date: Sun, 1 Oct 2017 19:09:28 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Mihaela Muraru <mihaela.muraru21@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8188eu: Use __func__
 instead of function name
In-Reply-To: <20170930203748.GA3466@domino-MS-16Y1>
Message-ID: <alpine.DEB.2.20.1710011906330.2904@hadrien>
References: <20170930203748.GA3466@domino-MS-16Y1>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 30 Sep 2017, Mihaela Muraru wrote:

> Use identifier __func__ instead of the name of the function.
>
> Issue found by checkpatch.pl.

It looks a bit odd to have %s().  The () doesn't seem very useful.

julia

>
> Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
>
> ---
> Changes in v2:
> 	- adding a new line to avoid going over 80 characters per line.
> ---
>  .../staging/rtl8188eu/hal/Hal8188ERateAdaptive.c   | 35 ++++++++++++----------
>  1 file changed, 20 insertions(+), 15 deletions(-)
>
> diff --git a/drivers/staging/rtl8188eu/hal/Hal8188ERateAdaptive.c b/drivers/staging/rtl8188eu/hal/Hal8188ERateAdaptive.c
> index 81bf494..c7ae332 100644
> --- a/drivers/staging/rtl8188eu/hal/Hal8188ERateAdaptive.c
> +++ b/drivers/staging/rtl8188eu/hal/Hal8188ERateAdaptive.c
> @@ -126,10 +126,10 @@ static int odm_RateDown_8188E(struct odm_dm_struct *dm_odm,
>  	u8 i;
>
>  	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE,
> -			ODM_DBG_TRACE, ("=====>odm_RateDown_8188E()\n"));
> +			ODM_DBG_TRACE, ("=====>%s()\n", __func__));
>  	if (!pRaInfo) {
>  		ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_LOUD,
> -				("odm_RateDown_8188E(): pRaInfo is NULL\n"));
> +				("%s(): pRaInfo is NULL\n", __func__));
>  		return -1;
>  	}
>  	RateID = pRaInfo->PreRate;
> @@ -179,7 +179,7 @@ static int odm_RateDown_8188E(struct odm_dm_struct *dm_odm,
>  	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_LOUD,
>  			("Rate down to RateID %d RateSGI %d\n", RateID, pRaInfo->RateSGI));
>  	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_TRACE,
> -			("<===== odm_RateDown_8188E()\n"));
> +			("<===== %s()\n", __func__));
>  	return 0;
>  }
>
> @@ -192,10 +192,10 @@ static int odm_RateUp_8188E(
>  	u8 i;
>
>  	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE,
> -			ODM_DBG_TRACE, ("=====>odm_RateUp_8188E()\n"));
> +			ODM_DBG_TRACE, ("=====>%s()\n", __func__));
>  	if (!pRaInfo) {
>  		ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_LOUD,
> -				("odm_RateUp_8188E(): pRaInfo is NULL\n"));
> +				("%s(): pRaInfo is NULL\n", __func__));
>  		return -1;
>  	}
>  	RateID = pRaInfo->PreRate;
> @@ -212,7 +212,7 @@ static int odm_RateUp_8188E(
>  	}
>  	odm_SetTxRPTTiming_8188E(dm_odm, pRaInfo, 0);
>  	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_LOUD,
> -			("odm_RateUp_8188E():Decrease RPT Timing\n"));
> +			("%s():Decrease RPT Timing\n", __func__));
>
>  	if (RateID < HighestRate) {
>  		for (i = RateID+1; i <= HighestRate; i++) {
> @@ -243,7 +243,7 @@ static int odm_RateUp_8188E(
>  			("RAWaitingCounter %d, RAPendingCounter %d",
>  			 pRaInfo->RAWaitingCounter, pRaInfo->RAPendingCounter));
>  	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE,
> -			ODM_DBG_TRACE, ("<===== odm_RateUp_8188E()\n"));
> +			ODM_DBG_TRACE, ("<===== %s()\n", __func__));
>  	return 0;
>  }
>
> @@ -265,7 +265,7 @@ static void odm_RateDecision_8188E(struct odm_dm_struct *dm_odm,
>  	static u8 DynamicTxRPTTimingCounter;
>
>  	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_TRACE,
> -			("=====>odm_RateDecision_8188E()\n"));
> +			("=====>%s()\n", __func__));
>
>  	if (pRaInfo->Active && (pRaInfo->TOTAL > 0)) { /*  STA used and data packet exits */
>  		if ((pRaInfo->RssiStaRA < (pRaInfo->PreRssiStaRA - 3)) ||
> @@ -344,7 +344,8 @@ static void odm_RateDecision_8188E(struct odm_dm_struct *dm_odm,
>
>  		odm_ResetRaCounter_8188E(pRaInfo);
>  	}
> -	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_TRACE, ("<===== odm_RateDecision_8188E()\n"));
> +	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE,
> +			ODM_DBG_TRACE, ("<===== %s()\n", __func__));
>  }
>
>  static int odm_ARFBRefresh_8188E(struct odm_dm_struct *dm_odm, struct odm_ra_info *pRaInfo)
> @@ -530,7 +531,8 @@ odm_RATxRPTTimerSetting(
>  		u16 minRptTime
>  )
>  {
> -	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_TRACE, (" =====>odm_RATxRPTTimerSetting()\n"));
> +	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE,
> +			ODM_DBG_TRACE, (" =====>%s()\n", __func__));
>
>  	if (dm_odm->CurrminRptTime != minRptTime) {
>  		ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_LOUD,
> @@ -538,7 +540,8 @@ odm_RATxRPTTimerSetting(
>  		rtw_rpt_timer_cfg_cmd(dm_odm->Adapter, minRptTime);
>  		dm_odm->CurrminRptTime = minRptTime;
>  	}
> -	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_TRACE, (" <===== odm_RATxRPTTimerSetting()\n"));
> +	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE,
> +			ODM_DBG_TRACE, (" <===== %s()\n", __func__));
>  }
>
>  void
> @@ -546,7 +549,8 @@ ODM_RASupport_Init(
>  		struct odm_dm_struct *dm_odm
>  	)
>  {
> -	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_LOUD, ("=====>ODM_RASupport_Init()\n"));
> +	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE,
> +			ODM_DBG_LOUD, ("=====>%s()\n", __func__));
>
>  	dm_odm->RaSupport88E = true;
>  }
> @@ -701,8 +705,8 @@ void ODM_RA_TxRPT2Handle_8188E(struct odm_dm_struct *dm_odm, u8 *TxRPT_Buf, u16
>  	u16 minRptTime = 0x927c;
>
>  	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_LOUD,
> -		     ("=====>ODM_RA_TxRPT2Handle_8188E(): valid0 =%d valid1 =%d BufferLength =%d\n",
> -		     macid_entry0, macid_entry1, TxRPT_Len));
> +		     ("=====>%s(): valid0 =%d valid1 =%d BufferLength =%d\n",
> +		     __func__, macid_entry0, macid_entry1, TxRPT_Len));
>
>  	ItemNum = TxRPT_Len >> 3;
>  	pBuffer = TxRPT_Buf;
> @@ -776,5 +780,6 @@ void ODM_RA_TxRPT2Handle_8188E(struct odm_dm_struct *dm_odm, u8 *TxRPT_Buf, u16
>
>  	odm_RATxRPTTimerSetting(dm_odm, minRptTime);
>
> -	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_LOUD, ("<===== ODM_RA_TxRPT2Handle_8188E()\n"));
> +	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE,
> +			ODM_DBG_LOUD, ("<===== %s()\n", __func__));
>  }
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170930203748.GA3466%40domino-MS-16Y1.
> For more options, visit https://groups.google.com/d/optout.
>

