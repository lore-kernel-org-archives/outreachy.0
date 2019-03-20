X-GM-THRID: 6670256423573651456
X-Received: by 2002:a50:8692:: with SMTP id r18mr2921235eda.9.1553112524001;
        Wed, 20 Mar 2019 13:08:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:6015:: with SMTP id o21ls629664ejj.3.gmail; Wed, 20
 Mar 2019 13:08:43 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxXPZLyv1dpnneMQl+mNVpahKEJkZAMNIrFChmo17iyYuKSL7NR7sVR6yHt1idh1RTqF5xf
X-Received: by 2002:a17:906:1d16:: with SMTP id n22mr16096ejh.14.1553112523083;
        Wed, 20 Mar 2019 13:08:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553112523; cv=none;
        d=google.com; s=arc-20160816;
        b=WwXyw6kha2rtCy3MHWruOJJuFfDtN9miuX+aYZIyCCurW2Mw+9iPeliHFGHim3SFqs
         gZv4hZR1bAOcCJEgHnR7gc1HCYKwInmnd6BTo7O5YNBXAJJr++TuIMKwB7RS+R/nJxm/
         QcTiK1eAbs8tXhZBoGEp5y813IeapN/ctShfkNA11xzbHvHfAvSi8mxvfpq24s/70AKa
         GUfkagKjET8aj6jcOss7CHdN+Vi7ZQ1ZdhiEEL1Zgj8qJyExB6OtDYfFDvvCMj3PrFzl
         GH/EjZjw9h0neXBOcrDDy8mQN+CaXPUd2liJ7305ty2hVvzgvWEorf4juLfmEQYcUXxY
         luVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=FsUjtdyVjlJepcxTkZ/AOtX5ccXOa9vbIjkdAp4jLi8=;
        b=DyKwOkbIo+Pix1G1s5RxUVlkwyBrv1C/wQe3gn3NrMbEyjMX4xqi/JH+XPqwwSFQJ9
         fpxMpPAu3AMt4T3x/ysSInHpCMU9DscVt46sSEhqpR0m4p6nspsuf5ABinzipbv4T8P7
         wLakI8c/miFlfx+8eGStjFESn31QHospvdpLMGPELsyFVN1D1DQj5QlixH7x0bIIoKX6
         j5Gef1rZ1VMyU7X6HQkaOhlrJAVT/L3o2tnQTNFDh4v1jAixGLtrAq6GyiP8c1d/+mjG
         pzTw1Fp203l6hoERdZzJ05QPb4S474e3LA1fjtJoLogsvDNPMRBlFskJjPP1H2JOEpEC
         WbOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id i16si149893ede.0.2019.03.20.13.08.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Mar 2019 13:08:43 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,249,1549926000"; 
   d="scan'208";a="300161433"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 20 Mar 2019 21:08:42 +0100
Date: Wed, 20 Mar 2019 21:08:42 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Madhumthia Prabakaran <madhumithabiw@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723bs: Change return
 type and type of local variable
In-Reply-To: <20190320184812.GB889@madhuleo>
Message-ID: <alpine.DEB.2.21.1903202105290.2691@hadrien>
References: <20190320000125.8930-1-madhumithabiw@gmail.com> <alpine.DEB.2.21.1903200719560.2593@hadrien> <20190320184812.GB889@madhuleo>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 20 Mar 2019, Madhumthia Prabakaran wrote:

> On Wed, Mar 20, 2019 at 07:26:21AM +0100, Julia Lawall wrote:
> >
> >
> > On Tue, 19 Mar 2019, Madhumitha Prabakaran wrote:
> >
> > > Change type of local variable and return type of function rtw_startbss_cmd,
> > > as function's return type are defined for standard error codes. Change
> > > corresponding function declarations and call sites. Along with
> > > modifications, remove extern from the function declaration to maintain
> > > Linux kernel coding style.
> >
> > The changes look good, but the log message isn't really ideal to
> > understand what is going on.
> >
> > You could start by stating what happens:
> >
> > rtw_startbss_cmd can return the result of calling rtw_enqueue_cmd, which
> > can return the result of calling _rtw_enqueue_cmd, but they all have
> > different return types (u8, u32, and sint, respectively).
> >
> > As all of these functions return error codes, change all the return types
> > to int, in preparation for converting these functions to use standard
> > kernel error codes.
> >
> > In checking these changes, I also saw nearby the function rtw_cmd_filter.
> > Currently that returns int and _SUCCESS and _FAIL.  Given the name, it
> > might make more sense for this function to return true in the _SUCCESS
> > case and false in the _FAIL case, and thus to have a bool return type.
> > The function also has a local variable called bAllow of type u8 that would
> > be better off with the name allow and type bool.  There is also a strange
>
> Here, changing the local variable leads to change in rtw_enqueue_cmd, which
> leads to calling _rtw_enqueue_cmd. Everything need to be fixed. However,
> when change is made in 'allow', the logic goes wrong. i.e.
> bool allow = false; this contradicts the comment statement in particular
> line.
> "set to true to allow enqueuing cmd when hw_init_completed is
> false"
> This follows to error in
> if ((pcmdpriv->padapter->hw_init_completed == false && allow == false)
> Same goes in line no- 63,93,101,110.
> I need suggestions here.

I don't think you need to change anything about allow except the return
type (u8 -> bool).  rtw_cmd_filter can return true and false,
independently of the value of allow.  Then you have two call sites to fix
up.

julia

>
>
> > prototype of the function that is right above the definition of the
> > function itself.  This is not needed.
> >
> > julia
> >
> >
> > > Issue suggested by Coccinelle.
> > >
> > > Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> > > ---
> > >  drivers/staging/rtl8723bs/core/rtw_cmd.c      | 8 ++++----
> > >  drivers/staging/rtl8723bs/include/cmd_osdep.h | 2 +-
> > >  drivers/staging/rtl8723bs/include/rtw_cmd.h   | 4 ++--
> > >  3 files changed, 7 insertions(+), 7 deletions(-)
> > >
> > > diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > > index bd3a5a23a418..04c6927dab8b 100644
> > > --- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > > +++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > > @@ -256,7 +256,7 @@ ISR/Call-Back functions can't call this sub-function.
> > >
> > >  */
> > >
> > > -sint	_rtw_enqueue_cmd(struct __queue *queue, struct cmd_obj *obj)
> > > +int _rtw_enqueue_cmd(struct __queue *queue, struct cmd_obj *obj)
> > >  {
> > >  	_irqL irqL;
> > >
> > > @@ -331,7 +331,7 @@ int rtw_cmd_filter(struct cmd_priv *pcmdpriv, struct cmd_obj *cmd_obj)
> > >
> > >
> > >
> > > -u32 rtw_enqueue_cmd(struct cmd_priv *pcmdpriv, struct cmd_obj *cmd_obj)
> > > +int rtw_enqueue_cmd(struct cmd_priv *pcmdpriv, struct cmd_obj *cmd_obj)
> > >  {
> > >  	int res = _FAIL;
> > >  	struct adapter *padapter = pcmdpriv->padapter;
> > > @@ -719,12 +719,12 @@ u8 rtw_createbss_cmd(struct adapter  *padapter)
> > >  	return res;
> > >  }
> > >
> > > -u8 rtw_startbss_cmd(struct adapter  *padapter, int flags)
> > > +int rtw_startbss_cmd(struct adapter  *padapter, int flags)
> > >  {
> > >  	struct cmd_obj *pcmd;
> > >  	struct cmd_priv  *pcmdpriv = &padapter->cmdpriv;
> > >  	struct submit_ctx sctx;
> > > -	u8 res = _SUCCESS;
> > > +	int res = _SUCCESS;
> > >
> > >  	if (flags & RTW_CMDF_DIRECTLY) {
> > >  		/* no need to enqueue, do the cmd hdl directly and free cmd parameter */
> > > diff --git a/drivers/staging/rtl8723bs/include/cmd_osdep.h b/drivers/staging/rtl8723bs/include/cmd_osdep.h
> > > index 06ab48263757..d3af9f44ad59 100644
> > > --- a/drivers/staging/rtl8723bs/include/cmd_osdep.h
> > > +++ b/drivers/staging/rtl8723bs/include/cmd_osdep.h
> > > @@ -12,7 +12,7 @@ int rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv);
> > >  int rtw_init_evt_priv(struct evt_priv *pevtpriv);
> > >  extern void _rtw_free_evt_priv (struct	evt_priv *pevtpriv);
> > >  extern void _rtw_free_cmd_priv (struct	cmd_priv *pcmdpriv);
> > > -extern sint _rtw_enqueue_cmd(struct __queue *queue, struct cmd_obj *obj);
> > > +int _rtw_enqueue_cmd(struct __queue *queue, struct cmd_obj *obj);
> > >  extern struct	cmd_obj	*_rtw_dequeue_cmd(struct __queue *queue);
> > >
> > >  #endif
> > > diff --git a/drivers/staging/rtl8723bs/include/rtw_cmd.h b/drivers/staging/rtl8723bs/include/rtw_cmd.h
> > > index fa4ebc3d7539..b83824ca2e31 100644
> > > --- a/drivers/staging/rtl8723bs/include/rtw_cmd.h
> > > +++ b/drivers/staging/rtl8723bs/include/rtw_cmd.h
> > > @@ -122,7 +122,7 @@ struct P2P_PS_CTWPeriod_t {
> > >  	u8 CTWPeriod;	/* TU */
> > >  };
> > >
> > > -extern u32 rtw_enqueue_cmd(struct cmd_priv *pcmdpriv, struct cmd_obj *obj);
> > > +int rtw_enqueue_cmd(struct cmd_priv *pcmdpriv, struct cmd_obj *obj);
> > >  extern struct cmd_obj *rtw_dequeue_cmd(struct cmd_priv *pcmdpriv);
> > >  extern void rtw_free_cmd_obj(struct cmd_obj *pcmd);
> > >
> > > @@ -827,7 +827,7 @@ struct RunInThread_param
> > >
> > >  u8 rtw_sitesurvey_cmd(struct adapter  *padapter, struct ndis_802_11_ssid *ssid, int ssid_num, struct rtw_ieee80211_channel *ch, int ch_num);
> > >  extern u8 rtw_createbss_cmd(struct adapter  *padapter);
> > > -u8 rtw_startbss_cmd(struct adapter  *padapter, int flags);
> > > +int rtw_startbss_cmd(struct adapter  *padapter, int flags);
> > >
> > >  struct sta_info;
> > >  extern u8 rtw_setstakey_cmd(struct adapter  *padapter, struct sta_info *sta, u8 unicast_key, bool enqueue);
> > > --
> > > 2.17.1
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190320000125.8930-1-madhumithabiw%40gmail.com.
> > > For more options, visit https://groups.google.com/d/optout.
> > >
>

