X-GM-THRID: 6525365385486663680
X-Received: by 10.25.19.24 with SMTP id j24mr519511lfi.12.1519314285205;
        Thu, 22 Feb 2018 07:44:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.72.82 with SMTP id v79ls476682lfa.11.gmail; Thu, 22 Feb
 2018 07:44:43 -0800 (PST)
X-Google-Smtp-Source: AG47ELtVW7aQvXgmiR+0j5iunSSXZS+hOPEU8vzyDdghuVbN0pSWI3PAWqR34TlAfLYoKkWTfSwb
X-Received: by 10.25.43.133 with SMTP id r127mr163067lfr.22.1519314283718;
        Thu, 22 Feb 2018 07:44:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519314283; cv=none;
        d=google.com; s=arc-20160816;
        b=wrryt5a+DYU/obTMsTYAs/qwWIZ9A5L8ocbzIcI5tUVgLbQbLpD8IM5TFcwh8tX+tW
         NOSoKqF6xhr8+82ENNCEDxRmO7dUfsx9n3iakpmor7qCbMbpLzQ3G8DPaJjHQg+q4Shq
         rINnux03zDtR+ACVbThojACgHqJ8PnkdC8Y03xd6jE7QCQ5GF3LYUw+ZLMVFS6PjXAbp
         hEPJgNxBETUz9XfpCk7b2MSJWGs3K4BC3OnhDC94MVV94i2NJNWxIF+cmvuE/JJc9VSq
         gxvMZ/FaAdZslPx60nyWs29A/TWY6Hn4skLy5o1v5TLQlcAv04ZQNIJWuKDQ9aGSh/dR
         NuNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=e6IeqGWPKTXZjEkjB4GrMjtFmEpa6TUVCevwAXm8iTI=;
        b=qKuJqn4ZzM28teDkebGQE+hXSo4luM40D4UfJOoY2U73MTIuVrko3rqX2yeda/8FlT
         EgorPymdcu219mkLpHT1YQJxMi8HsUOYUVziEOT/QyV5Tf4gE9zqPDY9TPgksie5IIF8
         jXdR/skRGhBzSz9X3WTfC37ZTVeVVE9JEwZamRx1T8oIkpB9+QbNyojfWSesHMgauORf
         nJPUdDg/+z9As75o2P2tBzek56S5k11cPV/enTLEHNPfjFNI56DfzfKMoDhKFUpY9Bz2
         gJbkmaMvTD62++Ih5Rkx05mgG9Z/0rA27CZnYpEWewm9uLBK0I8aryTDlD9kBuanyVI0
         A9Fg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of boris.brezillon@bootlin.com designates 62.4.15.54 as permitted sender) smtp.mailfrom=boris.brezillon@bootlin.com
Return-Path: <boris.brezillon@bootlin.com>
Received: from mail.free-electrons.com (mail.free-electrons.com. [62.4.15.54])
        by gmr-mx.google.com with ESMTP id h24si27555ljc.0.2018.02.22.07.44.43
        for <outreachy-kernel@googlegroups.com>;
        Thu, 22 Feb 2018 07:44:43 -0800 (PST)
Received-SPF: pass (google.com: domain of boris.brezillon@bootlin.com designates 62.4.15.54 as permitted sender) client-ip=62.4.15.54;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of boris.brezillon@bootlin.com designates 62.4.15.54 as permitted sender) smtp.mailfrom=boris.brezillon@bootlin.com
Received: by mail.free-electrons.com (Postfix, from userid 110)
	id 6B404206E0; Thu, 22 Feb 2018 16:44:42 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	mail.free-electrons.com
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED,SHORTCIRCUIT
	shortcircuit=ham autolearn=disabled version=3.4.0
Received: from bbrezillon (LStLambert-657-1-97-87.w90-63.abo.wanadoo.fr [90.63.216.87])
	by mail.free-electrons.com (Postfix) with ESMTPSA id 09DF6203B0;
	Thu, 22 Feb 2018 16:44:32 +0100 (CET)
Date: Thu, 22 Feb 2018 16:44:32 +0100
From: Boris Brezillon <boris.brezillon@bootlin.com>
To: Shreeya Patel <shreeya.patel23498@gmail.com>
Cc: boris.brezillon@free-electrons.com, richard@nod.at, dwmw2@infradead.org,
 computersforpeace@gmail.com, marek.vasut@gmail.com,
 cyrille.pitchen@wedev4u.fr, maximlevitsky@gmail.com,
 linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
 ezequiel@vanguardiasur.com.ar, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH NAND v4] mtd: nand: Replace printk() with appropriate
 pr_*() macro
Message-ID: <20180222164432.0f2b1e56@bbrezillon>
In-Reply-To: <1519313367-3360-1-git-send-email-shreeya.patel23498@gmail.com>
References: <1519313367-3360-1-git-send-email-shreeya.patel23498@gmail.com>
X-Mailer: Claws Mail 3.15.0-dirty (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Thu, 22 Feb 2018 20:59:27 +0530
Shreeya Patel <shreeya.patel23498@gmail.com> wrote:

> The log levels embedded with the name are more concise than
> printk.

If you don't mind, I'll replace the above sentence by:

"
Using pr_<loglevel>() is more concise than printk(KERN_<LOGLEVEL>).
"

The patch looks good otherwise, so I should apply it soon.

If you're okay, and Julia and Ezequiel are okay too, I'd like to move
to the next step and have you work on an ->exec_op() conversion
(jz4780?).

Of course, that does not prevent you from continuing the
printk()/dev_xx() conversion.


-- 
Boris Brezillon, Bootlin (formerly Free Electrons)
Embedded Linux and Kernel engineering
https://bootlin.com

