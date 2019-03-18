X-GM-THRID: 6668974051336126464
X-Received: by 2002:a17:906:1d16:: with SMTP id n22mr1583021ejh.14.1552894207817;
        Mon, 18 Mar 2019 00:30:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:b491:: with SMTP id w17ls2525797edd.7.gmail; Mon, 18 Mar
 2019 00:30:07 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy657oYChLoMngQNKsG3KXqt77kaw/ULUr6nzfgtk+aKB3RRmdcNSzWDvf35P2MY2XGySgz
X-Received: by 2002:a50:ba2b:: with SMTP id g40mr1787751edc.1.1552894207127;
        Mon, 18 Mar 2019 00:30:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552894207; cv=none;
        d=google.com; s=arc-20160816;
        b=FboH2XGqMftD5BN3IDRg/F4VlkyEQvQWtxegscBUfJZuO2aJlYJf0jdcMmO65iyS52
         1G/eI19dbJqoZ8YtT7GxRvWjwqtoLqSB4sfDaULhcpu1DszpkY+/57THa82sJgBKMsg/
         Ay1LmzPyBPByv7Lf7O/xRZXHoUMcVtErybuVF3YKn7xd18txEt2Z6cM1Ng9UiPmUDUOe
         v7u2fLGF2+NT/0XYg21uhiUaqzJ2x6ra2AHcxRfyhkmXF+QOxbaHcFnJcMk9vy6Yzoj4
         eXAB/nnKcshmvYaSCvkdmYcGszt0Oiuoi5oekpT6lxJoDBSI8lH50/5DHJvnm2ISwRiz
         IiaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=El8Yx1rNreGzvzKmeg1rU5PMqO5rjQGs2Yi/ygxHM7Q=;
        b=fJcicoZsmn3sGNrQL0Hqk9TYDXIOIYybYIxNCYPJnmZ+plB18g3NiJv11w/4T0OJ7a
         MoIagSP4R5nP8e7FPCd2ovwpOFZP9LlMVleVGIWxncdneIrPN1K4USCsINyqV1/sm8oe
         Y7igXeHdQ7XDY0B5eq4GJc/8zKQnMwo4jnUVVjXDyeoolozceYvvMJWXKFcrxTXCdWeO
         rxRXBWsI+nVebIyP1T1Qe7Ddtjcb/YjUYXm1GjxJsVvS41QuavUkNTVK89Ou7Oylkjrj
         Q8cNWK1HAAc2btUr+VSlogp5AIKOaQDSD2n5O/+y4vCTs1jf9JFJpPVtl/nv3LWBpwp9
         z9lw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id a7si468260edb.1.2019.03.18.00.30.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Mar 2019 00:30:07 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,493,1544482800"; 
   d="scan'208";a="374445237"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 18 Mar 2019 08:30:06 +0100
Date: Mon, 18 Mar 2019 08:30:06 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Madhumthia Prabakaran <madhumithabiw@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 2/5] Staging: rtl8723bs: Change
 type of variables and return type
In-Reply-To: <20190317233426.GA4222@madhuleo>
Message-ID: <alpine.DEB.2.21.1903180829370.2824@hadrien>
References: <cover.1552858206.git.madhumithabiw@gmail.com> <cce081516153acd64194786cb1373150172d73cf.1552858206.git.madhumithabiw@gmail.com> <alpine.DEB.2.21.1903172250420.2434@hadrien> <20190317233426.GA4222@madhuleo>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 17 Mar 2019, Madhumthia Prabakaran wrote:

> On Sun, Mar 17, 2019 at 10:52:35PM +0100, Julia Lawall wrote:
> >
> >
> > On Sun, 17 Mar 2019, Madhumitha Prabakaran wrote:
> >
> > > Change type of local variables 'res' and return type of functions
> > > 'rtw_init_cmd_pri' and 'rtw_init_evt_priv', as function's
> > > return types are defined for standard error codes _SUCCESS and _FAIL.
> >
> > I'm not sure to undestand the reference to _SUCCESS and _FAIL.  sint is a
> > typedef for signed int, but kernel code typically uses just int rather
> > than signed int.  In any case, the change doesn't have any impact on the
> > types in the code.
>
> That's true. Should I drop this patch?

No, no, the patch is good,and I think Greg may have already accepted it.
The comment was just about the log message.

julia

>
> thanks
>
> >
> > julia
> >
> > > Also, change return type of functions declarations corresponding to
> > > change made in function definitions.
> > >
> > > Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> > > ---
> > >  drivers/staging/rtl8723bs/core/rtw_cmd.c      | 8 ++++----
> > >  drivers/staging/rtl8723bs/include/cmd_osdep.h | 4 ++--
> > >  2 files changed, 6 insertions(+), 6 deletions(-)
> > >
> > > diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > > index 793bc505fa9c..ab450f717f34 100644
> > > --- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > > +++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > > @@ -162,9 +162,9 @@ Caller and the rtw_cmd_thread can protect cmd_q by spin_lock.
> > >  No irqsave is necessary.
> > >  */
> > >
> > > -sint rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
> > > +int rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
> > >  {
> > > -	sint res = _SUCCESS;
> > > +	int res = _SUCCESS;
> > >
> > >  	init_completion(&pcmdpriv->cmd_queue_comp);
> > >  	init_completion(&pcmdpriv->terminate_cmdthread_comp);
> > > @@ -201,9 +201,9 @@ sint rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
> > >  }
> > >
> > >  static void c2h_wk_callback(_workitem *work);
> > > -sint rtw_init_evt_priv(struct evt_priv *pevtpriv)
> > > +int rtw_init_evt_priv(struct evt_priv *pevtpriv)
> > >  {
> > > -	sint res = _SUCCESS;
> > > +	int res = _SUCCESS;
> > >
> > >  	/* allocate DMA-able/Non-Page memory for cmd_buf and rsp_buf */
> > >  	atomic_set(&pevtpriv->event_seq, 0);
> > > diff --git a/drivers/staging/rtl8723bs/include/cmd_osdep.h b/drivers/staging/rtl8723bs/include/cmd_osdep.h
> > > index 8ed913726d5a..06ab48263757 100644
> > > --- a/drivers/staging/rtl8723bs/include/cmd_osdep.h
> > > +++ b/drivers/staging/rtl8723bs/include/cmd_osdep.h
> > > @@ -8,8 +8,8 @@
> > >  #define __CMD_OSDEP_H_
> > >
> > >
> > > -sint rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv);
> > > -sint rtw_init_evt_priv(struct evt_priv *pevtpriv);
> > > +int rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv);
> > > +int rtw_init_evt_priv(struct evt_priv *pevtpriv);
> > >  extern void _rtw_free_evt_priv (struct	evt_priv *pevtpriv);
> > >  extern void _rtw_free_cmd_priv (struct	cmd_priv *pcmdpriv);
> > >  extern sint _rtw_enqueue_cmd(struct __queue *queue, struct cmd_obj *obj);
> > > --
> > > 2.17.1
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cce081516153acd64194786cb1373150172d73cf.1552858206.git.madhumithabiw%40gmail.com.
> > > For more options, visit https://groups.google.com/d/optout.
> > >
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1903172250420.2434%40hadrien.
> > For more options, visit https://groups.google.com/d/optout.
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190317233426.GA4222%40madhuleo.
> For more options, visit https://groups.google.com/d/optout.
>

