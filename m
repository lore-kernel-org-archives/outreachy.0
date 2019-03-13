X-GM-THRID: 6667898638714273792
X-Received: by 2002:a67:e10c:: with SMTP id d12mr28413211vsl.22.1552491603647;
        Wed, 13 Mar 2019 08:40:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:7d03:: with SMTP id y3ls485092vsc.3.gmail; Wed, 13 Mar
 2019 08:40:02 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzhZ2NQPaAYdK4v2ksKYB5SwefwWd5krcc3Y/rq1owE17/pAA9PyCCEAaN7jcKJysLvq0QO
X-Received: by 2002:a67:bd05:: with SMTP id y5mr3253591vsq.27.1552491602890;
        Wed, 13 Mar 2019 08:40:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552491602; cv=none;
        d=google.com; s=arc-20160816;
        b=UsdR7ANmEkfwHG0qXQj8ljCX86qMaB2zekkqMk8YfhsighXqjpcH1AulwMb/yzsxCN
         shN0ssrVMcDJ3a/YDE75JTPafxJReagApBaGUmMbP7BSlfM4oOcfubpo+HTwAdLZWhHM
         la7jhMVo+nur/nEUWnU3whe9Jot6qnyUs8JpZ4C4uyJemyQLVlk3e+CjKc0fjPdgO5oj
         ysb7eF+cwlt9o9qKmTAvkHSUvXIanonm7Q1HHB3Y/xLRdDYQmIJjo/y2X4Wgj1/WGfZT
         olhh+Ki6r+mx/AulS0reLmOWEs7tKbeE4UNnRQL5LKv8TLN9b2JaAJ/rtYlyylM5M/Nf
         cFNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=tPpXuk3G7lPuaBIH+A7FjGMTyW+p/Fbl6gxlbjMtR3E=;
        b=RHKsxz0qzB8y77tPL+QacIAMdpHkhAd9+mK5ssKPxtA8K27Z/Ejb8WQpdxktwHOkc4
         vVF8tpvn14rn8MHYJ2Re/jFJnkBJE17C7BgsLgozZFJPt0asCkMmGN461WJeDi/gdzI1
         0P8C+Qoy4bIxwOKqxy8iGDfjlOQQ1TuuG++X/6Ar1prdHecGxC/FUxh2XOzNhYg+4r8U
         D7y9PECbN/dzo627VBWfZsMlMR0RnhQKdY7Z/rEHpgkOzjT3gy+F8r08okIshZaI2/IG
         5wmu4lYZHFOaHJuCevI/Xbg8vV9e6i4CfZKG5zlD8DndOAtYec0VtDFbhZJcWo9fhqnO
         k88A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IWzCW9jM;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::22f as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x22f.google.com (mail-oi1-x22f.google.com. [2607:f8b0:4864:20::22f])
        by gmr-mx.google.com with ESMTPS id q85si601889vke.5.2019.03.13.08.40.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Mar 2019 08:40:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::22f as permitted sender) client-ip=2607:f8b0:4864:20::22f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IWzCW9jM;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::22f as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x22f.google.com with SMTP id u128so1797945oie.2
        for <outreachy-kernel@googlegroups.com>; Wed, 13 Mar 2019 08:40:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=tPpXuk3G7lPuaBIH+A7FjGMTyW+p/Fbl6gxlbjMtR3E=;
        b=IWzCW9jM4HB5YP4cSXzOM02HEXyXAAc8dl4961e2+Ib+6p9xJWdPvYAdFnQennLkC+
         UCwJDWHPq1a5vSQFlm89T4794gH1SBdDwCOVoSw6iOPWNZycDnL5VzACHVmBRRTRqtOV
         0cjOSwfySGTPyoE4O/ekzfWQ46+IZWPQLhaVg45LBIyOFYdUbuqPlYpdgsh9S60l7JyE
         v3dH4QutjVf7WQEVNqWIqqlK7LWzMlBnS3BcCUNyCt3y2nSPrOyZ8rkIe1JchY+Pxlof
         oiR1YGbTAOobiEL2TNLqB0uISRRScdUsE2SOH4zzWjvjXnX+limij/p3hYxTszNbboRZ
         u68Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=tPpXuk3G7lPuaBIH+A7FjGMTyW+p/Fbl6gxlbjMtR3E=;
        b=eCCMrEnLMdmB24+O192xszfET2CBmZBglW80+LBlqJ139QaprX73dn355Q5N9OtXKb
         I+Ycz4svLwUIQEoIVGBQ/t6e6F9lCusjjmJ38+CfhAGDLWzvsEnc1WnO9BHlcTTtIlww
         7Pmtae2GkBR/lBQa7lsOsiaairUcjMQChJM0DOGxcy0uufEVOqzGJ8PwK/EHt+s4ARsa
         P979y4DVgXqPjLKAhzxP4iZ6j5cGALjYJjS7FCcVv9uVc1gnsCQBON8XCY9jmmuj6IxI
         OpZ2Nzirzea7wipU9gLuQXcNk6L/ucZy/zKR6iRWA+RRpDGNNHxyzQMCNB71pGxA68j8
         46rw==
X-Gm-Message-State: APjAAAV6F3/tE51kuzR7LC3uu2QcpvKwPtXOS94Ke33Ps1FepsGOaKdb
	ZLObyIw+IsO9r+Ii+3kQ4Js=
X-Received: by 2002:aca:b644:: with SMTP id g65mr2140652oif.23.1552491602372;
        Wed, 13 Mar 2019 08:40:02 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:432c:e4:1d2b:f2ed:b6ff])
        by smtp.gmail.com with ESMTPSA id s12sm4558772otk.0.2019.03.13.08.40.01
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 13 Mar 2019 08:40:01 -0700 (PDT)
Date: Wed, 13 Mar 2019 10:39:59 -0500
From: Madhumthia Prabakaran <madhumithabiw@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: sm750fb: Remove an
 unnecessary local variable in a function
Message-ID: <20190313153958.GA5065@madhuleo>
References: <20190313153205.4974-1-madhumithabiw@gmail.com>
 <alpine.DEB.2.20.1903131634500.27312@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1903131634500.27312@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Wed, Mar 13, 2019 at 04:35:39PM +0100, Julia Lawall wrote:
> 
> 
> On Wed, 13 Mar 2019, Madhumitha Prabakaran wrote:
> 
> > Remove an unnecessary local variable in  sm750_format_pll_reg function
> > and replace its initialization directly in return type.
> > Issue suggested by Coccinelle using ret.cocci.
> >
> > Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> > ---
> >  drivers/staging/sm750fb/ddk750_chip.c | 5 +----
> >  1 file changed, 1 insertion(+), 4 deletions(-)
> >
> > diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
> > index 90f5480304f4..93abfa8b0090 100644
> > --- a/drivers/staging/sm750fb/ddk750_chip.c
> > +++ b/drivers/staging/sm750fb/ddk750_chip.c
> > @@ -391,7 +391,6 @@ unsigned int sm750_format_pll_reg(struct pll_value *pPLL)
> >  	unsigned int OD = pPLL->OD;
> >  	unsigned int M = pPLL->M;
> >  	unsigned int N = pPLL->N;
> > -	unsigned int reg = 0;
> >
> >  	/*
> >  	 * Note that all PLL's have the same format. Here, we just use
> > @@ -399,13 +398,11 @@ unsigned int sm750_format_pll_reg(struct pll_value *pPLL)
> >  	 * register. On returning a 32 bit number, the value can be
> >  	 * applied to any PLL in the calling function.
> >  	 */
> > -	reg = PLL_CTRL_POWER |
> > +	return PLL_CTRL_POWER |
> >  #ifndef VALIDATION_CHIP
> >  		((POD << PLL_CTRL_POD_SHIFT) & PLL_CTRL_POD_MASK) |
> >  #endif
> >  		((OD << PLL_CTRL_OD_SHIFT) & PLL_CTRL_OD_MASK) |
> >  		((N << PLL_CTRL_N_SHIFT) & PLL_CTRL_N_MASK) |
> >  		((M << PLL_CTRL_M_SHIFT) & PLL_CTRL_M_MASK);
> > -
> > -	return reg;
> 
> This is going better in the right direction.  But maybe it is less
> readable than before, with that very large expression and the ifndef...
> 
> julia
> 
> >  }
> > --
> > 2.17.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190313153205.4974-1-madhumithabiw%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.20.1903131634500.27312%40hadrien.
> For more options, visit https://groups.google.com/d/optout.

Do you want me to drop this? As the previous code is more readable than this one.

thanks,
Madhumitha


