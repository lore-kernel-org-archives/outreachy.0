X-GM-THRID: 6804291594898898944
X-Received: by 2002:a05:6000:1186:: with SMTP id g6mr39377wrx.331.1584466172838;
        Tue, 17 Mar 2020 10:29:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:6748:: with SMTP id l8ls2561138wrw.2.gmail; Tue, 17 Mar
 2020 10:29:31 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsQD4lmx/GMY7O/iMZvYVz4jGu3g2LCKB5gr+ervl/uEYQMFeC4qMs68WvlFFrPE/BSspbd
X-Received: by 2002:a5d:440a:: with SMTP id z10mr53795wrq.177.1584466171764;
        Tue, 17 Mar 2020 10:29:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584466171; cv=none;
        d=google.com; s=arc-20160816;
        b=NpvRALfWrc8HANlWLa8/yEVgQldBDrJZLoU+MG6Y3ISXMHeP8Barf+0yQMrjLRZxAu
         dCbnVSEz7BZ3aC3OikOzDjIMy162mGgH706BSF4TlTkuPqZ6OR4lqA9Ik4TiZUzhWvjl
         XOoGoYEV/H7NSKopCzf9xkkCMsoLDMdb6hPeWGzhrRJPRlUuJcBLpcr564bWgcUQ//ro
         JnlYR5FmD7lHWOvfrMXAI8CmRJZRzL5noxjEQcji8A0gyce0fhn5/tb8Tu10QOdDRQU5
         w0P1mPUlhwfwEi1GmfG6WiuWB096dAu2MGcj5qq3rmbgxXeUfyW6TwDgY+mzBLiR3+cL
         EtbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=59ExzGy7DPryYMeafJclrc7saAkggK+MQXtYYo5CNaY=;
        b=tDQBTngfoZBzFmaNtbyhPvUUFstN5kCclKC+WlJc7HjyY4m2khw3kjjrPgfIjn9QGQ
         dnFgpZp4wBQPu26W83JJXUrYikqtinTlFGR89ikfqphP8ba6grz2naTcqnuuVS6NgpJI
         pmjmQEzMWviATs8mcj52cElPUgHvkPfKcbGE4xuyRpuVpwWxEwX7Kx9Hmhxq2Ir+A/Jb
         5H0r+BFChB5HB6kAghUIm+qW5AcjVnI/lYCxQimKw3PX0CJAwf5ph1QZ+vuYbPoNVFZU
         Bwd1Xd5rsRF8dVCGc9et8PgBXONq58l6akFt3RK8FfopgQuQTS0YP7UYBaVKSlRiCDmX
         F7WA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=Y4XLK6bx;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=lu@pplo.net
Return-Path: <lu@pplo.net>
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id d16si151101wrv.4.2020.03.17.10.29.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Mar 2020 10:29:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=Y4XLK6bx;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=lu@pplo.net
Received: by mail-wr1-x444.google.com with SMTP id z15so26758079wrl.1
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Mar 2020 10:29:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pplo.net; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=59ExzGy7DPryYMeafJclrc7saAkggK+MQXtYYo5CNaY=;
        b=Y4XLK6bxRyXqX6O3QrD6GILo14QJbf56XUwIF7oj2apAVqWknmMepTczcBPA21cK6d
         EtXsy8a0BnqbUfAE2htZzf9nfySyV7/SHxd8jecF4qYa2kYNOeWICB8hjJg6qRCgJZvy
         PgBClaL4MH1BA/I0K5oBMnE+XnCUiqvnZiwXk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=59ExzGy7DPryYMeafJclrc7saAkggK+MQXtYYo5CNaY=;
        b=nWu8IqJdZuzbIRGUiNr5fGSbe6gD3WBVqD+IGzlv2isUADt+n75p9pX+plnkdYulL8
         wKKhSA0iMUC+aa1iaOc9/gkOVl9KMPCX5iJGZ6nrgQQjmZYiiWpNSYUEQIc57AXlF2PW
         JnDFrlJCyj4GIpVBUUqiixeglSG99BnT0TXUY3SGky0lnTCzkJkhEsOMTKoukFcu9pHv
         dKeisImSrz6UOGYwppqZasvQYivW1UKPyA0jT1GF1kyV5MaOnCAGo6UxZav/O8ok1JSZ
         v23mbnG4CgQ5FeHifKL60DVo8i1qW6FUF3CcvETYi8WDMHbSzLAwCIoTFyeajT/n+RhJ
         hzgg==
X-Gm-Message-State: ANhLgQ2xuER+A4ljNF4hfC9jYz1BoR4pwSdrwb1fhWB9BrofATVjPuNN
	OGxlWUXRGK1T7vk6ThSkEU+NfmTDOs7Z0Q==
X-Received: by 2002:adf:a3d3:: with SMTP id m19mr31266wrb.377.1584466171344;
        Tue, 17 Mar 2020 10:29:31 -0700 (PDT)
Return-Path: <lu@pplo.net>
Received: from supernova (85.251.42.187.dyn.user.ono.com. [85.251.42.187])
        by smtp.gmail.com with ESMTPSA id k3sm5125992wro.59.2020.03.17.10.29.29
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 17 Mar 2020 10:29:30 -0700 (PDT)
Date: Tue, 17 Mar 2020 18:29:28 +0100
From: Lourdes Pedrajas <lu@pplo.net>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com, forest@alittletooquiet.net
Subject: Re: [PATCH] staging: vt6655: device_main: switch multiple assignment
 for one assignment per line
Message-ID: <20200317172928.GB6454@supernova>
References: <20200315044620.14104-1-lu@pplo.net>
 <20200317110938.GA1207386@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200317110938.GA1207386@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Tue, Mar 17, 2020 at 12:09:38PM +0100, Greg KH wrote:
> On Sun, Mar 15, 2020 at 05:46:20AM +0100, Lourdes Pedrajas wrote:
> > One assignment per line is preferred, instead of multiple assignments.
> > To prevent possible undefined behavior.
> > Issue found with checkpath.
> > 
> > Signed-off-by: Lourdes Pedrajas <lu@pplo.net>
> > ---
> >  drivers/staging/vt6655/device_main.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/vt6655/device_main.c b/drivers/staging/vt6655/device_main.c
> > index 0442f71494b2..c271e3937125 100644
> > --- a/drivers/staging/vt6655/device_main.c
> > +++ b/drivers/staging/vt6655/device_main.c
> > @@ -708,7 +708,8 @@ static int device_init_td1_ring(struct vnt_private *priv)
> >  
> >  	if (i > 0)
> >  		priv->apTD1Rings[i - 1].next_desc = cpu_to_le32(priv->td1_pool_dma);
> > -	priv->apTailTD[1] = priv->apCurrTD[1] = &priv->apTD1Rings[0];
> > +	priv->apCurrTD[1] = &priv->apTD1Rings[0];
> > +	priv->apTailTD[1] = &priv->apTD1Rings[0];
> 
> As others said here, there is no undefined behavior, the original code
> is just fine.
> 
> thanks,
> 
> greg k-h

I agree, thank you,

Lourdes

