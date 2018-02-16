X-GM-THRID: 6523195637320646656
X-Received: by 10.223.157.196 with SMTP id q4mr404150wre.23.1518804047935;
        Fri, 16 Feb 2018 10:00:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.135.246 with SMTP id c51ls430765wrc.11.gmail; Fri, 16 Feb
 2018 10:00:46 -0800 (PST)
X-Google-Smtp-Source: AH8x224h8gBtZJB7dBsrjjJxaT89CNQpUXLpEP4Yd8iSYTh0eWZU/lI/DYX1L6bCOkbAibFWQp1a
X-Received: by 10.223.185.72 with SMTP id b8mr1365528wrg.3.1518804046917;
        Fri, 16 Feb 2018 10:00:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518804046; cv=none;
        d=google.com; s=arc-20160816;
        b=BzZLIl99QjIPKxGN1T4TL77ESdFpdnMSWGVzmTUSEQp3xQaAU5Qul282oW5DimfA0O
         u8Ia/ZhoZBOwB1M7tNwM7kbrtOpkwUuVmuRQLLNxMm9qPdCh+TzVnq9uY2bk/hUDf0cW
         Eg0JwYwrnCPzY+lsO1nMIQ8wRvfgP2vcV7+buYySONx6kuBaAXJXPn34QT6ftqxkQCn6
         O8y8yxez56ek54fc7G4PCXvKpUhseForIJfDfyDdFjvzd5F740q1BkkdJP8LJtBk0H5i
         YoH8Q9ZYiUsANGROoy8bnDa/+IynPj5I7SfSI9rJWeWLB5F6cRo0kBpEof00Ig8k7JZM
         u7dQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=PhxbfJJagOt5lHHJ6EEi7EjKaGZn2fBZLEqejl6oG80=;
        b=haMmNDQ+C2snpGH0v5s//qOMWrWis2XXv9uS0a9Q2ywQ6wGouQ8tGnapSMf2nPrjwX
         ra51lIQeBgQGuVWhAhQa/CAUZC3Q4eJ4eXHRtwi/T3RnRY7eJfdRcPNPre0tBksVnIgo
         RXjqfNILLslNzut7BV0obZdNeYR+M7gmUvrOEkYdGyehQqd7AKBJ0kl3rkdI9B+vMR3m
         SpixU9B520mWhr0uYqLNd/hp6+8OSE65+UkWrAebSfgX50gcG9IMG2eEYPhKLK+VGl2i
         nXGqbiTqY/kRUK5iEWbKOiLsaZU2IFrZcyokgrARyXHecttz72N+0N4HjxMR/i5Gh436
         9SNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of boris.brezillon@bootlin.com designates 62.4.15.54 as permitted sender) smtp.mailfrom=boris.brezillon@bootlin.com
Return-Path: <boris.brezillon@bootlin.com>
Received: from mail.free-electrons.com (mail.free-electrons.com. [62.4.15.54])
        by gmr-mx.google.com with ESMTP id s5si66403wra.3.2018.02.16.10.00.46
        for <outreachy-kernel@googlegroups.com>;
        Fri, 16 Feb 2018 10:00:46 -0800 (PST)
Received-SPF: pass (google.com: domain of boris.brezillon@bootlin.com designates 62.4.15.54 as permitted sender) client-ip=62.4.15.54;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of boris.brezillon@bootlin.com designates 62.4.15.54 as permitted sender) smtp.mailfrom=boris.brezillon@bootlin.com
Received: by mail.free-electrons.com (Postfix, from userid 110)
	id 1E540207FD; Fri, 16 Feb 2018 19:00:46 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	mail.free-electrons.com
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED,SHORTCIRCUIT,
	URIBL_BLOCKED shortcircuit=ham autolearn=disabled version=3.4.0
Received: from bbrezillon (unknown [91.160.177.164])
	by mail.free-electrons.com (Postfix) with ESMTPSA id CAD7A20379;
	Fri, 16 Feb 2018 19:00:45 +0100 (CET)
Date: Fri, 16 Feb 2018 19:00:45 +0100
From: Boris Brezillon <boris.brezillon@bootlin.com>
To: Richard Weinberger <richard@nod.at>
Cc: Shreeya Patel <shreeya.patel23498@gmail.com>,
 boris.brezillon@free-electrons.com, dwmw2@infradead.org,
 computersforpeace@gmail.com, marek.vasut@gmail.com,
 cyrille.pitchen@wedev4u.fr, outreachy-kernel@googlegroups.com,
 ezequiel@vanguardiasur.com.ar
Subject: Re: [PATCH NAND 0/5] Replace printk statements with pr_*macros
Message-ID: <20180216190045.68e9d03e@bbrezillon>
In-Reply-To: <1963507.Bpu1nn9g4S@blindfold>
References: <cover.1518797480.git.shreeya.patel23498@gmail.com>
	<1963507.Bpu1nn9g4S@blindfold>
X-Mailer: Claws Mail 3.15.0-dirty (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

Hi Richard,

On Fri, 16 Feb 2018 18:19:40 +0100
Richard Weinberger <richard@nod.at> wrote:

> Am Freitag, 16. Februar 2018, 17:50:09 CET schrieb Shreeya Patel:
> > This patchset removes all the log levels i.e. KERN_WARN,
> > KERN_NOTICE, KERN_ERR, KERN_INFO, KERN_DEBUG used in the printk
> > statements and replaces the printk statements with appropriate
> > pr_*macros.
> > According to the kernel coding style, pr_*macro is the preferred
> > way to print the message.  
> 
> Beside of that, how does it improve the code?
> Don't get me wrong, pr_* is the way to go for new code, but I don't think it 
> is worth "fixing" in existing code and make working with git blame more 
> painful.

That's true about git blame, though I doubt we'll find a bug in the
printk message, and IIRC, there's an option to find the original
offender even when cosmetic changes have happened in between.

Now, I'd like to explain a bit why I sometimes accept cosmetic/coding
style patches and why I sometimes don't. When this is a first 
contribution, I consider this as a way for new comers to learn the
patch submission/review process. But as soon as I start receiving a lot
of cosmetic changes from the same contributor and I see the person does
not move to more useful contributions I stop accepting her/his
patches. I also tend to take patches from people who write coccinelle
scripts, because they try to make things consistent across the whole
source tree and most importantly, they know what they're doing :-).

Maybe I'm wrong in my reasoning, but I thought it was worth explaining
the decision process ;-).

Regards,

Boris

-- 
Boris Brezillon, Bootlin (formerly Free Electrons)
Embedded Linux and Kernel engineering
http://bootlin.com

