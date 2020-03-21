X-GM-THRID: 6806733335671341056
X-Received: by 2002:a1c:4e14:: with SMTP id g20mr16712480wmh.143.1584817164189;
        Sat, 21 Mar 2020 11:59:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:a799:: with SMTP id j25ls335868wrc.7.gmail; Sat, 21 Mar
 2020 11:59:22 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuTe+RlQWCK8YX+Iqe9nezKO3YQB3z9C9djfoTlfEqHC4CfWkINjd7IoKrsRMbFkKJY3bqd
X-Received: by 2002:a05:6000:370:: with SMTP id f16mr19540281wrf.9.1584817162803;
        Sat, 21 Mar 2020 11:59:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584817162; cv=none;
        d=google.com; s=arc-20160816;
        b=zDTM+u7iltRmgVcRbT7C5UQVybRSW6OlzTabQ8bJnK7qsheHsZgXu3me1vmHWv388a
         hhluQ3bnKjnXbKZRk1PPZ4UhU/6XnJPqfwMUwul/m5cjEAkTHtEvtNlw0H5IMaFoQFH0
         s8MDiup9koa76zwSesCypQDmgzgkyiCup76qHIzZNPaNbaJbLz7V3l6TFmhA+6opfRUj
         j0JX4VdHLEN+hpvor+xtEluiwML4VF0hfotjJSy+9ew6sSbONe9JQoxuk2czvwPIzRfU
         INpb/lyUp8CXl2qV0eerPqHLXsPJUq5Xku5HN3W+4FUeC25ibRQ0Msz5X5qNmYrSroPq
         xBLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=+GXVSbYJrL1Kx8T3vA6n5LwHpHP7W43SBW9l/hM96lA=;
        b=qowXk+hbe9ZP7w0ZCB8TsLpidpOD/8mwG9X2Q+Q4XdBzjcYroIAUt1RrWflEp/fDxI
         ExZqhn3pKLroZPM0qTRtsDpCe/UDO77VCLfxN54X11vkYob4Z9DKhOxH4aWyyGNhqjR7
         cX6pfxMSr8DXQX8AKJPjnDKMY9iJshFZ7tFrn+ihfnWhOThdGjvF+mwdf0oWXLb2TaUC
         HhePKdy7e7p5KdX5AEFf24ZQN9EqNKE+4cOiRgFbYvBZLWRAk3yKzQxn/SuUyoYZC9S4
         aLlOrdvRLHrKoPHhFGqP69ACf9lK0rZRcgLonIcCXJbe+gglxnl+MiIzsgsOvxCo/0aV
         lSIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="W7WLs7/q";
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id b17si138504wme.3.2020.03.21.11.59.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Mar 2020 11:59:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="W7WLs7/q";
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x442.google.com with SMTP id t7so6884651wrw.12
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Mar 2020 11:59:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=+GXVSbYJrL1Kx8T3vA6n5LwHpHP7W43SBW9l/hM96lA=;
        b=W7WLs7/qePMB0XHjhkOky5x9UmjDAH31REYTeWWkq+TocfmnyiGu0poe2FtdHn2V0U
         HwJYrLn0mobGSsZGyMoQgo9c92AjN8xIqubKfZW+7n/B7S/YuTuW2QAmDb2pmCHD3nIf
         b6zvjf3VtsbPE7EN+rwPDzdSUEb0ZwkJiwvjpHe9Ss/pSZZvCWdg14NIPutTXC6x4yK9
         fDfv/c9FaUwAs29quMWdWK6mQjoXZub3s9LJ47oawPsc4r/8twkFaJWGksZzZOVyNDD+
         /c85SqZUCq8FDCT+4CMX8Er4+LvL8Yd0OJyJYLtvitahgQ9N7sksC9VKIp1aNaACj2ux
         Slbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=+GXVSbYJrL1Kx8T3vA6n5LwHpHP7W43SBW9l/hM96lA=;
        b=orxrQS3V3njlF3OCqHQkITVE0IOOUNO4YNbtYIN1mMbL6mv7zNcNFm41mNbrON/OWv
         soRsGWJNm1zbZCL4ZaX8NBpUlIqIL6KCuqLo/yJzb1SyWG3HNaiMMPaEKgsNGgD04ka2
         D3FhBvel972tpyf3GMnPSaz+L5Xy71QdJZRFxkoETYs0PZTvBfAkgHxs9EA3TNSjmesT
         yEUpT3NGGdR//6tVkrm1k/ZkRDFh7tO2I5WF0Rq68e4HjaWY59wG/knyPIZn7l2lqErL
         l7rw66idukt51zRljvjASgbNy7cWtzD9gxcoeRql7eXNbdih9H+o5fnzxwIZ8bpjpppV
         zEBw==
X-Gm-Message-State: ANhLgQ3E5newP4FZeqAwA60SzdmRKNdgguBJqG5CTX3Za6y0FGzHZDvU
	HsqqrovfYOqmGGqdTPmA5xOqigdVHJc=
X-Received: by 2002:adf:f6c7:: with SMTP id y7mr19434449wrp.269.1584817162431;
        Sat, 21 Mar 2020 11:59:22 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from debian ([197.34.115.229])
        by smtp.gmail.com with ESMTPSA id 133sm14212155wmd.5.2020.03.21.11.59.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Mar 2020 11:59:22 -0700 (PDT)
Message-ID: <1017f66758decbbb83d378e9c35057446b056d8f.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: hp: Replace
 printk(KERN_WARNING ...) with netdev_warn().
From: Sam Muhammed <jane.pnx9@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Jaroslav Kysela <perex@perex.cz>, Greg Kroah-Hartman
	 <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Date: Sat, 21 Mar 2020 14:59:20 -0400
In-Reply-To: <alpine.DEB.2.21.2003211945390.2522@hadrien>
References: <20200321184132.1908-1-jane.pnx9@gmail.com>
	 <alpine.DEB.2.21.2003211945390.2522@hadrien>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Sat, 2020-03-21 at 19:48 +0100, Julia Lawall wrote:
> 
> On Sat, 21 Mar 2020, Sam Muhammed wrote:
> 
> > Fixup the following checkpatch.pl WARNING:
> > WARNING: Prefer [subsystem eg: netdev]_warn([subsystem]dev, ...
> > then dev_warn(dev, ... then pr_warn(...  to printk(KERN_WARNING ...
> 
> Sorry to complain some more, but the subject line and the log message are
> not really idea.  The subject line should be concise and get the main
> point across, but doen't need a lot of detail.  So "use netdev_warn" could
> be fine.  The log message is where you should explain what you do and why.
> Your log message has a lot of words, but the only one that says what you
> do is "Fixup", which is not very descriptive, and there is no mention of
> why.
> 

And I just thought it went smooth :D
Okay, v3 then.
Thank you!

Sam

> julia
> 
> >
> > Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
> > ---
> > Changes in v2:
> > - Removing " : " in the print message, netdev_warn() doesn't need it.
> >
> >  drivers/staging/hp/hp100.c | 9 ++++-----
> >  1 file changed, 4 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/staging/hp/hp100.c b/drivers/staging/hp/hp100.c
> > index b89c4dcf53f5..1afd511260d0 100644
> > --- a/drivers/staging/hp/hp100.c
> > +++ b/drivers/staging/hp/hp100.c
> > @@ -469,8 +469,7 @@ static int hp100_probe1(struct net_device *dev, int ioaddr, u_char bus,
> >
> >  	eid = hp100_read_id(ioaddr);
> >  	if (eid == NULL) {	/* bad checksum? */
> > -		printk(KERN_WARNING "%s: bad ID checksum at base port 0x%x\n",
> > -		       __func__, ioaddr);
> > +		netdev_warn(dev, "bad ID checksum at base port 0x%x\n", ioaddr);
> >  		goto out2;
> >  	}
> >
> > @@ -478,9 +477,9 @@ static int hp100_probe1(struct net_device *dev, int ioaddr, u_char bus,
> >  	for (i = uc = 0; i < 7; i++)
> >  		uc += hp100_inb(LAN_ADDR + i);
> >  	if (uc != 0xff) {
> > -		printk(KERN_WARNING
> > -		       "%s: bad lan address checksum at port 0x%x)\n",
> > -		       __func__, ioaddr);
> > +		netdev_warn(dev,
> > +			    "bad lan address checksum at port 0x%x)\n",
> > +			    ioaddr);
> >  		err = -EIO;
> >  		goto out2;
> >  	}
> > ---
> > 2.20.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200321184132.1908-1-jane.pnx9%40gmail.com.
> >



