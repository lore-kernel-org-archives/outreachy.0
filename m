X-GM-THRID: 6949457058068430848
X-Received: by 2002:aca:37c1:: with SMTP id e184mr7684547oia.136.1618054417721;
        Sat, 10 Apr 2021 04:33:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:ab09:: with SMTP id u9ls1562824oie.2.gmail; Sat, 10 Apr
 2021 04:33:36 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzZNGMpT7chTXm/EHeibafWquaxiNTC9bV9eO9TngLszCy6NWF0O6/YUY/IJ9j4iPcjKOSo
X-Received: by 2002:aca:b387:: with SMTP id c129mr12671908oif.30.1618054416660;
        Sat, 10 Apr 2021 04:33:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618054416; cv=none;
        d=google.com; s=arc-20160816;
        b=gZvDSmxD3ffRiJPK+iLXgIGhzKLYlakuluyy4nE4xHF5iMTTMRNz83dum+4sPtIMxO
         ONehu2B2+SpDZMwH8IhKRlllENJXCcpqyX1Z909EuByawcWHr88F8tUxZNXQG/pHd9Za
         52YK2RNpFTh8kCoaNIoyGdcFG2AxajBDOZxiMoNapAL3q6wHyhsk2qxcI/nQ0uN5x5Bk
         u6FBHBsAVdRdRcKbSy+kGCMRwGrlIF5Se/1Zt6HDOuU8hmES6FkVPUBUaib/HbbC1qfT
         FovivJlTgnzU9Gdw7/KsdJlxMDq4CTCxXOH8Pz3aLPn3T7FI/S4LeA1/SFEdludN5ejQ
         MI3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=42il+es7ci/UWI8zqqRQZmITy5J0rwhMcwRixsFQA8E=;
        b=uzfGKyih5nAR8Vuta/eix3sY/pp1ge4v5IU+sv9Ng2GCPfkaOZaGnidW6RUtk9g1Cp
         wWVCMzUehlUAwvYHZ08mFpo6J3/PRufEWEnhSZRRt5jELK8dArtpt0eSdW5mFFpABzBn
         tOiadEVbYGVGC0PGg7LJQcy3doSUncgbTejVbRX/TgkKy/ezMr7XCUx+Fw+hdDCihJ7+
         yzKIXK21rHsjgBoeYWwfkca7Rs1q5WorUKvLWNHCnqzvE1s7AsniXoAIbQ7VWg3oiaEz
         54WtgNV0JbooH2xHQfybgC6dha9qPWhaB+jTE7SxKTRB/4rpud8XVYSSXUe2Jra71Veo
         bWlQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=XY7udFxQ;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v31si314601ott.5.2021.04.10.04.33.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Apr 2021 04:33:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=XY7udFxQ;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2CF54610CD;
	Sat, 10 Apr 2021 11:33:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1618054415;
	bh=PuEewjDW4FzdjB+FsG31MbGgERKfTa+r9b7m7c8iqdk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XY7udFxQg9sjt67lRQ2/4DzUrWDqPKvXe8LMDjm+IOK5zDmB/8M5ivy4fCJcwU57h
	 wY/Ny3Ntqf1Itl2XFzTSEisQUY0fb0uFWZIJjH5XCFb/x+ob76cU49HZtFwB8UHBwD
	 lnViyoNIsh9zELL5uxTBO1643MR4f99PsJfBbhnI=
Date: Sat, 10 Apr 2021 13:33:33 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, julia.lawall@inria.fr
Subject: Re: [Outreachy kernel] [PATCH 4/4] staging: rtl8723bs: Change the
 type and use of a variable
Message-ID: <YHGNDejY/TfzeLzh@kroah.com>
References: <20210410092232.15155-1-fmdefrancesco@gmail.com>
 <4547533.LBOHeWh67L@localhost.localdomain>
 <YHGGBpSLj+W8ikXz@kroah.com>
 <10115279.QsZogQpAqX@localhost.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <10115279.QsZogQpAqX@localhost.localdomain>

On Sat, Apr 10, 2021 at 01:23:21PM +0200, Fabio M. De Francesco wrote:
> On Saturday, April 10, 2021 1:03:34 PM CEST Greg KH wrote:
> > On Sat, Apr 10, 2021 at 12:58:06PM +0200, Fabio M. De Francesco wrote:
> > > On Saturday, April 10, 2021 12:31:27 PM CEST Greg KH wrote:
> > > > On Sat, Apr 10, 2021 at 11:56:48AM +0200, Fabio M. De Francesco 
> wrote:
> > > > > On Saturday, April 10, 2021 11:31:16 AM CEST Greg KH wrote:
> > > > > > On Sat, Apr 10, 2021 at 11:22:32AM +0200, Fabio M. De Francesco
> > > 
> > > wrote:
> > > > > > > Change the type of fw_current_in_ps_mode from u8 to bool,
> > > > > > > because
> > > > > > > it is used everywhere as a bool and, accordingly, it should be
> > > > > > > declared as a bool. Shorten the controlling
> > > > > > > expression of an 'if' statement.
> > > > > > > 
> > > > > > > Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> > > > > > > ---
> > > > > > > 
> > > > > > >  drivers/staging/rtl8723bs/hal/hal_intf.c        | 2 +-
> > > > > > >  drivers/staging/rtl8723bs/include/rtw_pwrctrl.h | 2 +-
> > > > > > >  2 files changed, 2 insertions(+), 2 deletions(-)
> > > > > > > 
> > > > > > > diff --git a/drivers/staging/rtl8723bs/hal/hal_intf.c
> > > > > > > b/drivers/staging/rtl8723bs/hal/hal_intf.c index
> > > > > > > 96fe172ced8d..8dc4dd8c6d4c 100644
> > > > > > > --- a/drivers/staging/rtl8723bs/hal/hal_intf.c
> > > > > > > +++ b/drivers/staging/rtl8723bs/hal/hal_intf.c
> > > > > > > @@ -348,7 +348,7 @@ void rtw_hal_dm_watchdog(struct adapter
> > > > > > > *padapter)
> > > > > > > 
> > > > > > >  void rtw_hal_dm_watchdog_in_lps(struct adapter *padapter)
> > > > > > >  {
> > > > > > > 
> > > > > > > -	if (adapter_to_pwrctl(padapter)->fw_current_in_ps_mode ==
> > > 
> > > true)
> > > 
> > > > > {
> > > > > 
> > > > > > > +	if (adapter_to_pwrctl(padapter)->fw_current_in_ps_mode) {
> > > > > > > 
> > > > > > >  		if (padapter->HalFunc.hal_dm_watchdog_in_lps)
> > > > > > >  		
> > > > > > >  			padapter-
> > > > > >
> > > > > >HalFunc.hal_dm_watchdog_in_lps(padapter); /* this
> > > > > >
> > > > > > >  			function caller is in interrupt 
> context
> > > > > 
> > > > > */>
> > > > > 
> > > > > > >  	}
> > > > > > > 
> > > > > > > diff --git a/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
> > > > > > > b/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h index
> > > > > > > 0a48f1653be5..0767dbb84199 100644
> > > > > > > --- a/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
> > > > > > > +++ b/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
> > > > > > > @@ -203,7 +203,7 @@ struct pwrctrl_priv {
> > > > > > > 
> > > > > > >  	u8 LpsIdleCount;
> > > > > > >  	u8 power_mgnt;
> > > > > > >  	u8 org_power_mgnt;
> > > > > > > 
> > > > > > > -	u8 fw_current_in_ps_mode;
> > > > > > > +	bool fw_current_in_ps_mode;
> > > > > > > 
> > > > > > >  	unsigned long	DelayLPSLastTimeStamp;
> > > > > > >  	s32		pnp_current_pwr_state;
> > > > > > >  	u8 pnp_bstop_trx;
> > > > > > 
> > > > > > If this is only checked, how can it ever be true?  Who ever sets
> > > > > > this
> > > > > > value?
> > > > > 
> > > > > You're right. It is not set, therefore the "if" control expression
> > > > > cannot ever be "true".
> > > > > 
> > > > > Can I delete this statement in a new patch? Or you prefer I send
> > > > > the
> > > > > whole series again with this change in patch 4/4?
> > > > 
> > > > Just delete the variable from the structure entirely and when it is
> > > > used.
> > > 
> > > I've read the code of the function whom that 'if' statement belongs to.
> > > This function takes a pointer whose name is 'padapter' and this is has
> > > global scope. I think that since fw_current_in_ps_mode is dereferenced
> > > by the function adapter_to_pwrctl(padapter) it can and is indeed
> > > initialized and modified in some other files of the driver.
> > 
> > Where does that happen, and why did the build not break when you changed
> > the variable name?  
> >
> The build didn't break because I changed the name of that variable 
> everywhere it is used in the driver. This patch is against all the affected 
> files of each subdirectory of staging/rtl8723bs.

Right, and as you only had to change it in one place, that tested if
that variable was set to a specific value, and there is no code that
actually sets the variable, it seems like that variable is not ever used
and can be removed.

> > Is the whole variable assigned to a specific
> > location in memory in the device?  Where is it initialized?
> >
> That variable has global scope and is assigned at least in:
> 
> drivers/staging/rtl8723bs/core/rtw_pwrctrl.c:368:                       
> pwrpriv->fw_current_in_ps_mode = false;
> 
> drivers/staging/rtl8723bs/core/rtw_pwrctrl.c:380:                       
> pwrpriv->fw_current_in_ps_mode = true;
> 
> drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c:433:  
> adapter_to_pwrctl(padapter)->fw_current_in_ps_mode = false;
> 
> drivers/staging/rtl8723bs/core/rtw_pwrctrl.c:981:       
> pwrctrlpriv->fw_current_in_ps_mode = false;

But you are only changing 2 files in this patch:

> > > > > > >  drivers/staging/rtl8723bs/hal/hal_intf.c        | 2 +-
> > > > > > >  drivers/staging/rtl8723bs/include/rtw_pwrctrl.h | 2 +-

Ah, you are only changing the type, not the name.  That's the confusion
on my part.

Was the code setting a u8 to "true/false"?  Ugh, what a mess...

thanks,

greg k-h

