X-GM-THRID: 6525365385486663680
X-Received: by 10.28.63.65 with SMTP id m62mr629105wma.18.1519321163635;
        Thu, 22 Feb 2018 09:39:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.198.3 with SMTP id w3ls473631wmf.3.canary-gmail; Thu, 22
 Feb 2018 09:39:22 -0800 (PST)
X-Google-Smtp-Source: AH8x225B7rAvIvD6x1vIBMlqMQ4CMSCHv84lAZTnvZVAwPuN+uBt+IOikcTR2JSD0ZQsRmfcn/qQ
X-Received: by 10.28.237.21 with SMTP id l21mr708875wmh.32.1519321162680;
        Thu, 22 Feb 2018 09:39:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519321162; cv=none;
        d=google.com; s=arc-20160816;
        b=IVazHKqFDgz3q6HQxAnJMBELb7VtoEcLd4M6CzS8xMmhvMWT97wPv3/2QjiTvg2vcv
         DY8wr63ZJpUmEwcJYQocAo9z8ZA43cEpgVlW8+XlpTTmj0cZOtORNcWbJKKi2P5Ukfh4
         CVVDsCIm++uBeoH5fqrEw7quC8IxfdMGEUGlQgPh/X/jRKlnIdDQfRCEXNOQ4Bpm+8BF
         W7/nuMzKljpK5aFQco4sO8+//AR90Fka1I/NLGQsdU9x6Gd2cKj1QHzdmYWsALD8dq5Y
         rVGb9Q1QZ+YP3YfwBdkSn46OSypoeHafeqIkznhyUWv8bk37OpUyx0RuYl0Tf5+4ud51
         xwLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=LUnNU4LclWJ0S3JYAdJejWZimU9gjE2ntVKhbf0Nc+A=;
        b=uQ/nIv1QJXeZHM6I5x+WLLifMOaBZwli9BJpf7cqR9St7U55CpiIxpl4dyNm8EL0gp
         bULYstyWhX5nRAr4JjKjeVDBsrhvRyn5CIJhu4vqrewWo3IEkh2c0eHmA7eblDYzOVZY
         uB2bufr5/seDBYPqPOnRJ695cfiuSRlJ3T0ogVFie7jJ2SpxDV4iaTF+YALC4CgZ3Oxd
         Y46bdHfze2LYUn/f8XAN5aSWK91bbsJjGUVJBWfN5BjvZaQ46wqawh/UpNuL96F1NeIN
         VCC14S8jQRF6XGkzcHGRbmvbpVF8bwXjE9bm8VKUSr7idWoQ4dzRp41Ikwe5Veyk5hbw
         l0nQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of boris.brezillon@bootlin.com designates 62.4.15.54 as permitted sender) smtp.mailfrom=boris.brezillon@bootlin.com
Return-Path: <boris.brezillon@bootlin.com>
Received: from mail.free-electrons.com (mail.free-electrons.com. [62.4.15.54])
        by gmr-mx.google.com with ESMTP id s5si31087wra.3.2018.02.22.09.39.22
        for <outreachy-kernel@googlegroups.com>;
        Thu, 22 Feb 2018 09:39:22 -0800 (PST)
Received-SPF: pass (google.com: domain of boris.brezillon@bootlin.com designates 62.4.15.54 as permitted sender) client-ip=62.4.15.54;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of boris.brezillon@bootlin.com designates 62.4.15.54 as permitted sender) smtp.mailfrom=boris.brezillon@bootlin.com
Received: by mail.free-electrons.com (Postfix, from userid 110)
	id C0E8C20794; Thu, 22 Feb 2018 18:39:21 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	mail.free-electrons.com
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED,SHORTCIRCUIT
	shortcircuit=ham autolearn=disabled version=3.4.0
Received: from bbrezillon (91-160-177-164.subs.proxad.net [91.160.177.164])
	by mail.free-electrons.com (Postfix) with ESMTPSA id 6C601200FB;
	Thu, 22 Feb 2018 18:39:11 +0100 (CET)
Date: Thu, 22 Feb 2018 18:39:11 +0100
From: Boris Brezillon <boris.brezillon@bootlin.com>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: Shreeya Patel <shreeya.patel23498@gmail.com>, Boris Brezillon
 <boris.brezillon@free-electrons.com>, Richard Weinberger <richard@nod.at>,
 David Woodhouse <dwmw2@infradead.org>, Brian Norris
 <computersforpeace@gmail.com>, Marek Vasut <marek.vasut@gmail.com>, Cyrille
 Pitchen <cyrille.pitchen@wedev4u.fr>, Maxim Levitsky
 <maximlevitsky@gmail.com>, "open list:MEMORY TECHNOLOGY..."
 <linux-mtd@lists.infradead.org>, Linux Kernel Mailing List
 <linux-kernel@vger.kernel.org>, ezequiel@vanguardiasur.com.ar,
 outreachy-kernel@googlegroups.com
Subject: Re: [PATCH NAND v5] mtd: nand: Replace printk() with appropriate
 pr_*() macro
Message-ID: <20180222183911.51e00722@bbrezillon>
In-Reply-To: <CAHp75VdHFAtGQ7=tRJz=dZJtsSnK_pKbUV=-8WAGOSKJwOQU2w@mail.gmail.com>
References: <1519317082-4790-1-git-send-email-shreeya.patel23498@gmail.com>
	<CAHp75VdHFAtGQ7=tRJz=dZJtsSnK_pKbUV=-8WAGOSKJwOQU2w@mail.gmail.com>
X-Mailer: Claws Mail 3.15.0-dirty (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Thu, 22 Feb 2018 19:08:29 +0200
Andy Shevchenko <andy.shevchenko@gmail.com> wrote:

> On Thu, Feb 22, 2018 at 6:31 PM, Shreeya Patel
> <shreeya.patel23498@gmail.com> wrote:
> > Using pr_<loglevel>() is more concise than
> > printk(KERN_<LOGLEVEL>).
> > Replace printks having a log level with the appropriate
> > pr_*() macros.
> > Define pr_fmt() and remove other additional macros from
> > the replaced printks.  
> 
> It makes sense to fix indentation, like in case similar to ' mm?"":""
> ',

Fix indentation if you change the line, why not...

> and fix the specifiers, when
> void *p is printed as 0x%08x or alike.

But specifier fixes should be done separately, and I'm not sure I
want to receive yet another bunch of cosmestic patches changing that, at
least not now.

-- 
Boris Brezillon, Bootlin (formerly Free Electrons)
Embedded Linux and Kernel engineering
https://bootlin.com

