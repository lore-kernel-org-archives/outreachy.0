X-GM-THRID: 6806652966405144576
X-Received: by 2002:adf:f851:: with SMTP id d17mr18152586wrq.205.1584799587533;
        Sat, 21 Mar 2020 07:06:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:4441:: with SMTP id x1ls146826wrr.4.gmail; Sat, 21 Mar
 2020 07:06:26 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vspz/EPJTZVOrNH2GTuNpLd+aUvgLs0TI3q4UEXU6dEfbqploN6CN66oQ/2fGgXYmPhGYXz
X-Received: by 2002:adf:a490:: with SMTP id g16mr17581362wrb.42.1584799586033;
        Sat, 21 Mar 2020 07:06:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584799586; cv=none;
        d=google.com; s=arc-20160816;
        b=MkVRID3sCf2cCay62KD0SB1iRD/c4/cVtlQ7PlPvlsc3MsiZgqF/BdI/ZojTxp5PSq
         nBZWSWDO1ctI9jhxQiGMIezgQpYwvKTz2ANacMVbQEIAy6aZTvVkSkInifWYKsvSJ5ot
         ScAr31P3EVkZc385a1AvdJelJ8bXYK3tGrolVYH3JxUGMNoSGC5EzZ9/9uOsVXMiF4Wf
         VvArpWTx7h/JwGj1kX0GEWOf2rSCX0AB9loBJqCthkpd3j55RweLbSYqy+MDhKr6w3gx
         qv1ii0fB1ub5SZF78hLMRihzc1CHwuDGh0kMhzBuesB5VGZnH2p+OHCgFN8AC/zxC6oq
         RoOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=m+n7a/3JKT9yeGIeQMyaqfIEnc6MXouRlWUxKFfRtKY=;
        b=kCdPgUCYtgIyYmbAs5PajvyDGWed869txMAPD8NblGjDnlrBUzeTg0rPhsjWDevd8q
         izFBVoseegmXxjM/tgYhfRfmeemxZgfJttFq2iYugx3F4WHo9ZX6sHAkVDbnVJHAgWg9
         hyhAtKwwCpTaXUzUWvH+NZVROr+xRy3fO6rw8rpEBkmDbJGdXmG0oNhZbA/hGBpNXRPd
         rTE0TZSYGxZMaeAamohngs0aR4tXvCgh6DPoIkA1rreOveZGgL3uhQyeQGcFYwhfxDJ/
         IyIeCr5BmttY89v031MmzOW6NLEq+nB/utZe6bvCfQrrQxGyE5IRkUMxajOJvFy4GOJN
         +NBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=L3JeFnYl;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id v12si448427wrp.5.2020.03.21.07.06.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Mar 2020 07:06:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=L3JeFnYl;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x341.google.com with SMTP id c187so9453983wme.1
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Mar 2020 07:06:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=m+n7a/3JKT9yeGIeQMyaqfIEnc6MXouRlWUxKFfRtKY=;
        b=L3JeFnYlVLW17JC5y5D8X7noXxrMFd/J7tvulxi5g97LWat9El2k+yk/iXYqRL3Aq8
         9reIEdB1VkJg4GL49Ipx0q/8QGYb1aFXDWZebKnAQ7ubXIZQ8y+pKIxQ/EIxy1ooUG72
         9GYieaOim/qlcOAxM11WyNITihJLh6skvShWYR6pxaRJiftXpoLAv6OeuYp45eUo/uVf
         nHlzega9qSljzwseQbIPh96E2pGiJL9ydPsKTnO6qRP1gp5JQsBUWu1P7dgThkqcX8w/
         /KYsgvbyqX+rG2M9ltKtDGs8Q+6HdZf4EczL1t/meF0pWknJSEpjKJuXv4MN+WcFD7Nu
         NCBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=m+n7a/3JKT9yeGIeQMyaqfIEnc6MXouRlWUxKFfRtKY=;
        b=RkaYnxyPgpn0xtTGolxqOw+ZY7FOuMKqdhSetu8ZO3ZIHr2Q0oDHtfv76tZp6m6EVh
         Q6oWDKsmSaoFGGeC9FUX2cwj2Ac24+8ykF4ka5CN6zaByk9c+LhG7VxOdZpqDevZqah+
         I8MZEXUmmukBk2mK144LbwLLC+FL3Pk9uXuIKmgynFiOV67nEU5O1B/fhcyLYynHhrYU
         aprX139Rl0um4DXDeoxAoR3aSXO11oSJT67fNyXsXsAeZqnRzVBC1FPLHZCdTEi+UVCI
         3PCX0Mq4eagE617W5Pf9U65x6a7/BlvJQHxGJchEnCp+QXihJzUIin333/qpBn3+SEi0
         mHxg==
X-Gm-Message-State: ANhLgQ05jW6CfodfasbPLuJROMvZ8IOxluKpQkrm3ZSVa846ilpnqis+
	3RfcohdFVJJdWAluKPqMWzfggDa64Mc=
X-Received: by 2002:a1c:9d41:: with SMTP id g62mr17038850wme.131.1584799585643;
        Sat, 21 Mar 2020 07:06:25 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from debian ([197.34.115.229])
        by smtp.gmail.com with ESMTPSA id e6sm13139997wrn.29.2020.03.21.07.06.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Mar 2020 07:06:25 -0700 (PDT)
Message-ID: <68e7db7304d86d9fb7e8c586a8eccd5bbf559f80.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: hp: Replace
 printk(KERN_WARNING ..) with netdev_warn().
From: Sam Muhammed <jane.pnx9@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Jaroslav Kysela <perex@perex.cz>, Greg Kroah-Hartman
	 <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Date: Sat, 21 Mar 2020 10:06:23 -0400
In-Reply-To: <alpine.DEB.2.21.2003211444450.2522@hadrien>
References: <20200321132919.27704-1-jane.pnx9@gmail.com>
	 <alpine.DEB.2.21.2003211444450.2522@hadrien>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Sat, 2020-03-21 at 14:59 +0100, Julia Lawall wrote:
> 
> On Sat, 21 Mar 2020, Sam Muhammed wrote:
> 
> > Fixup the following Checkpatch.pl WARNING:
> > WARNING: Prefer [subsystem eg: netdev]_warn([subsystem]dev, ...
> > then dev_warn(dev, ... then pr_warn(...  to printk(KERN_WARNING ...
> >
> > Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
> > ---
> >  drivers/staging/hp/hp100.c | 10 +++++-----
> >  1 file changed, 5 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/staging/hp/hp100.c b/drivers/staging/hp/hp100.c
> > index b89c4dcf53f5..89af70571661 100644
> > --- a/drivers/staging/hp/hp100.c
> > +++ b/drivers/staging/hp/hp100.c
> > @@ -469,8 +469,8 @@ static int hp100_probe1(struct net_device *dev, int ioaddr, u_char bus,
> >
> >  	eid = hp100_read_id(ioaddr);
> >  	if (eid == NULL) {	/* bad checksum? */
> > -		printk(KERN_WARNING "%s: bad ID checksum at base port 0x%x\n",
> > -		       __func__, ioaddr);
> > +		netdev_warn(dev,
> > +			    " : bad ID checksum at base port 0x%x\n", ioaddr);
> >  		goto out2;
> >  	}
> >
> > @@ -478,9 +478,9 @@ static int hp100_probe1(struct net_device *dev, int ioaddr, u_char bus,
> >  	for (i = uc = 0; i < 7; i++)
> >  		uc += hp100_inb(LAN_ADDR + i);
> >  	if (uc != 0xff) {
> > -		printk(KERN_WARNING
> > -		       "%s: bad lan address checksum at port 0x%x)\n",
> > -		       __func__, ioaddr);
> > +		netdev_warn(dev,
> > +			    " : bad lan address checksum at port 0x%x)\n",
> > +			    ioaddr);
> 
> Other calls to netdev_warn don't have a string that starts with " : ", so
> you can probably drop that part as well.
> 

OK, thats a v2?

I have some questions about replacing printk in general, if its
associated with KERN_<LEVEL>, i know which netdev_*/dev_* ..macro to
replace it with, but when its just printk("some string"), with no other
arg, its hard to know to which netdev_*/dev_* macro it should be
replaced with (_dbg, _warn ...etc)

what indications can i use or refer to with this?

Sam

> julia
> 
> 
> >  		err = -EIO;
> >  		goto out2;
> >  	}
> > --
> > 2.20.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200321132919.27704-1-jane.pnx9%40gmail.com.
> >



