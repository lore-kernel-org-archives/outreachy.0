X-GM-THRID: 6523195637320646656
X-Received: by 10.157.26.61 with SMTP id a58mr501086ote.30.1518985259110;
        Sun, 18 Feb 2018 12:20:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.3.130 with SMTP id f2ls3774705otf.14.gmail; Sun, 18 Feb
 2018 12:20:58 -0800 (PST)
X-Google-Smtp-Source: AH8x226QRtYuLoOQfR8IL19P/1Thg8vydsfFxje8dWo2xB0Do6KBrBpFo5HfNeruOT8S0W1613OE
X-Received: by 10.157.3.196 with SMTP id f62mr6695284otf.54.1518985258198;
        Sun, 18 Feb 2018 12:20:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518985258; cv=none;
        d=google.com; s=arc-20160816;
        b=AUXXkV+wrYYoMfv+UPGk6u7PBpjYZziiJiZH/BFoccj0yIhK/DwEvSIXq86UVda3Kc
         MLJ/C7CO+EiKwC7KyJJex8wUqDjngaHEvNUHuFJs0EL/du0hc73w+ZZV6m1y7RX+Siuo
         1PJLzQB0YxshXoaOb4AOWnO5Qqn3PhaKj8XpvJubAM36DKIHyiCtTn5ZZm5WxWNMzOUK
         XtF1il6iGWfC22oeRzpOV6wYzDuLY2oI7QO+bYanrqu3sjKHBlTarRbkwvtsAULSYCqo
         CZ6yOk34a9R3VDg4t69bVoeA5nOddOupXlYZEhZP1+Q1GUQqzGV+RrXHZDwPciEzWni5
         9bXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :cc:to:from:subject:message-id:dkim-signature
         :arc-authentication-results;
        bh=wuAkKXTuLshHrzaZ5LaolbjROBQ+Wn5cvV450l5Xxkg=;
        b=poJGdo3XaXc/nAuyd1rqz6uNCG8MbW0UtN7Ux5CAxRk6UGm7p8MAkcsEvRM8Pep7lj
         9sJs9EmUfjsw2LIY7OWNSgAi5mSvIigkuti59Mt49QAEV8qZv25LLA2TZzLuRmBWwd2j
         Ft0CWBH41Qs1xdGaRANUmlIG42rIk9T/83deELDQSaeuUlFIh0u8sn93nmJsH+IkndBA
         W2G1TDp9k/CITzLIy4Ko+YCP8yncZ+Bol5HRmocFic6U1hxSvQlUVmXWtOkQjyBFTj63
         6TVJ314q9BjhTjQ1hjWTb92vmVqP2EmMDjFVQfAaCDLDcGtbzLVcsTJ0mCq1tfjoEsYy
         lm6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CE8KF66+;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c01::22b as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-pl0-x22b.google.com (mail-pl0-x22b.google.com. [2607:f8b0:400e:c01::22b])
        by gmr-mx.google.com with ESMTPS id f2si147672otb.1.2018.02.18.12.20.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Feb 2018 12:20:58 -0800 (PST)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c01::22b as permitted sender) client-ip=2607:f8b0:400e:c01::22b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CE8KF66+;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c01::22b as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl0-x22b.google.com with SMTP id v3so4556695plg.3
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Feb 2018 12:20:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=wuAkKXTuLshHrzaZ5LaolbjROBQ+Wn5cvV450l5Xxkg=;
        b=CE8KF66+87lv5ZkdyJbx5Ce0fcS7m+448sQ7zjA7g5s0DGASrlVRNBL8peLgjpsRg7
         q3c0OousZn0gmB6RRjxbUVgief3xopMSGjdtZmS2zBLdnBjADXKHQtmjM9iQLR9BptI2
         YfXHnoBFIFBw6r+Yve/coxDAO3GV+Bg2ZdmF0ag2ORbIwmO/Gnu/8piDe9HhZ4XHunBZ
         WmAGXLy7YK+1QzKZskLfrAe89OSuMqfhRi6rlHXPtsaB1N9B7/BWNmGR3fPqrg8DbLzs
         R9xL5E5PRpEDoQpwHAJZf6QDnwtVdhyDgwypKfjNeUrI/EkUiJMfCFk0gOxTsDIUqQbR
         Dzmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=wuAkKXTuLshHrzaZ5LaolbjROBQ+Wn5cvV450l5Xxkg=;
        b=ehr7SJcKai2Yx5SmwIKdVkv53QGg1cO5LLbrujAfeS2irD0K73Z0T/HE3bTp83Nm6q
         g7Sb3JyDDSzSurRzj8SiQO0QbdwHrVOZj5P5d9ZiJaN4g6DDPucLdls1kWt8AEw0ITCb
         47u5U3dxqvsHpeWbkwbNlJ4p7oNgnniXOnV/eKbyJ90hbyPdJQ6U43L43EE0AzhWjvq0
         wXLuV4qGUMUc2ssrTcdYnoGje4MCRXrOUdP0Zv4e1JXAed1oBozCjHBCdewS3MnCd/6S
         x+8TvReRI4CP+iXwR0PJDuGrN6Wr7dQRYvqMsOgTXLEGIzSQ24JZvurBucBEALlN2E0X
         NH5A==
X-Gm-Message-State: APf1xPBPdmp73Y9i7qBps8mb57CrqUL0OdX80FFg0SRsq58mEfYgCnOo
	HJkq8zjXZrGuhI5R3bS4Pm8=
X-Received: by 2002:a17:902:e65:: with SMTP id 92-v6mr12381537plw.148.1518985257750;
        Sun, 18 Feb 2018 12:20:57 -0800 (PST)
Return-Path: <shreeya.patel23498@gmail.com>
Received: from [10.0.2.15] ([103.212.140.144])
        by smtp.googlemail.com with ESMTPSA id x26sm53134322pfi.141.2018.02.18.12.20.54
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Feb 2018 12:20:57 -0800 (PST)
Message-ID: <1518985251.22603.6.camel@gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH NAND 0/5] Replace printk
 statements with pr_*macros
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: Boris Brezillon <boris.brezillon@bootlin.com>
Cc: Julia Lawall <julia.lawall@lip6.fr>, Boris Brezillon
 <boris.brezillon@free-electrons.com>, Richard Weinberger <richard@nod.at>, 
 David Woodhouse <dwmw2@infradead.org>, Brian Norris
 <computersforpeace@gmail.com>, Marek Vasut <marek.vasut@gmail.com>, Cyrille
 Pitchen <cyrille.pitchen@wedev4u.fr>,  outreachy-kernel
 <outreachy-kernel@googlegroups.com>, linux-mtd@lists.infradead.org,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Mon, 19 Feb 2018 01:50:51 +0530
In-Reply-To: <20180218210950.30fe9310@bbrezillon>
References: <cover.1518797480.git.shreeya.patel23498@gmail.com>
	 <CAAEAJfAg_hei2PF37_oX2tf+Mv43ye-nEOt+KRVFerp1Jfzn2Q@mail.gmail.com>
	 <alpine.DEB.2.20.1802161822560.4340@hadrien>
	 <CAAEAJfAtvm5bii9eyUnYmU=tQCOvE_hPk0eBJQ1vwgogbGYr-A@mail.gmail.com>
	 <20180216184840.096e534c@bbrezillon> <1518976870.2784.4.camel@gmail.com>
	 <20180218191347.76f4a287@bbrezillon> <1518978365.2969.6.camel@gmail.com>
	 <20180218210950.30fe9310@bbrezillon>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.18.5.2-0ubuntu3.2 
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit

On Sun, 2018-02-18 at 21:09 +0100, Boris Brezillon wrote:
> Hi Shreeya,
> 
> Please try to keep everyone in the loop when you reply to an email.
> All
> discussions should happen publicly to keep everyone aware of the
> progress and let other developers/maintainers take part to the
> discussion if they have something to add.

I'll keep this in mind.
> 
> 
> On Sun, 18 Feb 2018 23:56:05 +0530
> Shreeya Patel <shreeya.patel23498@gmail.com> wrote:
> 
> > 
> > On Sun, 2018-02-18 at 19:13 +0100, Boris Brezillon wrote:
> > > 
> > > On Sun, 18 Feb 2018 23:31:10 +0530
> > > Shreeya Patel <shreeya.patel23498@gmail.com> wrote:
> > >   
> > > > 
> > > > 
> > > > On Fri, 2018-02-16 at 18:48 +0100, Boris Brezillon wrote:
> > > > 
> > > > Hello Sir,
> > > >   
> > > > > 
> > > > > 
> > > > > On Fri, 16 Feb 2018 14:26:56 -0300
> > > > > Ezequiel Garcia <ezequiel@vanguardiasur.com.ar> wrote:
> > > > >     
> > > > > > 
> > > > > > 
> > > > > > 
> > > > > > On 16 February 2018 at 14:23, Julia Lawall <julia.lawall@li
> > > > > > p6.f  
> > > > > > r>  
> > > > > > wrote:    
> > > > > > > 
> > > > > > > 
> > > > > > > 
> > > > > > > 
> > > > > > > 
> > > > > > > On Fri, 16 Feb 2018, Ezequiel Garcia wrote:
> > > > > > >      
> > > > > > > > 
> > > > > > > > 
> > > > > > > > 
> > > > > > > > Hi Shreeya,
> > > > > > > > 
> > > > > > > > Thanks for the contribution.
> > > > > > > > 
> > > > > > > > On 16 February 2018 at 13:50, Shreeya Patel
> > > > > > > > <shreeya.patel23498@gmail.com> wrote:      
> > > > > > > > > 
> > > > > > > > > 
> > > > > > > > > 
> > > > > > > > > This patchset removes all the log levels i.e.
> > > > > > > > > KERN_WARN,
> > > > > > > > > KERN_NOTICE, KERN_ERR, KERN_INFO, KERN_DEBUG used in
> > > > > > > > > the
> > > > > > > > > printk
> > > > > > > > > statements and replaces the printk statements with
> > > > > > > > > appropriate
> > > > > > > > > pr_*macros.
> > > > > > > > > According to the kernel coding style, pr_*macro is
> > > > > > > > > the
> > > > > > > > > preferred
> > > > > > > > > way to print the message.
> > > > > > > > >      
> > > > > > > > So, two things to begin with.
> > > > > > > > 
> > > > > > > > First of all, despite this contribution being part of
> > > > > > > > outreachy,
> > > > > > > > I believe you can include mailing lists in your case.
> > > > > > > > 
> > > > > > > > In other words, don't use the "nol" option in
> > > > > > > > get_maintainer
> > > > > > > > script and Cc the MTD mailing list: linux-mtd at
> > > > > > > > lists.infradead.org.      
> > > > > > > Shouldn't the dev_* functions also be usable?
> > > > > > >      
> > > > > > Provided that:
> > > > > > 1. it's applicable, i.e. if in the context of a device.    
> > > > > Yep, be careful with that. The MTD/NAND subsystem initializes
> > > > > mtd->dev.name quite late, so it's not safe to use &mtd->dev
> > > > > with
> > > > > dev_<loglevel>(). Note that you can use the NAND controller
> > > > > pdev-  
> > > > > > 
> > > > > > dev   
> > > > > if
> > > > > available.    
> > > > I would like to ask here that what will be the benefit or good
> > > > cause if
> > > > I use pdev->dev?
> > > > How is it different from others?  
> > > Well, pdev->dev is guaranteed to be properly initialized when you
> > > pass
> > > it to dev_<loglevel>(). This is not the case with mtd->dev which
> > > is
> > > initialized in mtd_device_register(), but the NAND controller
> > > driver
> > > usually does some operations on the NAND device before reaching
> > > this
> > > point (reading the ID, reading the bad block markers to determine
> > > which
> > > blocks are bad, ...).
> > >   
> > Thanks for making me understand.
> > 
> > > 
> > > Anyway, I think it's better if you first do the
> > > s/printk(KERN_<LOGLEVEL>(/pr_<loglevel>(/ replacement. Replacing
> > > pr_xxx
> > > by dev_xxx is something we can do afterwards.  
> > I've created one patch where I have replaced printk
> > with dev_* and used pdev->dev.
> Okay. pdev->dev is not always directly accessible so doing
> s/printk(KERN_<LOGLEVEL>/dev_<loglevel>(&pdev->dev, / is likely to
> cause build failures. But I guess you compile-tested the changes
> you're
> about to submit.

Yes, it wasn't directly accessible at some places.
Also, I was unable to compile ams-delta.c file.
I am working on it right now as I will have to cross compile for arm.

Thanks
> 
> Regards,
> 
> Boris
> 
> 

