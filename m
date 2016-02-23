X-GM-THRID: 6254207218410848256
X-Received: by 10.112.205.164 with SMTP id lh4mr3667963lbc.6.1456186585016;
        Mon, 22 Feb 2016 16:16:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.54.30 with SMTP id d30ls524247wma.10.canary; Mon, 22 Feb
 2016 16:16:24 -0800 (PST)
X-Received: by 10.194.85.169 with SMTP id i9mr3773031wjz.4.1456186584498;
        Mon, 22 Feb 2016 16:16:24 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id w128si999741wmd.0.2016.02.22.16.16.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2016 16:16:24 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,487,1449529200"; 
   d="scan'208";a="165634403"
Received: from unknown (HELO hadrien.local) ([209.49.207.17])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 23 Feb 2016 01:16:23 +0100
Date: Mon, 22 Feb 2016 19:16:20 -0500 (EST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: adc: spear_adc: Use
 devm_iio_device_register
In-Reply-To: <20160222195807.GA12070@amitoj-Inspiron-3542>
Message-ID: <alpine.DEB.2.10.1602221915500.2785@hadrien>
References: <20160222195807.GA12070@amitoj-Inspiron-3542>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Tue, 23 Feb 2016, Amitoj Kaur Chawla wrote:

> Devm_ functions allocate memory that is released when a driver
> detaches. Replace iio_device_register with the resource-managed
> version devm_iio_device_register. Subsequently, remove
> iio_device_unregister from remove function of this driver.

There is an iounmap in the remove functon.  Can that be devmified too?

julia


>
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
>  drivers/staging/iio/adc/spear_adc.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/staging/iio/adc/spear_adc.c b/drivers/staging/iio/adc/spear_adc.c
> index f2c0065..0a6d0d7 100644
> --- a/drivers/staging/iio/adc/spear_adc.c
> +++ b/drivers/staging/iio/adc/spear_adc.c
> @@ -346,7 +346,7 @@ static int spear_adc_probe(struct platform_device *pdev)
>  	indio_dev->channels = spear_adc_iio_channels;
>  	indio_dev->num_channels = ARRAY_SIZE(spear_adc_iio_channels);
>
> -	ret = iio_device_register(indio_dev);
> +	ret = devm_iio_device_register(indio_dev->dev.parent, indio_dev);
>  	if (ret)
>  		goto errout2;
>
> @@ -366,7 +366,6 @@ static int spear_adc_remove(struct platform_device *pdev)
>  	struct iio_dev *indio_dev = platform_get_drvdata(pdev);
>  	struct spear_adc_state *st = iio_priv(indio_dev);
>
> -	iio_device_unregister(indio_dev);
>  	clk_disable_unprepare(st->clk);
>  	iounmap(st->adc_base_spear6xx);
>
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160222195807.GA12070%40amitoj-Inspiron-3542.
> For more options, visit https://groups.google.com/d/optout.
>

