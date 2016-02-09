X-GM-THRID: 6249238680974655488
X-Received: by 10.28.63.19 with SMTP id m19mr484100wma.0.1455019018417;
        Tue, 09 Feb 2016 03:56:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.136.139 with SMTP id k133ls743121lfd.103.gmail; Tue, 09 Feb
 2016 03:56:57 -0800 (PST)
X-Received: by 10.112.168.201 with SMTP id zy9mr3944498lbb.23.1455019017290;
        Tue, 09 Feb 2016 03:56:57 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wm0-x231.google.com (mail-wm0-x231.google.com. [2a00:1450:400c:c09::231])
        by gmr-mx.google.com with ESMTPS id w10si495088wmw.3.2016.02.09.03.56.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 03:56:57 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c09::231 as permitted sender) client-ip=2a00:1450:400c:c09::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c09::231 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x231.google.com with SMTP id p63so154375750wmp.1
        for <outreachy-kernel@googlegroups.com>; Tue, 09 Feb 2016 03:56:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=Bkt1NnmXOXU5f5VqV/S2pR6Xw4wwm41bC1Ta7r0vjIk=;
        b=cWvyTwr/JOr0SBJ0vLNIWO9kKhJFK3Vy6ZceiPpNGOcXy/nsHwIa/pAo/Do4uWwAPA
         D2kGt8VwqtYnmq+9fB1Q7+BRp/yYHJRkpoFWvE4syqaEbbaeF8UBQIRAsY152y2bIEsb
         VzmHsSTT/YffwZvoWvUHVPRQmxPDKgcvjOx8QMxEYdn46i9CvMr/Kf+82EZvt0lBZ9M0
         qD0rLGBPbbxhhH7hbJTUh+b2lXXADaK29WFmWcDvtF0EOo5blty8jL313HttdUG0FF2+
         gDNd/XCKJ9Z163rtgJZoEFBajrIwxvP+m0l7PFQhCSkUhglp7/4Y7ByfqPQlIqQiHLYe
         FdnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=Bkt1NnmXOXU5f5VqV/S2pR6Xw4wwm41bC1Ta7r0vjIk=;
        b=JW8sHWVdHABIc9dBkVAO4jcaEw7gqOSIwH+53js+JISx4gGRoEOjk7IU5Y9XLRP1YN
         wbv9r1cHLFZr8pPzPMusqssbr80MNRmkTBRKyVETTtTT4JqZIRC5pHuOcrKBfgyhHBmw
         Q5HUPUxkZeXAbwzexWlh5SMH9TDccmHU7AaknNpZcIVtTR4Ax3YdPhufGSvoQXXJu1I4
         n/PmAnuJhL+4i6wrFBft9uoNYTDuXxAcDCCwXhyOObPt9onGs53Td1lhb1Q4jWiw+yYm
         nQWNfVrgCp3lQyZOgPh03Vj1vLcjkF8gMXAraP7/jDZqy6DrgXaNg045r8vI6pA5ZDB2
         9zjQ==
X-Gm-Message-State: AG10YOT2KrqHjymBTYwkhFt+Nowh9Xh/Nbq/qaMb8e/vA67vhZWVMdQtaTRU3kn8IUkg3g==
X-Received: by 10.28.90.67 with SMTP id o64mr4199529wmb.38.1455019017161;
        Tue, 09 Feb 2016 03:56:57 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneenVB ([109.171.130.212])
        by smtp.gmail.com with ESMTPSA id hm9sm34336148wjb.34.2016.02.09.03.56.55
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 09 Feb 2016 03:56:56 -0800 (PST)
Date: Tue, 9 Feb 2016 14:21:01 +0300
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rts5208: fix check for dma
 mapping error
Message-ID: <20160209112101.GA27970@haneenVB>
References: <20160209103540.GA27735@haneenVB>
 <alpine.DEB.2.10.1602091148570.2578@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1602091148570.2578@hadrien>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Tue, Feb 09, 2016 at 11:50:58AM +0100, Julia Lawall wrote:
> 
> 
> On Tue, 9 Feb 2016, Haneen Mohammed wrote:
> 
> > use dma_mapping_error() instead of comparing the returned address with
> > zero after dma_map_single().
> 
> Acked-by: Julia Lawall <julia.lawall@lip6.fr>
> 
> However, the parentheses in &(rtsx->pci->dev) are really unpleasant.
> Especially since they make the call to dma_map_single different from the
> call to dma_mapping_error.
> 
> Maybe you could send a patch series to also get rid of them?
> 
> julia
> 
Sure. should I send it as v2? Also, I noticed in the discussion in the
previous thread about keeping the acked, yet I'm not sure how to do it.
could yo advise me on that please?

Thank you,
Haneen
> >
> > Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> > ---
> >  drivers/staging/rts5208/rtsx_transport.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/rts5208/rtsx_transport.c b/drivers/staging/rts5208/rtsx_transport.c
> > index f27491e..0c9549b 100644
> > --- a/drivers/staging/rts5208/rtsx_transport.c
> > +++ b/drivers/staging/rts5208/rtsx_transport.c
> > @@ -653,7 +653,7 @@ static int rtsx_transfer_buf(struct rtsx_chip *chip, u8 card, void *buf,
> >  		return -ENXIO;
> >
> >  	addr = dma_map_single(&(rtsx->pci->dev), buf, len, dma_dir);
> > -	if (!addr)
> > +	if (dma_mapping_error(&rtsx->pci->dev, addr))
> >  		return -ENOMEM;
> >
> >  	if (card == SD_CARD)
> > --
> > 1.9.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160209103540.GA27735%40haneenVB.
> > For more options, visit https://groups.google.com/d/optout.
> >

