X-GM-THRID: 6525365385486663680
X-Received: by 10.25.242.13 with SMTP id q13mr478656lfh.16.1519309733560;
        Thu, 22 Feb 2018 06:28:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.72.82 with SMTP id v79ls457129lfa.11.gmail; Thu, 22 Feb
 2018 06:28:51 -0800 (PST)
X-Google-Smtp-Source: AH8x2243zf9/eNJQFbqpZMP6faSwf4BB20ASSXFcIoYwTLoUTgimsbgSyPim6N/1eWtjHPctfSYu
X-Received: by 10.25.235.140 with SMTP id f12mr480248lfk.19.1519309731926;
        Thu, 22 Feb 2018 06:28:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519309731; cv=none;
        d=google.com; s=arc-20160816;
        b=DBbMCIFJpfMBpUuk43VbN8eoG6yQv8POA7T+dxtoRe3xyRvkLQ0ShDMEay0GwUKKQv
         FYqB01B469scS9pL58+824p29N+uT+t4c4fvKs4yVxNm0Udwzh3AnACzRDGBP6B0Ah9o
         qJhn8KbXznXW/Wven4FKjxXgNOmPGHHZZq9DMOfUoLQ2DNq5hzDyxmqzbfwMnFvwiOem
         PGTQmOuw7j9da9bvbI6eZmfAJqaxgXupyC6vG4NGhmsmQdBh+Ano/kgAlY2sOD6eYpzb
         UY26/OfKVD54AxlhO1yZleqAPPNl+hh2zP7XgujB4cUKFlTwfX8Vewvn5szB1lvnT4nK
         l/bQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:arc-authentication-results;
        bh=2AWHWEyfHETZACdElTNj0crLyXtwBXp2Dyiou2ec84c=;
        b=fBXXxQg3xrmmF4yx+1yzbTwy4eZF9GYzwKCDQ2fF17zd81cOjfGCcntTF9J9s8wxNW
         nSvWrptlTBf0fY43kPoLuvO1zW5XocaBji2kYP5S6X4wwC3N4fT2duACMm5IXAqeikXS
         Vyj6nRjqaub64+KlOKhk75P0kXIQ5RE1dymKuh8oMtnTLFmYdlNYCOMudJ6gMR+92vY7
         ueU970Koln64f65e5NMN+gqwWuuSGWjXgEzTuh25btaFIjnNUUZFeE9WLgxODB+dFAAj
         5tNanPI8p2EijPc3I96tZwlYoYYu0I1Rx3/rG62QvAjMiFQcZvn/+E8Z1Q720RoV4V+M
         jCuA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=softfail (google.com: domain of transitioning richard@nod.at does not designate 109.75.188.150 as permitted sender) smtp.mailfrom=richard@nod.at
Return-Path: <richard@nod.at>
Received: from lilium.sigma-star.at (lilium.sigma-star.at. [109.75.188.150])
        by gmr-mx.google.com with ESMTPS id z25si9886lfg.5.2018.02.22.06.28.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Feb 2018 06:28:51 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning richard@nod.at does not designate 109.75.188.150 as permitted sender) client-ip=109.75.188.150;
Authentication-Results: gmr-mx.google.com;
       spf=softfail (google.com: domain of transitioning richard@nod.at does not designate 109.75.188.150 as permitted sender) smtp.mailfrom=richard@nod.at
Received: from localhost (localhost [127.0.0.1])
	by lilium.sigma-star.at (Postfix) with ESMTP id 06A3F18199B60;
	Thu, 22 Feb 2018 15:28:51 +0100 (CET)
From: Richard Weinberger <richard@nod.at>
To: Shreeya Patel <shreeya.patel23498@gmail.com>
Cc: boris.brezillon@free-electrons.com, dwmw2@infradead.org, computersforpeace@gmail.com, marek.vasut@gmail.com, cyrille.pitchen@wedev4u.fr, maximlevitsky@gmail.com, linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org, ezequiel@vanguardiasur.com.ar, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH NAND v3] mtd: nand: Replace printk() with appropriate pr_*() macro
Date: Thu, 22 Feb 2018 15:30:09 +0100
Message-ID: <2093598.TLbMltDcSo@blindfold>
In-Reply-To: <1519305014-2547-1-git-send-email-shreeya.patel23498@gmail.com>
References: <1519305014-2547-1-git-send-email-shreeya.patel23498@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Am Donnerstag, 22. Februar 2018, 14:10:14 CET schrieb Shreeya Patel:
> @@ -438,7 +438,7 @@ static void __init doc2000_count_chips(struct mtd_info
> *mtd) break;
>  	}
>  	doc->chips_per_floor = i;
> -	printk(KERN_DEBUG "Detected %d chips per floor.\n", i);
> +	pr_debug("Detected %d chips per floor.\n", i);

<bike-shedding>

You are aware of the fact that printk(KERN_DEBUG and pr_debug() are not 
equivalent?
Not a big deal, just want to make sure that you understand what you are doing. 
:-)

</bike-shedding>

Thanks,
//richard

