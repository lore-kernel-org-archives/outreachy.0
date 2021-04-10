X-GM-THRID: 6949457058068430848
X-Received: by 2002:a25:d8c:: with SMTP id 134mr14761554ybn.464.1618052619485;
        Sat, 10 Apr 2021 04:03:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6902:702:: with SMTP id k2ls5195198ybt.2.gmail; Sat, 10
 Apr 2021 04:03:38 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzA73+zlDcKeOWK3wHDwu7pHZ1XHPLhAWqMusDiTTLTEzsP7cJ2Zq92KF07YaWq9C8XD3Lf
X-Received: by 2002:a25:a4e2:: with SMTP id g89mr8329032ybi.251.1618052618265;
        Sat, 10 Apr 2021 04:03:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618052618; cv=none;
        d=google.com; s=arc-20160816;
        b=in2yaVSVxXPvJSCgUJ6JoeFlBBofgtk8hW770GmOtXcPbnNMTFumDCmDuFPez5K3JS
         Ix/hoFnQDhz99rA2BKdqbqkLl40u2i+WpkLf59hdkr/jO5Lk/dnyP9l5NF/6k8I3GF/6
         fAFNo2MU4/09JttsGzilbPh4IBWl1CUt3TQtq8T99vhUMeATHyXTaPnZ1CV++8Fc0mAK
         SAvzP73lFM29Bhd/obVK7AC58yA1CPCpmqNFcmKbsIsaIwAn75fxoX0yL3pl/O47uggv
         o96j8YAZex/uY6Z0H6vldWwoTMKVbiNB/crQGWsVLhAM+eGDLQN0LADS/e2A6x1RxR7Z
         SNQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=PxPv9NMnd22+TW9nBx4uIX8wyaskDuAHaek2h84Zk+Q=;
        b=hE4Sf5+Ihgq02zIOKJz2xJ5bRICzQ1n2vQO6xOkrqilE7VkiRnurFLah09YeDm2Vl3
         gMQDAzw0CUDVStCZDZIlBbWopTbn0Pe1zR1djLHwQvx7ufhqbbjTtgkI8zKj1NhRKS3x
         htNaE8q+INKxy4xmc23YCPo2DcELZoLNI7Xj5wFvyZXDyh/rJaV+jCnhpKQNUUYJw/bj
         brhDm4a9xahcjJtTzt2aE+sIuQSvKKD5io0kb+S9AntlBoUxvBbgDSLO/RHuRRNo5qy6
         qs8gQH7u6zDfwvNOclq7+22/UURIXn2cF4avzWGSTGC6WRqrVkI8P1v88MDgdZn0beXf
         iXkw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=Dlrhix81;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q185si184434ybc.1.2021.04.10.04.03.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Apr 2021 04:03:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=Dlrhix81;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id CD94D610CC;
	Sat, 10 Apr 2021 11:03:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1618052617;
	bh=HVADa29fe9T6+v256kY7hzVwnzoltnOS4D4OW0NwYck=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Dlrhix81svRVtrTm5HKfzDvoPE0v2rgjRE6D/x9c2dZCHVgJNtchuY/APuELuczT+
	 buXj/n4SwIh0CQldyWPj4ILkbMnoWj6IMZYlgaZrK3wU8LJCFhA0yjPJYV/R6n/TF5
	 JsYH1VeKafd5WG4f0uqscGIoqEOO72Uge66apdy4=
Date: Sat, 10 Apr 2021 13:03:34 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, julia.lawall@inria.fr
Subject: Re: [Outreachy kernel] [PATCH 4/4] staging: rtl8723bs: Change the
 type and use of a variable
Message-ID: <YHGGBpSLj+W8ikXz@kroah.com>
References: <20210410092232.15155-1-fmdefrancesco@gmail.com>
 <24152421.bNubvhIgUM@localhost.localdomain>
 <YHF+f48MM6xEEv9R@kroah.com>
 <4547533.LBOHeWh67L@localhost.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4547533.LBOHeWh67L@localhost.localdomain>

On Sat, Apr 10, 2021 at 12:58:06PM +0200, Fabio M. De Francesco wrote:
> On Saturday, April 10, 2021 12:31:27 PM CEST Greg KH wrote:
> > On Sat, Apr 10, 2021 at 11:56:48AM +0200, Fabio M. De Francesco wrote:
> > > On Saturday, April 10, 2021 11:31:16 AM CEST Greg KH wrote:
> > > > On Sat, Apr 10, 2021 at 11:22:32AM +0200, Fabio M. De Francesco 
> wrote:
> > > > > Change the type of fw_current_in_ps_mode from u8 to bool, because
> > > > > it is used everywhere as a bool and, accordingly, it should be
> > > > > declared as a bool. Shorten the controlling
> > > > > expression of an 'if' statement.
> > > > > 
> > > > > Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> > > > > ---
> > > > > 
> > > > >  drivers/staging/rtl8723bs/hal/hal_intf.c        | 2 +-
> > > > >  drivers/staging/rtl8723bs/include/rtw_pwrctrl.h | 2 +-
> > > > >  2 files changed, 2 insertions(+), 2 deletions(-)
> > > > > 
> > > > > diff --git a/drivers/staging/rtl8723bs/hal/hal_intf.c
> > > > > b/drivers/staging/rtl8723bs/hal/hal_intf.c index
> > > > > 96fe172ced8d..8dc4dd8c6d4c 100644
> > > > > --- a/drivers/staging/rtl8723bs/hal/hal_intf.c
> > > > > +++ b/drivers/staging/rtl8723bs/hal/hal_intf.c
> > > > > @@ -348,7 +348,7 @@ void rtw_hal_dm_watchdog(struct adapter
> > > > > *padapter)
> > > > > 
> > > > >  void rtw_hal_dm_watchdog_in_lps(struct adapter *padapter)
> > > > >  {
> > > > > 
> > > > > -	if (adapter_to_pwrctl(padapter)->fw_current_in_ps_mode == 
> true)
> > > 
> > > {
> > > 
> > > > > +	if (adapter_to_pwrctl(padapter)->fw_current_in_ps_mode) {
> > > > > 
> > > > >  		if (padapter->HalFunc.hal_dm_watchdog_in_lps)
> > > > >  		
> > > > >  			padapter-
> > > >
> > > >HalFunc.hal_dm_watchdog_in_lps(padapter); /* this
> > > >
> > > > >  			function caller is in interrupt context
> > > 
> > > */>
> > > 
> > > > >  	}
> > > > > 
> > > > > diff --git a/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
> > > > > b/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h index
> > > > > 0a48f1653be5..0767dbb84199 100644
> > > > > --- a/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
> > > > > +++ b/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
> > > > > @@ -203,7 +203,7 @@ struct pwrctrl_priv {
> > > > > 
> > > > >  	u8 LpsIdleCount;
> > > > >  	u8 power_mgnt;
> > > > >  	u8 org_power_mgnt;
> > > > > 
> > > > > -	u8 fw_current_in_ps_mode;
> > > > > +	bool fw_current_in_ps_mode;
> > > > > 
> > > > >  	unsigned long	DelayLPSLastTimeStamp;
> > > > >  	s32		pnp_current_pwr_state;
> > > > >  	u8 pnp_bstop_trx;
> > > > 
> > > > If this is only checked, how can it ever be true?  Who ever sets this
> > > > value?
> > > 
> > > You're right. It is not set, therefore the "if" control expression
> > > cannot ever be "true".
> > > 
> > > Can I delete this statement in a new patch? Or you prefer I send the
> > > whole series again with this change in patch 4/4?
> > 
> > Just delete the variable from the structure entirely and when it is
> > used.
> >
> I've read the code of the function whom that 'if' statement belongs to. 
> This function takes a pointer whose name is 'padapter' and this is has 
> global scope. I think that since fw_current_in_ps_mode is dereferenced by 
> the function adapter_to_pwrctl(padapter) it can and is indeed initialized 
> and modified in some other files of the driver.

Where does that happen, and why did the build not break when you changed
the variable name?  Is the whole variable assigned to a specific
location in memory in the device?  Where is it initialized?

> That's why I'll leave the if statement as is now. If I am wrong there's 
> time to change it later in a future patch.

Don't change obviously wrong code, we can clean it up properly :)

thanks,

greg k-h

