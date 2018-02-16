X-GM-THRID: 6523195637320646656
X-Received: by 10.200.11.73 with SMTP id m9mr4715062qti.7.1518801857343;
        Fri, 16 Feb 2018 09:24:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.200.19.197 with SMTP id i5ls1615850qtj.12.gmail; Fri, 16 Feb
 2018 09:24:16 -0800 (PST)
X-Received: by 10.200.28.82 with SMTP id j18mr4957562qtk.49.1518801856463;
        Fri, 16 Feb 2018 09:24:16 -0800 (PST)
Received: by 10.55.77.69 with SMTP id a66msqkb;
        Fri, 16 Feb 2018 09:18:24 -0800 (PST)
X-Google-Smtp-Source: AH8x224x1vpdJA1oRrostUhsubS5YC60K7OU+N20mhANkZB0H4GoTLemgnC/rrpJeaO6I2Dkoi11
X-Received: by 10.25.141.211 with SMTP id p202mr447352lfd.23.1518801504108;
        Fri, 16 Feb 2018 09:18:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518801504; cv=none;
        d=google.com; s=arc-20160816;
        b=O4qzNvLcZfxCt15O9n8GaaprexQ2rZS0J/l5LgFiN9pXYIUfPrcOM2hYcFnaps9NUM
         zq1uxa0wn6WLJPVLtnZmty/o7u7mJoItvdp4BBZTF5T77vpz3Spr3XkpXYiXUE93tMvv
         PrkYX073DxzSOicKmzkQgJlt1gUFvF963Hoa3Fr5arM+iYXvg2hWZvajD+SNATfQnhED
         XD9q9RRuO3/7w83f42i14Ys7ohJll9ZtVBe5PI6K+88IjjXlROF5l+bauujI1lhTd67D
         DRCCjaNJeS8lWa1rxC/Fj1VlZ5trLAVfjHRwZIDgqhNgmKce8w7qnOSdP/1qFbeuYlWm
         WVzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:arc-authentication-results;
        bh=nDrbqZy8sHQKYyl50iP7s0iOTtMJE4HOpgLr0rdLXms=;
        b=Gw+8A2+YQ65EpIQ90Y/Mp/dGttT6odCwdYOBAZeixPKq6JdB2QwQoNqx79NKJXg9dn
         Lez9syq4ALs6haLcPEVu5Air5OPU3624qCuIA89YFr8kvKfnucxUPaBReQT2/h6rVGDM
         as1Hb30jq3Hj613Wrpq4CSrMZpNYLY/uVgQDzG8FQ33gKNL9h1qz66Q7be2nEPQbF73V
         I0yGzIp+3Xf4mNGfqXu3hYA1hsVP+X+H5I59Pfj6hzsdTQtvZ3mM4GXQxtEpKRau1c8L
         KiMbm61ZUS9L6H5uazW+PPb6+dLgtXkWQg+IeQB6Wlh1T3qjuQhPJRNeTShjWSyF5/1I
         fqRA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=softfail (google.com: domain of transitioning richard@nod.at does not designate 109.75.188.150 as permitted sender) smtp.mailfrom=richard@nod.at
Return-Path: <richard@nod.at>
Received: from lilium.sigma-star.at (lilium.sigma-star.at. [109.75.188.150])
        by gmr-mx.google.com with ESMTPS id u16si110134lfc.3.2018.02.16.09.18.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Feb 2018 09:18:23 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning richard@nod.at does not designate 109.75.188.150 as permitted sender) client-ip=109.75.188.150;
Authentication-Results: gmr-mx.google.com;
       spf=softfail (google.com: domain of transitioning richard@nod.at does not designate 109.75.188.150 as permitted sender) smtp.mailfrom=richard@nod.at
Received: from localhost (localhost [127.0.0.1])
	by lilium.sigma-star.at (Postfix) with ESMTP id 30E9A18181ABD;
	Fri, 16 Feb 2018 18:18:23 +0100 (CET)
From: Richard Weinberger <richard@nod.at>
To: Shreeya Patel <shreeya.patel23498@gmail.com>
Cc: boris.brezillon@free-electrons.com, dwmw2@infradead.org, computersforpeace@gmail.com, marek.vasut@gmail.com, cyrille.pitchen@wedev4u.fr, outreachy-kernel@googlegroups.com, ezequiel@vanguardiasur.com.ar
Subject: Re: [PATCH NAND 0/5] Replace printk statements with pr_*macros
Date: Fri, 16 Feb 2018 18:19:40 +0100
Message-ID: <1963507.Bpu1nn9g4S@blindfold>
In-Reply-To: <cover.1518797480.git.shreeya.patel23498@gmail.com>
References: <cover.1518797480.git.shreeya.patel23498@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Am Freitag, 16. Februar 2018, 17:50:09 CET schrieb Shreeya Patel:
> This patchset removes all the log levels i.e. KERN_WARN,
> KERN_NOTICE, KERN_ERR, KERN_INFO, KERN_DEBUG used in the printk
> statements and replaces the printk statements with appropriate
> pr_*macros.
> According to the kernel coding style, pr_*macro is the preferred
> way to print the message.

Beside of that, how does it improve the code?
Don't get me wrong, pr_* is the way to go for new code, but I don't think it 
is worth "fixing" in existing code and make working with git blame more 
painful.

Thanks,
//richard

