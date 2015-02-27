X-GM-THRID: 4475579269120
X-Received: by 10.152.1.5 with SMTP id 5mr2178005lai.4.1425052417228;
        Fri, 27 Feb 2015 07:53:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.11.198 with SMTP id ek6ls143808wid.27.gmail; Fri, 27 Feb
 2015 07:53:36 -0800 (PST)
X-Received: by 10.180.39.164 with SMTP id q4mr579617wik.5.1425052416881;
        Fri, 27 Feb 2015 07:53:36 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id ta1si138837wic.1.2015.02.27.07.53.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 07:53:36 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,660,1418079600"; 
   d="scan'208";a="123692028"
Received: from ip209.messe-nbg.customer.bisping.net (HELO hadrien.local) ([62.91.19.209])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 27 Feb 2015 16:53:36 +0100
Date: Fri, 27 Feb 2015 16:53:25 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 21/24] staging: iio: meter: remove
 unused variables
In-Reply-To: <a3c512e1b92259c27416e0d8d0fd4a4db59fc0a9.1425035012.git.mahfouz.saif.elyazal@gmail.com>
Message-ID: <alpine.DEB.2.10.1502271653000.2663@hadrien>
References: <cover.1425034998.git.mahfouz.saif.elyazal@gmail.com> <a3c512e1b92259c27416e0d8d0fd4a4db59fc0a9.1425035012.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Fri, 27 Feb 2015, Aya Mahfouz wrote:

> This patch removes variables that were simply used to store the
> return value of a function call before returning it.
>
> The issue was detected and resolved using the following
> coccinelle script:
>
> @@
> identifier len,f;
> @@
>
> -int len;
>  ... when != len
>      when strict
> -len =
> +return
>         f(...);
> -return len;
>
> Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
> ---
>  drivers/staging/iio/meter/ade7758_core.c | 10 ++--------
>  1 file changed, 2 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/staging/iio/meter/ade7758_core.c b/drivers/staging/iio/meter/ade7758_core.c
> index 70e96b2..3d2fae4 100644
> --- a/drivers/staging/iio/meter/ade7758_core.c
> +++ b/drivers/staging/iio/meter/ade7758_core.c
> @@ -300,18 +300,15 @@ error_ret:
>
>  static int ade7758_reset(struct device *dev)
>  {
> -	int ret;
>  	u8 val;
>
>  	ade7758_spi_read_reg_8(dev,
>  			ADE7758_OPMODE,
>  			&val);
>  	val |= 1 << 6; /* Software Chip Reset */
> -	ret = ade7758_spi_write_reg_8(dev,
> +	return ade7758_spi_write_reg_8(dev,
>  			ADE7758_OPMODE,
>  			val);

It's a different problem, but this call could really fit on one line.

julia

> -
> -	return ret;
>  }
>
>  static IIO_DEV_ATTR_VPEAK(S_IWUSR | S_IRUGO,
> @@ -441,18 +438,15 @@ error_ret:
>  /* Power down the device */
>  static int ade7758_stop_device(struct device *dev)
>  {
> -	int ret;
>  	u8 val;
>
>  	ade7758_spi_read_reg_8(dev,
>  			ADE7758_OPMODE,
>  			&val);
>  	val |= 7 << 3;  /* ADE7758 powered down */
> -	ret = ade7758_spi_write_reg_8(dev,
> +	return ade7758_spi_write_reg_8(dev,
>  			ADE7758_OPMODE,
>  			val);
> -
> -	return ret;
>  }
>
>  static int ade7758_initial_setup(struct iio_dev *indio_dev)
> --
> 1.9.3
>
>
> --
> Kind Regards,
> Aya Saif El-yazal Mahfouz
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/a3c512e1b92259c27416e0d8d0fd4a4db59fc0a9.1425035012.git.mahfouz.saif.elyazal%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

