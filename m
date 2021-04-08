X-GM-THRID: 6948695492025909248
X-Received: by 2002:ac2:5e62:: with SMTP id a2mr5730395lfr.385.1617873786380;
        Thu, 08 Apr 2021 02:23:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:9a48:: with SMTP id k8ls1061085ljj.10.gmail; Thu, 08 Apr
 2021 02:23:04 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxm5CKgjKBE6omTwxNvgs2oW4M3N8ZCm5PJlCijpUh8FcBJ77Uh9VISj6qJ1Yu26bxY1Xpv
X-Received: by 2002:a2e:bb8f:: with SMTP id y15mr1560053lje.86.1617873784611;
        Thu, 08 Apr 2021 02:23:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617873784; cv=none;
        d=google.com; s=arc-20160816;
        b=D0nRqqA6p6JnXkC0hZw+p5LtKaLaVCr9p9RV4s7dp2dOdn0ivAAU3k5YIQ4ct6YduM
         qtma3I39t5mMEVFmtBTsaNlToNBwZiux2vDhvjAdCl9rSNnoBSQe0ePy3SMrn/4LfBgD
         qd9AEO6fmfGdmS2d9aNWKVRgii/qYa3Wul9IPTojo+cP2MbSfQ7uN5VqYTbWy6KG6Jr9
         jUVQup6ftYs+V+B6IgP8ZQh2cQgbRxgiKDk2D7JMzI2lLDeysIF8lcWpqUgdlWrwwv46
         nkm784V/jfeQ8yLYy5rOyLIwwhP74FtKGyeYZgTCKMCPaKjT6HDD+fSR4Pe/Y2pa1VEC
         yJsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=mPEE0TfkQprkn502AxardJKyKkRtK1wqkQfnLs4uFL4=;
        b=iVVoQCqc4botT4eeaI2krGlY8e4kOeoV0zRx412L2ZLPxEQW2FpBFGvII1dn8a7ohm
         v/LuYi+pN3lYNnGKEMb/3ZIRIrMZ/joHdsxKiZY043jWtFzj7gY35I/ToFdSKVEK5Kl3
         KioWGlK/RbCvDmyquf43zTg80ec6Uxd4LVeEUd4gPfd8lYPAaW5zgOjlrbDqLGjrynFm
         g1+ZTFN4Dp2XsfV64eNiR5+6MTy2KIUvR/61IR+be1fg+xV1R/6+EWGcdprQx7yv8tG7
         b9ucIOPO8k4QVCjTrrFWjF5ZYytp8T7OlxXUeO0TC/5fgcoYM4nApcWkjbRT2NVpAQSx
         me6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="sutQhx/y";
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62c as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com. [2a00:1450:4864:20::62c])
        by gmr-mx.google.com with ESMTPS id d19si2174106ljo.1.2021.04.08.02.23.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Apr 2021 02:23:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62c as permitted sender) client-ip=2a00:1450:4864:20::62c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="sutQhx/y";
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62c as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x62c.google.com with SMTP id n2so1827515ejy.7
        for <outreachy-kernel@googlegroups.com>; Thu, 08 Apr 2021 02:23:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=mPEE0TfkQprkn502AxardJKyKkRtK1wqkQfnLs4uFL4=;
        b=sutQhx/y/s2oCc3Ffcl93rmIK83bZdQYGQrp+pPJFxzWvFzg1Ewd3cSv1IuQLDJgfF
         SldS/rl/Fmh4r7eIJHu5tchrOQ7aNWVdokndKzlWMZ36U4rdYBUuaLwRChokOID4bwe1
         uVX/d0hsVK1zRjyTqGvF7p0y8Fa/xcq3uJjL5X3PGhzTD0nj1D6CAM6gmQjoQ8kfuvYX
         qhyk6oRJdsmSJ2lCTc174oPDX/emcqpLkdj5HvxlyrVuiENM4YHDfo9kH9wF+XI7preb
         7MtuOz4ZoPFCcmRzWPO+Y/6SyHCJexouM5yJmpUec3Hr9RqCSM9KmHpEome3vgzeK8VJ
         mX4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=mPEE0TfkQprkn502AxardJKyKkRtK1wqkQfnLs4uFL4=;
        b=TOR1worBxsPBUmSDzBI/OjKgIMnY5/3AJWBj0OX2J2kwsf4A6Qv6bBEM2uVJfzjJcg
         NMuEfDvkXbXe0VDCvas+Nn4n1OJ65oLM7jEVokp27JWJcPgWbalo3BD9Y4lIqHlaSWop
         5aJ8SqKW1DP2a08TM1EiYwIgUYiu8EwB1oeRAuGV/MgiFD0WKeC+WD3mPm9AwGbkvvlQ
         mabOFBg2D1zLQshl/XfLFw8PRxsY4DW0uiRtAueog/c2YjPFtwEPozCdCD656ltMRBvd
         sA6iEG1OJobnanlk2yFTWokT1BOFKSW7ZLGzCxGV3ury44xsbwXQdqUSWQgylVmpFUkc
         QZ3Q==
X-Gm-Message-State: AOAM530eb5sUzCPtYccK73tNDEOI0QaHpVyAH65fyA/IxdDadzSofkmb
	4pC9MfdH2Y7fotOYQsNHFZs=
X-Received: by 2002:a17:906:7806:: with SMTP id u6mr8563461ejm.130.1617873784068;
        Thu, 08 Apr 2021 02:23:04 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-79-42-91-147.retail.telecomitalia.it. [79.42.91.147])
        by smtp.gmail.com with ESMTPSA id cm28sm1423079edb.34.2021.04.08.02.23.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Apr 2021 02:23:03 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: Remove camelcase in several files
Date: Thu, 08 Apr 2021 11:23:02 +0200
Message-ID: <3199764.fZLq2QQFAf@localhost.localdomain>
In-Reply-To: <alpine.DEB.2.22.394.2104081049450.3155@hadrien>
References: <20210408080714.29481-1-fmdefrancesco@gmail.com> <alpine.DEB.2.22.394.2104081049450.3155@hadrien>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="US-ASCII"

On Thursday, April 8, 2021 10:53:01 AM CEST Julia Lawall wrote:
> On Thu, 8 Apr 2021, Fabio M. De Francesco wrote:
> > Remove camelcase in a symbol that is used by several files.
> 
> In addition to Greg's suggestion about dropping the b, there are some
> more things you can do to improve the usage of this field.
> 
> First, I noticed that the type is u8.  It can be changed to bool.
> 
> Second, the == true doesn't seem necessary in the following:
> 
> if (adapter_to_pwrctl(padapter)->bFwCurrentInPSMode == true) {
> 
> Of course before doing any of these, it would be good to check all of the
> uses and be sure that the only possible values in this field are true
> and false.
> 
> julia
> 

I too had noticed the above-mentioned issues. However I thought I couldn't 
fix them as they are logically unrelated to removing the camelcase. Am I 
wrong on this subject?

Thanks a lot,

Fabio

> > Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> > ---
> > 
> >  drivers/staging/rtl8723bs/core/rtw_cmd.c       |  2 +-
> >  drivers/staging/rtl8723bs/core/rtw_mlme.c      |  2 +-
> >  drivers/staging/rtl8723bs/core/rtw_pwrctrl.c   | 18 +++++++++---------
> >  drivers/staging/rtl8723bs/hal/hal_intf.c       |  2 +-
> >  drivers/staging/rtl8723bs/hal/rtl8723b_dm.c    |  6 +++---
> >  .../staging/rtl8723bs/hal/rtl8723b_hal_init.c  |  2 +-
> >  drivers/staging/rtl8723bs/hal/sdio_ops.c       | 14 +++++++-------
> >  .../staging/rtl8723bs/include/rtw_pwrctrl.h    |  2 +-
> >  8 files changed, 24 insertions(+), 24 deletions(-)
> > 
> > diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > b/drivers/staging/rtl8723bs/core/rtw_cmd.c index
> > baf8b1e0f43c..a08f22b53592 100644
> > --- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > +++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > @@ -1510,7 +1510,7 @@ static void rtw_lps_change_dtim_hdl(struct
> > adapter *padapter, u8 dtim)> 
> >  	if (pwrpriv->dtim != dtim)
> >  	
> >  		pwrpriv->dtim = dtim;
> > 
> > -	if ((pwrpriv->bFwCurrentInPSMode == true) && (pwrpriv->pwr_mode 
>
> > PS_MODE_ACTIVE)) { +	if ((pwrpriv->b_fw_current_in_ps_mode == true) &&
> > (pwrpriv->pwr_mode > PS_MODE_ACTIVE)) {> 
> >  		u8 ps_mode = pwrpriv->pwr_mode;
> >  		
> >  		rtw_hal_set_hwreg(padapter, HW_VAR_H2C_FW_PWRMODE, 
(u8
> >  		*)(&ps_mode));
> > 
> > diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c
> > b/drivers/staging/rtl8723bs/core/rtw_mlme.c index
> > a7e40aaae2d9..51cea6cf46e7 100644
> > --- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
> > +++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
> > @@ -1684,7 +1684,7 @@ void rtw_dynamic_check_timer_handler(struct
> > adapter *adapter)> 
> >  	if (adapter->net_closed)
> >  	
> >  		return;
> > 
> > -	if ((adapter_to_pwrctl(adapter)->bFwCurrentInPSMode)
> > +	if ((adapter_to_pwrctl(adapter)->b_fw_current_in_ps_mode)
> > 
> >  		&& !(hal_btcoex_IsBtControlLps(adapter))
> >  		) {
> >  		u8 bEnterPS;
> > 
> > diff --git a/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
> > b/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c index
> > f7465cf90c46..21e7a847866f 100644
> > --- a/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
> > +++ b/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
> > @@ -365,7 +365,7 @@ void rtw_set_ps_mode(struct adapter *padapter, u8
> > ps_mode, u8 smart_ps, u8 bcn_a> 
> >  			rtw_set_rpwm(padapter, PS_STATE_S4);
> >  			
> >  			rtw_hal_set_hwreg(padapter, 
HW_VAR_H2C_FW_PWRMODE, (u8
> >  			*)(&ps_mode));
> > 
> > -			pwrpriv->bFwCurrentInPSMode = false;
> > +			pwrpriv->b_fw_current_in_ps_mode = false;
> > 
> >  			hal_btcoex_LpsNotify(padapter, ps_mode);
> >  		
> >  		}
> > 
> > @@ -377,7 +377,7 @@ void rtw_set_ps_mode(struct adapter *padapter, u8
> > ps_mode, u8 smart_ps, u8 bcn_a> 
> >  			hal_btcoex_LpsNotify(padapter, ps_mode);
> > 
> > -			pwrpriv->bFwCurrentInPSMode = true;
> > +			pwrpriv->b_fw_current_in_ps_mode = true;
> > 
> >  			pwrpriv->pwr_mode = ps_mode;
> >  			pwrpriv->smart_ps = smart_ps;
> >  			pwrpriv->bcn_ant_mode = bcn_ant_mode;
> > 
> > @@ -734,7 +734,7 @@ s32 rtw_register_task_alive(struct adapter
> > *padapter, u32 task)> 
> >  	register_task_alive(pwrctrl, task);
> > 
> > -	if (pwrctrl->bFwCurrentInPSMode) {
> > +	if (pwrctrl->b_fw_current_in_ps_mode) {
> > 
> >  		if (pwrctrl->cpwm < pslv) {
> >  		
> >  			if (pwrctrl->cpwm < PS_STATE_S2)
> >  			
> >  				res = _FAIL;
> > 
> > @@ -782,7 +782,7 @@ void rtw_unregister_task_alive(struct adapter
> > *padapter, u32 task)> 
> >  	unregister_task_alive(pwrctrl, task);
> > 
> > -	if ((pwrctrl->pwr_mode != PS_MODE_ACTIVE) &&
> > pwrctrl->bFwCurrentInPSMode) { +	if ((pwrctrl->pwr_mode !=
> > PS_MODE_ACTIVE) && pwrctrl->b_fw_current_in_ps_mode) {> 
> >  		if (pwrctrl->cpwm > pslv)
> >  		
> >  			if ((pslv >= PS_STATE_S2) || (pwrctrl-
>alives == 0))
> >  			
> >  				rtw_set_rpwm(padapter, pslv);
> > 
> > @@ -819,7 +819,7 @@ s32 rtw_register_tx_alive(struct adapter *padapter)
> > 
> >  	register_task_alive(pwrctrl, XMIT_ALIVE);
> > 
> > -	if (pwrctrl->bFwCurrentInPSMode) {
> > +	if (pwrctrl->b_fw_current_in_ps_mode) {
> > 
> >  		if (pwrctrl->cpwm < pslv) {
> >  		
> >  			if (pwrctrl->cpwm < PS_STATE_S2)
> >  			
> >  				res = _FAIL;
> > 
> > @@ -864,7 +864,7 @@ s32 rtw_register_cmd_alive(struct adapter
> > *padapter)
> > 
> >  	register_task_alive(pwrctrl, CMD_ALIVE);
> > 
> > -	if (pwrctrl->bFwCurrentInPSMode) {
> > +	if (pwrctrl->b_fw_current_in_ps_mode) {
> > 
> >  		if (pwrctrl->cpwm < pslv) {
> >  		
> >  			if (pwrctrl->cpwm < PS_STATE_S2)
> >  			
> >  				res = _FAIL;
> > 
> > @@ -909,7 +909,7 @@ void rtw_unregister_tx_alive(struct adapter
> > *padapter)> 
> >  	unregister_task_alive(pwrctrl, XMIT_ALIVE);
> > 
> > -	if ((pwrctrl->pwr_mode != PS_MODE_ACTIVE) &&
> > pwrctrl->bFwCurrentInPSMode) { +	if ((pwrctrl->pwr_mode !=
> > PS_MODE_ACTIVE) && pwrctrl->b_fw_current_in_ps_mode) {> 
> >  		if (pwrctrl->cpwm > pslv)
> >  		
> >  			if ((pslv >= PS_STATE_S2) || (pwrctrl-
>alives == 0))
> >  			
> >  				rtw_set_rpwm(padapter, pslv);
> > 
> > @@ -945,7 +945,7 @@ void rtw_unregister_cmd_alive(struct adapter
> > *padapter)> 
> >  	unregister_task_alive(pwrctrl, CMD_ALIVE);
> > 
> > -	if ((pwrctrl->pwr_mode != PS_MODE_ACTIVE) &&
> > pwrctrl->bFwCurrentInPSMode) { +	if ((pwrctrl->pwr_mode !=
> > PS_MODE_ACTIVE) && pwrctrl->b_fw_current_in_ps_mode) {> 
> >  		if (pwrctrl->cpwm > pslv) {
> >  		
> >  			if ((pslv >= PS_STATE_S2) || (pwrctrl-
>alives == 0))
> >  			
> >  				rtw_set_rpwm(padapter, pslv);
> > 
> > @@ -978,7 +978,7 @@ void rtw_init_pwrctrl_priv(struct adapter
> > *padapter)
> > 
> >  	pwrctrlpriv->power_mgnt = padapter->registrypriv.power_mgnt;/* 
> >  	PS_MODE_MIN; */ pwrctrlpriv->bLeisurePs = pwrctrlpriv-
>power_mgnt !=
> >  	PS_MODE_ACTIVE;> 
> > -	pwrctrlpriv->bFwCurrentInPSMode = false;
> > +	pwrctrlpriv->b_fw_current_in_ps_mode = false;
> > 
> >  	pwrctrlpriv->rpwm = 0;
> >  	pwrctrlpriv->cpwm = PS_STATE_S4;
> > 
> > diff --git a/drivers/staging/rtl8723bs/hal/hal_intf.c
> > b/drivers/staging/rtl8723bs/hal/hal_intf.c index
> > bc9ae2088754..a73c2f76628d 100644
> > --- a/drivers/staging/rtl8723bs/hal/hal_intf.c
> > +++ b/drivers/staging/rtl8723bs/hal/hal_intf.c
> > @@ -348,7 +348,7 @@ void rtw_hal_dm_watchdog(struct adapter *padapter)
> > 
> >  void rtw_hal_dm_watchdog_in_lps(struct adapter *padapter)
> >  {
> > 
> > -	if (adapter_to_pwrctl(padapter)->bFwCurrentInPSMode == true) {
> > +	if (adapter_to_pwrctl(padapter)->b_fw_current_in_ps_mode == 
true) {
> > 
> >  		if (padapter->HalFunc.hal_dm_watchdog_in_lps)
> >  		
> >  			padapter-
>HalFunc.hal_dm_watchdog_in_lps(padapter); /* this
> >  			function caller is in interrupt context 
*/>  	
> >  	}
> > 
> > diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
> > b/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c index
> > c2e9e4a0be22..265db187b8d5 100644
> > --- a/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
> > +++ b/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
> > @@ -141,7 +141,7 @@ void rtl8723b_InitHalDm(struct adapter *Adapter)
> > 
> >  void rtl8723b_HalDmWatchDog(struct adapter *Adapter)
> >  {
> > 
> > -	bool bFwCurrentInPSMode = false;
> > +	bool b_fw_current_in_ps_mode = false;
> > 
> >  	bool bFwPSAwake = true;
> >  	u8 hw_init_completed = false;
> >  	struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);
> > 
> > @@ -151,12 +151,12 @@ void rtl8723b_HalDmWatchDog(struct adapter
> > *Adapter)> 
> >  	if (hw_init_completed == false)
> >  	
> >  		goto skip_dm;
> > 
> > -	bFwCurrentInPSMode = adapter_to_pwrctl(Adapter)-
>bFwCurrentInPSMode;
> > +	b_fw_current_in_ps_mode =
> > adapter_to_pwrctl(Adapter)->b_fw_current_in_ps_mode;> 
> >  	rtw_hal_get_hwreg(Adapter, HW_VAR_FWLPS_RF_ON, (u8 *)
(&bFwPSAwake));
> >  	
> >  	if (
> >  	
> >  		(hw_init_completed == true) &&
> > 
> > -		((!bFwCurrentInPSMode) && bFwPSAwake)
> > +		((!b_fw_current_in_ps_mode) && bFwPSAwake)
> > 
> >  	) {
> >  	
> >  		/*  */
> >  		/*  Calculate Tx/Rx statistics. */
> > 
> > diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
> > b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c index
> > e31ad3feed62..7ebc438870fd 100644
> > --- a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
> > +++ b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
> > @@ -430,7 +430,7 @@ void rtl8723b_InitializeFirmwareVars(struct adapter
> > *padapter)> 
> >  	struct hal_com_data *pHalData = GET_HAL_DATA(padapter);
> >  	
> >  	/*  Init Fw LPS related. */
> > 
> > -	adapter_to_pwrctl(padapter)->bFwCurrentInPSMode = false;
> > +	adapter_to_pwrctl(padapter)->b_fw_current_in_ps_mode = false;
> > 
> >  	/* Init H2C cmd. */
> >  	rtw_write8(padapter, REG_HMETFR, 0x0f);
> > 
> > diff --git a/drivers/staging/rtl8723bs/hal/sdio_ops.c
> > b/drivers/staging/rtl8723bs/hal/sdio_ops.c index
> > af7f846f90fe..c78a6724fc1c 100644
> > --- a/drivers/staging/rtl8723bs/hal/sdio_ops.c
> > +++ b/drivers/staging/rtl8723bs/hal/sdio_ops.c
> > @@ -173,7 +173,7 @@ static u32 sdio_read32(struct intf_hdl *intfhdl,
> > u32 addr)> 
> >  	if (
> >  	
> >  		((device_id == WLAN_IOREG_DEVICE_ID) && (offset < 
0x100)) ||
> >  		(!mac_pwr_ctrl_on) ||
> > 
> > -		(adapter_to_pwrctl(adapter)->bFwCurrentInPSMode)
> > +		(adapter_to_pwrctl(adapter)-
>b_fw_current_in_ps_mode)
> > 
> >  	) {
> >  	
> >  		err = sd_cmd52_read(intfhdl, ftaddr, 4, (u8 
*)&le_tmp);
> >  
> >  #ifdef SDIO_DEBUG_IO
> > 
> > @@ -230,7 +230,7 @@ static s32 sdio_readN(struct intf_hdl *intfhdl, u32
> > addr, u32 cnt, u8 *buf)> 
> >  	if (
> >  	
> >  		((device_id == WLAN_IOREG_DEVICE_ID) && (offset < 
0x100)) ||
> >  		(!mac_pwr_ctrl_on) ||
> > 
> > -		(adapter_to_pwrctl(adapter)->bFwCurrentInPSMode)
> > +		(adapter_to_pwrctl(adapter)-
>b_fw_current_in_ps_mode)
> > 
> >  	)
> >  	
> >  		return sd_cmd52_read(intfhdl, ftaddr, cnt, buf);
> > 
> > @@ -297,7 +297,7 @@ static s32 sdio_write32(struct intf_hdl *intfhdl,
> > u32 addr, u32 val)> 
> >  	if (
> >  	
> >  		((device_id == WLAN_IOREG_DEVICE_ID) && (offset < 
0x100)) ||
> >  		(!mac_pwr_ctrl_on) ||
> > 
> > -		(adapter_to_pwrctl(adapter)->bFwCurrentInPSMode)
> > +		(adapter_to_pwrctl(adapter)-
>b_fw_current_in_ps_mode)
> > 
> >  	) {
> >  	
> >  		le_tmp = cpu_to_le32(val);
> > 
> > @@ -334,7 +334,7 @@ static s32 sdio_writeN(struct intf_hdl *intfhdl,
> > u32 addr, u32 cnt, u8 *buf)> 
> >  	if (
> >  	
> >  		((device_id == WLAN_IOREG_DEVICE_ID) && (offset < 
0x100)) ||
> >  		(!mac_pwr_ctrl_on) ||
> > 
> > -		(adapter_to_pwrctl(adapter)->bFwCurrentInPSMode)
> > +		(adapter_to_pwrctl(adapter)-
>b_fw_current_in_ps_mode)
> > 
> >  	)
> >  	
> >  		return sd_cmd52_write(intfhdl, ftaddr, cnt, buf);
> > 
> > @@ -565,7 +565,7 @@ s32 sdio_local_read(
> > 
> >  	rtw_hal_get_hwreg(adapter, HW_VAR_APFM_ON_MAC, 
&mac_pwr_ctrl_on);
> >  	if (
> >  	
> >  		(!mac_pwr_ctrl_on) ||
> > 
> > -		(adapter_to_pwrctl(adapter)->bFwCurrentInPSMode)
> > +		(adapter_to_pwrctl(adapter)-
>b_fw_current_in_ps_mode)
> > 
> >  	)
> >  	
> >  		return sd_cmd52_read(intfhdl, addr, cnt, buf);
> > 
> > @@ -611,7 +611,7 @@ s32 sdio_local_write(
> > 
> >  	rtw_hal_get_hwreg(adapter, HW_VAR_APFM_ON_MAC, 
&mac_pwr_ctrl_on);
> >  	if (
> >  	
> >  		(!mac_pwr_ctrl_on) ||
> > 
> > -		(adapter_to_pwrctl(adapter)->bFwCurrentInPSMode)
> > +		(adapter_to_pwrctl(adapter)-
>b_fw_current_in_ps_mode)
> > 
> >  	)
> >  	
> >  		return sd_cmd52_write(intfhdl, addr, cnt, buf);
> > 
> > @@ -660,7 +660,7 @@ static u32 sdio_local_cmd53_read4byte(struct
> > adapter *adapter, u32 addr)> 
> >  	hal_sdio_get_cmd_addr_8723b(adapter, SDIO_LOCAL_DEVICE_ID, 
addr,
> >  	&addr);
> >  	rtw_hal_get_hwreg(adapter, HW_VAR_APFM_ON_MAC, 
&mac_pwr_ctrl_on);
> > 
> > -	if (!mac_pwr_ctrl_on ||
> > adapter_to_pwrctl(adapter)->bFwCurrentInPSMode) { +	if
> > (!mac_pwr_ctrl_on ||
> > adapter_to_pwrctl(adapter)->b_fw_current_in_ps_mode) {> 
> >  		sd_cmd52_read(intfhdl, addr, 4, (u8 *)&le_tmp);
> >  		val = le32_to_cpu(le_tmp);
> >  	
> >  	} else {
> > 
> > diff --git a/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
> > b/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h index
> > 2e739a17dd95..fcb06a95fdf6 100644
> > --- a/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
> > +++ b/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
> > @@ -203,7 +203,7 @@ struct pwrctrl_priv {
> > 
> >  	u8 LpsIdleCount;
> >  	u8 power_mgnt;
> >  	u8 org_power_mgnt;
> > 
> > -	u8 bFwCurrentInPSMode;
> > +	u8 b_fw_current_in_ps_mode;
> > 
> >  	unsigned long	DelayLPSLastTimeStamp;
> >  	s32		pnp_current_pwr_state;
> >  	u8 pnp_bstop_trx;
> > 
> > --
> > 2.30.2
> > 
> > --
> > You received this message because you are subscribed to the Google
> > Groups "outreachy-kernel" group. To unsubscribe from this group and
> > stop receiving emails from it, send an email to
> > outreachy-kernel+unsubscribe@googlegroups.com. To view this discussion
> > on the web visit
> > https://groups.google.com/d/msgid/outreachy-kernel/20210408080714.2948
> > 1-1-fmdefrancesco%40gmail.com.





