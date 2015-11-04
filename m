X-GM-THRID: 6210573207264559104
X-Received: by 10.112.134.129 with SMTP id pk1mr854350lbb.24.1446676134145;
        Wed, 04 Nov 2015 14:28:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.170.130 with SMTP id t124ls243569lfe.7.gmail; Wed, 04 Nov
 2015 14:28:53 -0800 (PST)
X-Received: by 10.112.209.73 with SMTP id mk9mr856361lbc.14.1446676133604;
        Wed, 04 Nov 2015 14:28:53 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.187])
        by gmr-mx.google.com with ESMTPS id t72si930154wme.0.2015.11.04.14.28.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Nov 2015 14:28:53 -0800 (PST)
Received-SPF: neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.187;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue002) with ESMTPSA (Nemesis) id 0Mep7w-1a5CO43JPM-00OIe5; Wed, 04 Nov
 2015 23:28:52 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: y2038@lists.linaro.org
Cc: Amitoj Kaur Chawla <amitoj1606@gmail.com>, outreachy-kernel@googlegroups.com
Subject: Re: [Y2038] [PATCH] staging: gdm72xx: gdm_stdio: Replace timeval with ktime_t
Date: Wed, 04 Nov 2015 23:28:52 +0100
Message-ID: <4688460.3Iu6Snb5je@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <20151028055552.GA14174@amitoj-Inspiron-3542>
References: <20151028055552.GA14174@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:sQcT5k7jZ/XpQicfISUsp8ukdS5UDaD/Zusf5KmeBM0SbHxg2Zh
 y0lPVa0p2Bm6Ol5yidQSL6ikEnJpnpm08vNLubI6TjjetUsIffMv6R5qBOnuaDi4kRCSk14
 zOIibD/NbyKyJHdy8N06nktL1D4XduC7+B51Hc6q7uvezHcFUjJaVgYA2fV+MgHjnDDNAZl
 jj8m7C6+Ss4xaE42zzmZA==
X-UI-Out-Filterresults: notjunk:1;V01:K0:ebuNWOiBjPA=:I3FkjVsGcCgPf1IsMa8ew/
 00iuAm0TGGEfCev4dBIUgb2OwKThJMC9v2JROtxQRjYkgH/L3lGwRm4M0aQsuzrdu4FbB2E6m
 v1TXHzwJFso+VXwo1UkGH/4M5Sr5pdFKstM5B/WkJvhWpdg9fsxvHP1d7Pc6QIABEV0GIWf1d
 uPOTQwOGbSsnBLOVNFW657arNCxNr9DGq4XvCuoq+7+cJKYkmH1KaL6y01I/jOhAUXlpMUI5j
 z79dq6f3OFwkRUYlkO5xk0tX+WLkvUMkhPSbovPrIJRjuDdDN9ButyqzOXVGJc6uoKh/mAIrq
 5ZtbfcNjGsAQIcZMft0tuEQlugs1T9GWwkiC6Xsh65uysVpymmtkNuw0cGphdXUtnBVZxO+gq
 HTB2eQUf1K1VJ2GWWnKY1VzTkD/0LNcaWmXOJ67BQsEcyesLYlBdlVjJa613Jcdg6C483m3t4
 CZxvxVnUDbYAntffIb15iKmBkSDNBJBQTZhe7HHQlGEPmbAWOFdusCIFQ/jejgP+ba4bgo+gY
 x9TYP3gMPAq3licPghS2XWUsGRtF+0wQ/JVXNaI/jZdQYpow0IloEM2TXuHfY5pHitk3IPctL
 NosC3KCgyl0HXsfTO9rETwFxY7oOCcz2MQVPljXs859z08mNU0+sAS9CtGGwPvhpAYCZWXR6+
 +DxBOAfgtb4mzjKIiXcifxiUmNacn7oXQGFdkNP9WAR8ZH5hm9iKAxhzBw+ltixaLMF7FTJnW
 Qwhu3VvRmByc99/Z

On Wednesday 28 October 2015 11:25:52 Amitoj Kaur Chawla wrote:
> This driver uses 'struct timeval' which we are trying to remove since
> 32 bit time types will break in the year 2038 by replacing it with
> ktime_t.
> 
> This patch changes do_gettimeofday() to ktime_get() because
> ktime_get() returns a ktime_t while do_gettimeofday() returns struct
> timeval.
> 
> This patch also uses ktime_us_delta() to get the elapsed time.
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>

The patch looks great, except for one important detail:

>         } else if (!tx->stop_sdu_tx && !list_empty(&tx->sdu_list)) {
> -               do_gettimeofday(&now);
> +               now = ktime_get();
>                 before = &tx->sdu_stamp;
>  
> -               diff = (now.tv_sec - before->tv_sec) * 1000000 +
> -                       (now.tv_usec - before->tv_usec);
> +               diff = ktime_us_delta(now, before);
>                 if (diff >= 0 && diff < TX_INTERVAL) {
>                         schedule_work(&sdev->ws);
>                         spin_unlock_irqrestore(&tx->lock, flags);

This will not compile. Something must have gone wrong with your build
testing, otherwise you would have surely found the problem.

	Arnd

