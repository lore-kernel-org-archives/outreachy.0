X-GM-THRID: 6330196266384883712
X-Received: by 10.194.119.196 with SMTP id kw4mr1480307wjb.1.1473942564658;
        Thu, 15 Sep 2016 05:29:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.74.78 with SMTP id x75ls284542wma.4.gmail; Thu, 15 Sep 2016
 05:29:24 -0700 (PDT)
X-Received: by 10.194.96.237 with SMTP id dv13mr1496773wjb.6.1473942563946;
        Thu, 15 Sep 2016 05:29:23 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [217.72.192.73])
        by gmr-mx.google.com with ESMTPS id e21si206316wmc.2.2016.09.15.05.29.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 05:29:23 -0700 (PDT)
Received-SPF: neutral (google.com: 217.72.192.73 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=217.72.192.73;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.73 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([78.43.20.153]) by mrelayeu.kundenserver.de
 (mreue104) with ESMTPSA (Nemesis) id 0LsywU-1azk3U3y4Q-012Wxy; Thu, 15 Sep
 2016 14:29:22 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Ronald Rojas <ronladred@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: ethernet: Fixes checkpatch blank lines warnings
Date: Thu, 15 Sep 2016 14:29:22 +0200
Message-ID: <15778561.A1ImvO0lIj@wuerfel>
User-Agent: KMail/5.1.3 (Linux/4.4.0-34-generic; KDE/5.18.0; x86_64; ; )
In-Reply-To: <20160915122426.GA2382@fedora>
References: <20160915122426.GA2382@fedora>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:0NIAKOtOfKHFQ2df6Qaw+tQ7pD2VCoBH3BunRH1rjvzxJT8Hi1J
 Lj60m/35o2zU9i/RNZfALH+A9+40wdrKkZvuLw1Bp9egN7FrvCDkxlFyKw5P6+wQYntSqmy
 GyidFb9fdBpLqcMlECMJ1K6mznhG2E21bwlZ0gi1UU4JhS0WKlKpyFVgTFuxXpG3FfT55gU
 B1mISEGodhNVY+RXKpK1A==
X-UI-Out-Filterresults: notjunk:1;V01:K0:+clHN097nHQ=:JVDxhpnSMBvp5/5dcMzkz0
 zKSLOz/A2eCYJ0UrOV0Ah4xNNJs1rVnN2gg03OUiq+VMqBNvSMgHNmdYnp5gF5Bf01AgWRPEb
 jgZinsdX3fct5CDQV8SnfQIBQGrUjqNYQHZN/TurHqj160fNBz1jlnWnUrNJRBuCKvGwJAmgQ
 SewJDFisHwt1QK9B6kzidk+Ag/i16fBTCX1+1G1md6BWSpBhUW7Y7Z+DIXa66+tGW62rMM7FV
 gakcqZof85KWDT7mTLuu/aQ4M3OsM+ByPajaMWp4NqB/EJc7lT813u8OiFzuvsaQdIJEDg6SZ
 l4ilUUB3ZqJkoQcEmVFXLcHpy25YL2lmQGhO5z2JPb9UGWrX8Nb0SoKjfbOb1xRR4kAvueU3z
 kgbtIonw6Z9Kbu+ulX4qS0NFUOqWXmVRuMdxplxd+sCaaEnCmWEsId5b3A55p1uflGnesivJP
 Lgr5vJl5uc6GfjrUIbaVr70wZ//uZLVipOCzOJ4vON0QD9/zHZMzHRkxWC6pmF2yJDztQ04n4
 NTTVMwpjmfb6hrnLlVGfcZyhzxTAn7tZamrhWgTH1EVNm/njC/3h7ZSRT7O8zQLA8BvoVg7J8
 Bj/VQ0dt+JDa7MwH/vICfDvT7u+mJHwx2tWABLD7y/z+bPXdjUsOG1hYcUaqaxWLqiuOu40+9
 FiNAliwrvZq76ToA/AXD3VE2NAiXXiJpuyBiRh/unteuh6FzPc9CAvWZzDOCVtW728X7/1XIK
 FvRLFYujeb9l4uMl

On Thursday, September 15, 2016 8:24:26 AM CEST Ronald Rojas wrote:
> Fixes several of the checkpatch.pl warning
> CHECK: Please don't use multiple blank lines
> 
> Signed-off-by: Ronald Rojas <ronladred@gmail.com>

In the subject line, please use "octeon" instead of "ethernet".

Did you build test this driver using a MIPS cross-compiler?
I realize that it's just a whitespace change and it clearly
won't break anything, but in general you should do some
build testing before sending it out, and properly building
this driver is a bit tricky.

	Arnd

