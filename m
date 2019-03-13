X-GM-THRID: 6667898638714273792
X-Received: by 2002:a17:906:350e:: with SMTP id r14mr426894eja.10.1552506594650;
        Wed, 13 Mar 2019 12:49:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:1909:: with SMTP id a9ls643422eje.3.gmail; Wed, 13
 Mar 2019 12:49:53 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy3rpH9Yz4ImsP7vuiVodemZiA8YuKexsBLTRWMLaRTDi2aRumbqnvZ6l5EOk206dHHLnwI
X-Received: by 2002:a17:906:7f0a:: with SMTP id d10mr5297605ejr.15.1552506593874;
        Wed, 13 Mar 2019 12:49:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552506593; cv=none;
        d=google.com; s=arc-20160816;
        b=NPD+00MzP+afAW/p8HQo2RWS5wcbuhMn2uXFE2/PqQwRAB+Tq2z9CmXNZVJy2lGzqb
         +VLC4eGrQxKVzwni2MleF/kpVYZJ6B2rUuOOb5gsZ9QwDbvchR+tzfAoUqo46uUSFpLm
         23BRtWcaMraKeiOW85nnMHVAftJt12DuRah+Ctl7RqtDf2S1zp/avfj9adanBrQ79R/F
         GmDFeEY0DzspoCtsFHHRNX94eBSMoysQcZiAnfQrQ/TyLe+YbjNFSn6+lH4NN3H9c4en
         afeoNxMYejP4PgP1aPzG9OOooov3I+wZIui8Sj4eZV2AeRQORT9IHkuV+h35OIPQMOxC
         LZNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=wAdbLGBGphfv8JZGZ2YptTNKdrEwWQNyqkbh/FFcVjI=;
        b=NZvjxm7FOGkYPIAPpvsCwcJ9U9PW9jOu0Mlj5RCFLvrytK0eW+0M4MBXFEjchVCvZL
         t4b2IlkVrs0/VH97dJ5dLMCdmhku0IczD79UpO1jBdiY9aCEU/mDVKqZpyYpAQrwRsoN
         OT/FggKzDn2laTXnGrw6439NzLzxBtUDZsQNN03+tugiN3fZabSQg9OU8nnFb6hyt7PA
         UnVlIsUt+F+kvgtCKhgxXeLXjOue3Ax95k7W9rC5vBOdaLgo1w7MYNeO/GKf7jL/OmCo
         4NPOh8AWkLhPzh6oGYmrmQeFSP9F5w7sC2aQj4Z3cwbTjj37BNIGhxZtdXynVJQX3JrO
         m6fQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id r37si91302edd.2.2019.03.13.12.49.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Mar 2019 12:49:53 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,475,1544482800"; 
   d="scan'208";a="373293807"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Mar 2019 20:49:53 +0100
Date: Wed, 13 Mar 2019 20:49:53 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Madhumthia Prabakaran <madhumithabiw@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: sm750fb: Remove an unnecessary
 local variable in a function
In-Reply-To: <20190313153958.GA5065@madhuleo>
Message-ID: <alpine.DEB.2.21.1903132049340.2515@hadrien>
References: <20190313153205.4974-1-madhumithabiw@gmail.com> <alpine.DEB.2.20.1903131634500.27312@hadrien> <20190313153958.GA5065@madhuleo>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 13 Mar 2019, Madhumthia Prabakaran wrote:

> On Wed, Mar 13, 2019 at 04:35:39PM +0100, Julia Lawall wrote:
> >
> >
> > On Wed, 13 Mar 2019, Madhumitha Prabakaran wrote:
> >
> > > Remove an unnecessary local variable in  sm750_format_pll_reg function
> > > and replace its initialization directly in return type.
> > > Issue suggested by Coccinelle using ret.cocci.
> > >
> > > Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> > > ---
> > >  drivers/staging/sm750fb/ddk750_chip.c | 5 +----
> > >  1 file changed, 1 insertion(+), 4 deletions(-)
> > >
> > > diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
> > > index 90f5480304f4..93abfa8b0090 100644
> > > --- a/drivers/staging/sm750fb/ddk750_chip.c
> > > +++ b/drivers/staging/sm750fb/ddk750_chip.c
> > > @@ -391,7 +391,6 @@ unsigned int sm750_format_pll_reg(struct pll_value *pPLL)
> > >  	unsigned int OD = pPLL->OD;
> > >  	unsigned int M = pPLL->M;
> > >  	unsigned int N = pPLL->N;
> > > -	unsigned int reg = 0;
> > >
> > >  	/*
> > >  	 * Note that all PLL's have the same format. Here, we just use
> > > @@ -399,13 +398,11 @@ unsigned int sm750_format_pll_reg(struct pll_value *pPLL)
> > >  	 * register. On returning a 32 bit number, the value can be
> > >  	 * applied to any PLL in the calling function.
> > >  	 */
> > > -	reg = PLL_CTRL_POWER |
> > > +	return PLL_CTRL_POWER |
> > >  #ifndef VALIDATION_CHIP
> > >  		((POD << PLL_CTRL_POD_SHIFT) & PLL_CTRL_POD_MASK) |
> > >  #endif
> > >  		((OD << PLL_CTRL_OD_SHIFT) & PLL_CTRL_OD_MASK) |
> > >  		((N << PLL_CTRL_N_SHIFT) & PLL_CTRL_N_MASK) |
> > >  		((M << PLL_CTRL_M_SHIFT) & PLL_CTRL_M_MASK);
> > > -
> > > -	return reg;
> >
> > This is going better in the right direction.  But maybe it is less
> > readable than before, with that very large expression and the ifndef...
> >
> > julia
> >
> > >  }
> > > --
> > > 2.17.1
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190313153205.4974-1-madhumithabiw%40gmail.com.
> > > For more options, visit https://groups.google.com/d/optout.
> > >
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.20.1903131634500.27312%40hadrien.
> > For more options, visit https://groups.google.com/d/optout.
>
> Do you want me to drop this? As the previous code is more readable than this one.

I don't know.  Greg decides...

julia

