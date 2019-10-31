X-GM-THRID: 6753034664415330304
X-Received: by 2002:a2e:9753:: with SMTP id f19mr2702111ljj.137.1572503767316;
        Wed, 30 Oct 2019 23:36:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:8c4c:: with SMTP id i12ls150550lfj.2.gmail; Wed, 30 Oct
 2019 23:36:06 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyqzrvSzawwEk4sNMKgnOCJhqxMwp3uIHkuRJhbLq+0xBbheT/hdejXOGBV4+SJ0kEnmIGI
X-Received: by 2002:a19:6813:: with SMTP id d19mr2035747lfc.144.1572503766159;
        Wed, 30 Oct 2019 23:36:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572503766; cv=none;
        d=google.com; s=arc-20160816;
        b=GzNbMSiNCbrbQTs772a//nPh8RkgnYqj3MhAQh6sPjKUvsVKGkcl6aO6s0AXC+IgIE
         gMDS8QhBTl4LHEMLIcIRNarrIMhRIbw/aMYaz0uPqLHwi1STCalnegBdGSZ2CTvxdrwU
         Y/gd0egqdGzVDQ3WQkr7D9GFXyKebJUsAWEIvqohw30Qo2+WDhZ3koUES2Pqw2f1FRCf
         eZg7TNpc2iYMPUEtJ5EY1h4Fp2yPrZx8F8mFAzPuBmUSXjNime8tO0PlZNtB/aBboyRC
         y6MgqGLFAAObX4qIOHAwp1g6kks04S/OzadV5yhvHq3BgHAjR9+ZqrYbuE/f6znSCwUa
         HqaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=X0Bt+OO+jAEgWV/ZMRMqSZ5oIZLXxyyDa33L3nNyDnM=;
        b=0rS/nMFOPdOc6fpjdTxyi9V7yQlcULqHjGBdzYVHCpCiQA45bHNoyD2VXPgsEWTN9m
         8UTTFPJEMKCNNyvWXM2cUD1+bcY+IhR6DzAcD/CPhQOn0GyaDPzFAjzGNZfO6HvRh5hM
         L4Yasu1BC15bKKOg8nPEeIxNWf7+AN5K+clRttrokgjN6Jtmj5+7ISX84HYZ8kTKv2hg
         v0EhTbFaXLGKg6dqnORoeWw0hQV1o3L7SxRvSqXyx/Qq2RNqsfR7PRqKdDavHoKt31Uj
         XeGmn4On622aB97U4RsIgikgzMQcWvEB386CPJaSKBKZwqrrC326s3wpJO3y6RmTCWO1
         kN4g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id r71si203539lff.5.2019.10.30.23.36.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Oct 2019 23:36:06 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.68,250,1569276000"; 
   d="scan'208";a="325190394"
Received: from abo-45-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.45])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 31 Oct 2019 07:35:55 +0100
Date: Thu, 31 Oct 2019 07:35:54 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    nishkadg.linux@gmail.com, kim.jamie.bradley@gmail.com, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
    lkcamp@lists.libreplanetbr.org
Subject: Re: [Outreachy kernel] [PATCH v3 3/3] staging: rts5208: Eliminate
 the use of Camel Case in file sd.h
In-Reply-To: <20191030190514.10011-4-gabrielabittencourt00@gmail.com>
Message-ID: <alpine.DEB.2.21.1910310734520.2718@hadrien>
References: <20191030190514.10011-1-gabrielabittencourt00@gmail.com> <20191030190514.10011-4-gabrielabittencourt00@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 30 Oct 2019, Gabriela Bittencourt wrote:

> Cleans up checks of "Avoid CamelCase" in file sd.h
>
> Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
> ---
>  drivers/staging/rts5208/sd.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rts5208/sd.h b/drivers/staging/rts5208/sd.h
> index dc9e8cad7a74..f4ff62653b56 100644
> --- a/drivers/staging/rts5208/sd.h
> +++ b/drivers/staging/rts5208/sd.h
> @@ -232,7 +232,7 @@
>  #define DCM_LOW_FREQUENCY_MODE   0x01
>
>  #define DCM_HIGH_FREQUENCY_MODE_SET  0x0C
> -#define DCM_Low_FREQUENCY_MODE_SET   0x00
> +#define DCM_LOW_FREQUENCY_MODE_SET   0x00

So this is never used in the kernel?  In that case, maybe it would still
be useful to keep it, because it somehow documents the device.  But the
log message should say that this is the case.

julia

>
>  #define MULTIPLY_BY_1    0x00
>  #define MULTIPLY_BY_2    0x01
> --
> 2.20.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191030190514.10011-4-gabrielabittencourt00%40gmail.com.
>

