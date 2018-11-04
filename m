X-GM-THRID: 6619819947345313792
X-Received: by 2002:aca:b944:: with SMTP id j65-v6mr13860498oif.1.1541332877292;
        Sun, 04 Nov 2018 04:01:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:3e8a:: with SMTP id l132-v6ls9857913oia.7.gmail; Sun, 04
 Nov 2018 04:01:16 -0800 (PST)
X-Google-Smtp-Source: AJdET5dz3JGAYRkmOo4CEfPx2If+eB3mSLyUP4lGGe7eWChPmN8kjxZVaxHi0UX8rRCLfenFWVvM
X-Received: by 2002:aca:5d45:: with SMTP id r66-v6mr14559139oib.35.1541332876295;
        Sun, 04 Nov 2018 04:01:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541332876; cv=pass;
        d=google.com; s=arc-20160816;
        b=l7XdQZ8CC9iKjbkqEQutZFEpPQwSdZ7v38TgWkHiqnmta+M9G+OP1qdOlT59UYABB/
         R9uHeSYyB05Vaa6nao5rubLyYKLU6pAKQsHszQ5QjCUSrR8k5XYj4glCjAIEE4b6LyEZ
         YbhH9o9Uyx8uumNsV0Vsbqvb4xZWOPNZXYCXBn1Mlj6sZy0b7OGpJJQ+rVweCEkvKlUp
         WnhZ7I0w+l0tseLU3W0LSLas4Xr0dVfq0b7mGxBEaR5UFXd/nivSxVB+vUWoudvWe+iw
         UWQfPLO/+6G7JNUffx6LQay0HSSsq9KYuI7+Iu7foRSdwRwFAT/Abf7rlrt8I6DFzPx4
         EBzQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=I6fGkJD6hYlzdMrUlzZdvuVrN2MXx9unuWQ/eXtTfmA=;
        b=TC1oFDyY1/X22Dx2gtLj2OAlvHIGJdtFEwxapliKf5uoR35vxiur8qAfqW0s6y++eD
         ATLEseShU3C6chYPy8bvsIcRLLn2MNKmFML1/uKa2PHNq68mbCISxvDadz1dhbx/LXeG
         Bq6rDxpMnrHoaL+uOUZrxc3/FoPcqb+kua1MOyZFKtFuXKPydtGNWX7GvDX9YjjTd3oR
         VVCzfmaxISX9UAYn/657l76OXiaEVVEdsKeNMIiJSJPG0RIVtKAjmsMI23SCE621xygP
         3vhV0+RJSFCyCgcHYiL4+iufI5bdaCe820aMccW1AfOg1LL+7tOw5MVoLbIeU5qg8vKJ
         UyKw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=R577lkBx;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id s8si769624otb.2.2018.11.04.04.01.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Nov 2018 04:01:15 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=R577lkBx;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541332870; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=PmJ7lFByRio0NZh5jYYm8RcwuzZRE3OCI523kOox07+IdpgBFCkHoT97aUo54dqw2Gl5b/eqVhBG+e+JMxlP79gpBA3SDRik0CCjkT+cResQPvORnPRbX/5q2tP69auVrzwrrGhl8A8jH6IJasHejSiI4YKehXIM86s2KLXBSfE=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541332870; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=I6fGkJD6hYlzdMrUlzZdvuVrN2MXx9unuWQ/eXtTfmA=; 
	b=ATYMm6LgEayoeN23lt+to95mmBcalAf/Qgvd16iEn3fWn3sP5FxbJRH0KfnPRTnDd9y+P0WDuPUoEk7t2VmHvd0+h4+11bEKoOAJpMYabncX+kZGPWfjI/xjGmNRjbqsYRqr48MtZZq9UTn8u5pwQDEFlLkAnhgXGHJvb+bY160=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541332870;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=1864; bh=I6fGkJD6hYlzdMrUlzZdvuVrN2MXx9unuWQ/eXtTfmA=;
	b=R577lkBxTKhXspg8ZhDKahrXDLjl7RUG3ip3hvS0lvuvqq7N9W92LFvnMpv02dvm
	nHUJILNc8qOmNXXNem853Uwl/2vKxUzXO8TxKi9fNI4pdXv7fgq/5n/aj4Df4yAIVK8
	cQEpxLohuaOfPz0Hgyq5B0pcQy9Wl80dV/Ahppuc=
Received: from kvasir.local (90.242.56.176 [90.242.56.176]) by mx.zoho.eu
	with SMTPS id 1541332868960961.2370582291186; Sun, 4 Nov 2018 13:01:08 +0100 (CET)
Date: Sun, 4 Nov 2018 12:01:07 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: greybus: remove unmatched
 right bracket
Message-ID: <20181104120107.GA12077@kvasir.local>
References: <20181104020212.GA18914@kvasir.local>
 <alpine.DEB.2.21.1811040726060.2448@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1811040726060.2448@hadrien>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

On Sun, Nov 04, 2018 at 07:27:27AM +0100, Julia Lawall wrote:
> 
> 
> On Sun, 4 Nov 2018, Ioannis Valasakis wrote:
> 
> > Remove unmatched right bracket.
> > Reported by uncrustify.
> >
> > Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
> 
> Acked-by: Julia Lawall <julia.lawall@lip6.fr>
> 
> I wondered how such a problem could go unnoticed, but this file seems to
> have a lot of other compilation problems that could perhaps also be fixed
> up.
Weird indeed. I was wondering myself after compiling the modules but I
noticed that camera isn't compile by running a make. Could you let me
know how did you find out the compilation problems, i.e. how did you try
compiling camera.c, so that I can replicate?

thanks
ioannis
> 
> julia
> 
> > ---
> >  drivers/staging/greybus/camera.c | 1 -
> >  1 file changed, 1 deletion(-)
> >
> > diff --git a/drivers/staging/greybus/camera.c b/drivers/staging/greybus/camera.c
> > index 6dded10f4155..c6d65430ea4c 100644
> > --- a/drivers/staging/greybus/camera.c
> > +++ b/drivers/staging/greybus/camera.c
> > @@ -1190,7 +1190,6 @@ static int gb_camera_debugfs_init(struct gb_camera *gcam)
> >  		debugfs_create_file(entry->name, entry->mask,
> >  				    gcam->debugfs.root, gcam,
> >  				    &gb_camera_debugfs_ops);
> > -		}
> >  	}
> >
> >  	return 0;
> > --
> > 2.19.1
> >
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181104020212.GA18914%40kvasir.local.
> > For more options, visit https://groups.google.com/d/optout.
> >


