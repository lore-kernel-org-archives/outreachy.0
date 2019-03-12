X-GM-THRID: 6667626897637113856
X-Received: by 2002:ac8:4355:: with SMTP id a21mr3681715qtn.9.1552428523108;
        Tue, 12 Mar 2019 15:08:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:6b82:: with SMTP id g124ls1241420qkc.3.gmail; Tue, 12
 Mar 2019 15:08:42 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw1FLHDtTlRGM60Lkk7ztNzoXaYvLJaxZIJRCpG4nn24XHAKFPPIgaat8bhOl/V/3QvZbwc
X-Received: by 2002:ae9:e508:: with SMTP id w8mr4843099qkf.49.1552428522392;
        Tue, 12 Mar 2019 15:08:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552428522; cv=none;
        d=google.com; s=arc-20160816;
        b=XT6PkO9kjd93DH4QHN72pLJznubDZTdCZc/CHkThz0IHC6H7m7vH4dwjP3q+k32I3N
         JGfgQec/LNltcgmdewp17Eb9em/jU/v4El5eG8FahL3VGrE0O7e5Ncy0s6hlu08ogG/N
         TPckopA6SEVlPLPXVICsqLBxQQ9KGpAgbOJRydHwAqYuN7xEqr21Bw5+mAtj1+7RMRgF
         k95nJQnLGlB/lr9DaMGSpeblehwBMHX68Mw0DCcNlVvhtpwyMyBlN/co88ldWKRt6dzX
         kwpeI+1C4+7I5Zi+/2pH5/L/9WUtzS4KJiJAGzr210qYAFrYwYbLVwxG4tuuXRknAgvN
         fV0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=00DWu19GU3Wnavn6x9yEXNIjxU7KIlaocSoz1HInn7M=;
        b=R/Cbr7OEmjkz3uudtLgHUEKysOhu6y57bpda8HGXwReEi7N6uLw2v9GvAYfrZIDZ1L
         /5wcoLhRvQuFhyJAlcrXZW+RovSniiSba87UxBPJ9WexKlOTm5/uMZUQ/wXTAUHNkVX8
         /iBxIKUYjXXyPB1khUPPOdPYflcg9UKRgs0EzZpmNzBpHmHeOp7ChSh1zWnklwkRPbip
         noyHLScwRA/keNxGrJ4zwKl2Q02eobZswJc13aQQlFlP901z6InHDwVqlwuDnuA2GMZQ
         dG5KdYjHb8GDbT08ht9nXfyMeoGqj8OWD6i9rLNZCAh+l2ogTd5u7G76oeyfYIz6IzmA
         +2sA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Rm3Erxxd;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v2si487838qka.0.2019.03.12.15.08.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Mar 2019 15:08:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Rm3Erxxd;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [104.133.8.98])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4FD2A2175B;
	Tue, 12 Mar 2019 22:08:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552428521;
	bh=7wmcvanD4LSiOgpiV5KMW3ziVdGamYCdxewiBlFqBKg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Rm3ErxxdXyO7E3HwMPr2aW2Ourt9QBso8QHOtX4mrRBiboStp/mG7apvmuergO5LX
	 NO9APcTVRMIe7P+QYxpfIvVZCMyfNkD7+Xjq9GyWPg77XmjW7tdpCqaHztpdMQZWV8
	 pdPqJVutZZoOyn7ep65U/EK3vsbnxnBlTBGxrkdw=
Date: Tue, 12 Mar 2019 15:08:40 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Cc: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH] Staging: sm750fb: Remove
 unnecessary local variables
Message-ID: <20190312220840.GA17773@kroah.com>
References: <20190312215737.29200-1-madhumithabiw@gmail.com>
 <20190312220320.GA17305@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190312220320.GA17305@kroah.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Tue, Mar 12, 2019 at 03:03:20PM -0700, Greg KH wrote:
> On Tue, Mar 12, 2019 at 04:57:37PM -0500, Madhumitha Prabakaran wrote:
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
> Oh wow, that's almost impossible to now read.
> 
> Sometimes you want intermediate variables for the programmer, not for
> the compiler.  The end result is the same, but please tell me that you
> could figure out what that one single return line actually does :(
> 
> Remember, we write C code for people to understand first, and the CPU to
> understand second as we have to maintain it for the future.

Also, this change might be wrong, and at the least, will be slower as
you now call peek() a lot more times.  Is that a function that has no
side-affects on the hardware?  At the least it is doing a device access,
so you only want to do that once if possible.

Remember, there is real hardware behind the driver, that's why the
driver is written in the first place :)

thanks,

greg k-h

