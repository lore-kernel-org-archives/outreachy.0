X-GM-THRID: 6525365385486663680
X-Received: by 10.28.170.200 with SMTP id t191mr633045wme.10.1521407662545;
        Sun, 18 Mar 2018 14:14:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.229.3 with SMTP id c3ls1246994wmh.9.gmail; Sun, 18 Mar 2018
 14:14:21 -0700 (PDT)
X-Google-Smtp-Source: AG47ELuCAfHijq7FCi/gadjqMHuB5dj8h9467PIlyErHtOUKwBFkjCODSCvPHneBmMvLf5Ux9wfM
X-Received: by 10.28.116.17 with SMTP id p17mr1083804wmc.29.1521407661052;
        Sun, 18 Mar 2018 14:14:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521407661; cv=none;
        d=google.com; s=arc-20160816;
        b=DovOAsoajsEU8BhRdJSEl8CPS4sDikVeA7ADTi4pyjAri4HJpCfEdUQmWnuGbWfWpR
         ixw3ZO/BGqsX5YCnGpZvBI7LjmmJNtAP7W3Ztkp9l8M6PFtlNz66tcW+ltSU72YVjyCq
         m2MHiO7QJI5oFEXP30cURiZ55SIXw33Gt9lJwpCqSRO3xwYDIWhAruPPgsSa4uf3FQbn
         gXkjdczzSQuU5o+EZv0uVpJ23wWIxX8xEUlkJGMUSiBJ2HtIkVmHW8TrAmSfuD638yjy
         MWTpcVVc9LbFbKMpuGHVORJcJr1e4sB1popG9F1ZU3GKC6rDr2JYL9a1oRyRGgImzXu9
         7vRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=WpLFhoYijHIi1Q4dfm0JS+VIRnwsOiLsJ91LTFfzh2E=;
        b=bnd5hRf9H1bBV3371Ruhl5aKbvF4c5PHwCF23NLGriiezZNVym2F5HUyTapSSK/jzA
         oP8I4cdhmhr1H9J2ykSjKGUKfzOkMXUxEz4Ey1I8d7tSu+s3Mq4Mq/AfxKNTK5GxB9Cp
         KKBt2gYBQyccbZFRSqXqqXcuLjCZKZoq1+MaEfZrhMMDyUn3w731AwnGvXWLtceybKsp
         wXt7tP2cVmiAd/3+JvndzZIydgStj2Iyy0ayWvsYIgx6ycL6YZua7ILsBdT4QoaMKiGW
         OkmVuMVU7gENsuSUymd4qGh2YrWiJdLxN+oNwpnKUKZlHFzidqIiLK4zrMyYonAYoCj9
         Uouw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of boris.brezillon@bootlin.com designates 62.4.15.54 as permitted sender) smtp.mailfrom=boris.brezillon@bootlin.com
Return-Path: <boris.brezillon@bootlin.com>
Received: from mail.bootlin.com (mail.bootlin.com. [62.4.15.54])
        by gmr-mx.google.com with ESMTP id w16si82219wmw.1.2018.03.18.14.14.20
        for <outreachy-kernel@googlegroups.com>;
        Sun, 18 Mar 2018 14:14:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of boris.brezillon@bootlin.com designates 62.4.15.54 as permitted sender) client-ip=62.4.15.54;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of boris.brezillon@bootlin.com designates 62.4.15.54 as permitted sender) smtp.mailfrom=boris.brezillon@bootlin.com
Received: by mail.bootlin.com (Postfix, from userid 110)
	id A708C2036E; Sun, 18 Mar 2018 22:14:19 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on mail.bootlin.com
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED,SHORTCIRCUIT
	shortcircuit=ham autolearn=disabled version=3.4.0
Received: from bbrezillon (91-160-177-164.subs.proxad.net [91.160.177.164])
	by mail.bootlin.com (Postfix) with ESMTPSA id 2665B20728;
	Sun, 18 Mar 2018 22:14:09 +0100 (CET)
Date: Sun, 18 Mar 2018 22:14:09 +0100
From: Boris Brezillon <boris.brezillon@bootlin.com>
To: Shreeya Patel <shreeya.patel23498@gmail.com>
Cc: boris.brezillon@free-electrons.com, richard@nod.at, dwmw2@infradead.org,
 computersforpeace@gmail.com, marek.vasut@gmail.com,
 cyrille.pitchen@wedev4u.fr, maximlevitsky@gmail.com,
 linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
 ezequiel@vanguardiasur.com.ar, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH NAND v5] mtd: nand: Replace printk() with appropriate
 pr_*() macro
Message-ID: <20180318221409.65945850@bbrezillon>
In-Reply-To: <1519317082-4790-1-git-send-email-shreeya.patel23498@gmail.com>
References: <1519317082-4790-1-git-send-email-shreeya.patel23498@gmail.com>
X-Mailer: Claws Mail 3.15.0-dirty (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Thu, 22 Feb 2018 22:01:22 +0530
Shreeya Patel <shreeya.patel23498@gmail.com> wrote:

> Using pr_<loglevel>() is more concise than
> printk(KERN_<LOGLEVEL>).
> Replace printks having a log level with the appropriate
> pr_*() macros.
> Define pr_fmt() and remove other additional macros from
> the replaced printks.

Applied.

Thanks,

Boris

-- 
Boris Brezillon, Bootlin (formerly Free Electrons)
Embedded Linux and Kernel engineering
https://bootlin.com

