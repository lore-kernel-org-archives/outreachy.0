X-GM-THRID: 6949457058068430848
X-Received: by 2002:a17:90a:2e86:: with SMTP id r6mr17856121pjd.106.1618050691178;
        Sat, 10 Apr 2021 03:31:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:7c11:: with SMTP id x17ls4139618pfc.6.gmail; Sat, 10 Apr
 2021 03:31:30 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx0R3ieai+cwk2Zd5nzEF4MskUXhu03Erj5uFHvMliehBGU3vFgbqIu48LBOlk8ixc+S1py
X-Received: by 2002:a65:40c7:: with SMTP id u7mr17251705pgp.29.1618050690085;
        Sat, 10 Apr 2021 03:31:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618050690; cv=none;
        d=google.com; s=arc-20160816;
        b=dDYMTkaAzixBlS9e729T8ixnYPPDOkvk/q0JLxHld2zvIok4IYv0Rdmr6eTArfVv/Q
         5VPfJbQDNdnxkQEzwJL2FUOGWw5fVyEYGPQnBeGptQoTaBF6N2/L/nNpBaz9yuiRcqii
         Saaf7AusmIDj2psT6NkKO+pr2JxsomEzqAt0iOO+htPmZf6AKwZEpwrXtd0SKVeXwKNs
         FOZJOaLPeg8NB4shw9hM/ubREEGdJSGX0+ox4/o6DTBrGVYz3uwMJR7jq2lSJK7hhLSO
         4zjYBq3qZwUhkJXZO0puVcH3k14JdfSGgeQolrcmiyraqim02Iccp0lBxndADM/Bl0RU
         Zzmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=LyrCXtFVvvKkm/FdHPbQa/ypRgqlpPsR0rGsnH51djk=;
        b=VqDmBdpgqDJrwLC9SBmPsZ7WYhOPJpggurKQTN2Nd6tcjuxL+5EHE6ha/PgV3M1dma
         mUxBqrGBBebpnBmPatiESWp3onO3DoHCY2mrMg2ULSyPbuqbXqGxuWs9NK2Lfe3Y2tI5
         Ewd44Hy9YCOJChoL3CDUPO62zqyDkR1CATduQfPL4QeXf8SMdVT+z+FDaIcTiqtcQBim
         R17qVWe6OHmqbk3PHN8X4kcuQ614n/SD1dkFdFH7Yy4Nyt7AKXh8SjZ0bEchNAsLzVxY
         2iB6iKKzQ0QYAPZaifWjvO4YMDu3DiIPORM0XD1tn9pF41yrP54qkw4JMXWsDWSZY4Gy
         Qi9A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=y1HUHEHE;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w16si261404pjq.3.2021.04.10.03.31.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Apr 2021 03:31:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=y1HUHEHE;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id 26738610CC;
	Sat, 10 Apr 2021 10:31:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1618050689;
	bh=XESUERAc0hZuhgJgKDt7VFq6TSKF+sm2dkhBnDr/gLw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=y1HUHEHEBqSXtQwqiEWSW+gpb7dyX+XMCwoWFjA6IFnarTYGmx7d/7+Va4HD9yQqw
	 +iTcpMgORyJJN9W+u33nTvc2AOsYg2WkM+tIe7fTX14oqQE9J6/XzJKIVaYs8bGTMU
	 hwtNpZ7jU7gweudRfDswBPdXfTRhzq2P20zoAz/U=
Date: Sat, 10 Apr 2021 12:31:27 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH 4/4] staging: rtl8723bs: Change the
 type and use of a variable
Message-ID: <YHF+f48MM6xEEv9R@kroah.com>
References: <20210410092232.15155-1-fmdefrancesco@gmail.com>
 <20210410092232.15155-5-fmdefrancesco@gmail.com>
 <YHFwZCh+s7ymrsQN@kroah.com>
 <24152421.bNubvhIgUM@localhost.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <24152421.bNubvhIgUM@localhost.localdomain>

On Sat, Apr 10, 2021 at 11:56:48AM +0200, Fabio M. De Francesco wrote:
> On Saturday, April 10, 2021 11:31:16 AM CEST Greg KH wrote:
> > On Sat, Apr 10, 2021 at 11:22:32AM +0200, Fabio M. De Francesco wrote:
> > > Change the type of fw_current_in_ps_mode from u8 to bool, because
> > > it is used everywhere as a bool and, accordingly, it should be
> > > declared as a bool. Shorten the controlling
> > > expression of an 'if' statement.
> > > 
> > > Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> > > ---
> > > 
> > >  drivers/staging/rtl8723bs/hal/hal_intf.c        | 2 +-
> > >  drivers/staging/rtl8723bs/include/rtw_pwrctrl.h | 2 +-
> > >  2 files changed, 2 insertions(+), 2 deletions(-)
> > > 
> > > diff --git a/drivers/staging/rtl8723bs/hal/hal_intf.c
> > > b/drivers/staging/rtl8723bs/hal/hal_intf.c index
> > > 96fe172ced8d..8dc4dd8c6d4c 100644
> > > --- a/drivers/staging/rtl8723bs/hal/hal_intf.c
> > > +++ b/drivers/staging/rtl8723bs/hal/hal_intf.c
> > > @@ -348,7 +348,7 @@ void rtw_hal_dm_watchdog(struct adapter *padapter)
> > > 
> > >  void rtw_hal_dm_watchdog_in_lps(struct adapter *padapter)
> > >  {
> > > 
> > > -	if (adapter_to_pwrctl(padapter)->fw_current_in_ps_mode == true) 
> {
> > > +	if (adapter_to_pwrctl(padapter)->fw_current_in_ps_mode) {
> > > 
> > >  		if (padapter->HalFunc.hal_dm_watchdog_in_lps)
> > >  		
> > >  			padapter-
> >HalFunc.hal_dm_watchdog_in_lps(padapter); /* this
> > >  			function caller is in interrupt context 
> */>  	
> > >  	}
> > > 
> > > diff --git a/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
> > > b/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h index
> > > 0a48f1653be5..0767dbb84199 100644
> > > --- a/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
> > > +++ b/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
> > > @@ -203,7 +203,7 @@ struct pwrctrl_priv {
> > > 
> > >  	u8 LpsIdleCount;
> > >  	u8 power_mgnt;
> > >  	u8 org_power_mgnt;
> > > 
> > > -	u8 fw_current_in_ps_mode;
> > > +	bool fw_current_in_ps_mode;
> > > 
> > >  	unsigned long	DelayLPSLastTimeStamp;
> > >  	s32		pnp_current_pwr_state;
> > >  	u8 pnp_bstop_trx;
> > 
> > If this is only checked, how can it ever be true?  Who ever sets this
> > value?
> >
> You're right. It is not set, therefore the "if" control expression cannot 
> ever be "true".
> 
> Can I delete this statement in a new patch? Or you prefer I send the whole 
> series again with this change in patch 4/4?

Just delete the variable from the structure entirely and when it is
used.

thanks,

greg k-h

