X-GM-THRID: 6885936091088551936
X-Received: by 2002:a17:902:7611:b029:d4:da66:f26c with SMTP id k17-20020a1709027611b02900d4da66f26cmr11570797pll.3.1603720707126;
        Mon, 26 Oct 2020 06:58:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6a00:843:: with SMTP id q3ls352667pfk.10.gmail; Mon, 26
 Oct 2020 06:58:25 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxIaHvJTJxQeTtPlgKioMR319NkVINNxIZMDdCrlwPXP7lOkkNC/eFcyggn0GjLGf/HjAqw
X-Received: by 2002:a65:6109:: with SMTP id z9mr17559583pgu.112.1603720705598;
        Mon, 26 Oct 2020 06:58:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603720705; cv=none;
        d=google.com; s=arc-20160816;
        b=XZwenFEWmWZc0oi9wHFPT74idrt1RWePv76m00PRifx921F/781DPXxeNCv9ch7TR3
         J6sjdEDkCnPNWjMhJEsoCXtSzIFkHlZ3ElqPSgT52Y50v7+LvgmPR5Ljmcm678iO75Mq
         jt4cKvgu+l7UdDrYra/jFjFScEm2/kZ49que0Lu2NLfp4x0VBHBCVboetHlhp+wN42Ju
         sKIYzdSGGSJ5iPfDHpmu0pAQdZ6iCy+Q+0m2couVbPGj2y+Q8LSaHx4fonQXwjmTai0V
         asjEGfsStfVz3rbW1pGodT4X+S4eapKLB1pdyWRuDe7KveHUCg+b6ZGY78Ll5APSpNZJ
         r4/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=5S48F96TCcBfO3U6cADlQQJx4sxIZKKwp3TMj141Of0=;
        b=ryhglFQu1negK8L5R+5khnZsvayT2CeDMPYXYd68HHot0sEHKus8JICK+KpmvxSg64
         dxI9+OY4N6ub/XW7QdM8aloRdXf3zD3EASENoHCP/kgriHP40x/ZobyB3SjPzUU0cBK6
         E9hFuoAcAo2eKxtSZFpT2ay4TIGRhQYKbbRnXOQTDFKiaFTwxWdlyBZTreZXAmpNY5Z3
         1IyKTRSH/oYcYaJoxq0/mQtXmDzWgfMMZFWIOEN2yE2+Lff5YVzBsPKCZv3ycNngU1jl
         xmPLHXpxiuqSAJMgb31xSzJ1CXTFW3flcssp6cWpYQjTBsxryNeoorYVyxPMQH6Em1dz
         hGBw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JT6x7PZx;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id k126si616369pgk.0.2020.10.26.06.58.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Oct 2020 06:58:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JT6x7PZx;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id w65so3409184pfd.3
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Oct 2020 06:58:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=5S48F96TCcBfO3U6cADlQQJx4sxIZKKwp3TMj141Of0=;
        b=JT6x7PZx0ywRSc6ckedfYEJsjzcHD0qOgY231CiejWS0IqsQaAPjq91bf7mB32P7L1
         VbNMKjaD7YRxL3F2HPLboocJNIovJ4PgMQxZguY7bBmRrQqyOt/EOfHNbTuoh37jN7Y0
         iluHJYxJfe+NY9000J24UIV19Lh8fKy98rqWJTATk0Nt8iXLZe3orMUAdqCVXJdDfr0h
         PduKwmlecR7ASoniZCDugZzsbZRVx2s8rNjD+6FRUFsGQO6NIJc1K0Yb1siagBkxPAsk
         7KpgXrr8WmWe6M4CYjivqsGW/5D7qxP037Z3zq18dniMIgw4C1DW8i8KrMkZ6830/aZo
         0Ctg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=5S48F96TCcBfO3U6cADlQQJx4sxIZKKwp3TMj141Of0=;
        b=OqI4TlMKobmQNCvl2PZqTXnmp3LCU196Se0a/cL5pk5uT8t+mwgXJXvfdOc5RnWVva
         56ofCbx7HBge+zoPrK3mjv+BJxt6twZC8nU32QTzmtV98pbZIkfXdNjLXZiPqkHz1gnS
         URCOj1J07nixPd8FtcAtecr2rQaJ1a7NQXpRFl3GqnR2wv4y1m2iuDJq463qHDmXyQFP
         r20UKWizx7Yg+vrxEL6ymAr8f8Y9/AvzxQjKCw3yTuMhbVOgSCQN1jMjWN4RA8gg267M
         ajMNv0xukvKgjKSprPBoPxWdHAlKBX9V33VyofToY25/7AkEsFBUG0fXgg34BECQD8kO
         nv/w==
X-Gm-Message-State: AOAM531PNkOs78iJoqcVVB7YLaYpq1QLB7rz9brNvKmeixcMxoMT+/WZ
	jxMBDCEW0Qw0F7WgM7Dgv+CzgqD8Pp0=
X-Received: by 2002:a63:fb4a:: with SMTP id w10mr13944291pgj.285.1603720705406;
        Mon, 26 Oct 2020 06:58:25 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from my--box ([103.108.75.206])
        by smtp.gmail.com with ESMTPSA id j5sm12646743pjb.56.2020.10.26.06.58.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Oct 2020 06:58:24 -0700 (PDT)
Date: Mon, 26 Oct 2020 19:28:19 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: Matthew Wilcox <willy@infradead.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH v2 1/2] staging: kpc2000: kpc_dma:
 rearrange lines exceeding 100 columns
Message-ID: <20201026135819.GA14348@my--box>
References: <c61a3c244bea516528e9ca4e909c30f16959c3aa.1603264617.git.mh12gx2825@gmail.com>
 <20201026040453.GC5074@my--box>
 <20201026041652.GM20115@casper.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201026041652.GM20115@casper.infradead.org>

On Mon, Oct 26, 2020 at 04:16:52AM +0000, Matthew Wilcox wrote:
> On Mon, Oct 26, 2020 at 09:34:53AM +0530, Deepak R Varma wrote:
> > > -		dev_dbg(&eng->pldev->dev, "Handling completed descriptor %p (acd = %p)\n", cur, cur->acd);
> > > +		dev_dbg(&eng->pldev->dev, "Handling completed descriptor %p (acd = %p)\n",
> > > +			cur,
> > > +			cur->acd);
> 
> Why do you put 'cur' and 'cur->acd' on different lines?

Hello,
I was thinking it makes it more readable. However, I understand your
comment and will rearrange the changes accordingly. Thank you for
pointing it out.

> 
> > > -	rv = request_irq(eng->irq, ndd_irq_handler, IRQF_SHARED, KP_DRIVER_NAME_DMA_CONTROLLER, eng);
> > > +	rv = request_irq(eng->irq,
> > > +			 ndd_irq_handler,
> > > +			 IRQF_SHARED,
> > > +			 KP_DRIVER_NAME_DMA_CONTROLLER,
> > > +			 eng);
> 
> Likewise.  I'd do:
> 
> 	rv = request_irq(eng->irq, ndd_irq_handler, IRQF_SHARED,
> 			KP_DRIVER_NAME_DMA_CONTROLLER, eng);
> 

Yes, will correct all such occurrences and resend another version.

Thank you,
Deepak.

