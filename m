X-GM-THRID: 6208472977162371072
X-Received: by 10.182.120.231 with SMTP id lf7mr12331126obb.50.1445523554992;
        Thu, 22 Oct 2015 07:19:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.26.134 with SMTP id a128ls847489ioa.108.gmail; Thu, 22 Oct
 2015 07:19:14 -0700 (PDT)
X-Received: by 10.107.9.196 with SMTP id 65mr13211153ioj.11.1445523554490;
        Thu, 22 Oct 2015 07:19:14 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.187])
        by gmr-mx.google.com with ESMTPS id j129si386294vkd.1.2015.10.22.07.19.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 07:19:14 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.187;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue004) with ESMTPSA (Nemesis) id 0Ly8sz-1acmvh3d5x-015ZFX; Thu, 22 Oct
 2015 16:19:08 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: y2038@lists.linaro.org
Cc: Shraddha Barke <shraddha.6596@gmail.com>, outreachy-kernel@googlegroups.com
Subject: Re: [Y2038] [PATCH] mtd: tests: Replace timeval with ktime_t
Date: Thu, 22 Oct 2015 16:19:08 +0200
Message-ID: <3945767.60xPqpFfYF@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <1445522749-14269-1-git-send-email-shraddha.6596@gmail.com>
References: <1445522749-14269-1-git-send-email-shraddha.6596@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:KI+KJIxFq9/GEF8cS1e4er54+bMXYBAkIPJVIyQAc9DQmTvmTsB
 +JEXBV0PFaaqxqbk5pbd4SycDr4Pn9ahDqS8TOyQLPdxKpsvMstciAxq/S8RsSpPp5jW4+2
 EetH+1W9evCI0XEWZ0QylkeGEe6BaR3qhkwIz8x1iIY37+cAXc7scA3T060vtEk5ufLpaJG
 DZ7ZwhKibSWJOjuDQzTvA==
X-UI-Out-Filterresults: notjunk:1;V01:K0:8APTFQf9Amc=:LHIjRSvGoVpV/70DHZF/F2
 FE33+C/4FcdqU2VC6GvsQ9CiOQ7yaKifMQEzjiU4LImQH5S761U3VJrmzAGA3F/aqeZuBVs2R
 u1onvAs5UbsqZUOh9qhsf6mhN+/SDTqd/lbsl9o1XR5vmryh9etKxi7tbsoJhTMc2QXH7sT1g
 MykXeNoBNLjMfbpPILFs7BkdQ1rwLgEFrYajunO6IGQpsmSd/4h+C2xaqFYDHU+HfbYrL7pA7
 NPVU4V9r7jV2Xr3N2DEPTHRYb8ug3e0E1Lnv/5K5zyCXR7sKV34c1yP1EVL5+ABOOeyUy5A7Y
 Wprbub11jPgxIvAX4DNYbUls3v3aVIqYvD1fHI8MWlxt0YKDk4MxFZdMNzOKKyjhgSzQBfaCm
 4bjqvQKV66wXpDQStkBZzYQOFGEUSbMi0Rx/bG27yttHYF4BOS5ZJOodj0ipq7p/05rIWp3pY
 dG9em4mngF2Cu+JGVvVQe+zkA/d3NHU/MsQsGcMODbeXbKz5qq37IxX6PRaS81lB/7lFP9RZk
 vtqmdE/6eJYnue6v2BE6E/UseZBxKDrj4MuetM6FRBZZ1JIkL6+xZWC/B31Wp2arO40WyQbu3
 5W3ADxVbDBOkUeWh8jj9j2tDatm0zxYaK+cVp10ei9zwgAwHgzc0nrNn0c09pSNgLDZ43xKIP
 8MFQPzwzKrNP46Fxe9YLVxZHfXH6yLpBKADoOVl4miVmLrWz/S7v1WcPuqcSu82RnSpQ75rGa
 YNHVXdBoP2XQ3sjU

On Thursday 22 October 2015 19:35:49 Shraddha Barke wrote:
> Change the 32-bit time type timeval to the 64-bit time type
> ktime_t, since 32-bit systems using struct timeval will break in the
> year 2038. Correspondingly change do_gettimeofday() to ktime_get()
> since ktime_get returns a ktime_t, but do_gettimeofday returns a
> struct timeval.
> 
> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>

The patch looks good to me, but please add a sentence to explain
why you use ktime_get() instead of ktime_get_real(). It is the
right choice here, but it may not be obvious to the reader
that you now use monotonic times.

With that, please resend the patch and Cc the MTD maintainers.

How did you pick this driver? I thought I had originally given this
task to someone else and not listed it in the y2038 wiki page. The
other person has not worked on it over the last month, and it's
a relatively simple patch, so don't worry about it.

Are we running out of simple tasks? I can always add a few more to the
wiki as there are around 50 other drivers that need to be changed
in a similar way.

	Arnd

