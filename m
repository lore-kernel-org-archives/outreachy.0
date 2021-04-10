X-GM-THRID: 6949457058068430848
X-Received: by 2002:a2e:8002:: with SMTP id j2mr12032862ljg.31.1618050615466;
        Sat, 10 Apr 2021 03:30:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:6c2:: with SMTP id u2ls355472lff.3.gmail; Sat, 10
 Apr 2021 03:30:13 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJznMGH3hAhIXkWsojdNjhFD/8VUGSe+Xuma2Fj6cnAWWknzikDgS7ug1BCuLBOhwhnuN2jt
X-Received: by 2002:ac2:5e2f:: with SMTP id o15mr12580673lfg.190.1618050613494;
        Sat, 10 Apr 2021 03:30:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618050613; cv=none;
        d=google.com; s=arc-20160816;
        b=Rd7afMTTXwLXcOxxhWBaAESnMW7sNaeUqLJHWCaThdUZJX+4rR/zpLH6ftYIC3pmbX
         9LuYj5V4YJgUWNI1yvWncXnJ0h2VzVSQWMyIRNrTQIeH+hWyf66QXuDq/515uN13zu+6
         PrYbQx5SnZ3vUMGKLdyKx9Cn6AizL3DKdXshkuTPP54zWMNVcuI4QeQSDMA7tReNCHID
         bxZYNOFw+zVPapjQMEMveEzowhHFIDCMwIf1ZmWMlCViV6BHFh6VdwpWz5U249ArdBRS
         Q3DQbq5aQMoEfFHolKRaaFYgQKUEmKbXp8SbB2VRESwLMRQGvBGqDD+4HZwLJ1Bpg75M
         P0Fg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=KZtvBXHghkCPjThgp+ERXgdtvK2pMC88+TMENeH4LOI=;
        b=YW4+jXU1ZXJ1yG7xwTZzsaF7yaXqg/W2Bngq3/+93dpDkgw7a0g7rKtaZBBs2kc4iG
         USWmPid899fcNrx0NwdNqge6H3INYAaA8GOEKo4pqyKgUBRVTR37aYEUepTFWmo1b5z5
         6Fibfo9DdAKDCbXRcbgpHYYRYGTqzmO0A/WqtHcT5a83mgPlzjX7mYOavEwsXt2cGFup
         YAWM7hgqiCxxpWN0RIEZG1N/cw69IHOEe+rJ7xO/BHGgIH6GqggSomxjZVtv1DX1KV68
         mujHblSuw97dWbrVzU4VWRtx4j/7JvtvmX2E1/T5q+Ncgzs1RviIRI0mfd0KWPrw8fua
         pGSA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=X+oQNXaW;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::529 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com. [2a00:1450:4864:20::529])
        by gmr-mx.google.com with ESMTPS id l11si401368lfg.13.2021.04.10.03.30.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Apr 2021 03:30:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::529 as permitted sender) client-ip=2a00:1450:4864:20::529;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=X+oQNXaW;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::529 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x529.google.com with SMTP id w18so9427887edc.0
        for <outreachy-kernel@googlegroups.com>; Sat, 10 Apr 2021 03:30:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=KZtvBXHghkCPjThgp+ERXgdtvK2pMC88+TMENeH4LOI=;
        b=X+oQNXaWJMJyhzy490wi14GT7jC/LsGjcqokjuh3kYtFYMNEUMszggqhThrSZALGRj
         HgP+LbR+H7B+pZfdGGTum4OVixyczRWc7Lxng7R5EWNPjyLIDz4z4Jv9CxyKFhWXGXBq
         n4RtnCQEABZ+5B/VraOCcBCm9TXRaZydFKNypEQvDtunD/2xSB30CXHKuAQmgKq9s3SS
         VAl2u0tyJSo5wTh2Jp22LMdhWLK8jDT9zUZ0DcPKhsjSI25kMIFmOdw5Y8fSkPwGh+is
         Bu83nL9GsAhyWDtZLiAm9p0OUryxnfqXg5S34aH4d0MAPI69OuJ2h3Z7JmHZxJVf743c
         ozUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=KZtvBXHghkCPjThgp+ERXgdtvK2pMC88+TMENeH4LOI=;
        b=iifaL/RZAFxJghoeVSjH3OGm1pMgSprMPHw7i5IbmqRLBU00txG/p2SaI8FIZ+TZBF
         N5UAmqAykfhR12HFUKSma5lmPOpbMr9OF9JClV7slOD98uQhYeDXeq4zhEmmLLiiy01y
         PjGy7o424otdre6GnEhAaEjgJf2vx2DFVd0iX+cY17aGjFemO6Yl2TcCAcqJEzyl5aJN
         NUMNDiha7YEg0LfbqRwFByzWSomJrQj7n72kAzzRncdu1/yL9OIADQw4G/RN3VfrypyZ
         QghBD/ZueB//3awXYtioN7MCI6hNpEl5v5EOb5mdn/7qQllP6e9e9v7BFVegwZgNbwp8
         DhlQ==
X-Gm-Message-State: AOAM533OD5Y7q4HNVWjsiY7rVIQ05TYCgcHQ2g6Y882U4cCbRsRn1Arl
	XCV8yI4lxr6wf4Exm8Mgq2VRUrBwaVl9LjMY
X-Received: by 2002:aa7:c74c:: with SMTP id c12mr21012781eds.346.1618050613062;
        Sat, 10 Apr 2021 03:30:13 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id t1sm2850188eds.53.2021.04.10.03.30.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Apr 2021 03:30:12 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 4/4] staging: rtl8723bs: Change the type and use of a variable
Date: Sat, 10 Apr 2021 12:30:11 +0200
Message-ID: <2763621.eYLsMQpWYC@localhost.localdomain>
In-Reply-To: <alpine.DEB.2.22.394.2104101202370.2975@hadrien>
References: <20210410092232.15155-1-fmdefrancesco@gmail.com> <alpine.DEB.2.22.394.2104101201130.2975@hadrien> <alpine.DEB.2.22.394.2104101202370.2975@hadrien>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="US-ASCII"

On Saturday, April 10, 2021 12:03:14 PM CEST you wrote:
> On Sat, 10 Apr 2021, Julia Lawall wrote:
> > On Sat, 10 Apr 2021, Greg KH wrote:
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
true) {
> > > > +	if (adapter_to_pwrctl(padapter)->fw_current_in_ps_mode) {
> > > > 
> > > >  		if (padapter->HalFunc.hal_dm_watchdog_in_lps)
> > > >  		
> > > >  			padapter-
>HalFunc.hal_dm_watchdog_in_lps(padapter); /* this
> > > >  			function caller is in interrupt context 
*/> > >  	
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
> > I think it's already updated everywhere with true and false, so there
> > is
> > nothing to change.  But it would be good to make that clear in the log
> > message.
> 
> Oops, I was thinking of the field, not the local variable.
> If the field is never set, that seems like a big problem...
> 
> julia
>
>
Julia, I'm a bit confused...

I've anew examined that line and noticed that fw_current_in_ps_mode is 
referenced by through a pointer returned by adapter_to_pwrctl(padapter). 
padapter is a pointer set in other files of the driver.

To me it seems that is perfectly reasonable that, as a result, 
fw_current_in_ps_mode could be set (externally) either with true or false.

I'm sure I'm missing something, since both you and Greg have a larger 
experience than I could ever have. Can you please elaborate this topic a 
bit more in order to make me understand whatever I can't see?

Thanks for your kind help,

Fabio
>
> 
> > julia
> > 
> > > thanks,
> > > 
> > > greg k-h
> > > 
> > > --
> > > You received this message because you are subscribed to the Google
> > > Groups "outreachy-kernel" group. To unsubscribe from this group and
> > > stop receiving emails from it, send an email to
> > > outreachy-kernel+unsubscribe@googlegroups.com. To view this
> > > discussion on the web visit
> > > https://groups.google.com/d/msgid/outreachy-kernel/YHFwZCh%2Bs7ymrsQ
> > > N%40kroah.com.





