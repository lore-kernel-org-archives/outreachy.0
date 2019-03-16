X-GM-THRID: 6668378512224681984
X-Received: by 2002:a05:620a:1525:: with SMTP id n5mr4757998qkk.33.1552742288740;
        Sat, 16 Mar 2019 06:18:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:2c4a:: with SMTP id e10ls4993213qta.6.gmail; Sat, 16 Mar
 2019 06:18:08 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxcPjES1Wiq64WkP0D52PaCSQSV6XKZ+B0R2I2YLYtAdt42GEAF7pW4qpcXS0xbNZju3ytM
X-Received: by 2002:aed:2ac3:: with SMTP id t61mr5085540qtd.37.1552742288061;
        Sat, 16 Mar 2019 06:18:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552742288; cv=none;
        d=google.com; s=arc-20160816;
        b=VQa3/sUdZqHNvwaT83Rt3ulFDMBrx+ktCpyGaDFbhSTWcSl5is59ccYs31R5irBXkv
         CnO8PCXue6RnP8v4faRlwU9G4q9Nm6dFm3Q3G0YVUksTxfHeHZxbvxx4iy4aXZaFjfr0
         JluKU6qYUiEkxHPPQqLdxb1h5gwmAQ5XlhNYnT2k1UxSUtrgYhdN1GxAY6z49uAYYBCk
         Uh9rREVKZimAZsmH5M62H5IC6egf0iU9RRjllR8FWd9ncBZLWKYy/AhSW1py2viDwnvl
         Ip6AZa1lA4Ciiz6k+S/apG7jJiSB9+KzkSP+d1qkzktPWDFnoV5XUPJrGzLc9dwBcZbI
         9MXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=8VJbOFQPg1JX0Eoslo+AbWptr3LcFml8Ew1w1c8rx7Q=;
        b=J4z/4uEEOeTa0Xc8E5zUzULJLynlLYVJdsax0BJwg3869xxTfwvJyqUsWTWMOH60sq
         Cu83wR8H4lhmGKjVw7vRxxP6n6xDw6acXKJ8pRKNT7XEtRt7w5Egeph+uUnxtzm0LPal
         wGdzMiUjMvFKYsVQEUVrfRkq98KTvncQOCioxfDa6y8zVcat4HPscjaprZ80f9eyaBj+
         vW+lzxUh010HSHq053fNwlvlZXd5ilkz90B6i3Nj5AyiY08oA4yqMyxICsIZt0phJGU8
         aHXFXYHdU1XvmLGdluVQ/vYxplmtlpDVIvxd6NoEoJB1p6LvarUqnChfyfj4DzaJXsl+
         T/oA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ScRzBooF;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::235 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x235.google.com (mail-oi1-x235.google.com. [2607:f8b0:4864:20::235])
        by gmr-mx.google.com with ESMTPS id j35si204706qte.4.2019.03.16.06.18.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 06:18:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::235 as permitted sender) client-ip=2607:f8b0:4864:20::235;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ScRzBooF;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::235 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x235.google.com with SMTP id j132so6571796oib.2
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 06:18:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=8VJbOFQPg1JX0Eoslo+AbWptr3LcFml8Ew1w1c8rx7Q=;
        b=ScRzBooFdQJwyEJob1IyBZgLzac2tLO1342ztat4/BvGsgdcF+zhNRTBonQEAJ9AAm
         WXfJEmR5W6ylpfU3x71ODa3xl6XfIatYI6wPRDzmB1dciwMqWPN7ROHY6KKkhBMvAP4I
         kCGSMaXFxQetIquUGKDJOS0M7DeBO7J1KrAE7OGHysCY5N1lLDRmkoL/pKZGA6QJae0C
         o3WKvvqIq9UqLuQXyts32bHjdWXujzNbDe52izDbCjRjrM3GIuo+Wm4YcSQ0zbfkOxlt
         Rxybkx5WdWdPhomxyVkmih7jX9eBBtNqGCmyjrf8/3JtLXUcUK6CwovrJD8hR5vXHKm4
         nzjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=8VJbOFQPg1JX0Eoslo+AbWptr3LcFml8Ew1w1c8rx7Q=;
        b=q8NeEymjWQfpooE535CqwNllarj9fUl7Ad24JkRNKh0AlMJo48MA5W5cx10mN2wNKW
         pG0uojanfSO50PTZUSoDeKw6bVpbDGeqbpLWHTsZNfjTDNyKT0PCkotHL+gORMs8B5/4
         95Cr0WC+3jzhl/U5bYgukRxxq6X85iqucwGl7jj0WiJtMdarSLcluY0XmfhhopSnNRxd
         CZJHs9OgtbtpWoBqBmV6whyGbAHXpPHn55n/ka04gRDMpflNsWJTrHo/6v4Wa8APEt3s
         NLuC8vuNgW4qXFokZNje5dWASj6IIlg3ZPpy4KM9ha/FzEwj07z/EpE4as6i3tJ83s1P
         vkZA==
X-Gm-Message-State: APjAAAWF0uid/CL/iyfMMP+2DsU/ndK76/rNHRTL3uUFvlIPw37BOTe4
	PU4ZRTviKPBiQCVTxnW1zYg=
X-Received: by 2002:aca:b589:: with SMTP id e131mr4656038oif.91.1552742287557;
        Sat, 16 Mar 2019 06:18:07 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:432c:603f:14f8:e32e:7b1b])
        by smtp.gmail.com with ESMTPSA id y19sm1841071oih.42.2019.03.16.06.18.06
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 16 Mar 2019 06:18:06 -0700 (PDT)
Date: Sat, 16 Mar 2019 08:18:04 -0500
From: Madhumthia Prabakaran <madhumithabiw@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723bs: Remove functions
 and replace return types
Message-ID: <20190316131803.GA23435@madhuleo>
References: <20190314223416.3994-1-madhumithabiw@gmail.com>
 <alpine.DEB.2.21.1903150731241.2670@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1903150731241.2670@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Fri, Mar 15, 2019 at 07:50:57AM +0100, Julia Lawall wrote:
> 
> 
> On Thu, 14 Mar 2019, Madhumitha Prabakaran wrote:
> 
> > - Remove functions rtw_init_cmd_priv and rtw_init_evt_priv, as its only
> > purpose is to call the other functions _rtw_init_cmd_priv and
> > _rtw_init_evt_priv, respectively.
> > - Rename functions from _rtw_init_cmd_priv and _rtw_init_evt_priv, to
> > rtw_init_cmd_priv and rtw_init_evt_priv.
> > - Replace return types from sint to u32
> > - Replace local variable 'res' data type from sint to u32 in both the
> > functions.
> > Issue suggested by Coccinelle using ret.cocci.
> 
> OK, this is a really good first step, with a nice log message as well.
> However, looking a bit further, there is more to do.
> 
> We can observe that you changed the return type from signed to unsigned,
> and it is a little bit surprising that this is ok.
> 
> Looking at the definitions of these functions it seems that they return
> error codes, _SUCCESS and _FAIL.  Often in the Linux kernel, success is
> indicated by 0 and failure is indicated by a negative number, so one may
> still be surprised by the change of type.

I didn't  changed _SUCCESS value to 0 and _FAIL value to -ENOMEM. yet
again it complied. I want to confirm whether I have to change it
directly or there is function RTW_STATUS_CODE in os_dep/osdep_service.c,
which can be modified to make _SUCCESS and _FAIL compatible with rest of
the kernel
> 
> But this driver actually returns 1 for success and 0 for failure, so the
> code remains correctly functioning with the change of type.
> 
> Still, these are not really ideal error values.  To be compatible with the
> rest of the kernel, success should be 0 and failure should be -ENOMEM,
> because these are memory allocating functions.  In that case the return
> type of these functions should be int, rather than u32.
> 
> Finally, _rtw_init_evt_priv actually never returns _FAIL.  The memory
> allocation in this function bottoms out at kmalloc, which can fail, so
> there needs to be a check for this, and to return an -ENOMEM value.
>
> Checking on all of that leads to:
> 
> void *_rtw_malloc(u32 sz)
> {
> 	return kmalloc(sz, in_interrupt() ? GFP_ATOMIC : GFP_KERNEL);
> }
> 
> which is incorrect.  Each call site needs to be checked to determine
> whether it is in atomic context (accessible from an interrupt handler or
> with a lock held) and to use GFP_ATOMIC if that is the case and GFP_KERNEL
> otherwise.
> 
> I would suggest to clean up everything up to the paragraph starting with
> "Finally" in a single series.  Then, if you want to work more on this
> driver, you can look for other uses of _SUCCESS and _FAIL and convert them
> to more appropriate return values, and convert calls to rtw_malloc to
> calls to kmalloc with the correct flag argument.  There is also a function
> rtw_zalloc that should be kzalloc with the same issues.  Actually, the
> file osdep_service.c hasa good set of unsuitable definitions that should
> be cleaned up.

I sent it as a patch series. I will work on all unsuitable definitions
in osdep_service.c.

> 
> julia
> 
> >
> > Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> > ---
> >  drivers/staging/rtl8723bs/core/rtw_cmd.c | 24 ++++--------------------
> >  1 file changed, 4 insertions(+), 20 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > index 91520ca3bbad..d8c362947dd4 100644
> > --- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > +++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > @@ -162,9 +162,9 @@ Caller and the rtw_cmd_thread can protect cmd_q by spin_lock.
> >  No irqsave is necessary.
> >  */
> >
> > -sint	_rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
> > +u32 rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
> >  {
> > -	sint res = _SUCCESS;
> > +	u32 res = _SUCCESS;
> >
> >  	init_completion(&pcmdpriv->cmd_queue_comp);
> >  	init_completion(&pcmdpriv->terminate_cmdthread_comp);
> > @@ -201,9 +201,9 @@ sint	_rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
> >  }
> >
> >  static void c2h_wk_callback(_workitem *work);
> > -sint _rtw_init_evt_priv(struct evt_priv *pevtpriv)
> > +u32 rtw_init_evt_priv(struct evt_priv *pevtpriv)
> >  {
> > -	sint res = _SUCCESS;
> > +	u32 res = _SUCCESS;
> >
> >  	/* allocate DMA-able/Non-Page memory for cmd_buf and rsp_buf */
> >  	atomic_set(&pevtpriv->event_seq, 0);
> > @@ -295,22 +295,6 @@ struct	cmd_obj	*_rtw_dequeue_cmd(struct __queue *queue)
> >  	return obj;
> >  }
> >
> > -u32 rtw_init_cmd_priv(struct cmd_priv *pcmdpriv)
> > -{
> > -	u32 res;
> > -
> > -	res = _rtw_init_cmd_priv(pcmdpriv);
> > -	return res;
> > -}
> > -
> > -u32 rtw_init_evt_priv(struct	evt_priv *pevtpriv)
> > -{
> > -	int	res;
> > -
> > -	res = _rtw_init_evt_priv(pevtpriv);
> > -	return res;
> > -}
> > -
> >  void rtw_free_evt_priv(struct	evt_priv *pevtpriv)
> >  {
> >  	RT_TRACE(_module_rtl871x_cmd_c_, _drv_info_, ("rtw_free_evt_priv\n"));
> > --
> > 2.17.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190314223416.3994-1-madhumithabiw%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >

