X-GM-THRID: 6670256423573651456
X-Received: by 2002:a5d:8b47:: with SMTP id c7mr18272706iot.21.1553107698845;
        Wed, 20 Mar 2019 11:48:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:9ad6:: with SMTP id x22ls1293278ion.4.gmail; Wed, 20 Mar
 2019 11:48:17 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz0cXmY/lb3LAA51Zoaz7967KScARJ5pXUZcoq/P3DRSHp34pHgU6o8iD09zSGqr8iXVk9O
X-Received: by 2002:a6b:c9c4:: with SMTP id z187mr18241221iof.4.1553107697780;
        Wed, 20 Mar 2019 11:48:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553107697; cv=none;
        d=google.com; s=arc-20160816;
        b=R+pBcxD2xuWs+lrMnN7QHYBNcoItZbsB08mDS9zb/3a0QD9fwvms9SFHHzFTfiOMuP
         klNhOF223J827O0bfWqIirv0WfDb0cdXrh+ndDQo8mcu4NVxgC4iNAwF9DxRDW75u2jl
         YlmMVanpwIVMnqp8ryeHLcpQWp6GbApayTGy4dJ7SxfvwwkBR4J7ubr8saVnIO9tYhyW
         0+ten0kAYuzXUK09m3dPSr88bySgVQT+kQ1LvvQu0MVrsLFgCsr5Bxp6H6yvqTs8M3Vb
         iYtswrUi15Wd458tT4QKvc+g4WwRa+TqlSKhTR7hzkzAd4HV38JGuUPdsaTBmCuNSowE
         fPWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=HZG+y4JcW8Lr5De4ZdKhhWw7pXKwhVKnzF4n/k/ROeQ=;
        b=RJeFzWv4MuJQdVMiMLIcT6jTowLlg3Cbk6w6v6FS+jxGtGTKQJiPsQ0RkJpzvy2Bep
         umdRdeDAZmDHR5AS16/mvfAHKzddyV5CqcYuTpVfP87Aw4jwVE5fL6JoYIe0wWsw0H44
         QN6/9uJuLHDEKDnOAHqQ1E+4UJ0gLw1t1PJajmX5ntzWU+d8ebeX8+VGSqRB2HemcVtO
         vzmGD7h7Dm7nTqDm5MnjTIOdMgUJvx6rT7A5DuxM/2XRn83n+1MsjcnZ6vXKNpykZ0Wr
         2SCPNoNIacWltPpwJI6n7CzoKGYLkLfZVcK2BzQD4yfi/2jFc8uDX9mVnS+OX+Er72w5
         BqfQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BOk4sew4;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::334 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x334.google.com (mail-ot1-x334.google.com. [2607:f8b0:4864:20::334])
        by gmr-mx.google.com with ESMTPS id n194si514209itb.2.2019.03.20.11.48.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Mar 2019 11:48:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::334 as permitted sender) client-ip=2607:f8b0:4864:20::334;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BOk4sew4;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::334 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x334.google.com with SMTP id u15so3108533otq.10
        for <outreachy-kernel@googlegroups.com>; Wed, 20 Mar 2019 11:48:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=HZG+y4JcW8Lr5De4ZdKhhWw7pXKwhVKnzF4n/k/ROeQ=;
        b=BOk4sew4G+OSb1D25otS6MzsVtKfBHdGl4BReajvMhsdA5b/BJWlNCdvQ9RARjzqo0
         Dm3HKuiPoaJfvpmnDHBP01ahFoRB/ETPQN5//QFUNyTI5lxKPsXe79H17MRbXY2/rfHQ
         cK4PjYHpjW6MTJp62L8lcYuFo+Splv07ZqXKUVjosASj9gXB5iF07VVuzXvexdFeR3QC
         Veie7y7a4IVfhlVQkVaUobsENO/jQISzwSsiDCxWgNjHqCubPRt/IssPgREkA9l6HHYp
         kkyZakgOT/8DHPHLAmDpaVrwsTghyIcAenvjkz+QnGEM9n/FNN0GJkr+1ViXCuvYy5EW
         bu0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=HZG+y4JcW8Lr5De4ZdKhhWw7pXKwhVKnzF4n/k/ROeQ=;
        b=N7Y75elCuKiooduGnimsReYlWzVXcrAQxTOmUqtYwS9/wIjWAXvRavE5jLJYmCtaBR
         xhv7zTLwypFec0mcK1m/YnXJKsdiPpXqEHHpRT09vyNQcP0lN0e238mTVulqZyVtXpZv
         IyjUX/mHf+LFBYqQEq9XbDLNCagxu72kLpVd6BsZPSRuQ7hG0BPwQJsUjBqGODZl/93I
         rJv/NhDno8eBVfUbQd6pPycuePOmZ5UWujrla5MQP/dMK9QrPYxKCLL9q/Wvydf6Jqdd
         tkojsdlwzPWAc8r1sW6zcFyWwzWiz/Sz8HwqyVihls9abUC+WS2yeIWAKe07BbC10CJf
         0tlw==
X-Gm-Message-State: APjAAAUOEQ+yUz9CUGmTVVrEQfNpJR1ghxWe3254TTiRcFlVmx2njRCM
	VQk7LVfD269px8hqqErQSNMvN0qg+DA=
X-Received: by 2002:a9d:7f98:: with SMTP id t24mr7276063otp.132.1553107697287;
        Wed, 20 Mar 2019 11:48:17 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:606d:39a7:e418:cc24:1a52])
        by smtp.gmail.com with ESMTPSA id a20sm1075466oih.57.2019.03.20.11.48.16
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 20 Mar 2019 11:48:16 -0700 (PDT)
Date: Wed, 20 Mar 2019 13:48:14 -0500
From: Madhumthia Prabakaran <madhumithabiw@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723bs: Change return
 type and type of local variable
Message-ID: <20190320184812.GB889@madhuleo>
References: <20190320000125.8930-1-madhumithabiw@gmail.com>
 <alpine.DEB.2.21.1903200719560.2593@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1903200719560.2593@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Wed, Mar 20, 2019 at 07:26:21AM +0100, Julia Lawall wrote:
> 
> 
> On Tue, 19 Mar 2019, Madhumitha Prabakaran wrote:
> 
> > Change type of local variable and return type of function rtw_startbss_cmd,
> > as function's return type are defined for standard error codes. Change
> > corresponding function declarations and call sites. Along with
> > modifications, remove extern from the function declaration to maintain
> > Linux kernel coding style.
> 
> The changes look good, but the log message isn't really ideal to
> understand what is going on.
> 
> You could start by stating what happens:
> 
> rtw_startbss_cmd can return the result of calling rtw_enqueue_cmd, which
> can return the result of calling _rtw_enqueue_cmd, but they all have
> different return types (u8, u32, and sint, respectively).
> 
> As all of these functions return error codes, change all the return types
> to int, in preparation for converting these functions to use standard
> kernel error codes.
> 
> In checking these changes, I also saw nearby the function rtw_cmd_filter.
> Currently that returns int and _SUCCESS and _FAIL.  Given the name, it
> might make more sense for this function to return true in the _SUCCESS
> case and false in the _FAIL case, and thus to have a bool return type.
> The function also has a local variable called bAllow of type u8 that would
> be better off with the name allow and type bool.  There is also a strange

Here, changing the local variable leads to change in rtw_enqueue_cmd, which
leads to calling _rtw_enqueue_cmd. Everything need to be fixed. However,
when change is made in 'allow', the logic goes wrong. i.e. 
bool allow = false; this contradicts the comment statement in particular
line.
"set to true to allow enqueuing cmd when hw_init_completed is
false"
This follows to error in
if ((pcmdpriv->padapter->hw_init_completed == false && allow == false)
Same goes in line no- 63,93,101,110.
I need suggestions here. 


> prototype of the function that is right above the definition of the
> function itself.  This is not needed.
> 
> julia
> 
> 
> > Issue suggested by Coccinelle.
> >
> > Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> > ---
> >  drivers/staging/rtl8723bs/core/rtw_cmd.c      | 8 ++++----
> >  drivers/staging/rtl8723bs/include/cmd_osdep.h | 2 +-
> >  drivers/staging/rtl8723bs/include/rtw_cmd.h   | 4 ++--
> >  3 files changed, 7 insertions(+), 7 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > index bd3a5a23a418..04c6927dab8b 100644
> > --- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > +++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > @@ -256,7 +256,7 @@ ISR/Call-Back functions can't call this sub-function.
> >
> >  */
> >
> > -sint	_rtw_enqueue_cmd(struct __queue *queue, struct cmd_obj *obj)
> > +int _rtw_enqueue_cmd(struct __queue *queue, struct cmd_obj *obj)
> >  {
> >  	_irqL irqL;
> >
> > @@ -331,7 +331,7 @@ int rtw_cmd_filter(struct cmd_priv *pcmdpriv, struct cmd_obj *cmd_obj)
> >
> >
> >
> > -u32 rtw_enqueue_cmd(struct cmd_priv *pcmdpriv, struct cmd_obj *cmd_obj)
> > +int rtw_enqueue_cmd(struct cmd_priv *pcmdpriv, struct cmd_obj *cmd_obj)
> >  {
> >  	int res = _FAIL;
> >  	struct adapter *padapter = pcmdpriv->padapter;
> > @@ -719,12 +719,12 @@ u8 rtw_createbss_cmd(struct adapter  *padapter)
> >  	return res;
> >  }
> >
> > -u8 rtw_startbss_cmd(struct adapter  *padapter, int flags)
> > +int rtw_startbss_cmd(struct adapter  *padapter, int flags)
> >  {
> >  	struct cmd_obj *pcmd;
> >  	struct cmd_priv  *pcmdpriv = &padapter->cmdpriv;
> >  	struct submit_ctx sctx;
> > -	u8 res = _SUCCESS;
> > +	int res = _SUCCESS;
> >
> >  	if (flags & RTW_CMDF_DIRECTLY) {
> >  		/* no need to enqueue, do the cmd hdl directly and free cmd parameter */
> > diff --git a/drivers/staging/rtl8723bs/include/cmd_osdep.h b/drivers/staging/rtl8723bs/include/cmd_osdep.h
> > index 06ab48263757..d3af9f44ad59 100644
> > --- a/drivers/staging/rtl8723bs/include/cmd_osdep.h
> > +++ b/drivers/staging/rtl8723bs/include/cmd_osdep.h
> > @@ -12,7 +12,7 @@ int rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv);
> >  int rtw_init_evt_priv(struct evt_priv *pevtpriv);
> >  extern void _rtw_free_evt_priv (struct	evt_priv *pevtpriv);
> >  extern void _rtw_free_cmd_priv (struct	cmd_priv *pcmdpriv);
> > -extern sint _rtw_enqueue_cmd(struct __queue *queue, struct cmd_obj *obj);
> > +int _rtw_enqueue_cmd(struct __queue *queue, struct cmd_obj *obj);
> >  extern struct	cmd_obj	*_rtw_dequeue_cmd(struct __queue *queue);
> >
> >  #endif
> > diff --git a/drivers/staging/rtl8723bs/include/rtw_cmd.h b/drivers/staging/rtl8723bs/include/rtw_cmd.h
> > index fa4ebc3d7539..b83824ca2e31 100644
> > --- a/drivers/staging/rtl8723bs/include/rtw_cmd.h
> > +++ b/drivers/staging/rtl8723bs/include/rtw_cmd.h
> > @@ -122,7 +122,7 @@ struct P2P_PS_CTWPeriod_t {
> >  	u8 CTWPeriod;	/* TU */
> >  };
> >
> > -extern u32 rtw_enqueue_cmd(struct cmd_priv *pcmdpriv, struct cmd_obj *obj);
> > +int rtw_enqueue_cmd(struct cmd_priv *pcmdpriv, struct cmd_obj *obj);
> >  extern struct cmd_obj *rtw_dequeue_cmd(struct cmd_priv *pcmdpriv);
> >  extern void rtw_free_cmd_obj(struct cmd_obj *pcmd);
> >
> > @@ -827,7 +827,7 @@ struct RunInThread_param
> >
> >  u8 rtw_sitesurvey_cmd(struct adapter  *padapter, struct ndis_802_11_ssid *ssid, int ssid_num, struct rtw_ieee80211_channel *ch, int ch_num);
> >  extern u8 rtw_createbss_cmd(struct adapter  *padapter);
> > -u8 rtw_startbss_cmd(struct adapter  *padapter, int flags);
> > +int rtw_startbss_cmd(struct adapter  *padapter, int flags);
> >
> >  struct sta_info;
> >  extern u8 rtw_setstakey_cmd(struct adapter  *padapter, struct sta_info *sta, u8 unicast_key, bool enqueue);
> > --
> > 2.17.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190320000125.8930-1-madhumithabiw%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >

