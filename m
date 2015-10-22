X-GM-THRID: 6208527977579282432
X-Received: by 10.194.21.230 with SMTP id y6mr32081wje.4.1445541314340;
        Thu, 22 Oct 2015 12:15:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.93.6 with SMTP id cq6ls3917wib.23.canary; Thu, 22 Oct 2015
 12:15:13 -0700 (PDT)
X-Received: by 10.194.71.166 with SMTP id w6mr4085499wju.6.1445541313670;
        Thu, 22 Oct 2015 12:15:13 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.13])
        by gmr-mx.google.com with ESMTPS id o3si11306wiz.1.2015.10.22.12.15.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 12:15:13 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.13;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue101) with ESMTPSA (Nemesis) id 0LjJmB-1aNrGp252F-00dagW; Thu, 22 Oct
 2015 21:15:12 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: y2038@lists.linaro.org
Cc: Amitoj Kaur Chawla <amitoj1606@gmail.com>, outreachy-kernel@googlegroups.com
Subject: Re: [Y2038] [PATCH] misc: ibmasm: Replace timeval with timespec64
Date: Thu, 22 Oct 2015 21:15:10 +0200
Message-ID: <8980519.8CTrMHEHrD@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <20151022173920.GA32329@amitoj-Inspiron-3542>
References: <20151022173920.GA32329@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:DKGW/xA/vBAra9KLrpjNTm7qAKuDlZaY3ljIviLdKyRIY3WluyQ
 ZX+Qj+/LLGLOylY21yayfPCCwKWghl01Ay1s8Tj+V39JQI9MSsZRxEahT6AzSwsOXDeWjgZ
 wbFDHFPgyciPVe+KVPGrtvE00lWyBgfo677AOOkA/bhu9pXIuRj5nmdkdSIk5J3EiiOZfLN
 BoeKvthn1/k2CAZL8we+w==
X-UI-Out-Filterresults: notjunk:1;V01:K0:6Cc/54Uvo50=:hjEoVlcJrl7H30Se+/z763
 35rDfi5Rn5A26TJqtS6ta8tmernvvChzVGx3xpdD6W1u06vZca0BJ3bkWf0tYYq5FrPp0ox2Z
 lEqV1vvFp7gPrFVjkRhLcq8p/6LXJOcVfX9DjbkTac/F/LwdB9QLCpGYu+mdRDLRkTXcrXIga
 CALkLbaoDf+mszfdVFQHUObNT3Q1nxSk2YAffH2fHmPG5rJekBDBI4V3SJQZjwLu9wN5dw0DF
 pEATROcxf/FLC0Dt3oZyoHwXlk7pwLa29YK/FtnwF3MwKgTu8M2y8FB8FUJgvrWsTeZ1Gv5Go
 3JmjMVVYazLGroB5CL0eqjCJ83Pd09ICh6NIAqm706HFvERdyqMCIUhNAJJqMWO2RV3i4aGHx
 V8QRyo9iBsAQmfwucHN0yUPw0uWLZjH3PMTeuCkpp2echHzfqOgIveiv57j+AZerH0mKEFeWL
 UqvxjhZE8dMNUxv2gUIY+A7ZQi4bT4nR5Y6FcPzSnz6hNY2ieuozfRRzk136jbEitYmXUvb7R
 e1gCdCgL0gvvp4WAyNKDhYjutjDh5dzJM+S140eeXnrXtwssVIrHRZSwZqEnFWzrhjqIZ1RXm
 to3KMgQsWJRFFed5eI7EwDMU510a0QpLMVaUnkutJ2eGPWef5jLzob3iZQgFUwqoSmp6qmT+n
 9e6XvKcCIv30+Y/U5KsZnqjkJKXLbPc1uGAU94Uk2aTTFE/LVhLKAfok0fPC1tz/vFDRmZk1i
 kNpNtasnb49gBiMA

On Thursday 22 October 2015 23:09:20 Amitoj Kaur Chawla wrote:
> This patch replaces timeval with timespec64 as 32 bit 'struct timeval'
> will not give current time beyond 2038.
> 
> This also changes the code to use ktime_get_real_ts64() which returns
> a 'struct timespec64' instead of do_gettimeofday() which returns a
> 'struct timeval'
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>

Looks almost right, except for one bit:

> ---
>  drivers/misc/ibmasm/ibmasm.h | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/misc/ibmasm/ibmasm.h b/drivers/misc/ibmasm/ibmasm.h
> index 9b08344..0c7bb6d 100644
> --- a/drivers/misc/ibmasm/ibmasm.h
> +++ b/drivers/misc/ibmasm/ibmasm.h
> @@ -34,6 +34,7 @@
>  #include <linux/kref.h>
>  #include <linux/device.h>
>  #include <linux/input.h>
> +#include <linux/time64.h>
>  
>  /* Driver identification */
>  #define DRIVER_NAME    "ibmasm"
> @@ -53,9 +54,9 @@ extern int ibmasm_debug;
>  
>  static inline char *get_timestamp(char *buf)
>  {
> -       struct timeval now;
> -       do_gettimeofday(&now);
> -       sprintf(buf, "%lu.%lu", now.tv_sec, now.tv_usec);
> +       struct timespec64 now;
> +       ktime_get_real_ts64(&now);
> +       sprintf(buf, "%lu.%lu", now.tv_sec, now.tv_nsec / NSEC_PER_USEC);
>         return buf;
> 

now.tv_sec is using a 'time_t' a.k.a. 'long' on 64-bit architectures, but
a 'time64_t' a.k.a. 'long long' on 32-bit architectures. This is a bit
nonintuitive, but please change the format string to %llu for the first
argument and add a corresponding cast to 's64' or 'long long', so we
actually print the correct data and do not get a compiler warning.

The tv_nsec argument is always 'long', on both 32-bit and 64-bit
architectures, so there is no warning and we correctly print the
number. However, there is a preexisting bug in the format string
that you should fix while you are here: %lu drops leading zeroes,
which results in something like "12345678.1234" where we want to
see "1234567.001234". Please change the format string to add the
correct number of leading zeroes here.

As you seem to generally be doing well with the trivial patches, please
move on to the 'simple' category next. I should also add a few more
'medium' level tasks but need to pick them carefully first.

	Arnd

