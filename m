X-GM-THRID: 6949457058068430848
X-Received: by 2002:a17:906:a006:: with SMTP id p6mr19983988ejy.350.1618050980118;
        Sat, 10 Apr 2021 03:36:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:907:397:: with SMTP id ss23ls10630ejb.3.gmail; Sat, 10
 Apr 2021 03:36:18 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx7SrcysHKUsbs1P2jGsWeK9DlYAVpI/W0v5qJcRnsGWalx+XojqRvSCGuysyEWfXM7s1OZ
X-Received: by 2002:a17:907:3f8e:: with SMTP id hr14mr389633ejc.258.1618050978581;
        Sat, 10 Apr 2021 03:36:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618050978; cv=none;
        d=google.com; s=arc-20160816;
        b=ECCfeSci49UUjYnYseVSf0E3RuLEfe9uXpqeTBGiAWIjdf2S+0nq+cHJPTlX306ICG
         EvXu+cyVOJrp2PvYt6IWgBn5I/MJatZ5XSEtOTdi7srxIN5zYSCC/vjaNQcbS4PZqD8x
         dhlILfhHeKYkL9vgJzSR78Ech/UIPFaWGGtvVgsrEUNlVybWMl9HvNJJ/CR/7skAXpuM
         HgO4xIuu6BKRmGNKTtPYh7Ff9t+4Zj3vSIVmUS4OxMmcMgPLfjRFoD2mFgvazuEpp8Mr
         4F5uCjBGqk2ECYgGUAQb5C+tiiw4bcHtJFRGyIVXmwhn7R227UMiPUiyEK8qitKK/6jR
         NGnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=NrPL2w3fo24i8Cnslex2nkgUiGZnUevwpRRye5PkA8U=;
        b=ST4DjhhH/Cn9w4yjkswvq+bdYkhIjWfqA1PvsbwY3bee0kZf8zjCBun77tWdFYtlU5
         CLAwDNJl00zeSMVeMqwDTwkQrXcxE27aVLwaF4BxELBLyYL4/XwLAG2vdX2Ae48NPlyx
         jg1l/vMTk3c9xTLh2b/DIj1sAb88Gu4lMo5MEK5mf7EQvkiwvTR4kAND49RVl60muFNs
         f6hU9bGBHyW91RJtBCdaPetlhuYDEvBqo1HhYk7pLgNYLqc5tBltfdEfWmrlOnHLMw1H
         Jiy/8SEBNXc+ecqhdk1SVw+h8MoGdFz32VPRcXvKZsDhMBMPBA6J9BThli3sbpps6kMC
         RsaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id f23si260974ejc.1.2021.04.10.03.36.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Apr 2021 03:36:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AbDNpUq+HuYfQ5OTYlaNuk+A5I+orLtY04lQ7?=
 =?us-ascii?q?vn1ZYxpTb8CeioSSjO0WvCWE7Ao5dXk8lbm7U5Wobmjb8fdOi7U5HbDnZwX+vX?=
 =?us-ascii?q?vtEYcK1+rf6hnBPwG7yeJHz6dndMFFebjNJHx3l9zz7gX9M/tI+rm62Zulj+vf?=
 =?us-ascii?q?0HthJDsCA51I1At3Bh2WFUd7XmB9dPkEPaCB7clKrSfIQxoqR/m8b0NoY8H+vd?=
 =?us-ascii?q?HR0LrpbRkabiRXijWmvHeYrIT3FBWVxX4lPg9ny71Kywf4rzA=3D?=
X-IronPort-AV: E=Sophos;i="5.82,210,1613430000"; 
   d="scan'208";a="378279462"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Apr 2021 12:36:17 +0200
Date: Sat, 10 Apr 2021 12:36:17 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 4/4] staging: rtl8723bs: Change the
 type and use of a variable
In-Reply-To: <2763621.eYLsMQpWYC@localhost.localdomain>
Message-ID: <alpine.DEB.2.22.394.2104101231450.2975@hadrien>
References: <20210410092232.15155-1-fmdefrancesco@gmail.com> <alpine.DEB.2.22.394.2104101201130.2975@hadrien> <alpine.DEB.2.22.394.2104101202370.2975@hadrien> <2763621.eYLsMQpWYC@localhost.localdomain>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 10 Apr 2021, Fabio M. De Francesco wrote:

> On Saturday, April 10, 2021 12:03:14 PM CEST you wrote:
> > On Sat, 10 Apr 2021, Julia Lawall wrote:
> > > On Sat, 10 Apr 2021, Greg KH wrote:
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
> true) {
> > > > > +	if (adapter_to_pwrctl(padapter)->fw_current_in_ps_mode) {
> > > > >
> > > > >  		if (padapter->HalFunc.hal_dm_watchdog_in_lps)
> > > > >
> > > > >  			padapter-
> >HalFunc.hal_dm_watchdog_in_lps(padapter); /* this
> > > > >  			function caller is in interrupt context
> */> > >
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
> > > I think it's already updated everywhere with true and false, so there
> > > is
> > > nothing to change.  But it would be good to make that clear in the log
> > > message.
> >
> > Oops, I was thinking of the field, not the local variable.
> > If the field is never set, that seems like a big problem...
> >
> > julia
> >
> >
> Julia, I'm a bit confused...
>
> I've anew examined that line and noticed that fw_current_in_ps_mode is
> referenced by through a pointer returned by adapter_to_pwrctl(padapter).
> padapter is a pointer set in other files of the driver.
>
> To me it seems that is perfectly reasonable that, as a result,
> fw_current_in_ps_mode could be set (externally) either with true or false.
>
> I'm sure I'm missing something, since both you and Greg have a larger
> experience than I could ever have. Can you please elaborate this topic a
> bit more in order to make me understand whatever I can't see?

OK, I was just following my recollection of the code.  It seems that the
only thing that is needed is to explain in the log message how the
variable is initialized and why changing the type doesn't mean that you
have to change the initializations.  A weakness of the patch notation is
that you only see what changed, and not all of the code that is actually
relevant.  So if there is something that is not visible and that is
important to convince the reader that the change is correct, then it
should be mentioned in the log message.

Again, not having looked at the code, but does this pointer already have a
bool type?  Or does it have a u8 type?  Perhaps the pointer has to be
changed too?

julia

