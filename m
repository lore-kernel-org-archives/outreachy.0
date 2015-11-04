X-GM-THRID: 6211362438184435712
X-Received: by 10.112.123.17 with SMTP id lw17mr883239lbb.6.1446678387924;
        Wed, 04 Nov 2015 15:06:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.27.130 with SMTP id b124ls183751lfb.26.gmail; Wed, 04 Nov
 2015 15:06:27 -0800 (PST)
X-Received: by 10.112.162.169 with SMTP id yb9mr873329lbb.15.1446678387345;
        Wed, 04 Nov 2015 15:06:27 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.131])
        by gmr-mx.google.com with ESMTPS id t2si197409wme.1.2015.11.04.15.06.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Nov 2015 15:06:27 -0800 (PST)
Received-SPF: neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.131;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue004) with ESMTPSA (Nemesis) id 0Lvg2y-1aWa7i1dgy-017UKR; Thu, 05 Nov
 2015 00:06:26 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: y2038@lists.linaro.org
Cc: Amitoj Kaur Chawla <amitoj1606@gmail.com>, outreachy-kernel@googlegroups.com
Subject: Re: [Y2038] [PATCH] char: mmtimer: Replace timespec with timespec64
Date: Thu, 05 Nov 2015 00:06:17 +0100
Message-ID: <3846828.Zb56WxhgZB@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <20151030085827.GA21224@amitoj-Inspiron-3542>
References: <20151030085827.GA21224@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:edP4lP+PE4X6xQOiDmwCIo2V7yxSm67w8QyIeG3Y6pC/mJlE/na
 xod/eMQ91u+hwr5LBjYoC9/Q+GdYzvHIMwaxiUM+ehsW+DpuanLiPaST9LeK0o2hpaVKI1P
 4DMSNIo57M926jFjpmyp0sT2v7UpZQBhh+3HrLcsR+OmddVvbM8fqzBa1hwEcrVA7iPjV0w
 guDGemtKxjy6dvtera2fw==
X-UI-Out-Filterresults: notjunk:1;V01:K0:p50pT3YkhtQ=:6YGDgNxXGJx/3YX0Yc7iY9
 egs0MT2md5IDTPSekrfQUZIkMC3r/aSmFKjN9fije4BxiTM42yp35tWePhqjxUSLSG/ZG0AJr
 1PkbBSdRmC6eu0eOx4NMdnw5ZhfcCtsRid8YHdDrRKGyEAdzD2z6KEdloKYMmmxO5x/xeAt1C
 ZnEUN2f+31ARnsEzbWuzgMqnoxDrxpYrq/qu0XILg1I6QMD6nv5y1Oe7RCH25IwaBTbwE0xQ1
 +SEI89503oScu7dCriswoXSdvg+ie+kV/5PS7PFDDlKJ7zCNC6j/CqshK4MV9CqHMtUZRar6z
 GuYDNsKGE4uldA/3r5P5wRLsijs4TCY85pvvzj6aglON4Uca0QCyEXNhxlfKkdbAd3Veqzh1G
 dM3phM2mxQfoU3v8UuZIjxpLITx4SD3eLsj5zuqZU8Jasr0Jp1LEe+79O672jeBi6lMIf83QF
 kdAu/RpbyYbMo53S3+O3y7kKBiTpKMAQbQGfuVVf32h8+LqX3297tL7MTBO97joQVIgAfWmfQ
 8z2/kfJkI7TekRUYZ4qPvqkIaFdWS/aJVcuEloPcGI797SWSWEXd9dkGvoRbwYyYvoT1QWK0n
 cS+8Y6h7E5XT10c2LJpBL9kQjFQzagIg6sTumgZdedPxmTEl44bg2nglxacaDu2vyofjw8wgr
 CPOMyZh8YVA4a+WKWQjeyy9RQkB6pynrlzaRkT/cv1X5d+/4OArsWKdnR3arcYuKIcoiPtNv/
 clYk0ITLM5N92kO68xI7fgTkiVBT9rr9Dj6/XA==

On Friday 30 October 2015 14:28:28 Amitoj Kaur Chawla wrote:
> 32 bit systems using struct timespec will overflow in y2038, so as
> part of y2038 cleanup replace struct timespec with struct timespec64.
> 
> This patch replaces struct itimerspec with struct itimerspec64.
> 
> This patch also replaces getnstimeofday() and timespec_to_ns() with 
> ktime_get_real_ns() to return the current time in nanoseconds.
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
>  drivers/char/mmtimer.c | 34 +++++++++++++++-------------------
>  1 file changed, 15 insertions(+), 19 deletions(-)

My mistake, I miscategorized this driver as 'simple', it should not
have been part of the Outreachy suggested topics.

Baolin Wang has worked on converting struct k_clock in the past, but
his patches are not upstream yet, so you could not have guessed this
correctly what parts of this driver still need to be converted
after his patch.

Your patch by itself will not work, and will result in a broken
build (or at least warnings), which you should have caught in compile
testing.

	Arnd

