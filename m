X-GM-THRID: 6807884729429262336
X-Received: by 2002:adf:e948:: with SMTP id m8mr1955656wrn.193.1585123240214;
        Wed, 25 Mar 2020 01:00:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:600c:2250:: with SMTP id a16ls700423wmm.3.canary-gmail;
 Wed, 25 Mar 2020 01:00:38 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vse6Z0d4EW933TVNAJunBJSB5abcMAOIPu5e8lyj9RhsQ6/pgHS4siEIAj9iaJ3ZAnXdtpz
X-Received: by 2002:a1c:48c1:: with SMTP id v184mr2183704wma.20.1585123238917;
        Wed, 25 Mar 2020 01:00:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585123238; cv=none;
        d=google.com; s=arc-20160816;
        b=XLqbSYP83cuCqUqP0YcBB6dvZmBc+KG27hEA1uEMHS1ktzSZA+Oc1pmgUHZwnCU7KK
         q6l3zuIREeRIgXwMoYaipF9tFqnxtYR4bw4qmeI6gYtthEyh3wzLskVqhkqQRVokx25s
         vWiVmd9ZDxTdSakc2BQnOHayTKLt6vVOt2X+sYWE5BIvdE8JgZAMKrqpxNPfpy3IFKAf
         c+5ghNe2usildwwCqE6SbnXGBa33CwYFWgpgewAN0DK3WCwgc27MrX3HprYHbvPgaoJG
         a3XC2XufaVhoGoDhx8wTPnVo1fF5yML4nFKqahSt2/qZC2d/3BlVFrJhDVyTMdAnaUnG
         Scog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=5cuIkMXzp+5K7N6D6e70NLRaQoThFsaynzCfZdi0+t8=;
        b=iHw5IgsNrXlnfdudIlBlM+URl5nC7psWTZCoxF/bB13yyqr9NS7fZAvnFj9EgZ2kDH
         OeT6Tu3G62YT+YojqmQxYjFfCmDO8GEjrcoGsLagniFqmKdezaIUURE6H7ICqTdwBPtZ
         5dA5swCEaPkNmHVK3gCCk2eeRvpvApWes+Bgzcoa/GYBdil5Z9VuSWllTptIXFIK4Sbm
         l48aXuDqOb3dlPp9Fm+4OVw4Jm3TaiG6uOmExFbdZJeNauY364Mmwxfomah7c9KLLITT
         Ux0CCe+cniop4gmc3fMLBai6BLZ+rULGEIiXEXDWgPzf0xNnW3tce1A5PwwLP4UbZKF0
         4flA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="bl/Y6sBH";
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id q205si313319wme.4.2020.03.25.01.00.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Mar 2020 01:00:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="bl/Y6sBH";
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x341.google.com with SMTP id c81so1231299wmd.4
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Mar 2020 01:00:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=5cuIkMXzp+5K7N6D6e70NLRaQoThFsaynzCfZdi0+t8=;
        b=bl/Y6sBHQ1zDO77VIZo1iMGViPczRj5RMKX4agwmz+1OGjP7Jtz6ivjIZIzqvlJ2zR
         zLY5SQ3iJq9n2EjfYmIBuPXVpruVhND9kd6JT8vFkFfOCMOgWw63M8vy5urbQuC7vllG
         xw4+gP7s/ll53SzVRtcjjLDfl4kLRKSLHfb1mGqWpJKUr/uYvrjphxmOHcGVj51V8dyH
         ab3cUQqvNuACJg6HUzQPEVqYhhoMeZsAKJVwH/BsZEtFw+texzFzApc8uGDn1TpsopZ4
         /dUpwj3A+sC3011IW14DwepOwthtACyQogRNPiStearm+OQV/F+nxMjFMVCm/buIh2hV
         Z1sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=5cuIkMXzp+5K7N6D6e70NLRaQoThFsaynzCfZdi0+t8=;
        b=iCl7D3jhy6BJhSZ8HTOmSUkwQyq7ZTF/fQlv8B4pBJxSpwjexyvxZydX2WLhI8P+rs
         ho1+T0d84+2DUV+Dnn2PeFC06LDsvgJJpwq5bNtefUhMB8EVBFX+nLOWGbU0tK1Sujc8
         YLC0m6Ipn/zE9M7uk7osCPKS1p0jUF0O9+Mm3gTsUQQpzCvBRskKwbp3p+iw6LKnMG2P
         9kZM5HAC8iccOA5lLumGgoxGqZKE2qujKw/a9YoEF6H9EQMTZkJs1IqitNvySakifFld
         QLsl/s1ac87SyzXRWdNa0BBdfy3pDiz90PwhVqooFyk8ug2jPbB1RcxMuecSa93JwhCU
         BHug==
X-Gm-Message-State: ANhLgQ3ztOPX85vjBjv2ffQC0oQO97txEazB5u4Ab8rDu4YZz5p9w87/
	aa2qynKVTcjeXJkjwrdqqJw=
X-Received: by 2002:a7b:c450:: with SMTP id l16mr2118019wmi.9.1585123238542;
        Wed, 25 Mar 2020 01:00:38 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from debian ([197.34.86.140])
        by smtp.gmail.com with ESMTPSA id t5sm26726949wrr.93.2020.03.25.01.00.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Mar 2020 01:00:38 -0700 (PDT)
Message-ID: <44ca99f66316430555a2da1379283ca846acb027.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 4/6] Staging: kpc2000: kpc_dma: Use
 spaces around operators.
From: Sam Muhammed <jane.pnx9@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	outreachy-kernel@googlegroups.com
Date: Wed, 25 Mar 2020 04:00:36 -0400
In-Reply-To: <alpine.DEB.2.21.2003242221390.3306@hadrien>
References: <cover.1585082157.git.jane.pnx9@gmail.com>
	 <d881bf9d5c442ae5a0d6669624355f7af73f5fac.1585082158.git.jane.pnx9@gmail.com>
	 <alpine.DEB.2.21.2003242221390.3306@hadrien>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Tue, 2020-03-24 at 22:22 +0100, Julia Lawall wrote:
> 
> On Tue, 24 Mar 2020, Sam Muhammed wrote:
> 
> > Cleanup Checkpatch.pl CHECKs about missing
> > spaces around multiple operators.
> >
> > Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
> > ---
> >  drivers/staging/kpc2000/kpc_dma/fileops.c | 12 ++++++------
> >  1 file changed, 6 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
> > index d93097ed781c..e599ae1bdfd0 100644
> > --- a/drivers/staging/kpc2000/kpc_dma/fileops.c
> > +++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
> > @@ -19,7 +19,7 @@ static inline
> >  unsigned int  count_pages(unsigned long iov_base, size_t iov_len)
> >  {
> >  	unsigned long first = (iov_base             & PAGE_MASK) >> PAGE_SHIFT;
> > -	unsigned long last  = ((iov_base+iov_len-1) & PAGE_MASK) >> PAGE_SHIFT;
> > +	unsigned long last  = ((iov_base + iov_len - 1) & PAGE_MASK) >> PAGE_SHIFT;
> 
> It seems that the & operators were lined up before and that is not the
> case any more.
> 

Yes, why they were aligned anyways? 
should i align them back or remove the space in the first statement?

Sam

> julia
> 
> >
> >  	return last - first + 1;
> >  }
> > @@ -83,7 +83,7 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
> >  	}
> >
> >  	// Allocate and setup the sg_table (scatterlist entries)
> > -	rv = sg_alloc_table_from_pages(&acd->sgt, acd->user_pages, acd->page_count, iov_base & (PAGE_SIZE-1), iov_len, GFP_KERNEL);
> > +	rv = sg_alloc_table_from_pages(&acd->sgt, acd->user_pages, acd->page_count, iov_base & (PAGE_SIZE - 1), iov_len, GFP_KERNEL);
> >  	if (rv) {
> >  		dev_err(&priv->ldev->pldev->dev, "Couldn't alloc sg_table (%ld)\n", rv);
> >  		goto err_alloc_sg_table;
> > @@ -126,7 +126,7 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
> >  			// Fill out the descriptor
> >  			BUG_ON(!desc);
> >  			clear_desc(desc);
> > -			if (p != pcnt-1)
> > +			if (p != pcnt - 1)
> >  				desc->DescByteCount = 0x80000;
> >  			else
> >  				desc->DescByteCount = sg_dma_len(sg) - (p * 0x80000);
> > @@ -136,7 +136,7 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
> >  			desc->DescControlFlags |= DMA_DESC_CTL_IRQONERR;
> >  			if (i == 0 && p == 0)
> >  				desc->DescControlFlags |= DMA_DESC_CTL_SOP;
> > -			if (i == acd->mapped_entry_count-1 && p == pcnt-1)
> > +			if (i == acd->mapped_entry_count - 1 && p == pcnt - 1)
> >  				desc->DescControlFlags |= DMA_DESC_CTL_EOP | DMA_DESC_CTL_IRQONDONE;
> >
> >  			desc->DescCardAddrLS = (card_addr & 0xFFFFFFFF);
> > @@ -148,13 +148,13 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
> >  			desc->DescSystemAddrMS = (dma_addr & 0xFFFFFFFF00000000UL) >> 32;
> >
> >  			user_ctl = acd->priv->user_ctl;
> > -			if (i == acd->mapped_entry_count-1 && p == pcnt-1)
> > +			if (i == acd->mapped_entry_count - 1 && p == pcnt - 1)
> >  				user_ctl = acd->priv->user_ctl_last;
> >
> >  			desc->DescUserControlLS = (user_ctl & 0x00000000FFFFFFFFUL) >>  0;
> >  			desc->DescUserControlMS = (user_ctl & 0xFFFFFFFF00000000UL) >> 32;
> >
> > -			if (i == acd->mapped_entry_count-1 && p == pcnt-1)
> > +			if (i == acd->mapped_entry_count - 1 && p == pcnt - 1)
> >  				desc->acd = acd;
> >
> >  			dev_dbg(&priv->ldev->pldev->dev, "  Filled descriptor %p (acd = %p)\n", desc, desc->acd);
> > ---
> > 2.20.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/d881bf9d5c442ae5a0d6669624355f7af73f5fac.1585082158.git.jane.pnx9%40gmail.com.
> >



