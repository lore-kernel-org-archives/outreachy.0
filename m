X-GM-THRID: 6668974051336126464
X-Received: by 2002:ac8:71c3:: with SMTP id i3mr9046784qtp.31.1552865672157;
        Sun, 17 Mar 2019 16:34:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:8b55:: with SMTP id d21ls5967629qvc.2.gmail; Sun, 17 Mar
 2019 16:34:31 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyZR53gJlvjFPNbwghv6oRn0ogRCzqhhWwiC7SrTy3ugUCPc0Wm47x36mDsRxgJNgte6+Ao
X-Received: by 2002:a0c:aedd:: with SMTP id n29mr8028579qvd.58.1552865671478;
        Sun, 17 Mar 2019 16:34:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552865671; cv=none;
        d=google.com; s=arc-20160816;
        b=iuDFYmc6No1aDXhvxqqJJhdrTH7tIFb8itxasWaW4IQxQXnpbZpFaTVEbqWxE/NjAo
         w+dizYVefIOhHPXl1Ded6qyC09n14LsW62Fu7UfJTmmHusKnXu7PnUvkOjCVCjIArtvY
         1Z9UjBdjwESJikWFnLEaUOKvjuWhAdxmT0m1q5es6c5Hhj/4qNvRiW8tc698FnrRe95z
         48bLHmTBNq31w5MFR5gNaPJhrSDNy24YQMExHEs/FFqtJmw2B8pnz5nfVICiAgcqRQ5U
         F59HOhCPnQEMbgGDQV/dsH/szWYArVKsycxCwrGQLNv78K0aEY7cuUs5UsPRVynf9WVR
         cVjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=ih8XcdFFhnh+4bsD9YTB6nuX9c2wq0WFKM5tDup3n3k=;
        b=y/2Hm8D2rkFV+Rmp2saFnC1aEcbxycpQzzrwBDHvdXmNR262kwSAaOYVzxMqW5d6eK
         LfLCR+CKQOU2lIvIHuu6nGAyBExy1iji63/AmDrlza50vOLzZcOilbjlikX4pZCsP0Lu
         2VIYU9P1DIFL4eOdMRnBrkTw1cFeqqjm7uv2VIgPsnMXQ7qyfVSOBmHdh4fH5AuYXKrv
         s3bo4esCMoXMmRrlOI0Z0c0MjPuoI12fKtZlJtn8xv9TWUuxkIGS2qDXb0tnxxzih2Qa
         TEkibvVOyS+0s2ApRe3uR7qiczY8RA31PfllFrC74vA2Dd0NNRF7D0J5xTSx7G3P8Jj9
         iMhw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Pr/uIFWh";
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id o59si357118qte.3.2019.03.17.16.34.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 16:34:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Pr/uIFWh";
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x343.google.com with SMTP id f10so5457405otb.6
        for <outreachy-kernel@googlegroups.com>; Sun, 17 Mar 2019 16:34:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=ih8XcdFFhnh+4bsD9YTB6nuX9c2wq0WFKM5tDup3n3k=;
        b=Pr/uIFWhM5ZJTR/55fzFQ18+RNl0Kdr5N3io9WEVneP9ZBWHyy1LTAThjLkS7g/SBy
         tmhPWHC4Cfe8/LsnS2np+vCP9P3fpaVD+Vnaa3kyvdkaoka872OuZu5hGYfIZbbVwYjE
         /fVMFV6kUXXNbcqwf/ZNx8Q7syV34OI8/GwgPaPuO1xOADpLglz2eQ4cTXw1sXRao+9K
         smbPDad87jZUUDuae5DeCAWKPl5wvHCKTvjZvfct065H/DJU3adkTG8LWm5t6VmiBQu2
         z+qbsrzxdY5/vkQlHeuDivF2dp3n6zhMG8RkOT2t8op6ItirAozORw8wQcYaHlfewZZf
         I7Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=ih8XcdFFhnh+4bsD9YTB6nuX9c2wq0WFKM5tDup3n3k=;
        b=porkTprgTwU/kIS+2Iah9Bs7Mpj9aVEqe3SOvzf98iPermAjMYDDU0MUMcVyjcFmrQ
         UyqPIsYpwKyODW1ykBNToJdbZ8ZSgjRQZad90lqQdkAsl6yQ2bWK95vM+BncusPV4SxJ
         iS1Vmcwtml013DM3fzz+EYSOWH9XWzH+scfX9NT8jJCTJYa5HMGU0Lz/s+6tWmd19WoH
         ZvUgTBr6+MbNZ37mf7y1n4T+N1DMMyDppXEfgDFW2jmwqg1FgTcsey/BJfB95iXIQqDU
         19qvl4cSefWNAubMP55sW8DXmX52DOqVdNqKcaUTjCxSdndVO+Jnm6yMFFrPTOZxORg+
         MjIA==
X-Gm-Message-State: APjAAAV4XBAyvvXyyHTZeO9fS5qLaqQWbhhbGwNYNP45r13VsAut1HOT
	cWdbi/8xmy2U0NwrCTGaXX2x1YDrTgQ=
X-Received: by 2002:a05:6830:1654:: with SMTP id h20mr1753485otr.149.1552865670873;
        Sun, 17 Mar 2019 16:34:30 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:606d:f05d:7617:ecf9:c9f1])
        by smtp.gmail.com with ESMTPSA id o62sm1850627oig.29.2019.03.17.16.34.29
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 17 Mar 2019 16:34:30 -0700 (PDT)
Date: Sun, 17 Mar 2019 18:34:27 -0500
From: Madhumthia Prabakaran <madhumithabiw@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 2/5] Staging: rtl8723bs: Change
 type of variables and return type
Message-ID: <20190317233426.GA4222@madhuleo>
References: <cover.1552858206.git.madhumithabiw@gmail.com>
 <cce081516153acd64194786cb1373150172d73cf.1552858206.git.madhumithabiw@gmail.com>
 <alpine.DEB.2.21.1903172250420.2434@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1903172250420.2434@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Sun, Mar 17, 2019 at 10:52:35PM +0100, Julia Lawall wrote:
> 
> 
> On Sun, 17 Mar 2019, Madhumitha Prabakaran wrote:
> 
> > Change type of local variables 'res' and return type of functions
> > 'rtw_init_cmd_pri' and 'rtw_init_evt_priv', as function's
> > return types are defined for standard error codes _SUCCESS and _FAIL.
> 
> I'm not sure to undestand the reference to _SUCCESS and _FAIL.  sint is a
> typedef for signed int, but kernel code typically uses just int rather
> than signed int.  In any case, the change doesn't have any impact on the
> types in the code.

That's true. Should I drop this patch?

thanks

> 
> julia
> 
> > Also, change return type of functions declarations corresponding to
> > change made in function definitions.
> >
> > Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> > ---
> >  drivers/staging/rtl8723bs/core/rtw_cmd.c      | 8 ++++----
> >  drivers/staging/rtl8723bs/include/cmd_osdep.h | 4 ++--
> >  2 files changed, 6 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > index 793bc505fa9c..ab450f717f34 100644
> > --- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > +++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > @@ -162,9 +162,9 @@ Caller and the rtw_cmd_thread can protect cmd_q by spin_lock.
> >  No irqsave is necessary.
> >  */
> >
> > -sint rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
> > +int rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
> >  {
> > -	sint res = _SUCCESS;
> > +	int res = _SUCCESS;
> >
> >  	init_completion(&pcmdpriv->cmd_queue_comp);
> >  	init_completion(&pcmdpriv->terminate_cmdthread_comp);
> > @@ -201,9 +201,9 @@ sint rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
> >  }
> >
> >  static void c2h_wk_callback(_workitem *work);
> > -sint rtw_init_evt_priv(struct evt_priv *pevtpriv)
> > +int rtw_init_evt_priv(struct evt_priv *pevtpriv)
> >  {
> > -	sint res = _SUCCESS;
> > +	int res = _SUCCESS;
> >
> >  	/* allocate DMA-able/Non-Page memory for cmd_buf and rsp_buf */
> >  	atomic_set(&pevtpriv->event_seq, 0);
> > diff --git a/drivers/staging/rtl8723bs/include/cmd_osdep.h b/drivers/staging/rtl8723bs/include/cmd_osdep.h
> > index 8ed913726d5a..06ab48263757 100644
> > --- a/drivers/staging/rtl8723bs/include/cmd_osdep.h
> > +++ b/drivers/staging/rtl8723bs/include/cmd_osdep.h
> > @@ -8,8 +8,8 @@
> >  #define __CMD_OSDEP_H_
> >
> >
> > -sint rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv);
> > -sint rtw_init_evt_priv(struct evt_priv *pevtpriv);
> > +int rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv);
> > +int rtw_init_evt_priv(struct evt_priv *pevtpriv);
> >  extern void _rtw_free_evt_priv (struct	evt_priv *pevtpriv);
> >  extern void _rtw_free_cmd_priv (struct	cmd_priv *pcmdpriv);
> >  extern sint _rtw_enqueue_cmd(struct __queue *queue, struct cmd_obj *obj);
> > --
> > 2.17.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cce081516153acd64194786cb1373150172d73cf.1552858206.git.madhumithabiw%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1903172250420.2434%40hadrien.
> For more options, visit https://groups.google.com/d/optout.

