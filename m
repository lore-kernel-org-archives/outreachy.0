X-GM-THRID: 6670256423573651456
X-Received: by 2002:a17:902:1e6:: with SMTP id b93mr7780014plb.71.1553095084728;
        Wed, 20 Mar 2019 08:18:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:164d:: with SMTP id 74ls1214070pfw.7.gmail; Wed, 20 Mar
 2019 08:18:03 -0700 (PDT)
X-Google-Smtp-Source: APXvYqypu6gDBj0oXdH8HIHn31qqCJx3lHYyXeWv0EC4PBTqe+0KRj2Uls3UwkC3cyOWtHZgo1N8
X-Received: by 2002:a63:465e:: with SMTP id v30mr873144pgk.2.1553095083764;
        Wed, 20 Mar 2019 08:18:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553095083; cv=none;
        d=google.com; s=arc-20160816;
        b=LtDcAJ7bkgh99+n6wqVBv9Br6NpGNV0OVYcpBxfs9pFT1VCzkhWPfpwd3nBx0YCXi3
         k/hqJaZRySV5hdkCcFXXeLTv638WLz3ekQvcExxIAzSweznT+n+NVJQf7eTGw8N/G116
         1H0FOeroZZ4OrwTcwKTBFIGfsDv9siLU9fivEfEwONR9C9ItdHg91iHmjv41Nn0oE6dv
         Rgupb9QEwx5GMzF7RSmvqEIDJjdNnUBGm9Vay9DkEGmqwmrj8TMZK+EqB9VLY7p//6Fv
         UhbpZWQVk/xjFP8m4WgmZgwvQkOwAwmAx+nf3TONJowNhZe1DSpwbMfbxWGr9orVVOH1
         zCYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=UEAONnuud8/enjUDX+igMYf0/OzeM4H0c/Ycs2RuSzg=;
        b=ND0me347Rxq7ZywlPDtbZbaPYc1Br8k0z9/g6gi8p/0dGU8bvr2qcBaMVag7l2WZfE
         IGs3xxVu/KSq2FafzHPhivzNR0wXtYFPe/u7PpM0/bh5dPCRJ0r6fNYLuNjeEdRU7wnD
         HzLhQEKSm7zj6w41r6mLQGEulP7LWW82tB06lwQs7PHhd47hepu6r9CpsmtyzzXX29sx
         NeJOMesGy1ANVcMB31ax82yTtH1u3mrIXer7ov3+OTSo+DrFqDQ361ZfIWoNUiVEqpxo
         t8WPOHImI2XVJdLQ4FJBVXh5I9mvAmxooDbJqJsX8Yf3/HpOHaxToJWKxa0LrJSbBA/o
         H20A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VpwwyWeY;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::234 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x234.google.com (mail-oi1-x234.google.com. [2607:f8b0:4864:20::234])
        by gmr-mx.google.com with ESMTPS id 192si206686pgc.0.2019.03.20.08.18.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Mar 2019 08:18:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::234 as permitted sender) client-ip=2607:f8b0:4864:20::234;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VpwwyWeY;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::234 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x234.google.com with SMTP id b4so2077407oif.6
        for <outreachy-kernel@googlegroups.com>; Wed, 20 Mar 2019 08:18:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=UEAONnuud8/enjUDX+igMYf0/OzeM4H0c/Ycs2RuSzg=;
        b=VpwwyWeYApIISEvw0CPDB1U4DrUz2okHsRqeR5hc5cpaqQvaV17NZzMCeYAMXYUF0c
         Fd2YSh/Z9P8K6PmL2FzpEJbb7UB7bGcY0Sj9aunFiIa4jQA6AuSBW89qAGQuPkp8q4ow
         4u6kmFtxpITYemGaWV7Pbn7hsjyf5wyJpu51URxKowYhdJaFuttbnJUMvRaaNrNKt+5h
         lz2V8QHikGz358TjMjs2ZsFPJ9ri7GHjmzoaTS/SXOWnNun1cUUp5x2oKbrFST//3keb
         7MR9Whv1uv9lHyOf8wLRV6qHCkY6qEx+PVfP0fVDFhcioN+swuSeX70dKGYJz/mUYx1c
         EzEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=UEAONnuud8/enjUDX+igMYf0/OzeM4H0c/Ycs2RuSzg=;
        b=IC1MixCGy8H3b15QfGuD8nfIjINIwOG5FX/JTou4i1kkNFG3WHYGvJZWK/AJZgoFLs
         FK9sMa+66Z8Pc2vCDOiCLfewSeDhm9IZnxkGWjDh8jsUvLuD40UEKfefVCkg+AhQ5goT
         3t11OECSiWrtaXQhdafCoulnLt6bHSQACuNId7lp3JBRcVcY2V6zn+ySCH0eikyHoJa4
         gUxIqQo1QCovWOtMNkKXypgkZ0KdYJCXTLYFbT++h1OE81Y+PgZPSBxE55uILYVyUQnn
         4Q4h3u3bL7ZU+K2MiG/xEgKSmwBvIFvuFavv3UuqLGJLRVUhgyAxRLu3FtPwSiqq1yP9
         +cNw==
X-Gm-Message-State: APjAAAUb8zcvw1+O0IdBDMGa6+ZeV6f74sM3uJteKZ6m8nzwk9Qmifjn
	F/usYi5C55Qt2O4g91AjiwsdEOo4dLY=
X-Received: by 2002:aca:c687:: with SMTP id w129mr5583826oif.134.1553095083303;
        Wed, 20 Mar 2019 08:18:03 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:606d:39a7:e418:cc24:1a52])
        by smtp.gmail.com with ESMTPSA id e17sm837637otp.41.2019.03.20.08.17.59
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 20 Mar 2019 08:18:00 -0700 (PDT)
Date: Wed, 20 Mar 2019 10:17:57 -0500
From: Madhumthia Prabakaran <madhumithabiw@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723bs: Change return
 type and type of local variable
Message-ID: <20190320151751.GA889@madhuleo>
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

This makes more sense, I will edit it in my commit log.

> 
> In checking these changes, I also saw nearby the function rtw_cmd_filter.
> Currently that returns int and _SUCCESS and _FAIL.  Given the name, it
> might make more sense for this function to return true in the _SUCCESS
> case and false in the _FAIL case, and thus to have a bool return type.
> The function also has a local variable called bAllow of type u8 that would
> be better off with the name allow and type bool.  There is also a strange
> prototype of the function that is right above the definition of the
> function itself.  This is not needed.

Can I submit this change in another patch? Combining above change and
this one as a patch series.


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

