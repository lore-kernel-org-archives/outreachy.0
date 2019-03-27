X-GM-THRID: 6673109681211179008
X-Received: by 2002:a9d:4542:: with SMTP id p2mr1837453oti.42.1553729709163;
        Wed, 27 Mar 2019 16:35:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:7399:: with SMTP id j25ls5859150otk.0.gmail; Wed, 27 Mar
 2019 16:35:08 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx56/a2F+RQIknnGxoL+ew31mk/cdyC5WsqTcbo9TSZkNYQTkq3+g89iYjz6R9obsowLw3E
X-Received: by 2002:a9d:69d2:: with SMTP id v18mr1830379oto.52.1553729708339;
        Wed, 27 Mar 2019 16:35:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553729708; cv=none;
        d=google.com; s=arc-20160816;
        b=dADAPUniRn90vSMnwedTDgbKo2T7X2eTl3KvWTzX1nDFwT7Zin5H62/YcGqbavu9uA
         bHP3nl45iPnsItJGZAwUVfjo1XRNHLkaMLzpNpgKRpX4U3F4RyiBXAXmZHJuJT5xrTRm
         8+V6O/M2IeBt2Vjf8+1iOJTOQmbyHhr4S8DD61pfsdqi6iNKzKEWK1BXT0ijkvjjHFxN
         9EGEqs5NvlZoJvcCDvMU/kU930HGAMb+Vll8SgEXyBGvogyCNbkhl/jReJ0kIm8mj10B
         rPU0G7yoUDdobFJLc1oyecNQdBNNeiv8CDiwXV2RsaISLSBkTuW9jtPTXvsda+lgDDde
         qGig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:to:from:date:dkim-signature;
        bh=O495J5Y7nuY1dXOWnrUvhc/faHLujfd/WKDRxPZr+RI=;
        b=iGxXLovI0MJe8LfZthKceFFHPrljpdetJJdCD4zlkyYah0geyKHThuDtORtN/fc+4t
         003e5kGpY+Ch7AERP9Ypl45+YvUY4NffPxiNoVCK+tthAiOwx+w9bUPMGo1F/Ggfmv8W
         ADiHqhkIG2vQJdPNxpD79K9ei7JQsB3DVGdPScH71mXrXty8JPVhMPXSontps+kupRam
         lE2FF2UqhLJsdFxVSzwyN3vlTODm6+Wlc1NmsHgOSSXJ1BpUZ+WbhzvKdCx8QQFHZwal
         uQ1I07UWGkk721u54h0z3aw1GO/2oT/RzoRo2eBwj71hKVObSh46h42VVZNfZ/gFnXsA
         6yyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qMhRx2Yc;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::22c as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x22c.google.com (mail-oi1-x22c.google.com. [2607:f8b0:4864:20::22c])
        by gmr-mx.google.com with ESMTPS id d12si670414oib.0.2019.03.27.16.35.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Mar 2019 16:35:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::22c as permitted sender) client-ip=2607:f8b0:4864:20::22c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qMhRx2Yc;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::22c as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x22c.google.com with SMTP id y84so14311307oia.12
        for <outreachy-kernel@googlegroups.com>; Wed, 27 Mar 2019 16:35:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent;
        bh=O495J5Y7nuY1dXOWnrUvhc/faHLujfd/WKDRxPZr+RI=;
        b=qMhRx2Ycin/qWsnbXV0FY2ZgYW9gN9ja/f146iQzC3lgz0qATAs598jxkersK076ku
         2orMV1JBKGWpfWpe5QyDYK2Jfl3LQpaRDrlXgJA+43d1XQEHkvzNwsYOfKdzVSKKCPh0
         Iu9SzlzXSis+HUQ1wQ9n0N4362QRQnH8KuDsNUgnHsDWkFpm869STarTPAuQCYl/x2o2
         deLE4yJXaPzOWWB8VBFhr2tTT12HFeDa02vWnb2YgJP8XXRRMn9yip+1gUgFOh0Kcu5Z
         Fl0yY27GVkdYEVg8UrXH4x6cP9tjKtvF77EaepJlrj+O9RxEvQUt+ED26yIyldYb/tcm
         qYdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=O495J5Y7nuY1dXOWnrUvhc/faHLujfd/WKDRxPZr+RI=;
        b=B84PUGemtcvycbJUuCs65XnbJaLIE8Nq8xL09HURXjLsGx+fTpVQ64XioWHLcM7F1g
         AK/WpUA7z2A+qik0YCdAI9obY31+NoE6/lZZmcOqpBD+jS8vYplb1yFyL7XJTUcKHNMH
         BFnJKU33tIoXpKk/EsXF2eVWOUYGcutPRbJAU/rPxIkKLvX6VbChAUJYM2TWNt7U+sHI
         vhgL7bb++hwn1vuIlsh5newemR5O44OPgpEyz4Ck2Up0ypJzohnX07288YRdBlDFMl6S
         xbZHzXshUT33QxIxD09WUPWv3/19IHZdk9C3Y9ExLuGNFtczkxCwh1KqqbfOqvF/KwhA
         B6SA==
X-Gm-Message-State: APjAAAW6vBAyvl+pQeSBW/SAV9Hr2UtS4Mz+rra1bnpf3C8qZ4B/4v4C
	8QtquQfu5xpy/ThLq1IeOVgzzVy3
X-Received: by 2002:aca:fccd:: with SMTP id a196mr20169997oii.132.1553729707962;
        Wed, 27 Mar 2019 16:35:07 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:606d:5d24:be3f:3c51:19db])
        by smtp.gmail.com with ESMTPSA id m89sm9235286otc.7.2019.03.27.16.35.06
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 27 Mar 2019 16:35:07 -0700 (PDT)
Date: Wed, 27 Mar 2019 18:35:04 -0500
From: Madhumthia Prabakaran <madhumithabiw@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Message-ID: <20190327233503.GA2919@madhuleo>
References: <20190327175648.29538-1-madhumithabiw@gmail.com>
 <alpine.DEB.2.21.1903272136120.2741@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1903272136120.2741@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Wed, Mar 27, 2019 at 09:36:37PM +0100, Julia Lawall wrote:
> 
> 
> On Wed, 27 Mar 2019, Madhumitha Prabakaran wrote:
> 
> > COnvert macro into an inline function in order to maintain Linux kernel
> > coding style based on which the inline function is preferable over the
> > macro.
> >
> > Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> > ---
> >  drivers/staging/media/davinci_vpfe/dm365_ipipe.h   | 5 ++++-
> >  drivers/staging/media/davinci_vpfe/dm365_resizer.c | 4 ++--
> >  2 files changed, 6 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.h b/drivers/staging/media/davinci_vpfe/dm365_ipipe.h
> > index 174334b53f96..32dce3c95304 100644
> > --- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.h
> > +++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.h
> > @@ -27,7 +27,10 @@
> >  #include "davinci_vpfe_user.h"
> >  #include "vpfe_video.h"
> >
> > -#define CEIL(a, b)	(((a) + (b-1)) / (b))
> > +inline unsigned int ceil(unsigned int a, unsigned int b)
> > +{
> > +	return ((a + (b - 1)) / b);
> > +}
> 
> You could check around perhaps in kernel.h and see if this already exists.
> 

I can't find any ceil function in the kernel.h, though I can find the
function in math.h

Thanks

> julia
> 
> >
> >  enum ipipe_noise_filter {
> >  	IPIPE_D2F_1ST = 0,
> > diff --git a/drivers/staging/media/davinci_vpfe/dm365_resizer.c b/drivers/staging/media/davinci_vpfe/dm365_resizer.c
> > index 9d726298b406..395c66520932 100644
> > --- a/drivers/staging/media/davinci_vpfe/dm365_resizer.c
> > +++ b/drivers/staging/media/davinci_vpfe/dm365_resizer.c
> > @@ -386,7 +386,7 @@ resizer_calculate_down_scale_f_div_param(struct device *dev,
> >  	}
> >  	o = 10 + (two_power << 2);
> >  	if (((input_width << 7) / rsz) % 2)
> > -		o += (((CEIL(rsz, 1024)) << 1) << n);
> > +		o += ((ceil(rsz, 1024) << 1) << n);
> >  	h2 = output_width - h1;
> >  	/* phi */
> >  	val = (h1 * rsz) - (((upper_h1 - (o - 10)) / two_power) << 8);
> > @@ -630,7 +630,7 @@ resizer_calculate_normal_f_div_param(struct device *dev, int input_width,
> >  		val /= rsz << 1;
> >  		val <<= 1;
> >  		val += 2;
> > -		o += ((CEIL(rsz, 1024)) << 1);
> > +		o += (ceil(rsz, 1024) << 1);
> >  		h1 = val;
> >  	}
> >  	h2 = output_width - h1;
> > --
> > 2.17.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190327175648.29538-1-madhumithabiw%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >

