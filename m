X-GM-THRID: 6205668721559601152
X-Received: by 10.112.184.170 with SMTP id ev10mr4292899lbc.4.1445033699772;
        Fri, 16 Oct 2015 15:14:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.207.70 with SMTP id f67ls343837lfg.78.gmail; Fri, 16 Oct
 2015 15:14:59 -0700 (PDT)
X-Received: by 10.112.14.4 with SMTP id l4mr2224468lbc.20.1445033699096;
        Fri, 16 Oct 2015 15:14:59 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.24])
        by gmr-mx.google.com with ESMTPS id d7si132112wiy.2.2015.10.16.15.14.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Oct 2015 15:14:59 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.24;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue102) with ESMTPSA (Nemesis) id 0MSJ1n-1ZyOKX1uu3-00TWqD; Sat, 17 Oct
 2015 00:14:58 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: y2038@lists.linaro.org
Cc: Deepa Dinamani <deepa.kernel@gmail.com>, outreachy-kernel@googlegroups.com, Y2038@lists.linaro.org
Subject: Re: [Y2038] [PATCH] staging: ft1000: replace timeval with ktime_t
Date: Sat, 17 Oct 2015 00:14:57 +0200
Message-ID: <30046181.iodvR1OlJa@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <1444869780-26658-1-git-send-email-deepa.kernel@gmail.com>
References: <1444869780-26658-1-git-send-email-deepa.kernel@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:EhBFAjV9PhHx4rkkYn9n9mSNk/m+ifOv/KdmzhcMoLIDfgu9GAm
 5gpqsQu4nEGAZhAndaibzlCqgA7lYI+SzwZB4pCz6BxDrgQBukFfdpybUL6qyfk4PbUSiki
 yNzhEE+1oVIFtlbYybp6HWhVYFgHiOFmqURv3Eh8S+4cJWpzpbGPDxhAjHaxC8cQaBI6cIz
 0pJJrN1TM/o1nkCOPZpSQ==
X-UI-Out-Filterresults: notjunk:1;V01:K0:O9iLGuLQgZo=:NI6jmkzmKV95lTvlzq5lbd
 hEtycgsT+mLPpDjop19qExvAYmL6x6Ai/hS1DY7oXU14WGySnvE4EPhW5KY4ae7VDX9N/cwwc
 BdVlsRpb5hE/aXU0iNz9CSi+7tF8tHsFcLv621jbsxutFnkt+75nuC3Q1/lfseHsHi9H3bs6x
 kLUQFpBxwaoZKqQDUDl8X5aEkwIGXSKKB8L3UO0SMBcoMxcsDV2P/J68y2Subgc/EyopoV9fR
 Mu5iGU9gYORMZGg2R1uniBdJauzdbBBwBlrEle5EwLlldIT3TouEKSiwnMNMRVty9iw/xt5yy
 nS2e8o8Q0F6+242QsNj12O0o93XJrjsCt+Xdgn+YTMELZTyT5tkFsvox2YlK9jZq9d/uUmF4z
 JyoUfJnMNxJNgH1c7RhS/QuPRoRKu8o8SwquLCXJQ284b3v6cGDLKd2x5Zz7DzewdB2ln9tIc
 zxlGQfhR6Ycit+sO0+S421qLGR/hx2S7gB+mc9a8qUbgSnFBfMNHm+tl3X7Al+PtPUWNySBDY
 KBTgDe6B0E+oMDe7phCXheNaMQr0d6XYFSTQHL/L/ITH3fkAFPINzxhUlSiePYldZvE/cCJs9
 iOH1SqlLZdJEql3yimwVZLpP/VGO0Y9ZDUwMY0rvZjtRfooLy0V2QMG7hUvbVJ5P61SmDv0v9
 D73TeHZ2EZA44Tvwa0qptmXLEWDf2rQqsgFNe+NZ2y4QlkiyaB8U8aTrcsVdydxsWGXO35ZHL
 TQcnYSS9blFRCTvB

On Wednesday 14 October 2015 17:43:00 Deepa Dinamani wrote:
> Replace use of struct timeval with ktime_t to calculate connection
> duration. This avoids y2038 issues. Use ktime_get monotonic clock
> instead of gettimeofday realtime clock to guard against negative
> durations. Fix pr_debug to use matching %ul instead of converting
> value to int, so that debug does not provide misleading information.
> Fix connection time conversion to use interface type unsigned long
> instead of assuming it maps to u32.
> 
> Signed-off-by: Deepa Dinamani <deepa.kernel@gmail.com>

The change looks correct, and your changelog also looks reasonable.

However, I notice that the code only ever looks at the second
portion of the time stamp. Therefore it would be nicer to use
ktime_get_seconds() to avoid the expensive ktime_divns(), and to
slightly simplify the code further.

You can use either time64_t or a shorter type like 'u32' or 'long'
to store monotonic seconds, so pick one of them and explain why
you have that one.

	Arnd

