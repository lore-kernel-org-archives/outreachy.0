X-GM-THRID: 6208227682236235776
X-Received: by 10.180.87.164 with SMTP id az4mr7519193wib.1.1445469426709;
        Wed, 21 Oct 2015 16:17:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.147.16 with SMTP id v16ls198688lfd.63.gmail; Wed, 21 Oct
 2015 16:17:06 -0700 (PDT)
X-Received: by 10.112.63.165 with SMTP id h5mr2845550lbs.18.1445469426033;
        Wed, 21 Oct 2015 16:17:06 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.187])
        by gmr-mx.google.com with ESMTPS id m4si416588wib.0.2015.10.21.16.17.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Oct 2015 16:17:05 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.187;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue004) with ESMTPSA (Nemesis) id 0M3fC1-1agJs005JJ-00rDmu; Thu, 22 Oct
 2015 01:17:05 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Deepa Dinamani <deepa.kernel@gmail.com>, y2038@lists.linaro.org
Subject: Re: [Outreachy kernel] [PATCH] usb: usbtest: Add new ioctl interface
Date: Thu, 22 Oct 2015 01:17:04 +0200
Message-ID: <8949060.7jQkPAjlGW@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <1445465834-24407-1-git-send-email-deepa.kernel@gmail.com>
References: <1445465834-24407-1-git-send-email-deepa.kernel@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:vd/b4yjEEhmK8YBuJAvmE/u0kFL2z3E0HahWyDAkH1vIFRTbVYY
 3XG8/nh40vpwoNuk92O8whm2w4A6dB21n+NQCZTcLfn086WhyllNvsIGQdPuq5eKbE/lhOj
 IsOicdOo7fYXQSP4Am8+Ix/JszYgq9lyUUz8yDBPhGjWL+sA+C+SMMV4bPD7BKfCZudS6Wk
 5pjDTrU/Urgvt3ckxWS7w==
X-UI-Out-Filterresults: notjunk:1;V01:K0:SfhmKzJQPOM=:s6ev4bC3cDt0T/5VrgJX3J
 aVuwiMpRR2LWAFPK19SYpPG0PVlIYs6Hx3pxPya8V8Udzkq16SR2NrrQkLdYFV+kfi2czGUoH
 7HKk6Jc8zmYrVfpxmo9Xfm5kMVEFDa3EjoETmNAFQTMt7tvG5y1i+zSlMJG+BuY22RptFOXUn
 ebs8qGPUBIVvKj8GfdokwUHIpa1GaAe3/RLkBzS9Ih4GNgSx0KUZ3T/YG/jDfnrLflBI0KPox
 C327HtlBZIWlLLQ0UL6J9HxVzj3QhZqs3Vx+F/iss788z/EclnnRtTAyUAzGI8AsH4xp/now4
 fLc0X2rACCoKXw/EbYND87OFlczArs79QdcbI0wDoGYG/vq+sxLvmx1zY+/V2a3jCcE7b4ecr
 9Nofzajd/iwZNWZytNkE3mG4Gw9MRetFoIpuwOL1EI7JZyMO24YVoIzIvUNHzSmfjfvUjgwZ2
 FRc5dKVuab7pIBPgsLR9IaFpEaeKBDkCF1BzbGzBFQncrCJQ6qFWJWq2u4QiFF0niKIRShzOS
 nPkMK3oFhWVuhqalN3b+AqU2uM9C8iqOO6G5ieIF8iPjg3VbCl4XCD+LNdNGSJhsw1ZECdZ2P
 Wz9UF7kYSnSS4M64L3p8vv+Ql2FmT9PdFLZUmpZ5fEMJIqWhm6p3S1NY4Qo8NRDWjDUMgDPMb
 KAg3kGozLnoqaDOWodFhKtFFLhv/NEU9RXcKgqFjp84aOxb04+R8WLlCTCN1m1EZjl7nwrrDk
 Yqufe8D4saTUMXV5

On Wednesday 21 October 2015 15:17:14 Deepa Dinamani wrote:
> The new USBTEST_REQUEST ioctl is intended to eventually replace
> the old timeval exposing interface.  struct timeval can have different
> sizes based on whether the kernel/ userspace are compiled in 32 bit/
> 64 bit mode.  The new ioctl exposes the duration the tests run as a
> scalar nanosecond value.

Hi Deepa,

This is an interesting approach, but you are going in a slightly
wrong direction. The new ioctl definition is indeed safe for y2038
and gets it all right, but it is not compatible at source level,
so existing user space programs will require source changes in
order to use it. I think this can be avoided, and we also don't
really need the new command to solve the y2038 problem. 

> Rename old ioctl and data types to COMPAT_USBTEST_REQUEST and
> usbtest_param_compat, respectively.
> 
> The change also uses monotonic time instead of real time for both ioctls.
> This ensures that the time duration is always positive.  Also use ktime
> api's for time routines accomodating moving all of kernel to use 64 bit
> time eventually.

Changing to monotonic time is good here. Using ktime_t is often
a good idea, but I think in this case it causes more problems
because we end up having to convert it back into timeval.

> Refactor usbtest_ioctl for readability to clarify that the only
> difference is in how delta time is returned.
> 
> Signed-off-by: Deepa Dinamani <deepa.kernel@gmail.com>
> ---
> Resending due to incorrect recipient list
> 
> This patch is intended for the next branch of the usb tree:
> git://git.kernel.org/pub/scm/linux/kernel/git/balbi/usb.git
> 
>  drivers/usb/misc/usbtest.c | 208 +++++++++++++++++++++++++++++----------------
>  1 file changed, 134 insertions(+), 74 deletions(-)
> 
> diff --git a/drivers/usb/misc/usbtest.c b/drivers/usb/misc/usbtest.c
> index 637f3f7..00daff3 100644
> --- a/drivers/usb/misc/usbtest.c
> +++ b/drivers/usb/misc/usbtest.c
> @@ -22,7 +22,11 @@ static void complicated_callback(struct urb *urb);
>  /*-------------------------------------------------------------------------*/
>  
>  /* FIXME make these public somewhere; usbdevfs.h? */
> -struct usbtest_param {
> +
> +/* Compat parameter for the compat interface.
> + * This is deprecated due to the timeval output parameter.
> + */
> +struct usbtest_param_compat {
>  	/* inputs */
>  	unsigned		test_num;	/* 0..(TEST_CASES-1) */
>  	unsigned		iterations;
> @@ -33,7 +37,27 @@ struct usbtest_param {
>  	/* outputs */
>  	struct timeval		duration;
>  };
> -#define USBTEST_REQUEST	_IOWR('U', 100, struct usbtest_param)
> +

The most important point to notice here is that the definition is in a .c
file, where user space cannot access it. This means that any program
calling it already has a copy of this definition, and changing the
definition here will not help you the way it would if the definition
was in include/uapi/linux/*.h

> +	switch (code) {
> +	case USBTEST_REQUEST_COMPAT:
> +		temp.test_num = param_compat->test_num;
> +		temp.iterations = param_compat->iterations;
> +		temp.length = param_compat->length;
> +		temp.sglen = param_compat->sglen;
> +		temp.vary = param_compat->vary;
> +		param = &temp;
> +		break;
> +
> +	case USBTEST_REQUEST:
> +		break;

This part looks ok, you just need to adapt it to using the right
structures. Basically what we want to do here is to handle both
variants of 'struct timeval' that user space might see. Based on
the _IOWR() macro definition, they give us two different command
codes that you can test for in the same way here.

It also makes sense to add support for the .compat_ioctl at the
same time, because 64-bit kernels with 32-bit user space have
the exact same problem in this driver that future 32-bit kernels
will have with new vs old user space.

>  /*-------------------------------------------------------------------------*/
>  
>  static unsigned force_interrupt;
> @@ -2891,4 +2952,3 @@ module_exit(usbtest_exit);
>  
>  MODULE_DESCRIPTION("USB Core/HCD Testing Driver");
>  MODULE_LICENSE("GPL");
> -
> 

These two changes should not be here, as they are unrelated to what  you
are doing.

	Arnd

