X-GM-THRID: 6471473522622332928
X-Received: by 10.28.212.73 with SMTP id l70mr1415074wmg.14.1506888454714;
        Sun, 01 Oct 2017 13:07:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.5.8 with SMTP id 8ls1628852wmf.11.canary-gmail; Sun, 01 Oct
 2017 13:07:33 -0700 (PDT)
X-Received: by 10.28.13.14 with SMTP id 14mr964538wmn.32.1506888453708;
        Sun, 01 Oct 2017 13:07:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506888453; cv=none;
        d=google.com; s=arc-20160816;
        b=qU2M+BcXOkBgWKnjSsxy5ZLy1tkb/8eToxfSjAN46kXiSMOF8pEQiGcYQTcrlx1yvd
         TZmN5fUJo6awQZYNwIMhsbiF57fnGWtdQACaA4NijnN0C73HKGeUffyxZlTZg8EU9WAU
         XpnmQCUdqrVc8q8+0ECeTcpt3zPYpvHL8jilMGclIJQ8UGmp99gVchzS9N0Jmbm8t1Fk
         48gAbiojjiycZe1ENzQs8YVgONxBcRoHV6wdBe7Owa8YCDbiMb54umjC1apdWwqUR7fD
         uup9oV76EJXQ1sTsuNkZEKY+CJ5V4PiUUEWS2TQtLBIbRttJSLXsrV3UxnGtig64f7KU
         wQ2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:date:from:dkim-signature
         :arc-authentication-results;
        bh=964K9/24lgNYDaSqxfyCgu7qncchB/NrGUKcDPdX+y0=;
        b=Z60MX+4V+UGkN/kCA3a+o4WhR93drlvRv3TwS2B/0dUFCNFpBtM2NkKRYnG0nSsEzV
         tOEgvCmqiWS0ro3hQbijvkLGp5MUNknrqNuCzh60Ais04QEmTNRwXz8cyIvfn9Tj5t/e
         ZxP9AsCAQl+OvkwvOsbUf+pp7e2u3MSY43wn1GaYE8QBZ3UP/gYj+9ebvQLm0PMRpC1/
         dExfUlA0FICIgOLnKY7RRksjf8RYrAy8r0fPtmGsFlnCzwUmJiMgJrCnvjI4hl3ecpos
         XDvBUM9zzfbSdP7YAxAkCes8pieZ+gmZqff6FIuLPiEg940EaJqBFI17DxwewTGlfjZB
         1RjQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gZct8F5n;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wr0-x241.google.com (mail-wr0-x241.google.com. [2a00:1450:400c:c0c::241])
        by gmr-mx.google.com with ESMTPS id m74si679963wma.0.2017.10.01.13.07.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Oct 2017 13:07:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) client-ip=2a00:1450:400c:c0c::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gZct8F5n;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x241.google.com with SMTP id z1so2576293wre.1
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Oct 2017 13:07:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=964K9/24lgNYDaSqxfyCgu7qncchB/NrGUKcDPdX+y0=;
        b=gZct8F5nhDgw40EdYDfzPbZO8WSxWOTEAC35VTt9KHKWTJfdiY8XMN2Sbwh5paOh9V
         Z/mYbyXCD+mdOE8+cZejk5REwpFxwB7N+W4pzBIcSCEWg/jXESjR4eRWBHKmqM2wZMF8
         +6UYdzv2TPLYJtNwIWHONj3O7U4W1VlYsA+LkqGdO67EG5OaUTNONAsHkPq3x7YM3/E5
         l4WfAzl/K/Nu8MuDlVCK5NGX9IranSuy5cu/YkNG5j08tEtZ649QjF/bAZiZQfRbBpfQ
         KClgaID8INSQJgblGZM5OW2RF40ibzi5FMIbP5RzLufsj2oZJ5zgg6yvrSxg0V++pIGM
         gIOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:date:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=964K9/24lgNYDaSqxfyCgu7qncchB/NrGUKcDPdX+y0=;
        b=PQ5sl+UrsoVgaWkv6mcbfHgGalAK1gQoRGnf3izhGD2f+p1PmMCfCDhoe4CX9EptvN
         Mqt0VrR5FkPZjYO9OE22Por53SNJgYeOy7tKoxYRD+3mQHz34o5rn24g9diQ4ZM6wNIn
         IvsKnV9goNukpwIQGwMgrglj+wHTACookhLu6ciwyfBrFIxWWPMq+2Pch/b/GyNrUvnV
         8a8/RraEzpz+pp/HpA5vkXU5B+nlH3qTtA3iq+ig7+K3OU6fQPrN7PuZa/ot/2eE1WCo
         oJ60Feh3V9NlM6KTbE9b/Awdn/V2aMayMGGGw1URN/zm81YAucZx95XalwTIuAM1feMH
         qTtw==
X-Gm-Message-State: AMCzsaWTTbIdYk8bTtKhtapl/TYWQRN8e2oI3j4AaT/X0y7UG+vkMOci
	vsaOtuFAvxHJig7bM2Ub1lW2Sg==
X-Google-Smtp-Source: AOwi7QDlHR6MsXLhB0Qtv7amnpUSsOIef58MH6VmuuP8zUk+CyXJGxvPe5Y/aY1uhJRxjrsIG2qavw==
X-Received: by 10.223.168.45 with SMTP id l42mr5757909wrc.15.1506888453205;
        Sun, 01 Oct 2017 13:07:33 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([92.83.158.26])
        by smtp.gmail.com with ESMTPSA id g93sm1371239wrd.87.2017.10.01.13.07.32
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 01 Oct 2017 13:07:32 -0700 (PDT)
From: Julia Lawall <mihaela.muraru21@gmail.com>
X-Google-Original-From: Julia Lawall <julia.lawall@lip6.fr>
Date: Sun, 1 Oct 2017 23:07:31 +0300
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8188eu: Use __func__
 instead of function name
Message-ID: <20171001200731.GA2684@domino-MS-16Y1>
References: <20170930203748.GA3466@domino-MS-16Y1>
 <alpine.DEB.2.20.1710011906330.2904@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1710011906330.2904@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Oct 01, 2017 at 07:09:28PM +0200, Julia Lawall wrote:
> 
> 
> On Sat, 30 Sep 2017, Mihaela Muraru wrote:
> 
> > Use identifier __func__ instead of the name of the function.
> >
> > Issue found by checkpatch.pl.
> 
> It looks a bit odd to have %s().  The () doesn't seem very useful.
> 
> julia
> 
I think that the () it is useful,because the __func__ will print only
the name of the function without (), so we will not know for sure that what we
print it is a function or it is just a message.

I will think that if I remove () it will create a confusion, what is
your opinion?

Thank you,

Mihaela 
> > Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
> >
> > ---
> > Changes in v2:
> > 	- adding a new line to avoid going over 80 characters per line.
> > ---
> >  .../staging/rtl8188eu/hal/Hal8188ERateAdaptive.c   | 35 ++++++++++++----------
> >  1 file changed, 20 insertions(+), 15 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8188eu/hal/Hal8188ERateAdaptive.c b/drivers/staging/rtl8188eu/hal/Hal8188ERateAdaptive.c
> > index 81bf494..c7ae332 100644
> > --- a/drivers/staging/rtl8188eu/hal/Hal8188ERateAdaptive.c
> > +++ b/drivers/staging/rtl8188eu/hal/Hal8188ERateAdaptive.c
> > @@ -126,10 +126,10 @@ static int odm_RateDown_8188E(struct odm_dm_struct *dm_odm,
> >  	u8 i;
> >
> >  	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE,
> > -			ODM_DBG_TRACE, ("=====>odm_RateDown_8188E()\n"));
> > +			ODM_DBG_TRACE, ("=====>%s()\n", __func__));
> >  	if (!pRaInfo) {
> >  		ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_LOUD,
> > -				("odm_RateDown_8188E(): pRaInfo is NULL\n"));
> > +				("%s(): pRaInfo is NULL\n", __func__));
> >  		return -1;
> >  	}
> >  	RateID = pRaInfo->PreRate;
> > @@ -179,7 +179,7 @@ static int odm_RateDown_8188E(struct odm_dm_struct *dm_odm,
> >  	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_LOUD,
> >  			("Rate down to RateID %d RateSGI %d\n", RateID, pRaInfo->RateSGI));
> >  	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_TRACE,
> > -			("<===== odm_RateDown_8188E()\n"));
> > +			("<===== %s()\n", __func__));
> >  	return 0;
> >  }
> >
> > @@ -192,10 +192,10 @@ static int odm_RateUp_8188E(
> >  	u8 i;
> >
> >  	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE,
> > -			ODM_DBG_TRACE, ("=====>odm_RateUp_8188E()\n"));
> > +			ODM_DBG_TRACE, ("=====>%s()\n", __func__));
> >  	if (!pRaInfo) {
> >  		ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_LOUD,
> > -				("odm_RateUp_8188E(): pRaInfo is NULL\n"));
> > +				("%s(): pRaInfo is NULL\n", __func__));
> >  		return -1;
> >  	}
> >  	RateID = pRaInfo->PreRate;
> > @@ -212,7 +212,7 @@ static int odm_RateUp_8188E(
> >  	}
> >  	odm_SetTxRPTTiming_8188E(dm_odm, pRaInfo, 0);
> >  	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_LOUD,
> > -			("odm_RateUp_8188E():Decrease RPT Timing\n"));
> > +			("%s():Decrease RPT Timing\n", __func__));
> >
> >  	if (RateID < HighestRate) {
> >  		for (i = RateID+1; i <= HighestRate; i++) {
> > @@ -243,7 +243,7 @@ static int odm_RateUp_8188E(
> >  			("RAWaitingCounter %d, RAPendingCounter %d",
> >  			 pRaInfo->RAWaitingCounter, pRaInfo->RAPendingCounter));
> >  	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE,
> > -			ODM_DBG_TRACE, ("<===== odm_RateUp_8188E()\n"));
> > +			ODM_DBG_TRACE, ("<===== %s()\n", __func__));
> >  	return 0;
> >  }
> >
> > @@ -265,7 +265,7 @@ static void odm_RateDecision_8188E(struct odm_dm_struct *dm_odm,
> >  	static u8 DynamicTxRPTTimingCounter;
> >
> >  	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_TRACE,
> > -			("=====>odm_RateDecision_8188E()\n"));
> > +			("=====>%s()\n", __func__));
> >
> >  	if (pRaInfo->Active && (pRaInfo->TOTAL > 0)) { /*  STA used and data packet exits */
> >  		if ((pRaInfo->RssiStaRA < (pRaInfo->PreRssiStaRA - 3)) ||
> > @@ -344,7 +344,8 @@ static void odm_RateDecision_8188E(struct odm_dm_struct *dm_odm,
> >
> >  		odm_ResetRaCounter_8188E(pRaInfo);
> >  	}
> > -	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_TRACE, ("<===== odm_RateDecision_8188E()\n"));
> > +	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE,
> > +			ODM_DBG_TRACE, ("<===== %s()\n", __func__));
> >  }
> >
> >  static int odm_ARFBRefresh_8188E(struct odm_dm_struct *dm_odm, struct odm_ra_info *pRaInfo)
> > @@ -530,7 +531,8 @@ odm_RATxRPTTimerSetting(
> >  		u16 minRptTime
> >  )
> >  {
> > -	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_TRACE, (" =====>odm_RATxRPTTimerSetting()\n"));
> > +	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE,
> > +			ODM_DBG_TRACE, (" =====>%s()\n", __func__));
> >
> >  	if (dm_odm->CurrminRptTime != minRptTime) {
> >  		ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_LOUD,
> > @@ -538,7 +540,8 @@ odm_RATxRPTTimerSetting(
> >  		rtw_rpt_timer_cfg_cmd(dm_odm->Adapter, minRptTime);
> >  		dm_odm->CurrminRptTime = minRptTime;
> >  	}
> > -	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_TRACE, (" <===== odm_RATxRPTTimerSetting()\n"));
> > +	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE,
> > +			ODM_DBG_TRACE, (" <===== %s()\n", __func__));
> >  }
> >
> >  void
> > @@ -546,7 +549,8 @@ ODM_RASupport_Init(
> >  		struct odm_dm_struct *dm_odm
> >  	)
> >  {
> > -	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_LOUD, ("=====>ODM_RASupport_Init()\n"));
> > +	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE,
> > +			ODM_DBG_LOUD, ("=====>%s()\n", __func__));
> >
> >  	dm_odm->RaSupport88E = true;
> >  }
> > @@ -701,8 +705,8 @@ void ODM_RA_TxRPT2Handle_8188E(struct odm_dm_struct *dm_odm, u8 *TxRPT_Buf, u16
> >  	u16 minRptTime = 0x927c;
> >
> >  	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_LOUD,
> > -		     ("=====>ODM_RA_TxRPT2Handle_8188E(): valid0 =%d valid1 =%d BufferLength =%d\n",
> > -		     macid_entry0, macid_entry1, TxRPT_Len));
> > +		     ("=====>%s(): valid0 =%d valid1 =%d BufferLength =%d\n",
> > +		     __func__, macid_entry0, macid_entry1, TxRPT_Len));
> >
> >  	ItemNum = TxRPT_Len >> 3;
> >  	pBuffer = TxRPT_Buf;
> > @@ -776,5 +780,6 @@ void ODM_RA_TxRPT2Handle_8188E(struct odm_dm_struct *dm_odm, u8 *TxRPT_Buf, u16
> >
> >  	odm_RATxRPTTimerSetting(dm_odm, minRptTime);
> >
> > -	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_LOUD, ("<===== ODM_RA_TxRPT2Handle_8188E()\n"));
> > +	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE,
> > +			ODM_DBG_LOUD, ("<===== %s()\n", __func__));
> >  }
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170930203748.GA3466%40domino-MS-16Y1.
> > For more options, visit https://groups.google.com/d/optout.
> >

