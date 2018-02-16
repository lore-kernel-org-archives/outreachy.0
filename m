X-GM-THRID: 6523195637320646656
X-Received: by 10.200.38.140 with SMTP id 12mr4928620qto.36.1518803906443;
        Fri, 16 Feb 2018 09:58:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.237.56.67 with SMTP id j61ls1679117qte.13.gmail; Fri, 16 Feb
 2018 09:58:18 -0800 (PST)
X-Received: by 10.237.33.225 with SMTP id m30mr4829149qtc.61.1518803898602;
        Fri, 16 Feb 2018 09:58:18 -0800 (PST)
Received: by 10.55.79.151 with SMTP id d145msqkb;
        Fri, 16 Feb 2018 09:57:18 -0800 (PST)
X-Google-Smtp-Source: AH8x2244H98I043Vm8SeTlASIdAmH/Hy2ol4GYmNTzQuvjNQ54cmqsOz/EgHz7XyqbcstOJEGhjl
X-Received: by 10.28.218.16 with SMTP id r16mr1493900wmg.11.1518803837875;
        Fri, 16 Feb 2018 09:57:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518803837; cv=none;
        d=google.com; s=arc-20160816;
        b=mHcZ2ARSz03ZzsJ648hjBGMT/9cj4w+lGjXrSx5DAXGY7SItba0rUsjHbhET4/0rdI
         Vq1w1QrReEUKrGb6fof2NnEukOkQxlK4zXITHu36IToHE/kgLbIoNRihxvkVPViU9n7q
         v76cTBG+kjSzEM/Op2IjfNrQL5X7plyw57NzfjtrTWjUAMhlW9YHagMKqJoyW2X5GSHZ
         zpUyKeKcmnXZbuis5qby6PQHAbAmfXBILsX0y79/Zsr6fQ397fy8dSFQrxjli8XRRwHX
         ng4H53cvFVCrXWGs6d0QOAxdbV+7YYtvDHM3iuGZzbk5rVlZZyWMxDxef/AnVSYhLhd0
         sQcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:arc-authentication-results;
        bh=a3HqQKrV1FRKbJs+RwxgceM7deTbZ+lvgDqAIRzX6Hg=;
        b=u4f+tTsE2960OYlOubDv1b/D2DJElO/eAEaD5BVFI7D+b1DOrhUypVEmLoNnJHoJ9p
         P2LHK2JuNgyhQLt/G+kfvGuAJABVWBeUJhYy+CfkrqmPjyqac8dRAP8JkoCALrGn8pAV
         j1zHKan9IfO/+kV50WJVU3TwseSlUp7MJotqoSQ8RVO32KEvhzw//aBfAKyD0myF5Dcq
         eIow1Mn2TVurUYjK9Qz0BDYG2lIwPGveHCuKoslqjmahGs/Lrz3pvTaXhrRa/KyeXwuh
         6tL1M4QvOKvHZCuQ0IOeKwlnZtJKAj9dZlUq0HHd78Pp3HBZbzDc5/qfq4vMBYHMAmuU
         +obg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=softfail (google.com: domain of transitioning richard@nod.at does not designate 109.75.188.150 as permitted sender) smtp.mailfrom=richard@nod.at
Return-Path: <richard@nod.at>
Received: from lilium.sigma-star.at (lilium.sigma-star.at. [109.75.188.150])
        by gmr-mx.google.com with ESMTPS id a138si238446wmd.0.2018.02.16.09.57.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Feb 2018 09:57:17 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning richard@nod.at does not designate 109.75.188.150 as permitted sender) client-ip=109.75.188.150;
Authentication-Results: gmr-mx.google.com;
       spf=softfail (google.com: domain of transitioning richard@nod.at does not designate 109.75.188.150 as permitted sender) smtp.mailfrom=richard@nod.at
Received: from localhost (localhost [127.0.0.1])
	by lilium.sigma-star.at (Postfix) with ESMTP id 850081818142E;
	Fri, 16 Feb 2018 18:57:17 +0100 (CET)
From: Richard Weinberger <richard@nod.at>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc: Shreeya Patel <shreeya.patel23498@gmail.com>, Boris Brezillon <boris.brezillon@free-electrons.com>, David Woodhouse <dwmw2@infradead.org>, Brian Norris <computersforpeace@gmail.com>, Marek Vasut <marek.vasut@gmail.com>, Cyrille Pitchen <cyrille.pitchen@wedev4u.fr>, outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH NAND 0/5] Replace printk statements with pr_*macros
Date: Fri, 16 Feb 2018 18:58:35 +0100
Message-ID: <6607259.WBtX1k9nZE@blindfold>
In-Reply-To: <CAAEAJfD6CbWOfrYOY4QDW0tte-yOebcZTGjUDQhR8uE+fsOs3w@mail.gmail.com>
References: <cover.1518797480.git.shreeya.patel23498@gmail.com> <1963507.Bpu1nn9g4S@blindfold> <CAAEAJfD6CbWOfrYOY4QDW0tte-yOebcZTGjUDQhR8uE+fsOs3w@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Ezequiel,

Am Freitag, 16. Februar 2018, 18:24:46 CET schrieb Ezequiel Garcia:
> Hey Richard,
> 
> On 16 February 2018 at 14:19, Richard Weinberger <richard@nod.at> wrote:
> > Am Freitag, 16. Februar 2018, 17:50:09 CET schrieb Shreeya Patel:
> >> This patchset removes all the log levels i.e. KERN_WARN,
> >> KERN_NOTICE, KERN_ERR, KERN_INFO, KERN_DEBUG used in the printk
> >> statements and replaces the printk statements with appropriate
> >> pr_*macros.
> >> According to the kernel coding style, pr_*macro is the preferred
> >> way to print the message.
> > 
> > Beside of that, how does it improve the code?
> > Don't get me wrong, pr_* is the way to go for new code, but I don't think
> > it is worth "fixing" in existing code and make working with git blame
> > more painful.
> 
> Shreeya's intention is to work on [1], migrating drivers to exec_op.
> As a first task, before being accepted, she is required to submit
> cleanup patches (or small tasks).

Working on exec_op would be great! This is highly appreciated.
 
> Since I couldn't come up with small tasks for MTD, I suggested
> starting with printk cleaning. So this was my idea.
> 
> Printk to pr_{} or dev_{} is not only aesthetical, it's also a consolidation
> change. Centralizing prints allows for other improvements.
> 
> See for instance Wolfram's work [2, 3].
> 
> In any case, does it hurt git-blame so much? It only affects
> the lines where the print is performed.

...and it pollutes patch context. So, from now on back/forward porting patches
will cause much more rejects and need manual interaction.
In UBI we did a similar change a few years ago.

So, I'm not rejecting this patches but:

Told-you-so: Richard Weinberger <richard@nod.at>

Thanks,
//richard

