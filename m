X-GM-THRID: 6210788690269044736
X-Received: by 10.194.176.2 with SMTP id ce2mr583701wjc.0.1446676465532;
        Wed, 04 Nov 2015 14:34:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.144.6 with SMTP id s6ls1208759wmd.46.canary; Wed, 04 Nov
 2015 14:34:25 -0800 (PST)
X-Received: by 10.28.170.75 with SMTP id t72mr1130633wme.5.1446676464999;
        Wed, 04 Nov 2015 14:34:24 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.13])
        by gmr-mx.google.com with ESMTPS id l1si194550wmb.3.2015.11.04.14.34.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Nov 2015 14:34:24 -0800 (PST)
Received-SPF: neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.13;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue102) with ESMTPSA (Nemesis) id 0M250t-1aiMbj0JZ5-00u2Wo; Wed, 04 Nov
 2015 23:34:24 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Amitoj Kaur Chawla <amitoj1606@gmail.com>, y2038@lists.linaro.org
Subject: Re: [Outreachy kernel] [PATCH] net: hamradio: baycom_ser_fdx: Replace timeval with timespec64
Date: Wed, 04 Nov 2015 23:34:23 +0100
Message-ID: <3748491.SKrsKsymZ5@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <20151028195202.GA1200@amitoj-Inspiron-3542>
References: <20151028195202.GA1200@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:wAvc66WomAATiy+kHnn/wMNIrILuNaRjZXePVzMtb+Mv2kygbRO
 r0em/dugNhfX9CQk45ykqRt60dLyyUvqi6qPjpvnN4qYjDe+yCjtO7M365xk/s+8lq4w9fl
 1LdiATetmQmtQB25zip1Z+uKGYzRfsWmjYsbPrG60n0fcOI9k0X1SYcv4f/kbGUny/g4iRU
 SsU2gWEgKHWPdyntXfyHA==
X-UI-Out-Filterresults: notjunk:1;V01:K0:FYcXS4AnYNs=:oZ38hdNkzio3gUGYb8gvSo
 bxNaXuf6HSyQERf/v1BpFhWY9PLqS5jL3y+LUlk0Qz6/zxVOCnbYAHEuVKy9mL/siy3He0E/o
 1MDRWkzbdh/cDDetXyamld6tk8VYOH7UV/tjBT0nWhVFYHsGxZb3jyd2FfkKJ2cApPGC8b7Pr
 gRiEn3lX9VO4pKN5GFP1qb+TYSP/XtgC/WBgitT3MZIesTIFAQP5tvex9Zhl+A+Q7yfVal1ct
 4VTbYXk+nP60m/tI1Fr/lSMJEqhRvtu+/kJU/LJvCMP+JGjf7qIdq5gm9S8oLYZ9SFDKlabQn
 0tTk1WyFCzBr28r9c4TZlgww6r/WowWR4FvOFQkn8kxh8PTSVzPI0MM4MlnRjfORyJWzQ+Kl5
 GKH9qqpvkm0oxOAt6m39oR+G/avxdkMgYdPAVRp9P/Qr/BVds2utZcQf2Xe8r+ufUvOJCDf6m
 frpiYjVLSxZlLTs84yt0G85oL7uOvDJTwE0DFIOcvlGeyP8a7L0xcy0PXgVZUGoIxGdJg6rIE
 CV+jOjUlCfoBh5z1xQYAr5dvrAfPzJgZJmZtnnlTF89p/KFDfKuZpl57mNp+N/+Cl6fnEivN1
 0RmbaSjLUwfKbzE7gTZjBa9gXXZ2amGPSsp7IeAauBgXLM/HK2rcS+EPvy+b0Meis2kTWScvb
 zk+yIcSMs9NQUgH2Y9BeHY5D9CkNeO1cCP20es/Wvkk6KYbqRFY0KK/Q/tumMn+67MDaB6wgI
 C9lPUW9PCk9pZQsa

On Thursday 29 October 2015 01:22:02 Amitoj Kaur Chawla wrote:
> 32 bit systems using 'struct timeval' will break in the year 2038, so
> we replace the code appropriately.
> 
> This patch replaces struct timeval with struct timespec64.
> 
> The patch also changes the code to use ktime_get_real_ts64() which returns a 'struct timespec64' instead of do_gettimeofday() which returns a 'struct timeval'
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>

The patch looks correct to me, but I'd suggest using monotonic time to
make the driver more robust against 'settimeofday' calls. It would
also be helpful to clarify in the description that the driver has
no y2038 problem as it only uses the microsecond portion of
timeval, not the seconds.

	Arnd

