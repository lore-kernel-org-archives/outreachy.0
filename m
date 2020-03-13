X-GM-THRID: 6803797661564534784
X-Received: by 2002:adf:fc81:: with SMTP id g1mr20581378wrr.410.1584133405923;
        Fri, 13 Mar 2020 14:03:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:508e:: with SMTP id a14ls5589165wrt.2.gmail; Fri, 13 Mar
 2020 14:03:24 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvzLy7x6Pnu3RMhweatzQ/DvHYDZ9jzds8J0mpu1xP8zaqptb7fMa4YpeQFMIRwH99F62T6
X-Received: by 2002:adf:a510:: with SMTP id i16mr21012018wrb.292.1584133404456;
        Fri, 13 Mar 2020 14:03:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584133404; cv=none;
        d=google.com; s=arc-20160816;
        b=DxEhQN8x0HyAr/6WL3OEae2NqsGIpgiSdAMYfZKH3kedgpQIBPruSmdOkl4CGc9de8
         SZg0KCStsu6G8pur2TKy8mvfFehL2p2MoSXgU1zPv4pkooDncmE9/RIwANb5T5ey1BN0
         r2j9bNQK5PMQatSeP6HrQLqug6plVCidZE9y6hsiPxe2UiPs3Jk7tRYzs5OSK+3O31D6
         0sW6iLgcMb+pMJqXrT3N2eR+ZXvXiACS/VY9FaMw/2L5l1PAKw3aaj4mUPTjGyyC7e8k
         cM2nk3qRobi6kuhAo/jrbcmcuEpYzN4DtWCMx5IlrfdDoxbxuMnt0dP0irBUyDwC43QC
         5ZIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=8ahC6QQcK7TPiXnYQBHVlGSXmNymUejEfK2kuU/ta3s=;
        b=vdvFJQ1+iPQpdUo4jqtQXsC+N+20VSZfPcWeyzDMbE5VCTATPQ6fTcCLHeG9z2moqg
         5aGIo2NtPjUZ6U+fH2JXLIvhL/am8O1XB7G4JixSAXq8+fSKnqeBY0MutpmRKKLpaTch
         mpolKFl/ccnv2iHOH1C3qZLhKpWaa6hLn0gGCxTfKqr+PdMe1uRZU23hoDgxs5KVuzqI
         k5+ySBE/24iaYbugw+Fwp5AVDNFmNh/LVtu8gzY7XVd1Sr2DyCCKABrZS8SyKIfklHV0
         AcQQ95V1UWjZnnTKRGQvUgtQJA9SKqWqx/PDIucBn3df0i1H4IbXFp2PQRZu/RdmoPnY
         H7Nw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id n7si634570wmc.1.2020.03.13.14.03.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Mar 2020 14:03:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,550,1574118000"; 
   d="scan'208";a="342326550"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Mar 2020 22:03:23 +0100
Date: Fri, 13 Mar 2020 22:03:23 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Lourdes Pedrajas <lu@pplo.net>
cc: outreachy-kernel@googlegroups.com, rmfrfs@gmail.com, johan@kernel.org, 
    elder@kernel.org, gregkh@linuxfoundation.org, vireshk@kernel.org
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: greybus: gpio: improve
 bit fields formatting.
In-Reply-To: <88c5f940009f75813f026ebad57fc8865b242971.1584131593.git.lu@pplo.net>
Message-ID: <alpine.DEB.2.21.2003132203090.2355@hadrien>
References: <cover.1584131593.git.lu@pplo.net> <88c5f940009f75813f026ebad57fc8865b242971.1584131593.git.lu@pplo.net>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 13 Mar 2020, Lourdes Pedrajas wrote:

> Fix the formatting of bit fields on structure gb_gpio_line, in order to
> not confuse them with unindented labels.

What do you mean by unindented labels?

julia

> Issue found with checkpatch.
>
> Signed-off-by: Lourdes Pedrajas <lu@pplo.net>
> ---
>  drivers/staging/greybus/gpio.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/greybus/gpio.c b/drivers/staging/greybus/gpio.c
> index 36d99f9e419e..50e93a393dba 100644
> --- a/drivers/staging/greybus/gpio.c
> +++ b/drivers/staging/greybus/gpio.c
> @@ -20,9 +20,9 @@
>  struct gb_gpio_line {
>  	/* The following has to be an array of line_max entries */
>  	/* --> make them just a flags field */
> -	u8			active:    1,
> +	u8			active: 1,
>  				direction: 1,	/* 0 = output, 1 = input */
> -				value:     1;	/* 0 = low, 1 = high */
> +				value: 1;	/* 0 = low, 1 = high */
>  	u16			debounce_usec;
>
>  	u8			irq_type;
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/88c5f940009f75813f026ebad57fc8865b242971.1584131593.git.lu%40pplo.net.
>

