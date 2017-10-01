X-GM-THRID: 6471473522622332928
X-Received: by 10.28.142.201 with SMTP id q192mr1459570wmd.23.1506889176049;
        Sun, 01 Oct 2017 13:19:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.47.194 with SMTP id v185ls1685657wmv.9.canary-gmail; Sun,
 01 Oct 2017 13:19:35 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBt+KeVX9EsYSCSy3t+HC77PGFL1uOVUDHOZch4ubfdXueJM9pujrx+TGz/oKXdvYNYc9uw
X-Received: by 10.28.156.145 with SMTP id f139mr345005wme.10.1506889175179;
        Sun, 01 Oct 2017 13:19:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506889175; cv=none;
        d=google.com; s=arc-20160816;
        b=VyJpFDUdF2echuyuhVYwwP224ubnuFPjatGZ6o9blSyssI2W08JuvhyCO3YtVQZcL5
         sGD80w6uwjYgVmlVhvETwyCGDI0NC3k+LF/iEUplz17sStxEWUENSvLNp1vJ1uxop81W
         0ObrD8efavnym+i8Q6K5oW0eULkY0UZcDnqiKnjPHGBmJEgKVvfoM2ldUhHZN202DpjS
         2IP16S8AUUvQVLoGbgRu6az4VNrpq6w4uLriwdij31syucV8kV+unR08u9nlA7dxLkN1
         TOrcSa3Dtha7Rx5x9aLECoyJFqrQ0LkLbR9oEcPMQX55iQGd1Er0Y4eJ9yKa5E5SqVW+
         IJbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=0BRAaqMpdjtbsONOCOugkJfWDijpJ/DU9jF0BM1c2wo=;
        b=WE5IAq/KsapBjGBmhUCDDEX+jk+WLlS14QTSV6kT9E0P3mB92di04Nv7Uk5msPRWBv
         gTLawTmsmcbDMnL0qbrbsARbCNiaGrLevZDrYihhKxHreKiIT2i1LBDH1sBGuIjX/Cw7
         AdJCaCkMkRFY8sDSXPVQ5ZZs4n3yKGY6MvfMoqoOh+O8EvDna6xPiBnDt/0Q3j+FgPkR
         6EZE3qJ0TmWuXkzPaUORJ4Eod64Wdxny1maDouth7UV/bD4uEXwHGefS58UxZnhf49Be
         WWnpLz9ERkC1gOUInLNCbGsmg/PqfnvTJsB3ix09zmewee+82H14jc6nA0kB5XEN66/D
         hKWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 74si27052wme.2.2017.10.01.13.19.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Oct 2017 13:19:35 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,465,1500933600"; 
   d="scan'208";a="239298153"
Received: from abo-88-122-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.122.88])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 01 Oct 2017 22:19:34 +0200
Date: Sun, 1 Oct 2017 22:19:34 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: outreachy-kernel@googlegroups.com
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8188eu: Use __func__
 instead of function name
In-Reply-To: <20171001200731.GA2684@domino-MS-16Y1>
Message-ID: <alpine.DEB.2.20.1710012218100.2904@hadrien>
References: <20170930203748.GA3466@domino-MS-16Y1> <alpine.DEB.2.20.1710011906330.2904@hadrien> <20171001200731.GA2684@domino-MS-16Y1>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 1 Oct 2017, Julia Lawall wrote:

> On Sun, Oct 01, 2017 at 07:09:28PM +0200, Julia Lawall wrote:
> >
> >
> > On Sat, 30 Sep 2017, Mihaela Muraru wrote:
> >
> > > Use identifier __func__ instead of the name of the function.
> > >
> > > Issue found by checkpatch.pl.
> >
> > It looks a bit odd to have %s().  The () doesn't seem very useful.
> >
> > julia
> >
> I think that the () it is useful,because the __func__ will print only
> the name of the function without (), so we will not know for sure that what we
> print it is a function or it is just a message.
>
> I will think that if I remove () it will create a confusion, what is
> your opinion?

I think the ======> makes it clear enough.

julia

>
> Thank you,
>
> Mihaela
> > > Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
> > >
> > > ---
> > > Changes in v2:
> > > 	- adding a new line to avoid going over 80 characters per line.
> > > ---
> > >  .../staging/rtl8188eu/hal/Hal8188ERateAdaptive.c   | 35 ++++++++++++----------
> > >  1 file changed, 20 insertions(+), 15 deletions(-)
> > >
> > > diff --git a/drivers/staging/rtl8188eu/hal/Hal8188ERateAdaptive.c b/drivers/staging/rtl8188eu/hal/Hal8188ERateAdaptive.c
> > > index 81bf494..c7ae332 100644
> > > --- a/drivers/staging/rtl8188eu/hal/Hal8188ERateAdaptive.c
> > > +++ b/drivers/staging/rtl8188eu/hal/Hal8188ERateAdaptive.c
> > > @@ -126,10 +126,10 @@ static int odm_RateDown_8188E(struct odm_dm_struct *dm_odm,
> > >  	u8 i;
> > >
> > >  	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE,
> > > -			ODM_DBG_TRACE, ("=====>odm_RateDown_8188E()\n"));
> > > +			ODM_DBG_TRACE, ("=====>%s()\n", __func__));
> > >  	if (!pRaInfo) {
> > >  		ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_LOUD,
> > > -				("odm_RateDown_8188E(): pRaInfo is NULL\n"));
> > > +				("%s(): pRaInfo is NULL\n", __func__));
> > >  		return -1;
> > >  	}
> > >  	RateID = pRaInfo->PreRate;
> > > @@ -179,7 +179,7 @@ static int odm_RateDown_8188E(struct odm_dm_struct *dm_odm,
> > >  	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_LOUD,
> > >  			("Rate down to RateID %d RateSGI %d\n", RateID, pRaInfo->RateSGI));
> > >  	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_TRACE,
> > > -			("<===== odm_RateDown_8188E()\n"));
> > > +			("<===== %s()\n", __func__));
> > >  	return 0;
> > >  }
> > >
> > > @@ -192,10 +192,10 @@ static int odm_RateUp_8188E(
> > >  	u8 i;
> > >
> > >  	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE,
> > > -			ODM_DBG_TRACE, ("=====>odm_RateUp_8188E()\n"));
> > > +			ODM_DBG_TRACE, ("=====>%s()\n", __func__));
> > >  	if (!pRaInfo) {
> > >  		ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_LOUD,
> > > -				("odm_RateUp_8188E(): pRaInfo is NULL\n"));
> > > +				("%s(): pRaInfo is NULL\n", __func__));
> > >  		return -1;
> > >  	}
> > >  	RateID = pRaInfo->PreRate;
> > > @@ -212,7 +212,7 @@ static int odm_RateUp_8188E(
> > >  	}
> > >  	odm_SetTxRPTTiming_8188E(dm_odm, pRaInfo, 0);
> > >  	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_LOUD,
> > > -			("odm_RateUp_8188E():Decrease RPT Timing\n"));
> > > +			("%s():Decrease RPT Timing\n", __func__));
> > >
> > >  	if (RateID < HighestRate) {
> > >  		for (i = RateID+1; i <= HighestRate; i++) {
> > > @@ -243,7 +243,7 @@ static int odm_RateUp_8188E(
> > >  			("RAWaitingCounter %d, RAPendingCounter %d",
> > >  			 pRaInfo->RAWaitingCounter, pRaInfo->RAPendingCounter));
> > >  	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE,
> > > -			ODM_DBG_TRACE, ("<===== odm_RateUp_8188E()\n"));
> > > +			ODM_DBG_TRACE, ("<===== %s()\n", __func__));
> > >  	return 0;
> > >  }
> > >
> > > @@ -265,7 +265,7 @@ static void odm_RateDecision_8188E(struct odm_dm_struct *dm_odm,
> > >  	static u8 DynamicTxRPTTimingCounter;
> > >
> > >  	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_TRACE,
> > > -			("=====>odm_RateDecision_8188E()\n"));
> > > +			("=====>%s()\n", __func__));
> > >
> > >  	if (pRaInfo->Active && (pRaInfo->TOTAL > 0)) { /*  STA used and data packet exits */
> > >  		if ((pRaInfo->RssiStaRA < (pRaInfo->PreRssiStaRA - 3)) ||
> > > @@ -344,7 +344,8 @@ static void odm_RateDecision_8188E(struct odm_dm_struct *dm_odm,
> > >
> > >  		odm_ResetRaCounter_8188E(pRaInfo);
> > >  	}
> > > -	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_TRACE, ("<===== odm_RateDecision_8188E()\n"));
> > > +	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE,
> > > +			ODM_DBG_TRACE, ("<===== %s()\n", __func__));
> > >  }
> > >
> > >  static int odm_ARFBRefresh_8188E(struct odm_dm_struct *dm_odm, struct odm_ra_info *pRaInfo)
> > > @@ -530,7 +531,8 @@ odm_RATxRPTTimerSetting(
> > >  		u16 minRptTime
> > >  )
> > >  {
> > > -	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_TRACE, (" =====>odm_RATxRPTTimerSetting()\n"));
> > > +	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE,
> > > +			ODM_DBG_TRACE, (" =====>%s()\n", __func__));
> > >
> > >  	if (dm_odm->CurrminRptTime != minRptTime) {
> > >  		ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_LOUD,
> > > @@ -538,7 +540,8 @@ odm_RATxRPTTimerSetting(
> > >  		rtw_rpt_timer_cfg_cmd(dm_odm->Adapter, minRptTime);
> > >  		dm_odm->CurrminRptTime = minRptTime;
> > >  	}
> > > -	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_TRACE, (" <===== odm_RATxRPTTimerSetting()\n"));
> > > +	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE,
> > > +			ODM_DBG_TRACE, (" <===== %s()\n", __func__));
> > >  }
> > >
> > >  void
> > > @@ -546,7 +549,8 @@ ODM_RASupport_Init(
> > >  		struct odm_dm_struct *dm_odm
> > >  	)
> > >  {
> > > -	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_LOUD, ("=====>ODM_RASupport_Init()\n"));
> > > +	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE,
> > > +			ODM_DBG_LOUD, ("=====>%s()\n", __func__));
> > >
> > >  	dm_odm->RaSupport88E = true;
> > >  }
> > > @@ -701,8 +705,8 @@ void ODM_RA_TxRPT2Handle_8188E(struct odm_dm_struct *dm_odm, u8 *TxRPT_Buf, u16
> > >  	u16 minRptTime = 0x927c;
> > >
> > >  	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_LOUD,
> > > -		     ("=====>ODM_RA_TxRPT2Handle_8188E(): valid0 =%d valid1 =%d BufferLength =%d\n",
> > > -		     macid_entry0, macid_entry1, TxRPT_Len));
> > > +		     ("=====>%s(): valid0 =%d valid1 =%d BufferLength =%d\n",
> > > +		     __func__, macid_entry0, macid_entry1, TxRPT_Len));
> > >
> > >  	ItemNum = TxRPT_Len >> 3;
> > >  	pBuffer = TxRPT_Buf;
> > > @@ -776,5 +780,6 @@ void ODM_RA_TxRPT2Handle_8188E(struct odm_dm_struct *dm_odm, u8 *TxRPT_Buf, u16
> > >
> > >  	odm_RATxRPTTimerSetting(dm_odm, minRptTime);
> > >
> > > -	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_LOUD, ("<===== ODM_RA_TxRPT2Handle_8188E()\n"));
> > > +	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE,
> > > +			ODM_DBG_LOUD, ("<===== %s()\n", __func__));
> > >  }
> > > --
> > > 2.7.4
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170930203748.GA3466%40domino-MS-16Y1.
> > > For more options, visit https://groups.google.com/d/optout.
> > >
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20171001200731.GA2684%40domino-MS-16Y1.
> For more options, visit https://groups.google.com/d/optout.
>

