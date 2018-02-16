X-GM-THRID: 6523195637320646656
X-Received: by 10.28.145.13 with SMTP id t13mr1386668wmd.14.1518804971579;
        Fri, 16 Feb 2018 10:16:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.163.205 with SMTP id m13ls871136wrb.0.gmail; Fri, 16 Feb
 2018 10:16:10 -0800 (PST)
X-Google-Smtp-Source: AH8x227NKgyuDtR//i3cOLOma9eamKHzCWWh9A7EV1QvURPjVlIWglwXA4jO1mkluNp6OTVaVHX1
X-Received: by 10.223.133.101 with SMTP id 92mr1338462wrh.5.1518804970529;
        Fri, 16 Feb 2018 10:16:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518804970; cv=none;
        d=google.com; s=arc-20160816;
        b=XhNFQwgarzNg1ZxFMh1nArdxbuj1IZbnrme02YgOXI8h5SJ9MLqUR89xLFQrqlMMqj
         iLXdwBBitBLrEDu5iRQJxxM2JOSw2GCdPPJxhqxD/ghgwgjK0vwMIhZR+PmJEkZ5Pz7s
         ie19zlnh5lyO0ZEhn5g9S8o/Xz+KXeg4a63YuJppuEGOUm122a+A5a1QbBdgLayWCb1i
         vyeMpeAUEy0SSuTSqciRAf7xY52BhSRYwejQoRsf4lUUC9WY5d1ln2r2K7PCbGY55gme
         pS0MaNHWSUaz1XkWolCqzV+57r/ZrFuA57ePEB5Qqz5Rz5z+2WamusSwm5UZn12wFB2m
         c3hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=icW42ZBxuiYeEFnIXi4T8r3JCyaooQ+MAUIj1v9TF9c=;
        b=Jl1DW8Qmr9R29DXN5rJVy9Uj+NPIqKM517/+51/CIgpQeUnhRKabIHTSYFKkH1jt4t
         IHCms0I97V8UJ7rTpZ6/aQZqCATsCNfj2v7BleNPlmUB7ti8Cm1BtxWAdZw9F3zx/fly
         uOQXa/bFlxL8xbIIAFAN38+oYt+iGNabLViAVQeY4A33W/wJb4xyy+7/Rg4I9uwxO28n
         Gqo7QU74AvsH47zY8RieI2QH45Ib7x8QYxFqayJxgoI+VZDpKaAhh7zSNO4mStg1Oo70
         EhE0bUgBRWf9pVTBw554PIOgO0WBapq3+rI/GOh9CQgsPFWPd+9NJIiIcSqTfB+8zupf
         BV6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of boris.brezillon@bootlin.com designates 62.4.15.54 as permitted sender) smtp.mailfrom=boris.brezillon@bootlin.com
Return-Path: <boris.brezillon@bootlin.com>
Received: from mail.free-electrons.com (mail.free-electrons.com. [62.4.15.54])
        by gmr-mx.google.com with ESMTP id t15si217929wmh.1.2018.02.16.10.16.10
        for <outreachy-kernel@googlegroups.com>;
        Fri, 16 Feb 2018 10:16:10 -0800 (PST)
Received-SPF: pass (google.com: domain of boris.brezillon@bootlin.com designates 62.4.15.54 as permitted sender) client-ip=62.4.15.54;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of boris.brezillon@bootlin.com designates 62.4.15.54 as permitted sender) smtp.mailfrom=boris.brezillon@bootlin.com
Received: by mail.free-electrons.com (Postfix, from userid 110)
	id 986AC2080B; Fri, 16 Feb 2018 19:16:09 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	mail.free-electrons.com
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED,SHORTCIRCUIT,
	URIBL_BLOCKED shortcircuit=ham autolearn=disabled version=3.4.0
Received: from bbrezillon (unknown [91.160.177.164])
	by mail.free-electrons.com (Postfix) with ESMTPSA id 435E8207FF;
	Fri, 16 Feb 2018 19:15:59 +0100 (CET)
Date: Fri, 16 Feb 2018 19:15:59 +0100
From: Boris Brezillon <boris.brezillon@bootlin.com>
To: Richard Weinberger <richard@nod.at>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Shreeya Patel
 <shreeya.patel23498@gmail.com>, Boris Brezillon
 <boris.brezillon@free-electrons.com>, David Woodhouse
 <dwmw2@infradead.org>, Brian Norris <computersforpeace@gmail.com>, Marek
 Vasut <marek.vasut@gmail.com>, Cyrille Pitchen
 <cyrille.pitchen@wedev4u.fr>, outreachy-kernel
 <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH NAND 0/5] Replace printk statements with pr_*macros
Message-ID: <20180216191559.3d979b20@bbrezillon>
In-Reply-To: <6607259.WBtX1k9nZE@blindfold>
References: <cover.1518797480.git.shreeya.patel23498@gmail.com>
	<1963507.Bpu1nn9g4S@blindfold>
	<CAAEAJfD6CbWOfrYOY4QDW0tte-yOebcZTGjUDQhR8uE+fsOs3w@mail.gmail.com>
	<6607259.WBtX1k9nZE@blindfold>
X-Mailer: Claws Mail 3.15.0-dirty (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Fri, 16 Feb 2018 18:58:35 +0100
Richard Weinberger <richard@nod.at> wrote:

> Ezequiel,
> 
> Am Freitag, 16. Februar 2018, 18:24:46 CET schrieb Ezequiel Garcia:
> > Hey Richard,
> > 
> > On 16 February 2018 at 14:19, Richard Weinberger <richard@nod.at> wrote:  
> > > Am Freitag, 16. Februar 2018, 17:50:09 CET schrieb Shreeya Patel:  
> > >> This patchset removes all the log levels i.e. KERN_WARN,
> > >> KERN_NOTICE, KERN_ERR, KERN_INFO, KERN_DEBUG used in the printk
> > >> statements and replaces the printk statements with appropriate
> > >> pr_*macros.
> > >> According to the kernel coding style, pr_*macro is the preferred
> > >> way to print the message.  
> > > 
> > > Beside of that, how does it improve the code?
> > > Don't get me wrong, pr_* is the way to go for new code, but I don't think
> > > it is worth "fixing" in existing code and make working with git blame
> > > more painful.  
> > 
> > Shreeya's intention is to work on [1], migrating drivers to exec_op.
> > As a first task, before being accepted, she is required to submit
> > cleanup patches (or small tasks).  
> 
> Working on exec_op would be great! This is highly appreciated.

Indeed.

>  
> > Since I couldn't come up with small tasks for MTD, I suggested
> > starting with printk cleaning. So this was my idea.
> > 
> > Printk to pr_{} or dev_{} is not only aesthetical, it's also a consolidation
> > change. Centralizing prints allows for other improvements.
> > 
> > See for instance Wolfram's work [2, 3].
> > 
> > In any case, does it hurt git-blame so much? It only affects
> > the lines where the print is performed.  
> 
> ...and it pollutes patch context. So, from now on back/forward porting patches
> will cause much more rejects and need manual interaction.
> In UBI we did a similar change a few years ago.

Oh, I didn't thought about this side-effect. Still, we're talking about
really old drivers that are most of the time not maintained or poorly
maintained.

> 
> So, I'm not rejecting this patches but:
> 
> Told-you-so: Richard Weinberger <richard@nod.at>
> 

If I can get interesting contributions (like conversion of one or
several drivers to ->exec_op()) I'm okay to pay the price and manually
backport the potential fixes that do not apply cleanly because of
these cosmetic changes ;-).

-- 
Boris Brezillon, Bootlin (formerly Free Electrons)
Embedded Linux and Kernel engineering
http://bootlin.com

