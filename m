X-GM-THRID: 6208922267806597120
X-Received: by 10.180.160.194 with SMTP id xm2mr1237824wib.6.1445628212004;
        Fri, 23 Oct 2015 12:23:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.106.168 with SMTP id gv8ls187249wib.37.canary; Fri, 23 Oct
 2015 12:23:31 -0700 (PDT)
X-Received: by 10.194.21.230 with SMTP id y6mr1261567wje.4.1445628211641;
        Fri, 23 Oct 2015 12:23:31 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.10])
        by gmr-mx.google.com with ESMTPS id m4si173904wib.0.2015.10.23.12.23.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Oct 2015 12:23:31 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.10;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue101) with ESMTPSA (Nemesis) id 0MXHhV-1a4PBv1pRd-00WAuE; Fri, 23 Oct
 2015 21:23:30 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: y2038@lists.linaro.org
Cc: Amitoj Kaur Chawla <amitoj1606@gmail.com>, outreachy-kernel@googlegroups.com
Subject: Re: [Y2038] [PATCH] char: ipmi: ipmi_ssif: Replace timeval with timespec64
Date: Fri, 23 Oct 2015 21:23:29 +0200
Message-ID: <7971017.NMVUFoYCm6@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <20151023190922.GA32154@amitoj-Inspiron-3542>
References: <20151023190922.GA32154@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:Cb2IaHxE5k4TYYfOusXgrJjX4NV9MolroCUSw/Xp10HoeqhawKS
 CqgCg2yVTp+HUSUI0Y1F2St++Ka7tjJOqLNpYdSKScj1Cguv7EzX3yUpHC/2m+WPVbvQuBb
 DI2zQA0xKxJpUYYnaXX0GQtkKXTHsvPE52tvRnthUfXWJqCEAFd+NOp0A3XPKcQdMR739IK
 bWnNQ5pSK63hKFTdqWivw==
X-UI-Out-Filterresults: notjunk:1;V01:K0:VJW1KN6T4JQ=:Y7DSMcmudElO5kCwdbH3DJ
 Xwd+6iiHGmyQn7d6fBWEnESCDre5za0h9Br+0Rp0yCG6JOj8S7dBoq///4hiJKVSfXoeXym5f
 k+KBU46OQR7Oq6XY2RgCc9/SHYk2veNIL+ZGggl/TH3lINt3NDKp34+xu46ulTjtOamE1FRfy
 xXZynwSOUs56BIzolgInyA/rSymwO6Qs4KwsZG5NG2Eeid7ksQgSCmqNiBMwrePdzbnl3KFk3
 bal2TyCY5LCwU+Z/th844Rcqa6W0kXENT1D9/LdB3lfllADGJxUG5oEyLrY/Dia5EVRWKEqzX
 61Sauh9YU4uiUbFCU9+ZBuMZ4/mcTlw/1ALaUhnLSv8iRgz3B3Sr8L4YApvmVXtCYSMpKdUGt
 W8CFdZmi49DzcXJu3ocwTZhFlMrgDYaXdQIGmGYo86kBk+XlvIyCYOMINeSXrrhKdoIIknrKf
 Sc/rjbfTbbNHrWfe1d50npjvoQrK5+PrKhaNM2C+HJXrtgCf3SaoPy06Rsabz57RQXFgVhuPW
 3hmnONXPz88txVd/EfqX0fZi7QRefcuNMP8p+Y2wIge1NwlimHepnvDyNv1G6xC7QEHTrp6e1
 7eYgW+DTMEx64l6teaY/LfQwzA651Ni+VZ5PQtsr+2VXMxfRt0ctq07PY3rnVSx9LkJ0FipS9
 5LHSz6vsf53CCtqJRtiearM9/njU/AGLt9T9KNDoe5fW/IaJD1UP32DFPA1Jfzuh+h+PQ9SZo
 Gr5JmM4UGvnO7cXK

On Saturday 24 October 2015 00:39:22 Amitoj Kaur Chawla wrote:
> This patch replaces timeval with timespec64 as 32 bit 'struct timeval'
> will not give current time beyond 2038.
> 
> The patch changes the code to use ktime_get_real_ts64() which returns
> a 'struct timespec64' instead of do_gettimeofday() which returns a
> 'struct timeval'
> 
> This patch also alters the format strings in pr_info() for now.tv_sec
> and now.tv_nsec to incorporate 'long long' on 32 bit architectures and
> leading zeroes respectively.
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---

The patch looks correct, but I think that this time the format string
was actually ok already for the microsecond value. Just leave it at "%6.6ld"
and send it again with the maintainers on Cc.

>  drivers/char/ipmi/ipmi_ssif.c | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_ssif.c b/drivers/char/ipmi/ipmi_ssif.c
> index 877205d..926add4 100644
> --- a/drivers/char/ipmi/ipmi_ssif.c
> +++ b/drivers/char/ipmi/ipmi_ssif.c
> @@ -52,6 +52,7 @@
>  #include <linux/kthread.h>
>  #include <linux/acpi.h>
>  #include <linux/ctype.h>
> +#include <linux/time64.h>
>  
>  #define PFX "ipmi_ssif: "
>  #define DEVICE_NAME "ipmi_ssif"
> @@ -1041,12 +1042,12 @@ static void sender(void                *send_info,
>  	start_next_msg(ssif_info, flags);
>  
>  	if (ssif_info->ssif_debug & SSIF_DEBUG_TIMING) {
> -		struct timeval t;
> +		struct timespec64 t;
>  
> -		do_gettimeofday(&t);
> -		pr_info("**Enqueue %02x %02x: %ld.%6.6ld\n",
> +		ktime_get_real_ts64(&t);
> +		pr_info("**Enqueue %02x %02x: %lld.%6.06ld\n",
>  		       msg->data[0], msg->data[1],
> -		       (long) t.tv_sec, (long) t.tv_usec);
> +		       (long long) t.tv_sec, (long) t.tv_nsec / NSEC_PER_USEC);
>  	}
>  }
>  
> 


