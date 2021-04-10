X-GM-THRID: 6949457058068430848
X-Received: by 2002:ac2:5285:: with SMTP id q5mr7145904lfm.489.1618048925616;
        Sat, 10 Apr 2021 03:02:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:48c6:: with SMTP id v189ls336020lfa.0.gmail; Sat, 10 Apr
 2021 03:02:03 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzmURoSd9QIO1SuyjE0ep/ygeFB8GuGncPRCPMJFkOsaUc64pjLi2/KDUFGuJJiVAt8jmz2
X-Received: by 2002:a05:6512:38aa:: with SMTP id o10mr13017073lft.261.1618048923716;
        Sat, 10 Apr 2021 03:02:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618048923; cv=none;
        d=google.com; s=arc-20160816;
        b=zkm5jQIuc/iS1Z8UMr3vnnWulZWguEbNRHGW2q1UbxUxogW+4fwa1jW5u54QHMmzJS
         5C3o4Fog2op4bi2CoMm8vyh/B+DPT3/4Q9eu0ffwUnZfMLA7TTwN77TVaizTLICpV9Xm
         0Zh+wRHc4+7UO+QwrH/USpT9CLMjCL6iRQocBzqpTbytpWq2bs7XKGt58Sr+KZffUt2g
         QbtC0aTo8uKM0sH+eRbzaDVxcSj0W5dnh7qEjSnH17I8bu0L1rU5MbHxlBNV1vfNXi+u
         tBYOptQ01rb691H9BKQ8Mp77Lu2G3qotc126AcRnbzVTrlxOPGJ5ySwi4JPEjGb+6YK3
         dZWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=6mNgwymYsXQ1tFkdakqvNL3keVab/3Dgm2sFDJNyWTM=;
        b=KP2ihkuMLU7ZB1HrbTmlaxo/NRec2RGFYEkiys3o/IqMpaH0x9VOJcLA4weM0kAW2r
         mpJeihVuyTVb1AYkMtDqaaeCEB6ADA0x4pubAVumZ9ybVEVVwrkygw034W6FLTw/cbEh
         syI/0FpyblBCM746Boz/XhbQXpCq8IXRYC64/n3R6P4VlNOBowl1mRZNYEPzG1E57geW
         8TL8z8shi56T743lQRYGoM3CG0tCzQDp5R+Hd7UzXqeWmXQdzvNCatrGRXuH1V39f4kg
         WqhRTx0ijOPlAGKF6jHlTcEkMAi7JyGFbdfNCGuBHV+YJBpbXgawBuzjfflTuAkn+1Ge
         de1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id j7si342592lfm.9.2021.04.10.03.02.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Apr 2021 03:02:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AIXeaRaADPdMXYWflHeissceALOonbusQ8zAX?=
 =?us-ascii?q?/mp2TgFYddHdqtC2kJ0gpG7JoRsyeFVlo9CPP6GcXWjRnKQf3aA9NaqvNTOWx1?=
 =?us-ascii?q?eAAJp465D5hyDncheSysdzzqFlGpIOcuHYKFhhkILH5xOlGMwr29mN/MmT69v2?=
 =?us-ascii?q?61dIYUVUZ7p77wF/YzzraXFeYAVdH5I2GN69y6N8yAaIQngcYsSlCnRtZYGqze?=
 =?us-ascii?q?Hjr57+ZA5DOhhP0njzsRqS5KPnCB/d5x8CUlp0rYsKy3TPkADy+8yYwo+G4yLb?=
 =?us-ascii?q?vlWjkqh+qZ/EwttHCNfksKkoAwSpuxa6II9qXNS5zVIIidDq2UY41NLHvn4bTr?=
 =?us-ascii?q?xOwkKUT3Gn5RHrsjOQswoG2jvS2Uzdi2CLm6zEbQN/OtpTwYhFGyGpknYIjZVM?=
 =?us-ascii?q?wLEO03/xjesxMTrw2BXs9JzNWnhR5y+JiEtnoP4By3hQOLFuDIN5nMgv7FAQCZ?=
 =?us-ascii?q?VoJlOd1Lwa?=
X-IronPort-AV: E=Sophos;i="5.82,210,1613430000"; 
   d="scan'208";a="378277371"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Apr 2021 12:02:02 +0200
Date: Sat, 10 Apr 2021 12:02:02 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Greg KH <gregkh@linuxfoundation.org>
cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>, 
    outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev, 
    linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH 4/4] staging: rtl8723bs: Change the
 type and use of a variable
In-Reply-To: <YHFwZCh+s7ymrsQN@kroah.com>
Message-ID: <alpine.DEB.2.22.394.2104101201130.2975@hadrien>
References: <20210410092232.15155-1-fmdefrancesco@gmail.com> <20210410092232.15155-5-fmdefrancesco@gmail.com> <YHFwZCh+s7ymrsQN@kroah.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 10 Apr 2021, Greg KH wrote:

> On Sat, Apr 10, 2021 at 11:22:32AM +0200, Fabio M. De Francesco wrote:
> > Change the type of fw_current_in_ps_mode from u8 to bool, because
> > it is used everywhere as a bool and, accordingly, it should be
> > declared as a bool. Shorten the controlling
> > expression of an 'if' statement.
> >
> > Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> > ---
> >  drivers/staging/rtl8723bs/hal/hal_intf.c        | 2 +-
> >  drivers/staging/rtl8723bs/include/rtw_pwrctrl.h | 2 +-
> >  2 files changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8723bs/hal/hal_intf.c b/drivers/staging/rtl8723bs/hal/hal_intf.c
> > index 96fe172ced8d..8dc4dd8c6d4c 100644
> > --- a/drivers/staging/rtl8723bs/hal/hal_intf.c
> > +++ b/drivers/staging/rtl8723bs/hal/hal_intf.c
> > @@ -348,7 +348,7 @@ void rtw_hal_dm_watchdog(struct adapter *padapter)
> >
> >  void rtw_hal_dm_watchdog_in_lps(struct adapter *padapter)
> >  {
> > -	if (adapter_to_pwrctl(padapter)->fw_current_in_ps_mode == true) {
> > +	if (adapter_to_pwrctl(padapter)->fw_current_in_ps_mode) {
> >  		if (padapter->HalFunc.hal_dm_watchdog_in_lps)
> >  			padapter->HalFunc.hal_dm_watchdog_in_lps(padapter); /* this function caller is in interrupt context */
> >  	}
> > diff --git a/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h b/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
> > index 0a48f1653be5..0767dbb84199 100644
> > --- a/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
> > +++ b/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
> > @@ -203,7 +203,7 @@ struct pwrctrl_priv {
> >  	u8 LpsIdleCount;
> >  	u8 power_mgnt;
> >  	u8 org_power_mgnt;
> > -	u8 fw_current_in_ps_mode;
> > +	bool fw_current_in_ps_mode;
> >  	unsigned long	DelayLPSLastTimeStamp;
> >  	s32		pnp_current_pwr_state;
> >  	u8 pnp_bstop_trx;
>
> If this is only checked, how can it ever be true?  Who ever sets this
> value?

I think it's already updated everywhere with true and false, so there is
nothing to change.  But it would be good to make that clear in the log
message.

julia

>
> thanks,
>
> greg k-h
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/YHFwZCh%2Bs7ymrsQN%40kroah.com.
>

