X-GM-THRID: 6949457058068430848
X-Received: by 2002:a1c:2857:: with SMTP id o84mr17547093wmo.181.1618049027874;
        Sat, 10 Apr 2021 03:03:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6000:162d:: with SMTP id v13ls58051wrb.1.gmail; Sat, 10
 Apr 2021 03:03:46 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwHWM1MPWdEXDdTjRaRpg5VmKSs5wkyqZxI7xKIUW3mgt2ea++oicfHPaWJk6sZwhygIv9F
X-Received: by 2002:adf:e985:: with SMTP id h5mr3095869wrm.155.1618049026342;
        Sat, 10 Apr 2021 03:03:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618049026; cv=none;
        d=google.com; s=arc-20160816;
        b=e6urF1SSIy7a+KrBLrHetHwYi+rJ2iBSCInFsUTiiNyckAdQlY5FwlCJB0OgipIfgk
         AsWrBZJpeyYdY22ShuwWHeGMLfGfpbOPQ9i+2fzogn9Lt1T6Ijhun6Ox1CIsT4wR7wSr
         ZJJj3BTl13hvLO/thG1m0tF6fQCh+YO3wCeemC1Mgvg00DvvNtwU+bRH8umnx+Zbf+3s
         sDqbrsOtQE/73+HWQoeyq2lEYdJ4uUhbEgh+iBhZ1KT97uYmK4Gb2mwnV3XpSI2BjjEh
         ACPW28IiNQ4xGqQ+r1mbyPh4djBMNNbpYBWY39Gb//gmAxfOZd6wDpck4RGWwnEpv34b
         pMTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=w1dijYnQ+jr5iXGoIyEIdcsE873K8s9rdF9OjzVmWFw=;
        b=DEmuD8Byo8ZP9hM3kvw5EoiZCVVcKGfM6jobzpuWll1oY9AIAVNvsOK0bABCJe+20Y
         fGhkOHqaoF0Q41g4PXZEU/Yd9nU7JSMbma0AtB2JIqRv3hCB9CImMOX+ut5Kpw9CD9b3
         gYv95YM4R7Ag5fEq0iUkmyYyjqrBDxP+URYSR4T5ojUZHN5Cy54zNqSt8IIG7uUPGG7+
         uZFQ+xm0Qsli8mk5UGkGcymKI6lTlHC+j+IHsdKShbYpfyAfJ9pY2BxjHmY+Y8fDozud
         AaLkwzARL9NmJgWSO9GGchM1Ndybgx2rSVoOcmTu8WgzTahO1iAJF5itaMAqCP5SaOr+
         /Vgw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id a4si594657wrc.0.2021.04.10.03.03.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Apr 2021 03:03:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AqT1XlqvnrCDU3EQYrmf/fo157skDl9V00zAX?=
 =?us-ascii?q?/kB9WHVpW+afkN2jm+le6A/shF8qKRUdsP2JJaXoexjh3LFv5415B92fdSng/F?=
 =?us-ascii?q?ClNYRzqbblqgeAJwTb1spwkZhtaLJ/DtqYNykese/f7BOjG9gthPmrmZrJuc7k?=
 =?us-ascii?q?w31gTR5nZshbhm9EIz2WHUFsSA5NCYBRLuv+2uN8uzGidX4LB/7UOlA5WYH4y+?=
 =?us-ascii?q?HjqIjrelovCRIh9WC1/FGVwY+/Ilyj0hASXygn+9of2GLO+jaX2pme?=
X-IronPort-AV: E=Sophos;i="5.82,210,1613430000"; 
   d="scan'208";a="378277423"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Apr 2021 12:03:14 +0200
Date: Sat, 10 Apr 2021 12:03:14 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Julia Lawall <julia.lawall@inria.fr>
cc: Greg KH <gregkh@linuxfoundation.org>, 
    "Fabio M. De Francesco" <fmdefrancesco@gmail.com>, 
    outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev, 
    linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH 4/4] staging: rtl8723bs: Change the
 type and use of a variable
In-Reply-To: <alpine.DEB.2.22.394.2104101201130.2975@hadrien>
Message-ID: <alpine.DEB.2.22.394.2104101202370.2975@hadrien>
References: <20210410092232.15155-1-fmdefrancesco@gmail.com> <20210410092232.15155-5-fmdefrancesco@gmail.com> <YHFwZCh+s7ymrsQN@kroah.com> <alpine.DEB.2.22.394.2104101201130.2975@hadrien>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 10 Apr 2021, Julia Lawall wrote:

>
>
> On Sat, 10 Apr 2021, Greg KH wrote:
>
> > On Sat, Apr 10, 2021 at 11:22:32AM +0200, Fabio M. De Francesco wrote:
> > > Change the type of fw_current_in_ps_mode from u8 to bool, because
> > > it is used everywhere as a bool and, accordingly, it should be
> > > declared as a bool. Shorten the controlling
> > > expression of an 'if' statement.
> > >
> > > Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> > > ---
> > >  drivers/staging/rtl8723bs/hal/hal_intf.c        | 2 +-
> > >  drivers/staging/rtl8723bs/include/rtw_pwrctrl.h | 2 +-
> > >  2 files changed, 2 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/staging/rtl8723bs/hal/hal_intf.c b/drivers/staging/rtl8723bs/hal/hal_intf.c
> > > index 96fe172ced8d..8dc4dd8c6d4c 100644
> > > --- a/drivers/staging/rtl8723bs/hal/hal_intf.c
> > > +++ b/drivers/staging/rtl8723bs/hal/hal_intf.c
> > > @@ -348,7 +348,7 @@ void rtw_hal_dm_watchdog(struct adapter *padapter)
> > >
> > >  void rtw_hal_dm_watchdog_in_lps(struct adapter *padapter)
> > >  {
> > > -	if (adapter_to_pwrctl(padapter)->fw_current_in_ps_mode == true) {
> > > +	if (adapter_to_pwrctl(padapter)->fw_current_in_ps_mode) {
> > >  		if (padapter->HalFunc.hal_dm_watchdog_in_lps)
> > >  			padapter->HalFunc.hal_dm_watchdog_in_lps(padapter); /* this function caller is in interrupt context */
> > >  	}
> > > diff --git a/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h b/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
> > > index 0a48f1653be5..0767dbb84199 100644
> > > --- a/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
> > > +++ b/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
> > > @@ -203,7 +203,7 @@ struct pwrctrl_priv {
> > >  	u8 LpsIdleCount;
> > >  	u8 power_mgnt;
> > >  	u8 org_power_mgnt;
> > > -	u8 fw_current_in_ps_mode;
> > > +	bool fw_current_in_ps_mode;
> > >  	unsigned long	DelayLPSLastTimeStamp;
> > >  	s32		pnp_current_pwr_state;
> > >  	u8 pnp_bstop_trx;
> >
> > If this is only checked, how can it ever be true?  Who ever sets this
> > value?
>
> I think it's already updated everywhere with true and false, so there is
> nothing to change.  But it would be good to make that clear in the log
> message.

Oops, I was thinking of the field, not the local variable.
If the field is never set, that seems like a big problem...

julia

>
> julia
>
> >
> > thanks,
> >
> > greg k-h
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/YHFwZCh%2Bs7ymrsQN%40kroah.com.
> >
>

