X-GM-THRID: 6471473522622332928
X-Received: by 10.223.183.19 with SMTP id l19mr1103401wre.6.1506765721693;
        Sat, 30 Sep 2017 03:02:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.47.194 with SMTP id v185ls1156822wmv.9.canary-gmail; Sat,
 30 Sep 2017 03:02:00 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QDwym6h/iFfMaCL8e4hKdgwBqz3l7MbAkkrv2cfQw9qMb4+MMFrN6hiOgAdXMcDh6Np1DyB
X-Received: by 10.28.226.139 with SMTP id z133mr8446wmg.2.1506765720705;
        Sat, 30 Sep 2017 03:02:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506765720; cv=none;
        d=google.com; s=arc-20160816;
        b=c9tyOFHCklyqZYJxAmcZGQXpQUCnFBZmCRUOI53OwWQlU1kbG5ySing4LIMxngj++/
         LewX/PY4et7803uxopRNrelLAV/YuwiqJCeqa+kxfSLzgIDbmXWfFgqXjTgKejBZv/DI
         3C3lh2Ok6D8fX+e4fUoYDL0LHY5tstyjZ+8lUttIR6bJuSluIGWhjvfsIGBRQ16Q6svt
         ruE4GXlHzfSjjDlEy257BvLRzGuVQ8y1wmtr8Ch4uO4+V+HGRofuF0bkyXHWpl14SoSK
         +oj4o+o9rLlpNXz4dZLwB4eBsgZfYbET9Paaso+xATVzaIoCEaO41H8nZ8Chiv2u3gFy
         6+rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=W9BxkqMsnSKkocwOUbxgA7n2GYSvUM8UV9TkNQRNOY8=;
        b=CpWr1hEn8pH2FBEl21u5E3sPRagN1eFEz45HlrDaRCPC2hxv3gxS569xXXxmHnfdpR
         nIV2Znv+xhqWb1ObiKyCuvipW8cYmuEljkdo6cs46c20EKp+4A/38NTGXtjXOj9fwMSL
         R6egyxMZIc9w8Fyv2bJp68RwA32g35uLnos9mZcAVTFbEougE4dZkgqnCCs5v681+Xi3
         00JfZum9x6cFjZdtP5valoyo4BA0ZzjnLdrgnzPaOUT40NBGbRBPAbIC5atA75V7+iSz
         SD4nXbxgucLkWdCHvnn/OTEnzOP7S7kTIfo3crUSZQlEkaX20EHqvWclf/E8zOiXKjWr
         00Rw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id m74si546168wma.0.2017.09.30.03.02.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Sep 2017 03:02:00 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,457,1500933600"; 
   d="scan'208";a="293461655"
Received: from abo-88-122-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.122.88])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 30 Sep 2017 12:01:49 +0200
Date: Sat, 30 Sep 2017 12:01:49 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Mihaela Muraru <mihaela.muraru21@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8188eu: Use __func__
 instead of function name
In-Reply-To: <20170930074222.GA6822@domino-MS-16Y1>
Message-ID: <alpine.DEB.2.20.1709301201180.1912@hadrien>
References: <20170930074222.GA6822@domino-MS-16Y1>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 30 Sep 2017, Mihaela Muraru wrote:

> Use identifier __func__ instead of the name of the function.

There are some cases where adding a newline in your added code could avoid
going over 80 characters.

julia

>
> Issue found by checkpatch.pl.
>
> Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
> ---
>  .../staging/rtl8188eu/hal/Hal8188ERateAdaptive.c   | 34 +++++++++++-----------
>  1 file changed, 17 insertions(+), 17 deletions(-)
>
> diff --git a/drivers/staging/rtl8188eu/hal/Hal8188ERateAdaptive.c b/drivers/staging/rtl8188eu/hal/Hal8188ERateAdaptive.c
> index 81bf494..d125494 100644
> --- a/drivers/staging/rtl8188eu/hal/Hal8188ERateAdaptive.c
> +++ b/drivers/staging/rtl8188eu/hal/Hal8188ERateAdaptive.c
> @@ -126,10 +126,10 @@ static int odm_RateDown_8188E(struct odm_dm_struct *dm_odm,
>  	u8 i;
>
>  	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE,
> -			ODM_DBG_TRACE, ("=====>odm_RateDown_8188E()\n"));
> +			ODM_DBG_TRACE, ("=====>%s())\n", __func__));
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
> +			("<===== %s())\n", __func__));
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
> @@ -344,7 +344,7 @@ static void odm_RateDecision_8188E(struct odm_dm_struct *dm_odm,
>
>  		odm_ResetRaCounter_8188E(pRaInfo);
>  	}
> -	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_TRACE, ("<===== odm_RateDecision_8188E()\n"));
> +	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_TRACE, ("<===== %s()\n", __func__));
>  }
>
>  static int odm_ARFBRefresh_8188E(struct odm_dm_struct *dm_odm, struct odm_ra_info *pRaInfo)
> @@ -530,7 +530,7 @@ odm_RATxRPTTimerSetting(
>  		u16 minRptTime
>  )
>  {
> -	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_TRACE, (" =====>odm_RATxRPTTimerSetting()\n"));
> +	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_TRACE, (" =====>%s()\n", __func__));
>
>  	if (dm_odm->CurrminRptTime != minRptTime) {
>  		ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_LOUD,
> @@ -538,7 +538,7 @@ odm_RATxRPTTimerSetting(
>  		rtw_rpt_timer_cfg_cmd(dm_odm->Adapter, minRptTime);
>  		dm_odm->CurrminRptTime = minRptTime;
>  	}
> -	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_TRACE, (" <===== odm_RATxRPTTimerSetting()\n"));
> +	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_TRACE, (" <===== %s()\n", __func__));
>  }
>
>  void
> @@ -546,7 +546,7 @@ ODM_RASupport_Init(
>  		struct odm_dm_struct *dm_odm
>  	)
>  {
> -	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_LOUD, ("=====>ODM_RASupport_Init()\n"));
> +	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_LOUD, ("=====>%s()\n", __func__));
>
>  	dm_odm->RaSupport88E = true;
>  }
> @@ -570,8 +570,8 @@ int ODM_RAInfo_Init(struct odm_dm_struct *dm_odm, u8 macid)
>  	}
>
>  	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_LOUD,
> -		     ("ODM_RAInfo_Init(): WirelessMode:0x%08x , max_raid_idx:0x%02x\n",
> -		     WirelessMode, max_rate_idx));
> +		     ("%s(): WirelessMode:0x%08x , max_raid_idx:0x%02x\n",
> +		     __func__, WirelessMode, max_rate_idx));
>
>  	pRaInfo->DecisionRate = max_rate_idx;
>  	pRaInfo->PreRate = max_rate_idx;
> @@ -701,8 +701,8 @@ void ODM_RA_TxRPT2Handle_8188E(struct odm_dm_struct *dm_odm, u8 *TxRPT_Buf, u16
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
> @@ -776,5 +776,5 @@ void ODM_RA_TxRPT2Handle_8188E(struct odm_dm_struct *dm_odm, u8 *TxRPT_Buf, u16
>
>  	odm_RATxRPTTimerSetting(dm_odm, minRptTime);
>
> -	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_LOUD, ("<===== ODM_RA_TxRPT2Handle_8188E()\n"));
> +	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_LOUD, ("<===== %s()\n", __func__));
>  }
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170930074222.GA6822%40domino-MS-16Y1.
> For more options, visit https://groups.google.com/d/optout.
>

