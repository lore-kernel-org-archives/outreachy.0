X-GM-THRID: 6524253044666793984
X-Received: by 10.46.17.17 with SMTP id f17mr883211lje.29.1519046944464;
        Mon, 19 Feb 2018 05:29:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.151.15 with SMTP id z15ls802374lfd.14.gmail; Mon, 19 Feb
 2018 05:29:02 -0800 (PST)
X-Google-Smtp-Source: AH8x225gpBZ60o5o4vjcUCFYSx1Ez6PW7vCswxfJxjxaaKRWrWzf+G4RPRUtSqXupREUi8Jsujp6
X-Received: by 10.25.43.6 with SMTP id r6mr1049732lfr.22.1519046942715;
        Mon, 19 Feb 2018 05:29:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519046942; cv=none;
        d=google.com; s=arc-20160816;
        b=C9Fp+h23+ScGPuKXSwtaKsscQVssXzqElCtHvRXpFcuVZL0667xHRBV45qmN/xxnwu
         5OINc3mVaqmHI9hXqJEouLTYjayEQIEoGOU36O7oNdGW+fQ+WBuEOpG0rh2oeHo5XFyO
         nw6N9t5+8VQzDDEH2XQRoMLF0TzPFroedR1Kigpq2xacbBzZ3Y92Urmk5EG3vZGycZ/j
         hd1DQU+sIBNJEaCve/8nqGwUnEPQU4lQxTSjgKGFdCTapa+G1/0pfpq/FcJQsUpamcE5
         n4YeAaTA6RmmjvS1NwRCSAkmasHDeK35cElygu1f2iwHIzXbZy35ts2VC9OiPYtYrEiO
         M0KQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:arc-authentication-results;
        bh=HcddmA3qJ0YwH7OUO0K6djiFISWO+C5jpIbVYF9UjmA=;
        b=ExIWdioe/qEpHfcQWOKiYkWwiphgvr8mPVo/utTqnNXOX8Tg2TXzu2odQsceIqPb8u
         vz2xCqoA0Nni0H+EEPD2qc70iIOw0TKloljMW8OV7oJPqzAyicPo+Us7vH+3epurZhFf
         6DpWggJeTSMFKijqUwufdLaKcNgakl0xjC3z5xcxu1GLfEREyeQ4jy9SO/nri45qPKJK
         RwGcVgUrUFRz5bTaR9L1Qo6Kmf26YaoHlLqdizqdkFrZNPxc68i50py8bxdcIQ0RvT+X
         tTfZT79jAs6zcutrkZAJrtqiWbrOlvZXumxPrbIYFOWKX8QCHs4+fBKz3GD5x3C+WdOF
         /rEg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=softfail (google.com: domain of transitioning richard@nod.at does not designate 109.75.188.150 as permitted sender) smtp.mailfrom=richard@nod.at
Return-Path: <richard@nod.at>
Received: from lilium.sigma-star.at (lilium.sigma-star.at. [109.75.188.150])
        by gmr-mx.google.com with ESMTPS id k82si633576lfe.1.2018.02.19.05.29.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Feb 2018 05:29:02 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning richard@nod.at does not designate 109.75.188.150 as permitted sender) client-ip=109.75.188.150;
Authentication-Results: gmr-mx.google.com;
       spf=softfail (google.com: domain of transitioning richard@nod.at does not designate 109.75.188.150 as permitted sender) smtp.mailfrom=richard@nod.at
Received: from localhost (localhost [127.0.0.1])
	by lilium.sigma-star.at (Postfix) with ESMTP id AF1E518199B66;
	Mon, 19 Feb 2018 14:29:01 +0100 (CET)
From: Richard Weinberger <richard@nod.at>
To: Shreeya Patel <shreeya.patel23498@gmail.com>
Cc: boris.brezillon@free-electrons.com, dwmw2@infradead.org, computersforpeace@gmail.com, marek.vasut@gmail.com, cyrille.pitchen@wedev4u.fr, maximlevitsky@gmail.com, linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org, ezequiel@vanguardiasur.com.ar, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH NAND v2] mtd: nand: Replace printk() with appropriate pr_*macro()
Date: Mon, 19 Feb 2018 14:30:11 +0100
Message-ID: <5296610.PbIriun04K@blindfold>
In-Reply-To: <1519046025-9412-1-git-send-email-shreeya.patel23498@gmail.com>
References: <1519046025-9412-1-git-send-email-shreeya.patel23498@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Shreeya,

Am Montag, 19. Februar 2018, 14:13:45 CET schrieb Shreeya Patel:
> The log levels embedded with the name are more concise than
> printk.
> Replace printks having a log level with the appropriate
> pr_*macro.
> 
> Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>

Multiple patches with the same subject are confusing. :)

Thanks,
//richard 

