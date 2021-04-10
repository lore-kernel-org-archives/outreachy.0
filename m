X-GM-THRID: 6949457058068430848
X-Received: by 2002:a2e:90d:: with SMTP id 13mr6458772ljj.186.1618048611944;
        Sat, 10 Apr 2021 02:56:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:588:: with SMTP id 130ls32804ljf.9.gmail; Sat, 10 Apr
 2021 02:56:50 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxN4WSExDzU6p/c8P21XVQ5enZsxHlaNHRmssMUAgBogDgN7jYqCxrtqzdI7e2iWV80ySfS
X-Received: by 2002:a2e:7618:: with SMTP id r24mr11658104ljc.420.1618048610371;
        Sat, 10 Apr 2021 02:56:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618048610; cv=none;
        d=google.com; s=arc-20160816;
        b=MDEryoyHDv1TBvd3HMMcsscGMyfs0ClY3Z8D0jY6gl4NdUoGMqa2Afh9RfktqO2BY+
         QXyltvgyUE0JFJK4Ku5MNzz/q9itqp3Is2Dxgp5snTRFJiDLrE83994FK8KhrGnjRAzs
         ynXPepuBgGWpCFTC0gFrLeJ6owKuXr2piLL2BcTQ5WHxYbvokwEcC6+YynlJMsWNVXOl
         31xupxeW/ZvXun47Z+xAInspP8U9Bw3U35kIE0nwvG/b4dEcKg19i1h09n11zwtPaX1y
         WyvdRI+1jmd7g8Yzmtib3Tr/qlb8cDvG5BsVsVJC+6KOaY1P/ReHxNuVX3wTKHaltoUz
         o2qQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=R7rBJwvSAC/U1G/3zxbwR8KyBOKUXLbBfKOEweX//uY=;
        b=hunPbGKmOL9yHFE/SS+1JmpcTEbUvAOlyZidCvPywNS3cDrMe9rsXPznPVRmm0Fq9B
         SvMXU2VmUIEm0bAfUE9cYCIdVWnLyuwZssoXg/XJiZkvKcuqgH/km5Kk2Gsbza0gl6x+
         qKM7PgkU+gtS4X3ju+znIOWrVMa2rvK7577SLOKtbWffmb2BC26xKTHYD7IDWdpC/ViU
         VXsSR68o047ag50+DO6A54WtK1E9cGJjCwCTsk8mD5hgDriG0m/cdHpKqFm3/cYPoNUY
         tzUqnhBiGKRvaN8o9Fy7CoaPL8l+fpq5RtuPvbJD29HqhT445XW8o6NRNB+Q616zwmDR
         tLjQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NErw0TlH;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::533 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com. [2a00:1450:4864:20::533])
        by gmr-mx.google.com with ESMTPS id z5si358700ljj.5.2021.04.10.02.56.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Apr 2021 02:56:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::533 as permitted sender) client-ip=2a00:1450:4864:20::533;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NErw0TlH;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::533 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x533.google.com with SMTP id bx20so8143215edb.12
        for <outreachy-kernel@googlegroups.com>; Sat, 10 Apr 2021 02:56:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=R7rBJwvSAC/U1G/3zxbwR8KyBOKUXLbBfKOEweX//uY=;
        b=NErw0TlHpG+ciy/hxMying/Srgf0B9zekhOJhuYaDR23UNAPrZEdMoXSrijuTarJET
         5WMeRO26b30orBqbL9eYFdLuEV5UcnlYTInKiZiaqup4J9LWLq/SBoKdJpaFhHDHPzCU
         fPFx9k0zEJ6HyxVRelnydGHG7ZOiAJ+EPwVoZHj03/UHHDtFleHXEokYwOCoN8ZoSuRJ
         HKyTHpSrG/89jlzjEKiD8u6jH/L5OYfiStV6da+NAjsvzYBEHuwogdo2/7lidszjIXxQ
         tksN3r0yIy+3q4+vZy5lZd9JbWFt4KAsbmMbGJDpdd3a7Qi95yV+OCH8RrpDbE6m5MT6
         AVAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=R7rBJwvSAC/U1G/3zxbwR8KyBOKUXLbBfKOEweX//uY=;
        b=sw9u/jWNiMb/1tvZ3hUZILdCZXCR4vfkxPDoSopRUJNfLcNFf/V/EgeKZy8iDPL8NI
         5OGFcwkoOI7FEB4SjIzjz1A5hiZ9KV9G0gGu4SrWAZla0BXVkoub39ksaPWwmkutie/M
         ycEnUosd14DOX0iMLUbkLr/g3lnzKj/4iJzXlJRP8TtHEcke++RkDTgjxhD5VHcTtxw9
         xWkpoXHjDTxfI27TIApjoql87VG3kyfqLjYs5+cMy6Emxqgb4ADCtL1u1rXg0Ju20nP1
         tdhQQiTi+3BL530X/92RGaxJEpPvo+BxmvIsThuSZZsNaadMcgLf0W5v0Hr52sTCRBvO
         mGUw==
X-Gm-Message-State: AOAM532qDBp0A/HlXJQRFuFKqk1NmTmODb2VKOKIjkbxvoX+zFof9XkU
	+lKXwfWH7GTbeL3oomcHHJP/ZE/Q8O2Zh2Dp
X-Received: by 2002:a05:6402:104c:: with SMTP id e12mr20648735edu.108.1618048609947;
        Sat, 10 Apr 2021 02:56:49 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id p4sm2209078edr.43.2021.04.10.02.56.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Apr 2021 02:56:49 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH 4/4] staging: rtl8723bs: Change the type and use of a variable
Date: Sat, 10 Apr 2021 11:56:48 +0200
Message-ID: <24152421.bNubvhIgUM@localhost.localdomain>
In-Reply-To: <YHFwZCh+s7ymrsQN@kroah.com>
References: <20210410092232.15155-1-fmdefrancesco@gmail.com> <20210410092232.15155-5-fmdefrancesco@gmail.com> <YHFwZCh+s7ymrsQN@kroah.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Saturday, April 10, 2021 11:31:16 AM CEST Greg KH wrote:
> On Sat, Apr 10, 2021 at 11:22:32AM +0200, Fabio M. De Francesco wrote:
> > Change the type of fw_current_in_ps_mode from u8 to bool, because
> > it is used everywhere as a bool and, accordingly, it should be
> > declared as a bool. Shorten the controlling
> > expression of an 'if' statement.
> > 
> > Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> > ---
> > 
> >  drivers/staging/rtl8723bs/hal/hal_intf.c        | 2 +-
> >  drivers/staging/rtl8723bs/include/rtw_pwrctrl.h | 2 +-
> >  2 files changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/staging/rtl8723bs/hal/hal_intf.c
> > b/drivers/staging/rtl8723bs/hal/hal_intf.c index
> > 96fe172ced8d..8dc4dd8c6d4c 100644
> > --- a/drivers/staging/rtl8723bs/hal/hal_intf.c
> > +++ b/drivers/staging/rtl8723bs/hal/hal_intf.c
> > @@ -348,7 +348,7 @@ void rtw_hal_dm_watchdog(struct adapter *padapter)
> > 
> >  void rtw_hal_dm_watchdog_in_lps(struct adapter *padapter)
> >  {
> > 
> > -	if (adapter_to_pwrctl(padapter)->fw_current_in_ps_mode == true) 
{
> > +	if (adapter_to_pwrctl(padapter)->fw_current_in_ps_mode) {
> > 
> >  		if (padapter->HalFunc.hal_dm_watchdog_in_lps)
> >  		
> >  			padapter-
>HalFunc.hal_dm_watchdog_in_lps(padapter); /* this
> >  			function caller is in interrupt context 
*/>  	
> >  	}
> > 
> > diff --git a/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
> > b/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h index
> > 0a48f1653be5..0767dbb84199 100644
> > --- a/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
> > +++ b/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
> > @@ -203,7 +203,7 @@ struct pwrctrl_priv {
> > 
> >  	u8 LpsIdleCount;
> >  	u8 power_mgnt;
> >  	u8 org_power_mgnt;
> > 
> > -	u8 fw_current_in_ps_mode;
> > +	bool fw_current_in_ps_mode;
> > 
> >  	unsigned long	DelayLPSLastTimeStamp;
> >  	s32		pnp_current_pwr_state;
> >  	u8 pnp_bstop_trx;
> 
> If this is only checked, how can it ever be true?  Who ever sets this
> value?
>
You're right. It is not set, therefore the "if" control expression cannot 
ever be "true".

Can I delete this statement in a new patch? Or you prefer I send the whole 
series again with this change in patch 4/4?

Thanks,

Fabio
>
> thanks,
> 
> greg k-h





