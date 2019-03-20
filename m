X-GM-THRID: 6670256423573651456
X-Received: by 2002:adf:f011:: with SMTP id j17mr1066666wro.8.1553095276748;
        Wed, 20 Mar 2019 08:21:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:9cc7:: with SMTP id f190ls22433wme.8.canary-gmail; Wed,
 20 Mar 2019 08:21:15 -0700 (PDT)
X-Google-Smtp-Source: APXvYqytz5vOjfkrMSRQ99J3KtUDI4yL5HoivQLCZJy65L/NJ7NMv8fFJ5GHDX4rgdBiFSWuczIC
X-Received: by 2002:a1c:3545:: with SMTP id c66mr180739wma.2.1553095275860;
        Wed, 20 Mar 2019 08:21:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553095275; cv=none;
        d=google.com; s=arc-20160816;
        b=BZPDbNauPKZBfzHaqjIK4ccGm0kmpsd7UPduLLaBoKQ+76NhKrTFrqkmlrlo8XjbGC
         QdqW1VhITiARj5TdKsOcy9RIKZjFWP6r/eYXmq+6Z84E0SL5ngdKFhiijEYgOzHjP9NZ
         GCwEpWmZ2NDOnEagGlXNBkBtA0bPgV2tN+heZBVpcDi0jMK69cBnOlBX5ezzhpf3CCOI
         ek0yOxplSbnDWWNUCr7dstAH7LOttXl6PlVKlouGnbpZ3aEK51uZjC79ynf8QYBNudRX
         D49H77r/F/3Ot/HYdoTlQNhJRQiyLbRtrQ+XEV9GqDVmJlsbTU7zRTOD8DkprSCxEe5c
         HiJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=G+ZldmpS61KpGgfwK/0jsm9lB6FwhREK556+JwyyK3M=;
        b=KWEdLXuraOKGx7VEjn/bj3E+JtdVoQTm/6cHNdAt2fV1ewqYlla9OqMG28Lz3iO6LC
         SMYhF84ZgsAH7bp9b+dAbSQJRCf+d6MsZTc4ZoXR/Lv+JaRbTlaQybFEoLfRSnadMk9C
         u8HKRUp8lFDms1erDbGH8OxGZQLy5G0MZLKWFs/KIeCw9Gh5pUs9EuQatHl8uV8cJABp
         jXL8YBd8ozTo1icnF6uQYmJmpYHMfPX5PpxJrw7LFrg4ZLq1K6SoX79eef+JZilVg+P2
         RfLG5M4MYEC/PupYbyQlaHI+jfGuu+gkYLNThWs6CXw/MYQg69ToRW8F0lpIQJvZgUZX
         9jBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 2si197701wma.3.2019.03.20.08.21.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Mar 2019 08:21:15 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,249,1549926000"; 
   d="scan'208";a="300135061"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 20 Mar 2019 16:21:15 +0100
Date: Wed, 20 Mar 2019 16:21:13 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Madhumthia Prabakaran <madhumithabiw@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723bs: Change return
 type and type of local variable
In-Reply-To: <20190320151751.GA889@madhuleo>
Message-ID: <alpine.DEB.2.20.1903201620520.3627@hadrien>
References: <20190320000125.8930-1-madhumithabiw@gmail.com> <alpine.DEB.2.21.1903200719560.2593@hadrien> <20190320151751.GA889@madhuleo>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
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
>
> This makes more sense, I will edit it in my commit log.
>
> >
> > In checking these changes, I also saw nearby the function rtw_cmd_filter.
> > Currently that returns int and _SUCCESS and _FAIL.  Given the name, it
> > might make more sense for this function to return true in the _SUCCESS
> > case and false in the _FAIL case, and thus to have a bool return type.
> > The function also has a local variable called bAllow of type u8 that would
> > be better off with the name allow and type bool.  There is also a strange
> > prototype of the function that is right above the definition of the
> > function itself.  This is not needed.
>
> Can I submit this change in another patch? Combining above change and
> this one as a patch series.

A series would be fine.

julia

>
>
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

