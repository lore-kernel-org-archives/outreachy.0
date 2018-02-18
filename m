X-GM-THRID: 6523195637320646656
X-Received: by 10.107.112.20 with SMTP id l20mr3839087ioc.124.1518985849755;
        Sun, 18 Feb 2018 12:30:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.70.4 with SMTP id t4ls494194ioa.12.gmail; Sun, 18 Feb 2018
 12:30:48 -0800 (PST)
X-Google-Smtp-Source: AH8x224zbDqJVHn9mhKpBizwcRh9zBIIhWN1fYx8Mhal1kosg1syF7Jhyeh65L+hUta+4/WC7gQz
X-Received: by 10.107.137.19 with SMTP id l19mr11382516iod.0.1518985848759;
        Sun, 18 Feb 2018 12:30:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518985848; cv=none;
        d=google.com; s=arc-20160816;
        b=uXqMuiQ/QIFOt5IwpGkyM8t9dkP8k1O94unIn97EIe5mudXHnVfPts+VkXjdyZ6djF
         U4IHbJXn4zclJFj+AjKV/na3aHDc7FvSdOpDhaDxeRSadGq77pGHa2i0EaxjAoLsn6uL
         ljjjO9mN0VbsgVLLfY5xqMbxqTwLJpyAM/DtvQ6ly9pTFOuqo/DZht7dGdxAKY5naQB3
         uVW6b4coyACu+8d8xTe/vkv7l82ULxxNBGW3t4PuPobB89IXTDF1PyLvFS9OhBuBRri+
         ahbIV6QQ9YNiDCJBZGCnSvZzbuHSELZKGJVjRgoa3vntt92F3dw538Jz9tcUwDK6DeLP
         I97w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :cc:to:from:subject:message-id:dkim-signature
         :arc-authentication-results;
        bh=4J639NV6NjeQEBfmW1AETnyQfzsTQplVm8zuAYqBh/w=;
        b=wTnYroju2AxYhhx3/2bsyRUqBkOETZw5fU6/omvMQh+9H1ZVtsP6Waj+7EnTPbbztI
         m3FRop9Z1Wtj15rQfD16Ew/+XvHTsvrSKWcKhhWqiZXu5DbOf14PRxQDsfH9bzwwye2j
         W6m+52fljW2vM93ghdO1ooRu0r6vkiIFdp8tNcNOdngj1Arsizfsn8c0uG1cCaU/Rc19
         ac8cQaJOGhyp5NpA+reAMWKlwGa4AvUtkhn78YpADvYn/NtZjlB+SmaoGO01+48HPswA
         ef3JAjuRD02XNlm0/gztORmfhj2obBn0lqfyH5MMyq/1+yzlfO4fgb58ReboG/wgxGOC
         7XvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iPWHRrF4;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c01::22a as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-pl0-x22a.google.com (mail-pl0-x22a.google.com. [2607:f8b0:400e:c01::22a])
        by gmr-mx.google.com with ESMTPS id x35si498123ioe.2.2018.02.18.12.30.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Feb 2018 12:30:48 -0800 (PST)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c01::22a as permitted sender) client-ip=2607:f8b0:400e:c01::22a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iPWHRrF4;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c01::22a as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl0-x22a.google.com with SMTP id 31so4549207ple.9
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Feb 2018 12:30:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=4J639NV6NjeQEBfmW1AETnyQfzsTQplVm8zuAYqBh/w=;
        b=iPWHRrF4uPhf1Xxanf+MzqPklabQbI610RAPTk2D1NZ/PvzIjVWQRm+HoDYU6ZDhxf
         QtgnQSl82fz6n3NzyqwQ9aWgBTUHlR8XcrQvvFjNTvQugi253KUm7Q0YQen31ju6ifvL
         j2pWu8l+EBFheAul6AHBb/2IHfZlLnlPJYjmIQALOL9jQmz0Pn+EPunjs9GMhF+ac8PA
         zRHHfWiaLmaSdgxua50Snky0tH3htvncYwI5GBj3wEC3/FL6MetlhUPhtr7/AMZQqChG
         BynBS1tVZYgOKpRWsvAYjp8frNjmGP7jQQMQ5FSi3n6WsKrQK6STdcQwXFCOO26+TG/r
         T+jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=4J639NV6NjeQEBfmW1AETnyQfzsTQplVm8zuAYqBh/w=;
        b=QiDy6T27cJ7EAuCoLzyaVYlRzsenMgaNS3cC+lzf4VynzPaDxM+gGEOIYolapTfSoA
         SAj21MCW8DCPnj8vfwNvgR0wfCGI6INUjt2umJgcPtzFLoE80/xXLZDK/7XXfuqBfCTG
         16IXyqZpk9pI9LzIUu85+SRdscpU8jLdXjkk4VkFyIOZ3c7J9G9zEH7Y/XRjDIGzEMmN
         7Ip7QJ7wQfg1leheE5VtICeBX6zikXQ9HrOqeFyRqAuBZQzQailkbjQcWCZW9Ohm/eNj
         NVZw/ofY7kJvLnt3EpSDaD6KkIDTZHtam/ZDc7uBZgpedKf/CbB3pPhDXsyiWCwaPeGg
         LRoQ==
X-Gm-Message-State: APf1xPCLmPGgU30q9Lj44bmRc4uX7ip0Ttf4WjIOC1HRq5DtzQm9PXAX
	f4mNFfEqW2uO/8GpINe4fYg=
X-Received: by 2002:a17:902:658f:: with SMTP id c15-v6mr12088111plk.412.1518985848426;
        Sun, 18 Feb 2018 12:30:48 -0800 (PST)
Return-Path: <shreeya.patel23498@gmail.com>
Received: from [10.0.2.15] ([103.212.140.144])
        by smtp.googlemail.com with ESMTPSA id z85sm62001933pfk.138.2018.02.18.12.30.44
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Feb 2018 12:30:47 -0800 (PST)
Message-ID: <1518985842.22737.1.camel@gmail.com>
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
Date: Mon, 19 Feb 2018 02:00:42 +0530
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

