X-GM-THRID: 6618628196583604224
X-Received: by 2002:aca:5d45:: with SMTP id r66-v6mr3953289oib.35.1541028561977;
        Wed, 31 Oct 2018 16:29:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:5e8e:: with SMTP id f14ls141970otl.2.gmail; Wed, 31 Oct
 2018 16:29:21 -0700 (PDT)
X-Google-Smtp-Source: AJdET5eAjEHwgeYHdX8CsI9gTEUR4Le/8leAsLs6FwKpxh8SuWKX1FR8+0bp0dTIUMwVlYHxEx/+
X-Received: by 2002:a9d:520d:: with SMTP id e13mr3562398oth.68.1541028561021;
        Wed, 31 Oct 2018 16:29:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1541028561; cv=none;
        d=google.com; s=arc-20160816;
        b=VUQwxil+SU/cAAmpUgd7qdyf/2/EVqlhSsS5dq7tB1rD3ItGTy60pUwDX2hvbr41hm
         rlMjPVcNrMVpML7DSMApoAHiHiquCuOsXjWSDFUmjvaFZUC6LQNtJZQA3xtMBj4MTNl/
         mN98uN78B8E6hxqtqm1gD1riF49bx/RWQXX7Dzn+FaJXrSJNBCSrCwad4noTBy0KI5Eq
         ylnkcMAR737nHFa1DcOENZg8UIUOHkRKmPL5MSI36oh3H5LLUZAg2pdFti7K0TPLQcDL
         mOK1a/XIkMM2OgFYKyg1VSviFT3/5E7QfKOmqUETo05g8t7p1USBgzsCqsVp03evRVOZ
         LoFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=6n3Fa3s2tYUQmeQAFGjRIB4HmMMdT977kTmuv4qasK8=;
        b=IaM3hdd8NsnrSh6lBNUK/LEuEZpr7S6C1nDKSxM+ajynZpzXcr6RkR3URRMfkd6u9v
         BKGnClBhO+LuekNLMva4H7n+e3YVSOYqBnNhyD5PqDWvvEp0p1Bpzpmbi83pY0+i+3yV
         QF3g7ZEyld+9FbAW1HKXvRBKIU82CVAIEMxsnzIYjc0qyPp5obRpzWwaEdxqYiKeSJa+
         GX8UJrQbHDc9Sw6y5Vq8C/JPtDfWSNNiW2WBuMZiJCBndIdtnzRJe6D9rykhhGzJ4qlw
         6SNGzAlX3tW2ci1FPW5IpLd1+wv3X+pyw3h1Zfk7aKSOqmnKsZ8F/nk4w2z8MKs04znq
         uoXg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hUxO0972;
       spf=pass (google.com: domain of shayenneluzmoura@gmail.com designates 2607:f8b0:4864:20::82c as permitted sender) smtp.mailfrom=shayenneluzmoura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shayenneluzmoura@gmail.com>
Received: from mail-qt1-x82c.google.com (mail-qt1-x82c.google.com. [2607:f8b0:4864:20::82c])
        by gmr-mx.google.com with ESMTPS id u10si1152011otc.0.2018.10.31.16.29.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Oct 2018 16:29:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of shayenneluzmoura@gmail.com designates 2607:f8b0:4864:20::82c as permitted sender) client-ip=2607:f8b0:4864:20::82c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hUxO0972;
       spf=pass (google.com: domain of shayenneluzmoura@gmail.com designates 2607:f8b0:4864:20::82c as permitted sender) smtp.mailfrom=shayenneluzmoura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x82c.google.com with SMTP id l41-v6so19197061qtl.8
        for <outreachy-kernel@googlegroups.com>; Wed, 31 Oct 2018 16:29:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=6n3Fa3s2tYUQmeQAFGjRIB4HmMMdT977kTmuv4qasK8=;
        b=hUxO0972wQsb5C5VOAJL11QMPx07OjQmBTdiWEZcF391QAuwqIl36eenT/19NXHlwF
         cjs6IbM/dIj1myxSYrjboBG/QuvNtujT9lsIpePXXJAOWfgHdUS/oQ5DXYUqQk12UwhC
         vsb2BS0fxk07GFlO6svOqX7IExJfejvhw0sPHQKRridUpY0fsWoPfg21SLLME088Knl6
         hJHUlN1QEggFF8OO0hjn602Wk/pZJgcBDQPAGCG9Z4TC76OWZwhucCqYQCd+s3eIKpFY
         Hcg51C7JqworedLrQSKRnNfXT6WbxCKM+jF7gC3nB1Jbj/kl1fCieYx8Xw+hHqvX1huL
         miyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=6n3Fa3s2tYUQmeQAFGjRIB4HmMMdT977kTmuv4qasK8=;
        b=KUWqIGdnHJ+EsAXWMKetcoCmJ7DCfMvhhSXOXvncsAGkvasmkFFrv6Uw264M3jPOAf
         G8U5Q+nApUcp1f1owQNAj7Bt6RkWovaDcSFZ7UxA7B+wvxWgPj+qR8J4bRYkv1g+Ctm2
         q0mD2nBnR1gxC/Xqfo/bx9WcZK/qzL+oocBXLZi6nUZCUZ7GbuApn3dPY2GJLAwwfVX2
         VlE7p/6Hs+d3z1cFTmyUJDJAPq4V8uM9IQYZdSAZzddshwRAs1q1gADSAozUB0S62Chw
         /+9sKHfOYMlaaMJ1qXQHyWRhJb9PIYTLnO12Qu7VtQTsnYhlV2fdv+BwFMgRmetPU7ft
         ynvQ==
X-Gm-Message-State: AGRZ1gLeY0fOZ7+uEeOqcVvohQaqn01HB1bdYMiqwiS1JR3xhPeDsiKt
	OJda3SA5hB96WGYSH3KrmTz0UcMDcg4=
X-Received: by 2002:a0c:aecb:: with SMTP id n11mr4592599qvd.151.1541028560538;
        Wed, 31 Oct 2018 16:29:20 -0700 (PDT)
Return-Path: <shayenneluzmoura@gmail.com>
Received: from smtp.gmail.com ([143.107.45.1])
        by smtp.gmail.com with ESMTPSA id g46-v6sm12989607qta.79.2018.10.31.16.29.18
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 31 Oct 2018 16:29:19 -0700 (PDT)
Date: Wed, 31 Oct 2018 20:29:15 -0300
From: Shayenne Moura <shayenneluzmoura@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <maxime.ripard@bootlin.com>,
	Sean Paul <sean@poorly.run>, David Airlie <airlied@linux.ie>,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] drm: Rename crtc_idr as object_idr to
 KMS cleanups
Message-ID: <20181031232915.rvni33tf6m2orbbx@smtp.gmail.com>
References: <20181031205737.cingeaqget7hkbs6@smtp.gmail.com>
 <alpine.DEB.2.21.1810312200520.2391@hadrien>
 <20181031211935.p2pxr7fh26m5dc7v@smtp.gmail.com>
 <alpine.DEB.2.21.1810312229530.5416@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1810312229530.5416@hadrien>
User-Agent: NeoMutt/20171215

On 10/31, Julia Lawall wrote:
> 
> 
> On Wed, 31 Oct 2018, Shayenne Moura wrote:
> 
> > On 10/31, Julia Lawall wrote:
> > >
> > >
> > > On Wed, 31 Oct 2018, Shayenne da Luz Moura wrote:
> > >
> > > > Rename 'drm_mode_config.crtc_idr' as 'drm_mode_config.object_idr',
> > > > as proposed in the task description in TODO list for KMS cleanups.
> > >
> > > Is object_idr a field that already exists?  If so, "Rename" is not the
> > > best choice of words.  It should be something like "use the object_idr
> > > field instead of the crtc_idr field" and then explain why.  "task
> > > description in TODO list for KMS cleanups" isn't very helpful to
> > > understand why the change should be made.
> > >
> > > julia
> >
> > Hi Julia,
> >
> > Thank you for your review!
> >
> > This patch is to solve this TODO task:
> >  drm_mode_config.crtc_idr is misnamed, since it contains all KMS object.
> >  Should be renamed to drm_mode_config.object_idr.
> >
> > Do you think I need to use this description in my commit message?
> 
> That seems more helpful.
> 
> But it seems that the name should actually be changed.  Which means that
> the structure definition should be changed too.  Was that done?
> 
> julia

Yes, you are right. I did not add the header file. 

Thanks again!

Shayenne

