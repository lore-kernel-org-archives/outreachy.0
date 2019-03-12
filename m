X-GM-THRID: 6667626897637113856
X-Received: by 2002:a17:902:20eb:: with SMTP id v40mr13052804plg.68.1552429428232;
        Tue, 12 Mar 2019 15:23:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:a514:: with SMTP id s20ls11290429plq.0.gmail; Tue,
 12 Mar 2019 15:23:47 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzKKrXp6Oyowa/tmvyFJbN9k05lQhUr5KsqY+cNU3qWZrz16qeHUDUjoI+/eGoYtZC88/GI
X-Received: by 2002:a17:902:ec0a:: with SMTP id cy10mr12603512plb.135.1552429427453;
        Tue, 12 Mar 2019 15:23:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552429427; cv=none;
        d=google.com; s=arc-20160816;
        b=Tpc9TIWYZveNkTxzvgdOOfJSp/nlYszmcWqFkbrWW5FaBg9Zs1MpfW/SwHcNe5ajxj
         6tUhzKApY72wNdEikASa089/peLJtbpPCKHgExxhQpCFIvY0PYdkn9nt+drCj2aQxfql
         vHp69brQLIqJEd8jxz8IDGHTfkNcnMqUiNER0NKeZgj3sLaHlJ5aMQ5FPDCbDxBL1S9z
         shLkfOjZOpse2AIaUVRnZf3MxXdWAZSD+DnwJdR+KUQpk0QQX4aGBJjNYqokB0LtNeF+
         uP1/JgHx3dlnPifQhar1A2bG2a0GpFhzMadZ2zCx8iHhV1bfOJ/A3d8TBER/guCRVnTD
         h4vQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=K0FlfzJP/xZ0bZgG+c1SljPc4Deh15hyGaT/7gfyHPc=;
        b=eZ/j8FC1BYtpNDWhT+7uP6PKGH6kyaV+AKmzC10jDHvQzL1ceQ4YtOAfKIJioOts6j
         hWpTkXq6OMtP0UODmPks6tzRw663LZXONs/Pp+UVxnbJhBY+gTfAYv+J5Yl3uTZcDviJ
         OI1HFABebF7TIFTe3kv9/61Xm6BmDGvP1dD8fUEHiGBZTDvhWxJBFMdzuogjHNlehZbZ
         sTuuJuysVMtuf450+ULsd+4Pb3hCWHJiPkUDashxPs8tCa8jioYAz+s5EtpyhSiP2dGE
         +UsbACZhMpgJzeYaaHJlTe8za7vRfdGTnacVKYDPjnBwbicYyNcN8SFmTqmG95O7nmO/
         6ZRg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WtkCPaDp;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id p15si581091plr.4.2019.03.12.15.23.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Mar 2019 15:23:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WtkCPaDp;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x241.google.com with SMTP id u128so3506011oie.2
        for <outreachy-kernel@googlegroups.com>; Tue, 12 Mar 2019 15:23:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=K0FlfzJP/xZ0bZgG+c1SljPc4Deh15hyGaT/7gfyHPc=;
        b=WtkCPaDprFDXccCWotjkxj2joVHMgTte0R0/6BXiH+x5Uz9bwLj7XSZz512lc0vNb6
         DBsvT5g4yvXsdT/eY9IcWeu1Dzkb1R2/hWED6FPKKA9m+ywNtcF2p8nTnD5ianY9emne
         nJsr5rzrwTx//YLf1/pd/qcdE2+Sg8M6X1ZGWWeWMsc3Fl/5SOWGHnbmcTya5WT3+ZwA
         SctiISef0BV74q6JKS6c2aFbzF4HQmeRQSiEEX/SuxaQv/xzYNOEoieBydJ7HfKp2G3w
         SJiVyeV+3q4pYZJAhVfURNo70rVMMt1FVkMFtODoecaJhC2KPZBd2nhIG1WR49jIYi0F
         kJjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=K0FlfzJP/xZ0bZgG+c1SljPc4Deh15hyGaT/7gfyHPc=;
        b=VXZZhEEmeSZg8n0ledBI8hO0Z6P5GR9k2tNirSYI9qSFXS+fGlRCvw+9vIPecXjxql
         T7sjPGH8Jbks1ccrL7a3alWzjk8n/IJ5uWW/P4E5+6+NM/uWLNOeyUA7ApRo0L+ZxtKu
         YQ3GysY4KnlWEQ59ZajuyCPN+3wkdABdjwq3kgEfTC8xOZNB40FO7OTCc+oUrS+7LJ1X
         sz7nsSW8EdiiU5ybCKJ111F+dvN3zMXiwo1EfsP0HKpd3S2zq/L6sF4ULkTR2QUNnev/
         uAC91EIu8uwvTOxBtrtrRXIC4SCkrgvsdaxGxfIi5kVdNApYB4XlrRHXK4xDwiU9Frqd
         PCQw==
X-Gm-Message-State: APjAAAVjom6fXjd8mOtTA0rWoi3mzBnxs1rmaB2mO3yVVd9Q1EJxnj5e
	HwDC9kk13zEheKenfvSJTMLZGk/HfWVkzw==
X-Received: by 2002:aca:d786:: with SMTP id o128mr56875oig.25.1552429426551;
        Tue, 12 Mar 2019 15:23:46 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:432c:e4:1d2b:f2ed:b6ff])
        by smtp.gmail.com with ESMTPSA id v62sm4006424oie.21.2019.03.12.15.23.45
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 12 Mar 2019 15:23:45 -0700 (PDT)
Date: Tue, 12 Mar 2019 17:23:38 -0500
From: Madhumthia Prabakaran <madhumithabiw@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: sm750fb: Remove unnecessary
 local variables
Message-ID: <20190312222254.GA30660@madhuleo>
References: <20190312215737.29200-1-madhumithabiw@gmail.com>
 <alpine.DEB.2.21.1903122306020.2722@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1903122306020.2722@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Tue, Mar 12, 2019 at 11:09:30PM +0100, Julia Lawall wrote:
> 
> 
> On Tue, 12 Mar 2019, Madhumitha Prabakaran wrote:
> 
> > Remove unnecessary local variables in function get_mxclk_freq.
> > Issue found by Coccinelle using ret.cocci.
> >
> > Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> > ---
> >  drivers/staging/sm750fb/ddk750_chip.c | 17 +++++++----------
> >  1 file changed, 7 insertions(+), 10 deletions(-)
> >
> > diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
> > index 90f5480304f4..d0462f21fe36 100644
> > --- a/drivers/staging/sm750fb/ddk750_chip.c
> > +++ b/drivers/staging/sm750fb/ddk750_chip.c
> > @@ -33,19 +33,16 @@ void sm750_set_chip_type(unsigned short dev_id, u8 rev_id)
> >
> >  static unsigned int get_mxclk_freq(void)
> >  {
> > -	unsigned int pll_reg;
> > -	unsigned int M, N, OD, POD;
> > -
> >  	if (sm750_get_chip_type() == SM750LE)
> >  		return MHz(130);
> >
> > -	pll_reg = peek32(MXCLK_PLL_CTRL);
> > -	M = (pll_reg & PLL_CTRL_M_MASK) >> PLL_CTRL_M_SHIFT;
> > -	N = (pll_reg & PLL_CTRL_N_MASK) >> PLL_CTRL_N_SHIFT;
> > -	OD = (pll_reg & PLL_CTRL_OD_MASK) >> PLL_CTRL_OD_SHIFT;
> > -	POD = (pll_reg & PLL_CTRL_POD_MASK) >> PLL_CTRL_POD_SHIFT;
> > -
> > -	return DEFAULT_INPUT_CLOCK * M / N / (1 << OD) / (1 << POD);
> > +	return DEFAULT_INPUT_CLOCK * (peek32(MXCLK_PLL_CTRL) &
> > +	       PLL_CTRL_M_MASK) >> PLL_CTRL_M_SHIFT /
> > +	       (peek32(MXCLK_PLL_CTRL) & PLL_CTRL_N_MASK) >>
> > +	       PLL_CTRL_N_SHIFT / (1 << (peek32(MXCLK_PLL_CTRL) &
> > +	       PLL_CTRL_OD_MASK) >> PLL_CTRL_OD_SHIFT) / (1 <<
> > +	       (peek32(MXCLK_PLL_CTRL) & PLL_CTRL_POD_MASK) >>
> > +	       PLL_CTRL_POD_SHIFT);
> 
> I'm not sure what you are doing here. The proposed semantic patch doesn't
> do this.  It only matches cases where there is an assignment to a variable
> and then a return of exactly that variable.
> 
> I have the impression that you are looking at the files that are handled
> by Coccinelle, then searching in those files for something that looks
> relevant, and then making the transformation by hand.  You shouldn't do
> that.  Coccinelle will find the proper places and make the transformation
> for you.  You will have an appropriate patchon standard output. You can
> then apply it to your code, check that it compiles, check that the format
> is OK and checkpatch is happy, etc.
> 
> julia
> 
> 
> 
> >  }
> >
> >  /*
> > --
> > 2.17.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190312215737.29200-1-madhumithabiw%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >

Yeah, you are right. I have a misunderstanding about working of Coccinelle. I'm trying to understand it. I will drop this patch.
Thanks,

Madhumitha


