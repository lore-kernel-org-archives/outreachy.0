X-GM-THRID: 6949457058068430848
X-Received: by 2002:a2e:88ca:: with SMTP id a10mr11795977ljk.55.1618052290361;
        Sat, 10 Apr 2021 03:58:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:7408:: with SMTP id p8ls29692ljc.1.gmail; Sat, 10 Apr
 2021 03:58:08 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzVE+F9gq+oP755aIwDe9MA2S9HU+ILnYBHA2dmqZBE9yqYLsJWBGGk6kaqhQGClGVmI8yL
X-Received: by 2002:a2e:2a44:: with SMTP id q65mr6681847ljq.287.1618052288729;
        Sat, 10 Apr 2021 03:58:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618052288; cv=none;
        d=google.com; s=arc-20160816;
        b=Slp2jBqUOg5gL1YfM8zn/PNF3j8WKBPex62tJgm7cTqGbxRkwxm2hvY3MKopKNVwj8
         sQgjBkQaCPP4IGsPokT4LF6cUWrWh73QguSIS+VX7LTo9jnGIPAi1Hp5OvdJ6wF3x5CO
         HMSAypMjw/Pxi/7ajjcg946VQus73PzjUw8+q19lXxAQLFqwG/RrO4pUjb7a+vb/8z8d
         3+xUavLn5LKIPsC1u+NME93zd2qEnMBmcI61qW6+DKO6gvPylF2Eg7TxfDwifNDHzFZr
         KXnOP8OEWBI4GfBWN2z0Cp2XjdX45eJ7i9Q7ZSOR7C7HbMIBjIAE+f5K/7TWPNC/ihCX
         4OOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ROe54EUBS6P//owdgw5fvBq4o0Vbjcf9ONg8ZiEC+os=;
        b=Dr6EBDfpRcDfNb4iZf3Ff3eeQPdsASxj5eLtHDdl/i6MFwcl39mU8OlSSMG+mGYM4H
         VnKfeLoWYI9WVOXcHMiy4tyW+ElcckV1sHb4QxBWU0IiCuI5n1GBbb9wez/RlfDEfk2Z
         zjK9Udr3XFt6tu8mlOxvyg6IUKs2oCbDsMz29wvZjzjivBqa+n3YF+jX7mgPl/kFUqkO
         HuHS0fxSl0hzMD0e10gzVKCOjesKlzDYH0NBemfX0s/25r9Ozir90MRONIz42V31rAyU
         PCXpZs7Ix/RCfNsxF5CsCAyoM+cvPk8Lrurd8VdbTG7PuvcLN/0jcQ6X0jH6NqWp/gfh
         kITg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="QGIDmy/M";
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62e as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com. [2a00:1450:4864:20::62e])
        by gmr-mx.google.com with ESMTPS id c17si367790ljn.7.2021.04.10.03.58.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Apr 2021 03:58:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62e as permitted sender) client-ip=2a00:1450:4864:20::62e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="QGIDmy/M";
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62e as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x62e.google.com with SMTP id hq27so12504578ejc.9
        for <outreachy-kernel@googlegroups.com>; Sat, 10 Apr 2021 03:58:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ROe54EUBS6P//owdgw5fvBq4o0Vbjcf9ONg8ZiEC+os=;
        b=QGIDmy/MbbCxMi8OtpIcLiJBG46rpIFqpY1JqEwRByZcGputTvmqvObU6M5TmJbu6D
         V1/K5QxzbfTggCV5bjIucPNFkTsc6lNpLyjgVDqKlw3jfk1Tc5eoGD9XU+Qy0gONAA6D
         6MKvdfhFsubvfFIaubsyrYzXaPYxhbOBwuvf480odfET7yBoy8c0BwYNPlwh1zHCi3TJ
         N1zFBJb3UDJ/xccJ9wyC6Z8G8VcmZbOLLqjJs9/X5glX/D2Kq49b3FnAmSSWEFlHyVQa
         VJBjZ+Nmznnw5IYe4U9D/j8xa7e7c8m8iY8LvGICTuiqy+CBwibAY2uN2Egr5dDBWGKV
         Nhmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ROe54EUBS6P//owdgw5fvBq4o0Vbjcf9ONg8ZiEC+os=;
        b=LSNClSXeW5VmunuMuze9g+bAX8iruzUxPW4XSbf8F/9qEgSZjvta2c5zkgb019l2og
         /my4cQELYMlcYQ45FZ7B6LhbyzCTY2fZ1C3XnXYgjkdBW0UPJDAHBqz5oG1y8NWW/76F
         /dvc6klJnR9q9HqAGCNL2tlaxoHxUl3UoJG5hssrxYMSwX6zYhZFNyBRPfV5tJHA4G4E
         mG/6KDvv8XUCemP54OMh+SUgyfEBsr51u7VHz9Ts0blTWoOmUwuiHekDxVPmOitFgxTj
         0tHGVkdjdBdJX670MdU9AF1JEeyOLj5uW1sTZG77VmyObK4NK7DWg3PSKckJvYRzWMlM
         qymg==
X-Gm-Message-State: AOAM5330d3/OlC0vkNcHXPJq/OZqSt/0TcZZeLHJTixgihCti4iYY8yO
	Emp1zlyNld+3wuZxXU7wsTOxLIg7qqgZ1TBP
X-Received: by 2002:a17:906:6b05:: with SMTP id q5mr1279198ejr.460.1618052288237;
        Sat, 10 Apr 2021 03:58:08 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id dj8sm2908869edb.86.2021.04.10.03.58.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Apr 2021 03:58:07 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, julia.lawall@inria.fr
Subject: Re: [Outreachy kernel] [PATCH 4/4] staging: rtl8723bs: Change the type and use of a variable
Date: Sat, 10 Apr 2021 12:58:06 +0200
Message-ID: <4547533.LBOHeWh67L@localhost.localdomain>
In-Reply-To: <YHF+f48MM6xEEv9R@kroah.com>
References: <20210410092232.15155-1-fmdefrancesco@gmail.com> <24152421.bNubvhIgUM@localhost.localdomain> <YHF+f48MM6xEEv9R@kroah.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Saturday, April 10, 2021 12:31:27 PM CEST Greg KH wrote:
> On Sat, Apr 10, 2021 at 11:56:48AM +0200, Fabio M. De Francesco wrote:
> > On Saturday, April 10, 2021 11:31:16 AM CEST Greg KH wrote:
> > > On Sat, Apr 10, 2021 at 11:22:32AM +0200, Fabio M. De Francesco 
wrote:
> > > > Change the type of fw_current_in_ps_mode from u8 to bool, because
> > > > it is used everywhere as a bool and, accordingly, it should be
> > > > declared as a bool. Shorten the controlling
> > > > expression of an 'if' statement.
> > > > 
> > > > Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> > > > ---
> > > > 
> > > >  drivers/staging/rtl8723bs/hal/hal_intf.c        | 2 +-
> > > >  drivers/staging/rtl8723bs/include/rtw_pwrctrl.h | 2 +-
> > > >  2 files changed, 2 insertions(+), 2 deletions(-)
> > > > 
> > > > diff --git a/drivers/staging/rtl8723bs/hal/hal_intf.c
> > > > b/drivers/staging/rtl8723bs/hal/hal_intf.c index
> > > > 96fe172ced8d..8dc4dd8c6d4c 100644
> > > > --- a/drivers/staging/rtl8723bs/hal/hal_intf.c
> > > > +++ b/drivers/staging/rtl8723bs/hal/hal_intf.c
> > > > @@ -348,7 +348,7 @@ void rtw_hal_dm_watchdog(struct adapter
> > > > *padapter)
> > > > 
> > > >  void rtw_hal_dm_watchdog_in_lps(struct adapter *padapter)
> > > >  {
> > > > 
> > > > -	if (adapter_to_pwrctl(padapter)->fw_current_in_ps_mode == 
true)
> > 
> > {
> > 
> > > > +	if (adapter_to_pwrctl(padapter)->fw_current_in_ps_mode) {
> > > > 
> > > >  		if (padapter->HalFunc.hal_dm_watchdog_in_lps)
> > > >  		
> > > >  			padapter-
> > >
> > >HalFunc.hal_dm_watchdog_in_lps(padapter); /* this
> > >
> > > >  			function caller is in interrupt context
> > 
> > */>
> > 
> > > >  	}
> > > > 
> > > > diff --git a/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
> > > > b/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h index
> > > > 0a48f1653be5..0767dbb84199 100644
> > > > --- a/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
> > > > +++ b/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
> > > > @@ -203,7 +203,7 @@ struct pwrctrl_priv {
> > > > 
> > > >  	u8 LpsIdleCount;
> > > >  	u8 power_mgnt;
> > > >  	u8 org_power_mgnt;
> > > > 
> > > > -	u8 fw_current_in_ps_mode;
> > > > +	bool fw_current_in_ps_mode;
> > > > 
> > > >  	unsigned long	DelayLPSLastTimeStamp;
> > > >  	s32		pnp_current_pwr_state;
> > > >  	u8 pnp_bstop_trx;
> > > 
> > > If this is only checked, how can it ever be true?  Who ever sets this
> > > value?
> > 
> > You're right. It is not set, therefore the "if" control expression
> > cannot ever be "true".
> > 
> > Can I delete this statement in a new patch? Or you prefer I send the
> > whole series again with this change in patch 4/4?
> 
> Just delete the variable from the structure entirely and when it is
> used.
>
I've read the code of the function whom that 'if' statement belongs to. 
This function takes a pointer whose name is 'padapter' and this is has 
global scope. I think that since fw_current_in_ps_mode is dereferenced by 
the function adapter_to_pwrctl(padapter) it can and is indeed initialized 
and modified in some other files of the driver.

That's why I'll leave the if statement as is now. If I am wrong there's 
time to change it later in a future patch.

Thanks for your kind review,

Fabio
>
> 
> thanks,
> 
> greg k-h





