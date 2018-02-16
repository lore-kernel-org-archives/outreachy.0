X-GM-THRID: 6523195637320646656
X-Received: by 10.36.88.75 with SMTP id f72mr5108607itb.13.1518804004854;
        Fri, 16 Feb 2018 10:00:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.58.132 with SMTP id h126ls616929ioa.3.gmail; Fri, 16 Feb
 2018 10:00:03 -0800 (PST)
X-Google-Smtp-Source: AH8x226VVx6OATsdWyjDnHIhMse5cEVsSV07Nr1SXNFPG9IQJOHYeLS4Oze3rd6VGdNNFsBZd+hQ
X-Received: by 10.107.20.138 with SMTP id 132mr7743744iou.37.1518804003862;
        Fri, 16 Feb 2018 10:00:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518804003; cv=none;
        d=google.com; s=arc-20160816;
        b=N2Hhkvus2CHXEIh/a2o2m6xXmbB1zzPoRZFsrbPEcI/b/aJ0EfHdoaByUqWUt6s1Wv
         EnLOOvIWKrtVQMWCWoWdnkHeCFviFr0z/tOAd3b6gnjWNR3Mi9JvNYDtuPruNLaRfWJ0
         748a9j8rrFdlz7pWdxwc3278uLBA4WUMsRDGtkm3Vdro52d/F7N3EpGeSyf512gBp9XU
         bUGHST82vZaKpf0hoVf8ABIxvOEFyaLHK+R1TfAD7a5pTENuUjqKqka41Kcry/TFMwD6
         6OvS7EQxno1DgzWKWebrvpPxAXF3+xhtutgdxusKeJuQ+8IFHtnG/CZznhOtCK3Vvi3f
         bvgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :cc:to:from:subject:message-id:dkim-signature
         :arc-authentication-results;
        bh=PCV/zBnVih9ekqnxNAB0YzI8gwp2WwbegWSWyiZuC/g=;
        b=cNFpvVtj/jj/BpjzeHsUlhXvEY+nDcQiohxdWO14hXZLlMIRyPWFYJ7D3rpCCCPPH1
         vscERTZthxpGK1e3ifDAWbgxJDhBPbzUEWC+nGU8bmdw7lW5WFdM3bFMFiIAxZmkKRw3
         4nvdDH03ASAwq1mhBGK6+oyGGRnlR1AugNE+9S9U2ZI83FNmMmzzz6J+2k7CE3jKYbFK
         LIEXASrq1rI41JNNyQkPHAXr8DTqOLVOmXsWoDYEAasV8p0ZuLnQqCLJqjsSmDVoh42g
         JFQBL2n/u36WFevuQaiz/JDjCpBcKqVHbaORPAZgkJqkuoMGce2s9wtizHkZP+u0JeOx
         TndQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rjCXuEtW;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c01::22c as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-pl0-x22c.google.com (mail-pl0-x22c.google.com. [2607:f8b0:400e:c01::22c])
        by gmr-mx.google.com with ESMTPS id x35si184976ioe.2.2018.02.16.10.00.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Feb 2018 10:00:03 -0800 (PST)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c01::22c as permitted sender) client-ip=2607:f8b0:400e:c01::22c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rjCXuEtW;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c01::22c as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl0-x22c.google.com with SMTP id k8so2065185pli.8
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Feb 2018 10:00:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=PCV/zBnVih9ekqnxNAB0YzI8gwp2WwbegWSWyiZuC/g=;
        b=rjCXuEtWuj82Q8bpEQauR9Z90yjWmLvg5W1Ml+XJRRWGM4T6ev973oB/ayr8jZEB+6
         2yQ1Zf+gWHpbO7iWSFS1QvryZsoJRmD9c6l+ZfG1OZEmTyhrdYRc5qSn5aTdt7co9oHB
         rB/ewqdPvDXXhotA3kiEjCRe3kSBqHc5oueVJswvZs/aheiFMRPlR9tTg6eq9/yo2uso
         AWVQKddUeAm9RMa5ZkdUrpxlIAlTwGFE5J5HD8yi6Wmd31PwCQmv9tFIP5RB7JSkmxmP
         dFIm4D+j/mkzvkUzupORVkdSq2z4iWyyqDX2oXl5cy4WWSQCi6ey3vsloYrYQ8ARuqG9
         437A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=PCV/zBnVih9ekqnxNAB0YzI8gwp2WwbegWSWyiZuC/g=;
        b=nbg7wXzf5eedlxfeN4LlNeH/yVNDWJ9LsvLT8DFSSA9cPdNBNGu/CGWODfa1B51XW3
         HmdAaRhmTQwJdz7NuTSH9xGnYXOZsi1TxwFWTENEUoH0ifiFXddHjoRjkGZmVNEaCqz+
         uoiNCvt3P7YZ08X7v9f/2i2OWioT9dzDEkcYXcpF/h1Y3m/CasINTV0gFex1aAdBsrNI
         Rn6GFAiWE6+jfuScwGkdR4urWmyBVqgfsw+NK1kGZV63Yug/hDC5Do2GxNeMwL6r/2fk
         RFoW8eFz+3itCSRQvDBpS6hNmSq6aGV/A6GfVlFYJqSlK8v7z8Zg1JRiV1qd0M2IzBKj
         2JAQ==
X-Gm-Message-State: APf1xPBhgZ//RcZN216mAMFzSh516LmDKPewt6Ug7wvD/JYy7ups8jZ5
	p1b12ZU2sY8OyiO2Y++95sw=
X-Received: by 2002:a17:902:123:: with SMTP id 32-v6mr6702807plb.278.1518804003505;
        Fri, 16 Feb 2018 10:00:03 -0800 (PST)
Return-Path: <shreeya.patel23498@gmail.com>
Received: from [10.0.2.15] ([103.212.140.144])
        by smtp.googlemail.com with ESMTPSA id m190sm8111161pga.42.2018.02.16.10.00.00
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Feb 2018 10:00:03 -0800 (PST)
Message-ID: <1518803997.4697.5.camel@gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH NAND 0/5] Replace printk
 statements with pr_*macros
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: Boris Brezillon <boris.brezillon@bootlin.com>, Ezequiel Garcia
	 <ezequiel@vanguardiasur.com.ar>
Cc: Julia Lawall <julia.lawall@lip6.fr>, Richard Weinberger
 <richard@nod.at>,  David Woodhouse <dwmw2@infradead.org>, Brian Norris
 <computersforpeace@gmail.com>, Marek Vasut <marek.vasut@gmail.com>, Cyrille
 Pitchen <cyrille.pitchen@wedev4u.fr>,  outreachy-kernel
 <outreachy-kernel@googlegroups.com>, linux-mtd@lists.infradead.org
Date: Fri, 16 Feb 2018 23:29:57 +0530
In-Reply-To: <20180216184840.096e534c@bbrezillon>
References: <cover.1518797480.git.shreeya.patel23498@gmail.com>
	 <CAAEAJfAg_hei2PF37_oX2tf+Mv43ye-nEOt+KRVFerp1Jfzn2Q@mail.gmail.com>
	 <alpine.DEB.2.20.1802161822560.4340@hadrien>
	 <CAAEAJfAtvm5bii9eyUnYmU=tQCOvE_hPk0eBJQ1vwgogbGYr-A@mail.gmail.com>
	 <20180216184840.096e534c@bbrezillon>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.18.5.2-0ubuntu3.2 
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit

On Fri, 2018-02-16 at 18:48 +0100, Boris Brezillon wrote:
> On Fri, 16 Feb 2018 14:26:56 -0300
> Ezequiel Garcia <ezequiel@vanguardiasur.com.ar> wrote:
> 
> > 
> > On 16 February 2018 at 14:23, Julia Lawall <julia.lawall@lip6.fr>
> > wrote:
> > > 
> > > 
> > > 
> > > On Fri, 16 Feb 2018, Ezequiel Garcia wrote:
> > >  
> > > > 
> > > > Hi Shreeya,
> > > > 
> > > > Thanks for the contribution.
> > > > 
> > > > On 16 February 2018 at 13:50, Shreeya Patel
> > > > <shreeya.patel23498@gmail.com> wrote:  
> > > > > 
> > > > > This patchset removes all the log levels i.e. KERN_WARN,
> > > > > KERN_NOTICE, KERN_ERR, KERN_INFO, KERN_DEBUG used in the
> > > > > printk
> > > > > statements and replaces the printk statements with
> > > > > appropriate
> > > > > pr_*macros.
> > > > > According to the kernel coding style, pr_*macro is the
> > > > > preferred
> > > > > way to print the message.
> > > > >  
> > > > So, two things to begin with.
> > > > 
> > > > First of all, despite this contribution being part of
> > > > outreachy,
> > > > I believe you can include mailing lists in your case.
> > > > 
> > > > In other words, don't use the "nol" option in get_maintainer
> > > > script and Cc the MTD mailing list: linux-mtd at
> > > > lists.infradead.org.  
> > > Shouldn't the dev_* functions also be usable?
> > >  
> > Provided that:
> > 1. it's applicable, i.e. if in the context of a device.
> Yep, be careful with that. The MTD/NAND subsystem initializes
> mtd->dev.name quite late, so it's not safe to use &mtd->dev with
> dev_<loglevel>(). Note that you can use the NAND controller pdev->dev 
> if
> available.

This information is quite useful, thanks.
I'll see that what will be the best thing to use here.

> 
> > 
> > 2. Richard is not too opposed to the idea.
> > 
> > Then, yes.
> 
> 

