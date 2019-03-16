X-GM-THRID: 6668378512224681984
X-Received: by 2002:a05:6830:1609:: with SMTP id g9mr2527412otr.63.1552749970780;
        Sat, 16 Mar 2019 08:26:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:3189:: with SMTP id x131ls1337863oix.2.gmail; Sat, 16
 Mar 2019 08:26:10 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx7CUKZscIdR3xEep8RyB92vSE7heDMSHa2YyBvC85TqgYef5pG+74zcywM7ck39cbaXB7T
X-Received: by 2002:aca:3856:: with SMTP id f83mr5495262oia.9.1552749970160;
        Sat, 16 Mar 2019 08:26:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552749970; cv=none;
        d=google.com; s=arc-20160816;
        b=W7ey3IQfu80O/WfgrvCJaakqmdMN8F8ZUyU9NXJVw3eS3hrwPLPSavUyX8Xhb/mU/Z
         PIZN360dB2rYuhbVfgW4tMrenUpbNJqb7NlWdDDq7Ac5rFQi17oapXrLVQp7u5/esFI+
         N66l0SHEvo7DZ/jYD50YkGaIelFHiNQE2AGZ1fG4kRo71h7zPkZOWWpXPh/azNbirzxM
         go4m7Bp/G8YH6MtoACU9H+CYrkVqX4hsXv/YdmFBEN4Kz9cQpX51UqftMYpAaqGfDfGw
         eu1QacGw/ZIFk77cGLXnduOEm+EgyAFYRe/WfejaEVuUL89uIw/XrQFpk7hRZXVdPQyP
         1TuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=viz4DPtwYRcO5mqC/ZLJK9KASTmGFjUAbuDXk6kEBfI=;
        b=ddBrhKf1T9Vt0s/jD/OL1C3K1W2KJX3SLbQbJEOs3f69F+bT1Y/BIbj+sIBz+8OZlC
         K7r+Z/bTq9QraV5eXLwxrEuJBDDIYyBW4BCtAz8xeGXdnXKJ1NQlOufuGPp1WOPtwIFf
         1dVMdnrRm3ee9+pRRvp6GFJdv/v5T3BkFkiJrSzd6BiamvQKPFqwqikpXPIewNcv8UuY
         c2C6MxOyW4bhoOdt+j0gBvatuadGkToj5h10bLKxaJqQt3KfODjYGgzhCNzIArunui14
         EuRtyZLDl5CAqbbq/eQOPfYzbMijFO/ubcRGeCuBzX1RtXadRA4Y//0ke4M+nm3kmz5S
         amkQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bGs9nWtY;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::333 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x333.google.com (mail-ot1-x333.google.com. [2607:f8b0:4864:20::333])
        by gmr-mx.google.com with ESMTPS id v129si232797oib.0.2019.03.16.08.26.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 08:26:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::333 as permitted sender) client-ip=2607:f8b0:4864:20::333;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bGs9nWtY;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::333 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x333.google.com with SMTP id i5so10928741oto.9
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 08:26:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=viz4DPtwYRcO5mqC/ZLJK9KASTmGFjUAbuDXk6kEBfI=;
        b=bGs9nWtYWCuKzL8ol0Ppc0tJLt0gtw+6aUY4BW+NmwcxNQEBSH/ohVbRnrWX1maUqg
         SP2SIMgpnqKOoWnf3csyMAzETPasztjyL9xEOb/5Sj1GEAoj+FAI49C6Ov3DFbKwZyei
         gpbKcOrq6DkmKYgC5kmlJnLSN4h/yXjujLh28B0r11rIkAQZIbjPmRL1IvXL92oskgHo
         /UHiqGkLuai9BWLZ4fsV5oNJFOSesRqKHZst39dObXoOEzcdSjqkOACglCyUfQYNdHXn
         k3FBssZ7cazRk+gPUxDtuGRnjBr2VmRhH9lqE7d3AezvrlnOL5VBTqcPADTsGjqTSWWc
         1NXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=viz4DPtwYRcO5mqC/ZLJK9KASTmGFjUAbuDXk6kEBfI=;
        b=H+z17ionKWaNAt55884vkz06K4T+4aR3fijJoGhxqxDVeIDFoT03fi1sFVx9D801tP
         1V4PLyEU5mUvonk89r8f/EflwxnDT6M+vW+uRPHVEsqrTqwmF0dLaYjRMiF1eeeQOd8e
         Kq4s9wpUkIC12xndFCCBrsbaBgg91H2N+cKmbxmHeS5qoEldEQGJIFRDG9faNjPJ1B1W
         BBozvE6z5cx2DetDErWLDZWbBd91zyEX7Dciswt1UjdqG9Cxv5hROywQrX8RA//t3p8A
         luln3U35pQAH0m9XaOyGg7DfQX6B0zAVaemdiwthcigpAljcB04j8YZjnRcXiqEnZ5vo
         65ZA==
X-Gm-Message-State: APjAAAU3FZOFjxwNkvI8NvouR+tzAulL6r1HnzJDTYH3jju7Sm1Gt9gP
	82YEYoXNjMuN+uN8UyszoAtzddJgH70=
X-Received: by 2002:a9d:7302:: with SMTP id e2mr1511531otk.115.1552749969835;
        Sat, 16 Mar 2019 08:26:09 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:432c:603f:14f8:e32e:7b1b])
        by smtp.gmail.com with ESMTPSA id v8sm1985055otq.4.2019.03.16.08.26.08
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 16 Mar 2019 08:26:09 -0700 (PDT)
Date: Sat, 16 Mar 2019 10:26:07 -0500
From: Madhumthia Prabakaran <madhumithabiw@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723bs: Remove functions
 and replace return types
Message-ID: <20190316152605.GA25383@madhuleo>
References: <20190314223416.3994-1-madhumithabiw@gmail.com>
 <alpine.DEB.2.21.1903150731241.2670@hadrien>
 <20190316131803.GA23435@madhuleo>
 <alpine.DEB.2.21.1903161419430.2487@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1903161419430.2487@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Sat, Mar 16, 2019 at 02:23:03PM +0100, Julia Lawall wrote:
> 
> 
> On Sat, 16 Mar 2019, Madhumthia Prabakaran wrote:
> 
> > On Fri, Mar 15, 2019 at 07:50:57AM +0100, Julia Lawall wrote:
> > >
> > >
> > > On Thu, 14 Mar 2019, Madhumitha Prabakaran wrote:
> > >
> > > > - Remove functions rtw_init_cmd_priv and rtw_init_evt_priv, as its only
> > > > purpose is to call the other functions _rtw_init_cmd_priv and
> > > > _rtw_init_evt_priv, respectively.
> > > > - Rename functions from _rtw_init_cmd_priv and _rtw_init_evt_priv, to
> > > > rtw_init_cmd_priv and rtw_init_evt_priv.
> > > > - Replace return types from sint to u32
> > > > - Replace local variable 'res' data type from sint to u32 in both the
> > > > functions.
> > > > Issue suggested by Coccinelle using ret.cocci.
> > >
> > > OK, this is a really good first step, with a nice log message as well.
> > > However, looking a bit further, there is more to do.
> > >
> > > We can observe that you changed the return type from signed to unsigned,
> > > and it is a little bit surprising that this is ok.
> > >
> > > Looking at the definitions of these functions it seems that they return
> > > error codes, _SUCCESS and _FAIL.  Often in the Linux kernel, success is
> > > indicated by 0 and failure is indicated by a negative number, so one may
> > > still be surprised by the change of type.
> >
> > I didn't  changed _SUCCESS value to 0 and _FAIL value to -ENOMEM. yet
> > again it complied. I want to confirm whether I have to change it
> > directly or there is function RTW_STATUS_CODE in os_dep/osdep_service.c,
> > which can be modified to make _SUCCESS and _FAIL compatible with rest of
> > the kernel
> 
> Please don't use _SUCCESS and _FAIL.  It doesn't really matter what these
> symbols are bound to.  Using them won't cause a compiler error.  The
> problem is that they are the wrong symbols.  Success should be indicated
> with 0 and failure, in the case of a memory allocation, should be
> indicated with -ENOMEM.  Other kinds of failures have other error codes
> (-EINVAL, -ENODEV, etc).
> 
> > >
> > > But this driver actually returns 1 for success and 0 for failure, so the
> > > code remains correctly functioning with the change of type.
> > >
> > > Still, these are not really ideal error values.  To be compatible with the
> > > rest of the kernel, success should be 0 and failure should be -ENOMEM,
> > > because these are memory allocating functions.  In that case the return
> > > type of these functions should be int, rather than u32.
> > >
> > > Finally, _rtw_init_evt_priv actually never returns _FAIL.  The memory
> > > allocation in this function bottoms out at kmalloc, which can fail, so
> > > there needs to be a check for this, and to return an -ENOMEM value.
> > >
> > > Checking on all of that leads to:
> > >
> > > void *_rtw_malloc(u32 sz)
> > > {
> > > 	return kmalloc(sz, in_interrupt() ? GFP_ATOMIC : GFP_KERNEL);
> > > }
> > >
> > > which is incorrect.  Each call site needs to be checked to determine
> > > whether it is in atomic context (accessible from an interrupt handler or
> > > with a lock held) and to use GFP_ATOMIC if that is the case and GFP_KERNEL
> > > otherwise.
> > >
> > > I would suggest to clean up everything up to the paragraph starting with
> > > "Finally" in a single series.  Then, if you want to work more on this
> > > driver, you can look for other uses of _SUCCESS and _FAIL and convert them
> > > to more appropriate return values, and convert calls to rtw_malloc to
> > > calls to kmalloc with the correct flag argument.  There is also a function
> > > rtw_zalloc that should be kzalloc with the same issues.  Actually, the
> > > file osdep_service.c hasa good set of unsuitable definitions that should
> > > be cleaned up.
> >
> > I sent it as a patch series. I will work on all unsuitable definitions
> > in osdep_service.c.
> 
> Actually, it is not really the definitions that need to be cleaned up.
> The uses of these functions need to be replaced by direct calls to the
> standard kernel functions, and then the functions in osdep_service.c
> should be dropped.

I will fix  all the functions backtracing from _rtw_init_evt_priv to
_rtw_malloc in another patch. Along with that, I wil fix rtw_zalloc,
which have same issues. 

Thanks

> 
> julia
> 
> >
> > >
> > > julia
> > >
> > > >
> > > > Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> > > > ---
> > > >  drivers/staging/rtl8723bs/core/rtw_cmd.c | 24 ++++--------------------
> > > >  1 file changed, 4 insertions(+), 20 deletions(-)
> > > >
> > > > diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > > > index 91520ca3bbad..d8c362947dd4 100644
> > > > --- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > > > +++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > > > @@ -162,9 +162,9 @@ Caller and the rtw_cmd_thread can protect cmd_q by spin_lock.
> > > >  No irqsave is necessary.
> > > >  */
> > > >
> > > > -sint	_rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
> > > > +u32 rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
> > > >  {
> > > > -	sint res = _SUCCESS;
> > > > +	u32 res = _SUCCESS;
> > > >
> > > >  	init_completion(&pcmdpriv->cmd_queue_comp);
> > > >  	init_completion(&pcmdpriv->terminate_cmdthread_comp);
> > > > @@ -201,9 +201,9 @@ sint	_rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
> > > >  }
> > > >
> > > >  static void c2h_wk_callback(_workitem *work);
> > > > -sint _rtw_init_evt_priv(struct evt_priv *pevtpriv)
> > > > +u32 rtw_init_evt_priv(struct evt_priv *pevtpriv)
> > > >  {
> > > > -	sint res = _SUCCESS;
> > > > +	u32 res = _SUCCESS;
> > > >
> > > >  	/* allocate DMA-able/Non-Page memory for cmd_buf and rsp_buf */
> > > >  	atomic_set(&pevtpriv->event_seq, 0);
> > > > @@ -295,22 +295,6 @@ struct	cmd_obj	*_rtw_dequeue_cmd(struct __queue *queue)
> > > >  	return obj;
> > > >  }
> > > >
> > > > -u32 rtw_init_cmd_priv(struct cmd_priv *pcmdpriv)
> > > > -{
> > > > -	u32 res;
> > > > -
> > > > -	res = _rtw_init_cmd_priv(pcmdpriv);
> > > > -	return res;
> > > > -}
> > > > -
> > > > -u32 rtw_init_evt_priv(struct	evt_priv *pevtpriv)
> > > > -{
> > > > -	int	res;
> > > > -
> > > > -	res = _rtw_init_evt_priv(pevtpriv);
> > > > -	return res;
> > > > -}
> > > > -
> > > >  void rtw_free_evt_priv(struct	evt_priv *pevtpriv)
> > > >  {
> > > >  	RT_TRACE(_module_rtl871x_cmd_c_, _drv_info_, ("rtw_free_evt_priv\n"));
> > > > --
> > > > 2.17.1
> > > >
> > > > --
> > > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190314223416.3994-1-madhumithabiw%40gmail.com.
> > > > For more options, visit https://groups.google.com/d/optout.
> > > >
> >
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1903161419430.2487%40hadrien.
> For more options, visit https://groups.google.com/d/optout.

