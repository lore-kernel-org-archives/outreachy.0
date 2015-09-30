X-GM-THRID: 6200341306580926464
X-Received: by 10.152.120.232 with SMTP id lf8mr895903lab.1.1443649964737;
        Wed, 30 Sep 2015 14:52:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.27.19 with SMTP id b19ls62121lfb.75.gmail; Wed, 30 Sep 2015
 14:52:43 -0700 (PDT)
X-Received: by 10.152.9.65 with SMTP id x1mr893932laa.7.1443649963960;
        Wed, 30 Sep 2015 14:52:43 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.187])
        by gmr-mx.google.com with ESMTPS id c1si83844wiv.3.2015.09.30.14.52.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Sep 2015 14:52:43 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.187;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue003) with ESMTPSA (Nemesis) id 0LwVKN-1aj0ho2I3D-018K4L; Wed, 30 Sep
 2015 23:52:43 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: y2038@lists.linaro.org
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>, outreachy-kernel@googlegroups.com
Subject: Re: [Y2038] [PATCH v2] Staging: fbtbt: Replace timespec with ktime_t
Date: Wed, 30 Sep 2015 23:52:42 +0200
Message-ID: <1593744.M7Nca36Ssj@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <1443629449-12352-1-git-send-email-ksenija.stanojevic@gmail.com>
References: <1443629449-12352-1-git-send-email-ksenija.stanojevic@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:Vn4ohq4fgHuaQfTLXPmdCSwejjs/1aZjfR6+SwrbIkgT6qJClVU
 tN0TlYuPn6kyneCgYcvEKou7s1SwqCFL+5al8fsKqzjCs5ZegFf8ntIOoaqiYOzHwiKh1pa
 zIqyF1c+vHqrwXea/eqdeB3D6vk+ozj/Dr34+zPKYtBQ39z/17bNj58G6O2PZjDc+xS2hu1
 12r3X14rXxbF+tdSn0T5w==
X-UI-Out-Filterresults: notjunk:1;V01:K0:arFj3/wt2g0=:rFL6dONNseLp10VIL/5uzp
 Q5p1SEx4OFik+KS7JRHruq1JDTtZqehVPG4BhDY4cKELNf4MGvSIqTx6BkJMU84YtqJmkhTj7
 fZ/OOUYgTI1hIpg6nx+5aNHo6Uco0hV9VN7K1mPb5V5VfzrXA7PkAE4Cg7XWnXuqPzmPIJX3C
 4nZGdqq/8pGIF16KghwBiImO/K89L2a1SUx1WY5DxhvGlOPyWYp86yZ9BZLW8Iml6kBfBVpM/
 ZRdCQf5ndVA+Im+CFFoK2UJ87O45A54BkXmvNMBCDd/LWEEAkGoX5osaCXbebLlpEkixqmICq
 LvAn8lSffS+jlvB/WQR5MDOWxc2IzPxX4iJlBFmr/Zun+nHQgq1WJi1bHcfOl0E6DRuNXAqbN
 dW6SVSCpETl/x75jNPpWnupYPWoXfadHuLHb8wuYt5wDQfSTjfc64mcgU2ZUfe7Bln0X/iSv2
 pHQa4gsqWPAJycdD3apnU4J72Ap8NUbU48q+hYySgtKAHxrGe27dawhA10R4T2MIxhfszrTs3
 sFgWeeTLi3r49XMc9eIvR+j+t7BIZiclz4yWW3Ehud1lg7VTxN1pFH3IqaOQobLC/CPNPI8hJ
 TlxRPDkOaX9ChGPqoyb/V/RM+sHnyKJiL3/ti30XEumyl6jVwen3qG5Zo/nq7zhNlrYzTX55w
 8utefEXGP2Sat0u5JDgnTbnHSrJYMTOZLGRRFpfo01UtEdzihLxghPQOLCuqMs0tb09n7ve46
 T3cAGz2Fat199z7R

On Wednesday 30 September 2015 18:10:49 Ksenija Stanojevic wrote:
> struct timespec will overflow in year 2038, so replace it with
> ktime_t. And replace functions that use struct timespec,
> timespec_sub with ktime_sub. Also use monotonic time instead of real
> time, by replacing getnstimeofday with ktime_get, to be more robust
> against leap seconds and settimeofday() calls.
> diff --git a/drivers/staging/fbtft/fbtft-core.c b/drivers/staging/fbtft/fbtft-core.c
> index 7f5fa3d..a1645e1 100644
> --- a/drivers/staging/fbtft/fbtft-core.c
> +++ b/drivers/staging/fbtft/fbtft-core.c
> @@ -365,16 +365,15 @@ static void fbtft_update_display(struct fbtft_par *par, unsigned start_line,
>  				 unsigned end_line)
>  {
>  	size_t offset, len;
> -	struct timespec ts_start, ts_end, ts_fps, ts_duration;
> -	long fps_ms, fps_us, duration_ms, duration_us;
> -	long fps, throughput;
> +	ktime_t ts_start, ts_end, ts_fps;
> +	long  long fps, throughput;

Here you declare fps and throughput as 'long long', which causes problems later:

> @@ -411,30 +410,22 @@ static void fbtft_update_display(struct fbtft_par *par, unsigned start_line,
>  			__func__);
>  
>  	if (unlikely(timeit)) {
> -		getnstimeofday(&ts_end);
> -		if (par->update_time.tv_nsec == 0 && par->update_time.tv_sec == 0) {
> -			par->update_time.tv_sec = ts_start.tv_sec;
> -			par->update_time.tv_nsec = ts_start.tv_nsec;
> -		}
> -		ts_fps = timespec_sub(ts_start, par->update_time);
> -		par->update_time.tv_sec = ts_start.tv_sec;
> -		par->update_time.tv_nsec = ts_start.tv_nsec;
> -		fps_ms = (ts_fps.tv_sec * 1000) + ((ts_fps.tv_nsec / 1000000) % 1000);
> -		fps_us = (ts_fps.tv_nsec / 1000) % 1000;
> -		fps = fps_ms * 1000 + fps_us;
> +		ts_end = ktime_get();
> +		if (par->update_time.tv64 == 0)
> +			par->update_time = ts_start;

It's better not to access the 'tv64' field of the ktime_t directly, this
is supposed to be hidden. Just use ktime_to_ns() to do the same thing.

> +		ts_fps = ktime_sub(ts_start, par->update_time);
> +		par->update_time = ts_start;
> +		fps = ktime_to_us(ts_fps);

This can be written slightly simpler using the ktime_us_delta() function,
like you do below.

>  		fps = fps ? 1000000 / fps : 0;
>  
> -		ts_duration = timespec_sub(ts_end, ts_start);
> -		duration_ms = (ts_duration.tv_sec * 1000) + ((ts_duration.tv_nsec / 1000000) % 1000);
> -		duration_us = (ts_duration.tv_nsec / 1000) % 1000;
> -		throughput = duration_ms * 1000 + duration_us;
> +		throughput = ktime_us_delta(ts_end, ts_start);
>  		throughput = throughput ? (len * 1000) / throughput : 0;
>  		throughput = throughput * 1000 / 1024;

As mentioned above, throughput is a 64-bit 'long long', so the last line
of the context will result in a 64-bit division, which is not allowed in
32-bit kernels.

This is a bit hard to detect, and the most reliable way to find issues
like this is to compile the kernel for both a 32-bit target and a 64-bit
target (on x86, just turn CONFIG_64BIT on/off) to see all the compile-time
errors and warnings.

	Arnd

