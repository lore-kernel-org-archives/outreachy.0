X-GM-THRID: 6670256423573651456
X-Received: by 2002:a25:4c4:: with SMTP id 187mr86548ybe.81.1553122413798;
        Wed, 20 Mar 2019 15:53:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:4f56:: with SMTP id d83ls1322960ybb.4.gmail; Wed, 20 Mar
 2019 15:53:32 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyOYrt2yi/XFVUdAvFFipZY9vjGy9PYbX+6AJgxHu5bdLaxgUTI+IfAqBdlVGRifzIglYHZ
X-Received: by 2002:a25:af83:: with SMTP id g3mr96863ybh.41.1553122412628;
        Wed, 20 Mar 2019 15:53:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553122412; cv=none;
        d=google.com; s=arc-20160816;
        b=lJyDDgDDdTJMt2uU1NuYQEJZBiPHx3lfG2GxXbc6eiEyNOOz62w4sVHaLwtbxjzlzd
         yxgVHbxSKv6nisMFUK2ONc/OyZ8N2cF+/Fm+WSJ+jav5msveqPZDK2uiexv1XkncQ4tF
         7UD7PYqTLguc0wpe6ftB3NZ5in79YsH8DwA8a6xu8DMhNk3NYlWCi6YOEpF9c2cfNl69
         4Nlbfm//3ocZjvKvr6DHqEnLgTkL1In1+Vlu5glEvpSGo4zwmU31LPbs1J0e9CnH0BXF
         pYQOccbZbVhEm+E0cmt92Q4VsTM3voftJYsECwybh63oLSK3oZrxXD5E+37+GTrZIxba
         rrZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=2x9HZDltTHRD5R31/GW3FdYJ3HfFlXEbtX9VL+3LQ38=;
        b=IQaqYsIQF8kZULCx5fSE+FriWV4r9HP0qOTC9ixKlrIi4k4dj+BsOqK+Iz1Y1Fq5KN
         +NPEviHpNYojb2gRUQ/oy6IGip/6STCQwRcTNqry0UlILIRLZm2MXKnIRWdIW0QyyJJg
         7pgBaTK6UAvWOKX6fIFithKEKTRelOZs7zOSay3oMgqPvKTUD+Ukp61BDzH3mC6m1TgE
         OP4UHWJHrP2LRqI+tdHCSjv6xhMxmryhjCrSb03PyXh4dg4aVSM354w1weSKgjy1fUZL
         0OlRgF3iRl/pdP4eIFN4VcrbTr3V55vN/nmZ31ybHiuz2LZ4JrInlivXLof6Hb59w9GC
         1J4A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fUqNdHq9;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::32e as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x32e.google.com (mail-ot1-x32e.google.com. [2607:f8b0:4864:20::32e])
        by gmr-mx.google.com with ESMTPS id s11si223021ywg.3.2019.03.20.15.53.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Mar 2019 15:53:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::32e as permitted sender) client-ip=2607:f8b0:4864:20::32e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fUqNdHq9;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::32e as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x32e.google.com with SMTP id 103so3753047otd.9
        for <outreachy-kernel@googlegroups.com>; Wed, 20 Mar 2019 15:53:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=2x9HZDltTHRD5R31/GW3FdYJ3HfFlXEbtX9VL+3LQ38=;
        b=fUqNdHq9skkfqAFC9KIHgdcgNYnD8V4bUsWK5awpFn9jcu2oF0+Ri1/1v/Yc6ZmPkF
         aej9det3hNBhOKYMFJF9IZzQ9wo3Vm1SQapoTj5jm8VxM+/hW5t98tbA7Na3dy1jTXAf
         YXZOYN+N/S7nQVGMwI5qD2JbQm14rngcUz6mKahodPBiIiSxHO4WlSeg2YlLzl4rmiDZ
         XI9Q0edDMlv+vT4wIeenpIWrkRWicZ0aM40992mXd+ISYZtW3fJYBp2JNTUGu05CmLnf
         09iMUwe6rEHUWwnft5HDUnlf5fbkoFpxtHW+LrTx+NIvQLKSda895vQJ9TEyMyMt0Oer
         8/Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=2x9HZDltTHRD5R31/GW3FdYJ3HfFlXEbtX9VL+3LQ38=;
        b=UK9whz0p7p3k34MT2BqyhwH+J3d3yRBBYihkc0oMfawcJ3u5yQiDmRs4l2080RqNam
         4spwzjdy6q9wYvintkd1/H40FLqJPyA6Yoj/ZSCJF8IYnBjnSVDjj/4Xr2SmUD1oSYtg
         u7RIVTVqZXzAkRZBWSIL1G2xNhq/MYDgCgNpR9W6XxyNZr3Lhaz56VCpv8Fi6L86b5X/
         ZouPfaXPavAnyTs1EkaK/36ln1/lr6ktufAXiikq6kpTF5jZLMQJvhJ5+6TzLv0JYgvU
         JURrcxYOLkwob7T6kgp4Pq9pClJjq9wed3UtXNgW17pkK1GLd3AEhIHsLy/iH4PneeI2
         wsnw==
X-Gm-Message-State: APjAAAUqzSKquKk77XGuHL17EHDuaFWDBivOpR9NVk3JQfnXmFpgDqxo
	nwRBDoCuxJkp3TN19F5Ydyw=
X-Received: by 2002:a05:6830:14c8:: with SMTP id t8mr401673otq.300.1553122412098;
        Wed, 20 Mar 2019 15:53:32 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:606d:d9de:87bf:a05a:c332])
        by smtp.gmail.com with ESMTPSA id y28sm1205453oix.23.2019.03.20.15.53.30
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 20 Mar 2019 15:53:31 -0700 (PDT)
Date: Wed, 20 Mar 2019 17:53:28 -0500
From: Madhumthia Prabakaran <madhumithabiw@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723bs: Change return
 type and type of local variable
Message-ID: <20190320225326.GA2615@madhuleo>
References: <20190320000125.8930-1-madhumithabiw@gmail.com>
 <alpine.DEB.2.21.1903200719560.2593@hadrien>
 <20190320184812.GB889@madhuleo>
 <alpine.DEB.2.21.1903202105290.2691@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1903202105290.2691@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Wed, Mar 20, 2019 at 09:08:42PM +0100, Julia Lawall wrote:
> 
> 
> On Wed, 20 Mar 2019, Madhumthia Prabakaran wrote:
> 
> > On Wed, Mar 20, 2019 at 07:26:21AM +0100, Julia Lawall wrote:
> > >
> > >
> > > On Tue, 19 Mar 2019, Madhumitha Prabakaran wrote:
> > >
> > > > Change type of local variable and return type of function rtw_startbss_cmd,
> > > > as function's return type are defined for standard error codes. Change
> > > > corresponding function declarations and call sites. Along with
> > > > modifications, remove extern from the function declaration to maintain
> > > > Linux kernel coding style.
> > >
> > > The changes look good, but the log message isn't really ideal to
> > > understand what is going on.
> > >
> > > You could start by stating what happens:
> > >
> > > rtw_startbss_cmd can return the result of calling rtw_enqueue_cmd, which
> > > can return the result of calling _rtw_enqueue_cmd, but they all have
> > > different return types (u8, u32, and sint, respectively).
> > >
> > > As all of these functions return error codes, change all the return types
> > > to int, in preparation for converting these functions to use standard
> > > kernel error codes.
> > >
> > > In checking these changes, I also saw nearby the function rtw_cmd_filter.
> > > Currently that returns int and _SUCCESS and _FAIL.  Given the name, it
> > > might make more sense for this function to return true in the _SUCCESS
> > > case and false in the _FAIL case, and thus to have a bool return type.
> > > The function also has a local variable called bAllow of type u8 that would
> > > be better off with the name allow and type bool.  There is also a strange
> >
> > Here, changing the local variable leads to change in rtw_enqueue_cmd, which
> > leads to calling _rtw_enqueue_cmd. Everything need to be fixed. However,
> > when change is made in 'allow', the logic goes wrong. i.e.
> > bool allow = false; this contradicts the comment statement in particular
> > line.
> > "set to true to allow enqueuing cmd when hw_init_completed is
> > false"
> > This follows to error in
> > if ((pcmdpriv->padapter->hw_init_completed == false && allow == false)
> > Same goes in line no- 63,93,101,110.
> > I need suggestions here.
> 
> I don't think you need to change anything about allow except the return
> type (u8 -> bool).  rtw_cmd_filter can return true and false,
> independently of the value of allow.  Then you have two call sites to fix
> up.

However, backtracing from rtw_cmd_filter to rtw_enqueue_cmd leads to
change for more than 50 functions to change. There are needs to
change the function return type and local variable for return. I just
want to make sure - Am I missing something?


> 
> julia
> 
> >
> >
> > > prototype of the function that is right above the definition of the
> > > function itself.  This is not needed.
> > >
> > > julia
> > >
> > >
> > > > Issue suggested by Coccinelle.
> > > >
> > > > Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> > > > ---
> > > >  drivers/staging/rtl8723bs/core/rtw_cmd.c      | 8 ++++----
> > > >  drivers/staging/rtl8723bs/include/cmd_osdep.h | 2 +-
> > > >  drivers/staging/rtl8723bs/include/rtw_cmd.h   | 4 ++--
> > > >  3 files changed, 7 insertions(+), 7 deletions(-)
> > > >
> > > > diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > > > index bd3a5a23a418..04c6927dab8b 100644
> > > > --- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > > > +++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > > > @@ -256,7 +256,7 @@ ISR/Call-Back functions can't call this sub-function.
> > > >
> > > >  */
> > > >
> > > > -sint	_rtw_enqueue_cmd(struct __queue *queue, struct cmd_obj *obj)
> > > > +int _rtw_enqueue_cmd(struct __queue *queue, struct cmd_obj *obj)
> > > >  {
> > > >  	_irqL irqL;
> > > >
> > > > @@ -331,7 +331,7 @@ int rtw_cmd_filter(struct cmd_priv *pcmdpriv, struct cmd_obj *cmd_obj)
> > > >
> > > >
> > > >
> > > > -u32 rtw_enqueue_cmd(struct cmd_priv *pcmdpriv, struct cmd_obj *cmd_obj)
> > > > +int rtw_enqueue_cmd(struct cmd_priv *pcmdpriv, struct cmd_obj *cmd_obj)
> > > >  {
> > > >  	int res = _FAIL;
> > > >  	struct adapter *padapter = pcmdpriv->padapter;
> > > > @@ -719,12 +719,12 @@ u8 rtw_createbss_cmd(struct adapter  *padapter)
> > > >  	return res;
> > > >  }
> > > >
> > > > -u8 rtw_startbss_cmd(struct adapter  *padapter, int flags)
> > > > +int rtw_startbss_cmd(struct adapter  *padapter, int flags)
> > > >  {
> > > >  	struct cmd_obj *pcmd;
> > > >  	struct cmd_priv  *pcmdpriv = &padapter->cmdpriv;
> > > >  	struct submit_ctx sctx;
> > > > -	u8 res = _SUCCESS;
> > > > +	int res = _SUCCESS;
> > > >
> > > >  	if (flags & RTW_CMDF_DIRECTLY) {
> > > >  		/* no need to enqueue, do the cmd hdl directly and free cmd parameter */
> > > > diff --git a/drivers/staging/rtl8723bs/include/cmd_osdep.h b/drivers/staging/rtl8723bs/include/cmd_osdep.h
> > > > index 06ab48263757..d3af9f44ad59 100644
> > > > --- a/drivers/staging/rtl8723bs/include/cmd_osdep.h
> > > > +++ b/drivers/staging/rtl8723bs/include/cmd_osdep.h
> > > > @@ -12,7 +12,7 @@ int rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv);
> > > >  int rtw_init_evt_priv(struct evt_priv *pevtpriv);
> > > >  extern void _rtw_free_evt_priv (struct	evt_priv *pevtpriv);
> > > >  extern void _rtw_free_cmd_priv (struct	cmd_priv *pcmdpriv);
> > > > -extern sint _rtw_enqueue_cmd(struct __queue *queue, struct cmd_obj *obj);
> > > > +int _rtw_enqueue_cmd(struct __queue *queue, struct cmd_obj *obj);
> > > >  extern struct	cmd_obj	*_rtw_dequeue_cmd(struct __queue *queue);
> > > >
> > > >  #endif
> > > > diff --git a/drivers/staging/rtl8723bs/include/rtw_cmd.h b/drivers/staging/rtl8723bs/include/rtw_cmd.h
> > > > index fa4ebc3d7539..b83824ca2e31 100644
> > > > --- a/drivers/staging/rtl8723bs/include/rtw_cmd.h
> > > > +++ b/drivers/staging/rtl8723bs/include/rtw_cmd.h
> > > > @@ -122,7 +122,7 @@ struct P2P_PS_CTWPeriod_t {
> > > >  	u8 CTWPeriod;	/* TU */
> > > >  };
> > > >
> > > > -extern u32 rtw_enqueue_cmd(struct cmd_priv *pcmdpriv, struct cmd_obj *obj);
> > > > +int rtw_enqueue_cmd(struct cmd_priv *pcmdpriv, struct cmd_obj *obj);
> > > >  extern struct cmd_obj *rtw_dequeue_cmd(struct cmd_priv *pcmdpriv);
> > > >  extern void rtw_free_cmd_obj(struct cmd_obj *pcmd);
> > > >
> > > > @@ -827,7 +827,7 @@ struct RunInThread_param
> > > >
> > > >  u8 rtw_sitesurvey_cmd(struct adapter  *padapter, struct ndis_802_11_ssid *ssid, int ssid_num, struct rtw_ieee80211_channel *ch, int ch_num);
> > > >  extern u8 rtw_createbss_cmd(struct adapter  *padapter);
> > > > -u8 rtw_startbss_cmd(struct adapter  *padapter, int flags);
> > > > +int rtw_startbss_cmd(struct adapter  *padapter, int flags);
> > > >
> > > >  struct sta_info;
> > > >  extern u8 rtw_setstakey_cmd(struct adapter  *padapter, struct sta_info *sta, u8 unicast_key, bool enqueue);
> > > > --
> > > > 2.17.1
> > > >
> > > > --
> > > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190320000125.8930-1-madhumithabiw%40gmail.com.
> > > > For more options, visit https://groups.google.com/d/optout.
> > > >
> >
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1903202105290.2691%40hadrien.
> For more options, visit https://groups.google.com/d/optout.

