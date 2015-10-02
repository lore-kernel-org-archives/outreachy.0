X-GM-THRID: 6201108859850850304
X-Received: by 10.112.54.197 with SMTP id l5mr2939781lbp.21.1443818197204;
        Fri, 02 Oct 2015 13:36:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.91.137 with SMTP id ce9ls92547wib.37.canary; Fri, 02 Oct
 2015 13:36:36 -0700 (PDT)
X-Received: by 10.180.210.212 with SMTP id mw20mr171342wic.3.1443818196817;
        Fri, 02 Oct 2015 13:36:36 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.187])
        by gmr-mx.google.com with ESMTPS id bn1si30342wib.0.2015.10.02.13.36.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2015 13:36:36 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.187;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue005) with ESMTPSA (Nemesis) id 0LhzVu-1aTnpG1nCE-00nCCw; Fri, 02 Oct
 2015 22:36:36 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Shraddha Barke <shraddha.6596@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 2/5] Staging: lustre: obdclass: cl_lock: Declare as static
Date: Fri, 02 Oct 2015 22:36:35 +0200
Message-ID: <4965740.aaLffJxEfT@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <1443808154-13944-3-git-send-email-shraddha.6596@gmail.com>
References: <1443808154-13944-1-git-send-email-shraddha.6596@gmail.com> <1443808154-13944-3-git-send-email-shraddha.6596@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:WO5uAt+VX6Mq0lv2mZa8sN11Sg29L2Yf9EfPZOYZTJRYL6eJ/Mo
 Lkzo0m60jYnJ5qbiByzO1eYZtHRGaCogI0u9ZiHpDQOBiTuX/pb0w7du1GF8h3XFU9z4d4C
 aSoFf2ZTXW6bjDXc7W7wO1ogD2ot4+eakOV4HXBkx/4mkkpqqTCHTAMtNMByBIegpRD8WQw
 jTCBhbIauhtdjwZyrXxWw==
X-UI-Out-Filterresults: notjunk:1;V01:K0:jF2b5GWqYeI=:K3FYlymSFlsUcbCO+PWgoh
 L8mSs7Onu80OMRl8aA40mX4phPqb+y69K4SjA7aNZkYje8x4KwoKImTL9uhSKYBwP+Ldz4tY+
 ozhW8EqCqioSOT/MsDHeoLI7IqOnJWi5YKcJBk/RWzcBYPNLnXgCfvn8+RjaO7dqB2P8YRrrt
 uXHjhSBztUfrvJM4silEskXQiM0TSeOymYFFm6SsgR+AQ1UdB4eR6pxUtvDKvJIppJuOZErAJ
 ci1JzAxa1uuYjLLFOXoCFQNmwDNYSQdHCG6x4lZyqE4ePlYn7L/+uQtz0goZ4hanQ73q/Adzb
 BzfIuVDNZNkcxO0jDbWvQGNepH08wRkcMHe981peJUguL8glYNph0j0uj8SLVXklhayMtY1Qw
 H2yFYfQ6Ea4rYpNiB2F4IVajZy7GNTIOOHYqEAxAsH1jXyVyyWGxvGVuPYywsGZkwiTbY03Eu
 sFsJOjUvu7eKLWUU3vzEC/pjXME9y6MvlLObpv36BrMpynqsyzjnOl9zwLYSLkAwnSJZTBdzh
 RvmGPmh2qZTgtqtFpogrsCRh9VAa7RcgVn0mt4jGiScWe8EVM13fVLeC44d5/tDt8NBNAn2tu
 AuVimQD+LbTF2wwEzhYvPz8tyQ8myFu39mv2Ku8U9BZJlLAnsUyU8WU8oOfNUjswy5XSWAJQY
 Xgo+UpvbKHAU3M/5bL6yY/yluzBP60vebAUVFN7tuke0+3DV0vGjkwG77d0htczkYcuhcvDV7
 uqHFdirv/dqvDtxH

On Friday 02 October 2015 23:19:11 Shraddha Barke wrote:
> Declare cl_lock_intransit and cl_lock_extransit as static since they
> are used only in this particular file.
> 
> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
> ---
>  drivers/staging/lustre/lustre/obdclass/cl_lock.c | 10 ++++------
>  1 file changed, 4 insertions(+), 6 deletions(-)
> 

I still see declarations for these functions in cl_object.h, you 
should remove them at the same time.

I would have expected to see a compile-time error as a result of
your patch, because you have an extern declaration and a static
definition for the same symbol.

Can you find out what happened?

	Arnd

