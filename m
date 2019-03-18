X-GM-THRID: 6668974051336126464
X-Received: by 2002:ac2:5463:: with SMTP id e3mr750022lfn.6.1552894151195;
        Mon, 18 Mar 2019 00:29:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:9e18:: with SMTP id e24ls1905483ljk.9.gmail; Mon, 18 Mar
 2019 00:29:10 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxSxKNqWiBdYRmDze4bM9kuyeQLSL/7bF4PROAQFu8tdgUQA14kkcKawB+Y7+v0zczLMX7r
X-Received: by 2002:a2e:9002:: with SMTP id h2mr244481ljg.14.1552894150319;
        Mon, 18 Mar 2019 00:29:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552894150; cv=none;
        d=google.com; s=arc-20160816;
        b=iynB9wN688GRLxXC0X5MGvVxjNhJRW1PKLr8WMaTyEddMbr7PvZsj9d8US5uRqCpR2
         ql5oVy/EdDcSBH7wAaG1J0UGbYeImwQ0m2riCLcXqwkNQlkczjQ2NXNhdDX03s2cyZqv
         G4F5gHr3U60EWAHAElSnKk3nODK/SW0Mf66tRrdHJKY8heI3qBGfHUdYcnfw7WR4yHr4
         W2KX5oksZvqGrCPR01lEEA0XVkxg0kNBIwvElvllgMrJpwtYebY9rHBm6b3k8KGwEQA0
         fpj4njh7WnXMvcMapZZNRiQ/26kl8FXmTSfj1PFjWkN85enxhMw31tAvdSUaXglrUVa3
         rEIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=pwLOfQrsR1derpablZsiLMG4nfzaP7XzFqUQi1wbEWY=;
        b=NCW6hvp57nyyqEXiZKyHBDADE23e0zXLTIewLvRgiLMKpStCfXeKWYKV5/qXoSk3g0
         nkjBFUybrUUB79vKwIHrtscOp6VKLFdmZYgSOcFoLDa0/HIhZOsx03t2+mVizlfz8fKF
         753U+dTrBeKrNx6JdSKTLEvnPHrkLeO/i3qmrnd5icKwbJn1qjb8OEgnlNu6+mnXc1co
         qWggBzbyh7GL+r2+B9WzzPgqzRaGyC76/XgiUYCSha61upUP8LqvXzKpP2YMtASSvopH
         CRXIWV1ZoCLISzZMii3V8t9xMc58kz/tU34Tie2LZtBwwpc4PQW6pEYb4DcYdu3R/T+d
         pVwA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id n21si322555lfl.2.2019.03.18.00.29.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Mar 2019 00:29:10 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,493,1544482800"; 
   d="scan'208";a="374445132"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 18 Mar 2019 08:29:09 +0100
Date: Mon, 18 Mar 2019 08:29:09 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Madhumthia Prabakaran <madhumithabiw@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 5/5] Staging: rtl8723bs: Add missing
 NULL check for kmalloc
In-Reply-To: <20190317234215.GC4222@madhuleo>
Message-ID: <alpine.DEB.2.21.1903180828210.2824@hadrien>
References: <cover.1552858206.git.madhumithabiw@gmail.com> <4010080c4d3e2bd0ed50a747eff3d00c66eea169.1552858206.git.madhumithabiw@gmail.com> <alpine.DEB.2.21.1903172254090.2434@hadrien> <20190317234215.GC4222@madhuleo>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 17 Mar 2019, Madhumthia Prabakaran wrote:

> On Sun, Mar 17, 2019 at 10:55:05PM +0100, Julia Lawall wrote:
> >
> >
> > On Sun, 17 Mar 2019, Madhumitha Prabakaran wrote:
> >
> > > Include missing NULL check for kmalloc in function rtw_init_evt_priv.
> > > Also, remove unnecessary local variable 'res' in the function and
> > > replace the value directly in the return of the function.
> >
> > These changes seem quite unrelated.  Dropping res was possible before any
> > of the other changes because its value was never updated, and if you make
> > your change, the value of res is not updated either.
>
> Yeah! But it is in same function, also res is not used anywhere in the
> function. So I removed it and changed the return type as return 0.

Same function doesn't mean that it needs to be in the same patch.  It is
quite fine to have it in the same series, because you in general are
changing these res values.

julia

>
> >
> > julia
> >
> > >
> > > Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> > > ---
> > >  drivers/staging/rtl8723bs/core/rtw_cmd.c | 7 ++++---
> > >  1 file changed, 4 insertions(+), 3 deletions(-)
> > >
> > > diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > > index 3550de9f12c3..c76f27a6b3ab 100644
> > > --- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > > +++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > > @@ -203,8 +203,6 @@ int rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
> > >  static void c2h_wk_callback(_workitem *work);
> > >  int rtw_init_evt_priv(struct evt_priv *pevtpriv)
> > >  {
> > > -	int res = 0;
> > > -
> > >  	/* allocate DMA-able/Non-Page memory for cmd_buf and rsp_buf */
> > >  	atomic_set(&pevtpriv->event_seq, 0);
> > >  	pevtpriv->evt_done_cnt = 0;
> > > @@ -213,7 +211,10 @@ int rtw_init_evt_priv(struct evt_priv *pevtpriv)
> > >  	pevtpriv->c2h_wk_alive = false;
> > >  	pevtpriv->c2h_queue = rtw_cbuf_alloc(C2H_QUEUE_MAX_LEN+1);
> > >
> > > -	return res;
> > > +	if (!pevtpriv->c2h_queue)
> > > +		return -ENOMEM;
> > > +
> > > +	return 0;
> > >  }
> > >
> > >  void _rtw_free_evt_priv(struct	evt_priv *pevtpriv)
> > > --
> > > 2.17.1
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/4010080c4d3e2bd0ed50a747eff3d00c66eea169.1552858206.git.madhumithabiw%40gmail.com.
> > > For more options, visit https://groups.google.com/d/optout.
> > >
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1903172254090.2434%40hadrien.
> > For more options, visit https://groups.google.com/d/optout.
>

