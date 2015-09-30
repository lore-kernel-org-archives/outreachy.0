X-GM-THRID: 6200357690588266496
X-Received: by 10.152.22.101 with SMTP id c5mr893965laf.0.1443649229708;
        Wed, 30 Sep 2015 14:40:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.143.209 with SMTP id r200ls78530lfd.6.gmail; Wed, 30 Sep
 2015 14:40:29 -0700 (PDT)
X-Received: by 10.112.190.65 with SMTP id go1mr908461lbc.9.1443649229068;
        Wed, 30 Sep 2015 14:40:29 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.24])
        by gmr-mx.google.com with ESMTPS id ch7si77716wib.2.2015.09.30.14.40.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Sep 2015 14:40:28 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.24;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue104) with ESMTPSA (Nemesis) id 0MasKg-1ZxI4E2gZu-00KQGD; Wed, 30 Sep
 2015 23:40:28 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: y2038@lists.linaro.org
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>, outreachy-kernel@googlegroups.com
Subject: Re: [Y2038] [PATCH v2] Staging: olpc_dcon: Replace timespec with ktime_t
Date: Wed, 30 Sep 2015 23:40:27 +0200
Message-ID: <7115394.y6qqlMKRWG@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <1443633261-16355-1-git-send-email-ksenija.stanojevic@gmail.com>
References: <1443633261-16355-1-git-send-email-ksenija.stanojevic@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:lnXJMoPWc7TKhpKqW1OKICYDn4lFRbCTemghEQ+tXW9szp8UyF3
 HmlnFwxKL2A+0ix0Ls61BHF0oYzrimUHrn9rIzd1zXsLa9ctY+4bi8OUCQ6Ex6APQhRjNEr
 cCsNbIT+U3OpWW4Q97tTsGDA559lXxU99EwPWH4N/CZqRUSiPl58i4w7JSUKBEcgMUcF2fM
 swFT1OwOQVan4JSV2oSjg==
X-UI-Out-Filterresults: notjunk:1;V01:K0:5VbY2lEbFL0=:lrw0bIOuDx4w1EqijCIec7
 yrtyEgNG87xR+2xJbhLCPlroj4UAAQMeS4/0ZMb318l/5bYczd2oQY9ihH0r42YZaPShf6Uly
 0Hfy56Y5Kk6jKJGyXIJ5mE0AUmlAYyyydqsyo4nDtL9nFPQePRjDw0RzeHcXJRmNr1Xa/LqdK
 4IvP8AY3vNssuqXExw9i3hOxVyR+4CF8IVtHGKbeKAb/GFpFzuPYob/984aYrbl6f4fCax/8q
 0wu/pIiA3iwDjfIpEuzYcXBl7atjuUTJb+NVG1cl1xnjk6wH30j5+qtxMX9mdl986roV8uS44
 UyzAKKCSpcOwpmwJfrMTTL3cH0XsCxHahodZpoqCYjSr5R7jHppjH/gFQe8NGI2GR0tj/ju6k
 8CWxsNDetn5oyTVx21RCfR8jX1UnQ3bfh0+ZgvHf4ERoRH7/o8338TszVL9w8Ejekk8qSt82m
 WvMdpnwtu/GYB/CfDm3ggUy42XWpv6+RIjWUiRRfntjxH8Sk98xHs1c94XHL09I/CAsNSk0k6
 AiVcF0bfNfekHvso0r61LdOlgXbgq3ntoZ7w4HDRR5zPPSqI/OZv4Ck2UvbsPyBbbQkjy67+i
 T1uCKHlkiKyJNyFOUNb/lEzTUhrUVzh2dLd7rFXs4Z5AzKGGlI803wjQQDXlWnlnHewR5dqWS
 4HlUa3gb3YhAm6roMQuIoHRMeNYbOLJnnqTggpqpBO1mfZr6j+iGKCuzY9TlR6Lw/X4PC9j8o
 9NXsqZo45DOfX9/s

On Wednesday 30 September 2015 19:14:21 Ksenija Stanojevic wrote:
> Struct timespec will overflow in year 2038, here it will not cause an
> overflow because it is used with timespec_sub, but still has to be
> removed as part of y2038 changes. Replace it with ktime_t. Also use
> monotonic instead of real-time by replacing functions getnstimeofday
> with ktime_sub.
>
> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>

The last sentence seems wrong, incorrect, I assume you mean ktime_get()
not ktime_sub(). Aside from that, everything looks fine, so please
fix the changelog and add my

Reviewed-by: Arnd Bergmann <arnd@arndb.de>

