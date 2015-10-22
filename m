X-GM-THRID: 6208472977162371072
X-Received: by 10.129.108.212 with SMTP id h203mr12951483ywc.38.1445524817187;
        Thu, 22 Oct 2015 07:40:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.17.147 with SMTP id 19ls1490647qgd.23.gmail; Thu, 22 Oct
 2015 07:40:16 -0700 (PDT)
X-Received: by 10.13.226.134 with SMTP id l128mr6194219ywe.12.1445524724223;
        Thu, 22 Oct 2015 07:38:44 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.131])
        by gmr-mx.google.com with ESMTPS id j129si388468vkd.1.2015.10.22.07.38.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 07:38:44 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.131;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue002) with ESMTPSA (Nemesis) id 0Lup4D-1aXIzv3xKr-0107Oa; Thu, 22 Oct
 2015 16:37:51 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: y2038@lists.linaro.org
Cc: Shraddha Barke <shraddha.6596@gmail.com>, outreachy-kernel@googlegroups.com, David Woodhouse <dwmw2@infradead.org>, Brian Norris <computersforpeace@gmail.com>, linux-mtd@lists.infradead.org
Subject: Re: [Y2038] [PATCH v2] mtd: tests: Replace timeval with ktime_t
Date: Thu, 22 Oct 2015 16:37:50 +0200
Message-ID: <5015706.z4SiC6myD8@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <1445524379-14541-1-git-send-email-shraddha.6596@gmail.com>
References: <1445524379-14541-1-git-send-email-shraddha.6596@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:zukDazxU4lnfVqyOk7OmSy1Z0RHifd2mCuFujO7i4dkOL1W7vtv
 SeRZl9Yx4ynw6SGxnaYKe34HwuaYKrwDEUzPxxIxsc4CgR5Utd77XjJwKdexIAdj4gZ1gMv
 qaoNYf04gKJePXJYnAFSD50BEtvEWuNxbYG8adxE0akt+EDlS4h8g1g6ByL4m9q9d2aq0NM
 /fD1vFCY4GGujJqePKx5w==
X-UI-Out-Filterresults: notjunk:1;V01:K0:yy8k1Fq1HVA=:3mK3yEm67rqBbjovbZ+U5G
 IUZxe1VQ5Z5aSJEErSTjx4kyEDx4U4dvpCyOE/auRcxcltiAHJ1hFJHuSWg7jUWR9TdNxsoS+
 4CfYugBrHD3FM1p0OltS9n0+Rf90PgahlPhIr/PRniDahzZgpPAzlFoiSBQlCo94PcOCug48e
 piJ3GogjxgYdbjCbuvjJnwwv1DkOb/F9dZzUe/fNmMRL6ZfAVUh51PAzW06jrgwax9v38Gv8i
 GB/ShQylASEv1bqhFurKh1QBblUXxz90cS23DcLDagyT8t8rNPDBnFFf7LIO5cSSl0+AYt/vw
 ny6jNhI8lkU2XK8ix05pL9rwBOzSYk2QWe3PBjfq66QhDZpxEBQC/5vVDr1lKr+LNu03PmFuG
 8swldLUuQq+MTo7hTu/FKl94BiQp7OjwOmBU9Me+8B5EZ2NXSgvna6C9Qz/2MEES0mNhLphu0
 PpjlyuOIxmnfdMHu/LqYp44ChTJcoX+tmEjpU9Yqj0YB+SOWtRHrqw5KN4RTaps0pkaiAuFaf
 pEtaWnYB2GOA8HDsoHz0XhNiGXgn4dZD/pws4h1KAbkchkUwI99h8yxu+6Du/YhLJZJqas6Wd
 +EdEgv6b6I5w4i+d2tP3fHJvpjtwJcWcYi3JdfuVZ2mf6I0NPDNxjWb40AETz0uXq1PErE7BP
 hP3zQ+QB0jymYkaedOPgza0hX+7yau92TQ0W+T+BuGnqyteJ8IWW+JAYCR+l9zRc88TL1J6/C
 6q4E53DzH+MVVXmU

On Thursday 22 October 2015 20:02:59 Shraddha Barke wrote:
> Changes the 32-bit time type timeval to the 64-bit time type
> ktime_t, since 32-bit systems using struct timeval will break in the
> year 2038. Correspondingly change do_gettimeofday() to ktime_get()
> since ktime_get returns a ktime_t, but do_gettimeofday returns a
> struct timeval.Here, ktime_get() is used instead of ktime_get_real()
> since ktime_get() uses monotonic clock.
> 
> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>

Reviewed-by: Arnd Bergmann <arnd@arndb.de>

I've added Brian and the linux-mtd list to Cc as well here. It's take
a little practice to get the right people out of the output of
scripts/get_maintainer.pl. In this case, you sent the patch only
to David Woodhouse. However, Brian Norris currently does most of the
work of picking up patches, and you should always include the mailing
lists on Cc as well.

Please re-send with my 'Reviewed-by' tag added.

> ---
> Changes in v2-
>  Make commit message clearer.
> 
>  drivers/mtd/tests/speedtest.c   | 10 +++++-----
>  drivers/mtd/tests/torturetest.c | 10 +++++-----
>  2 files changed, 10 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/mtd/tests/speedtest.c b/drivers/mtd/tests/speedtest.c
> index 5a6f31a..0b89418 100644
> --- a/drivers/mtd/tests/speedtest.c
> +++ b/drivers/mtd/tests/speedtest.c
> @@ -22,6 +22,7 @@
>  #define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
>  
>  #include <linux/init.h>
> +#include <linux/ktime.h>
>  #include <linux/module.h>
>  #include <linux/moduleparam.h>
>  #include <linux/err.h>
> @@ -49,7 +50,7 @@ static int pgsize;
>  static int ebcnt;
>  static int pgcnt;
>  static int goodebcnt;
> -static struct timeval start, finish;
> +static ktime_t start, finish;
>  
>  static int multiblock_erase(int ebnum, int blocks)
>  {
> @@ -168,12 +169,12 @@ static int read_eraseblock_by_2pages(int ebnum)
>  
>  static inline void start_timing(void)
>  {
> -	do_gettimeofday(&start);
> +	start = ktime_get();
>  }
>  
>  static inline void stop_timing(void)
>  {
> -	do_gettimeofday(&finish);
> +	finish = ktime_get();
>  }
>  
>  static long calc_speed(void)
> @@ -181,8 +182,7 @@ static long calc_speed(void)
>  	uint64_t k;
>  	long ms;
>  
> -	ms = (finish.tv_sec - start.tv_sec) * 1000 +
> -	     (finish.tv_usec - start.tv_usec) / 1000;
> +	ms = ktime_ms_delta(finish, start);
>  	if (ms == 0)
>  		return 0;
>  	k = (uint64_t)goodebcnt * (mtd->erasesize / 1024) * 1000;
> diff --git a/drivers/mtd/tests/torturetest.c b/drivers/mtd/tests/torturetest.c
> index e5d6e6d..93c2729 100644
> --- a/drivers/mtd/tests/torturetest.c
> +++ b/drivers/mtd/tests/torturetest.c
> @@ -26,6 +26,7 @@
>  #define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
>  
>  #include <linux/init.h>
> +#include <linux/ktime.h>
>  #include <linux/module.h>
>  #include <linux/moduleparam.h>
>  #include <linux/err.h>
> @@ -79,18 +80,18 @@ static unsigned char *check_buf;
>  static unsigned int erase_cycles;
>  
>  static int pgsize;
> -static struct timeval start, finish;
> +static ktime_t start, finish;
>  
>  static void report_corrupt(unsigned char *read, unsigned char *written);
>  
>  static inline void start_timing(void)
>  {
> -	do_gettimeofday(&start);
> +	start = ktime_get();
>  }
>  
>  static inline void stop_timing(void)
>  {
> -	do_gettimeofday(&finish);
> +	finish = ktime_get();
>  }
>  
>  /*
> @@ -333,8 +334,7 @@ static int __init tort_init(void)
>  			long ms;
>  
>  			stop_timing();
> -			ms = (finish.tv_sec - start.tv_sec) * 1000 +
> -			     (finish.tv_usec - start.tv_usec) / 1000;
> +			ms = ktime_ms_delta(finish, start);
>  			pr_info("%08u erase cycles done, took %lu "
>  			       "milliseconds (%lu seconds)\n",
>  			       erase_cycles, ms, ms / 1000);
> 


