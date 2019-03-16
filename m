X-GM-THRID: 6668378512224681984
X-Received: by 2002:a1c:9e0c:: with SMTP id h12mr265883wme.3.1552742585090;
        Sat, 16 Mar 2019 06:23:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:4083:: with SMTP id n125ls1443047wma.4.canary-gmail;
 Sat, 16 Mar 2019 06:23:04 -0700 (PDT)
X-Google-Smtp-Source: APXvYqziJQhrQ4XrmUo044zEO21/hvXCIs3te/GFdn7zOqWsel1rbrP9jfcoauG9vv31uVpWJF3o
X-Received: by 2002:a7b:cc14:: with SMTP id f20mr219041wmh.5.1552742584307;
        Sat, 16 Mar 2019 06:23:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552742584; cv=none;
        d=google.com; s=arc-20160816;
        b=MxStinhxhEl1V6ZETSkBBlbM801WSYh7GyJkQLjAhA4UHY+Y/ntFAR8v7IMgv4BcrU
         lDtx413GfyLldI3vmRwm81v/6CF0XdNPuOlkot3/Uncy6XTepFdepBrhQIVEPMwBJ6Lj
         eiUi6SYaD+kJWWfAib3n4QUokOFHGlgSWTLtwqM9WjpvpvtF9sSUbbdUNsyLnJwn4nE5
         6mgbUHGPXUwe5Ao41nCaYGFaszDAHytKq2etlN+hHL70E7W0gO70DYz16ZfQoh7WGYnA
         yNyJW5B6tR68Ef9kdGASkRkF+GL5qR00zmGoVjUf0+dMHAnR0gUHsnbAqgpPcUxjrDXd
         xx/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=pzzMs4HMyOfGzJbcPQwuVpv3N43u4KYaR9cFKyLtWJg=;
        b=P1d3lZzgjP9vvFmHW5mLXbfHJqRPHMSxN5wq63J/RNwqmcZhudcY/CiTdlLrWXC2zS
         EI8kkuMXqIkM2JfpGNlA35XY+Q6F9ad6zcmnj/9zlpyJIR/YM19p4TOz4v+MySyBWYR0
         jlanysadODnp2pED4SjTnsJKRLSF83zUps5qMImZp9YarEl6uOd8Dxb0faQNVem6+e6r
         zl7M6Szrm4SxePMQaqgcfdPMd5jD+KkHOA1XlMBCC9IrC+yLVEOZlVU/tgNC1u97eo4k
         NyFL+2ahMGhtU+ZmtoDoAh7XOv8QMb2FsEasQx2yJojVaVVdE3yyLSaT7inajiYetyJY
         UHNw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id o184si145253wma.0.2019.03.16.06.23.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 06:23:04 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,485,1544482800"; 
   d="scan'208";a="374008283"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Mar 2019 14:23:03 +0100
Date: Sat, 16 Mar 2019 14:23:03 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Madhumthia Prabakaran <madhumithabiw@gmail.com>
cc: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723bs: Remove functions
 and replace return types
In-Reply-To: <20190316131803.GA23435@madhuleo>
Message-ID: <alpine.DEB.2.21.1903161419430.2487@hadrien>
References: <20190314223416.3994-1-madhumithabiw@gmail.com> <alpine.DEB.2.21.1903150731241.2670@hadrien> <20190316131803.GA23435@madhuleo>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 16 Mar 2019, Madhumthia Prabakaran wrote:

> On Fri, Mar 15, 2019 at 07:50:57AM +0100, Julia Lawall wrote:
> >
> >
> > On Thu, 14 Mar 2019, Madhumitha Prabakaran wrote:
> >
> > > - Remove functions rtw_init_cmd_priv and rtw_init_evt_priv, as its only
> > > purpose is to call the other functions _rtw_init_cmd_priv and
> > > _rtw_init_evt_priv, respectively.
> > > - Rename functions from _rtw_init_cmd_priv and _rtw_init_evt_priv, to
> > > rtw_init_cmd_priv and rtw_init_evt_priv.
> > > - Replace return types from sint to u32
> > > - Replace local variable 'res' data type from sint to u32 in both the
> > > functions.
> > > Issue suggested by Coccinelle using ret.cocci.
> >
> > OK, this is a really good first step, with a nice log message as well.
> > However, looking a bit further, there is more to do.
> >
> > We can observe that you changed the return type from signed to unsigned,
> > and it is a little bit surprising that this is ok.
> >
> > Looking at the definitions of these functions it seems that they return
> > error codes, _SUCCESS and _FAIL.  Often in the Linux kernel, success is
> > indicated by 0 and failure is indicated by a negative number, so one may
> > still be surprised by the change of type.
>
> I didn't  changed _SUCCESS value to 0 and _FAIL value to -ENOMEM. yet
> again it complied. I want to confirm whether I have to change it
> directly or there is function RTW_STATUS_CODE in os_dep/osdep_service.c,
> which can be modified to make _SUCCESS and _FAIL compatible with rest of
> the kernel

Please don't use _SUCCESS and _FAIL.  It doesn't really matter what these
symbols are bound to.  Using them won't cause a compiler error.  The
problem is that they are the wrong symbols.  Success should be indicated
with 0 and failure, in the case of a memory allocation, should be
indicated with -ENOMEM.  Other kinds of failures have other error codes
(-EINVAL, -ENODEV, etc).

> >
> > But this driver actually returns 1 for success and 0 for failure, so the
> > code remains correctly functioning with the change of type.
> >
> > Still, these are not really ideal error values.  To be compatible with the
> > rest of the kernel, success should be 0 and failure should be -ENOMEM,
> > because these are memory allocating functions.  In that case the return
> > type of these functions should be int, rather than u32.
> >
> > Finally, _rtw_init_evt_priv actually never returns _FAIL.  The memory
> > allocation in this function bottoms out at kmalloc, which can fail, so
> > there needs to be a check for this, and to return an -ENOMEM value.
> >
> > Checking on all of that leads to:
> >
> > void *_rtw_malloc(u32 sz)
> > {
> > 	return kmalloc(sz, in_interrupt() ? GFP_ATOMIC : GFP_KERNEL);
> > }
> >
> > which is incorrect.  Each call site needs to be checked to determine
> > whether it is in atomic context (accessible from an interrupt handler or
> > with a lock held) and to use GFP_ATOMIC if that is the case and GFP_KERNEL
> > otherwise.
> >
> > I would suggest to clean up everything up to the paragraph starting with
> > "Finally" in a single series.  Then, if you want to work more on this
> > driver, you can look for other uses of _SUCCESS and _FAIL and convert them
> > to more appropriate return values, and convert calls to rtw_malloc to
> > calls to kmalloc with the correct flag argument.  There is also a function
> > rtw_zalloc that should be kzalloc with the same issues.  Actually, the
> > file osdep_service.c hasa good set of unsuitable definitions that should
> > be cleaned up.
>
> I sent it as a patch series. I will work on all unsuitable definitions
> in osdep_service.c.

Actually, it is not really the definitions that need to be cleaned up.
The uses of these functions need to be replaced by direct calls to the
standard kernel functions, and then the functions in osdep_service.c
should be dropped.

julia

>
> >
> > julia
> >
> > >
> > > Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> > > ---
> > >  drivers/staging/rtl8723bs/core/rtw_cmd.c | 24 ++++--------------------
> > >  1 file changed, 4 insertions(+), 20 deletions(-)
> > >
> > > diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > > index 91520ca3bbad..d8c362947dd4 100644
> > > --- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > > +++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > > @@ -162,9 +162,9 @@ Caller and the rtw_cmd_thread can protect cmd_q by spin_lock.
> > >  No irqsave is necessary.
> > >  */
> > >
> > > -sint	_rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
> > > +u32 rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
> > >  {
> > > -	sint res = _SUCCESS;
> > > +	u32 res = _SUCCESS;
> > >
> > >  	init_completion(&pcmdpriv->cmd_queue_comp);
> > >  	init_completion(&pcmdpriv->terminate_cmdthread_comp);
> > > @@ -201,9 +201,9 @@ sint	_rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
> > >  }
> > >
> > >  static void c2h_wk_callback(_workitem *work);
> > > -sint _rtw_init_evt_priv(struct evt_priv *pevtpriv)
> > > +u32 rtw_init_evt_priv(struct evt_priv *pevtpriv)
> > >  {
> > > -	sint res = _SUCCESS;
> > > +	u32 res = _SUCCESS;
> > >
> > >  	/* allocate DMA-able/Non-Page memory for cmd_buf and rsp_buf */
> > >  	atomic_set(&pevtpriv->event_seq, 0);
> > > @@ -295,22 +295,6 @@ struct	cmd_obj	*_rtw_dequeue_cmd(struct __queue *queue)
> > >  	return obj;
> > >  }
> > >
> > > -u32 rtw_init_cmd_priv(struct cmd_priv *pcmdpriv)
> > > -{
> > > -	u32 res;
> > > -
> > > -	res = _rtw_init_cmd_priv(pcmdpriv);
> > > -	return res;
> > > -}
> > > -
> > > -u32 rtw_init_evt_priv(struct	evt_priv *pevtpriv)
> > > -{
> > > -	int	res;
> > > -
> > > -	res = _rtw_init_evt_priv(pevtpriv);
> > > -	return res;
> > > -}
> > > -
> > >  void rtw_free_evt_priv(struct	evt_priv *pevtpriv)
> > >  {
> > >  	RT_TRACE(_module_rtl871x_cmd_c_, _drv_info_, ("rtw_free_evt_priv\n"));
> > > --
> > > 2.17.1
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190314223416.3994-1-madhumithabiw%40gmail.com.
> > > For more options, visit https://groups.google.com/d/optout.
> > >
>

