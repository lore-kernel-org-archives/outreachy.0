X-GM-THRID: 6803293292760924160
X-Received: by 2002:aa7:c716:: with SMTP id i22mr5562387edq.205.1584016903557;
        Thu, 12 Mar 2020 05:41:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:9e83:: with SMTP id a3ls3747900edf.8.gmail; Thu, 12 Mar
 2020 05:41:42 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vu3pCxLTxPXgyruBRfsHV2AIDBMPdtQgQLaf+hsEOksb0pqtqGgFpyBShG0pMe7OMElo2ff
X-Received: by 2002:aa7:c3d8:: with SMTP id l24mr7938520edr.232.1584016902065;
        Thu, 12 Mar 2020 05:41:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584016902; cv=none;
        d=google.com; s=arc-20160816;
        b=E+kwtwCRV9HFwAM/VBOyepTiMaxi6dPTHJppXEvLo+uhkY6iwhdh+pZ64zGNpMpomt
         zL7hzTrZRvPvCCxP27qbEO0+Xi9W6JLMjcAoaVLhzUsF8M/uBqFTVrznJPr8O160B2vR
         CaYhOdMq9zEWG/Ohuj35i8f1XOi7cW5GkkiHkI04g7M5J3Z/xg5X8SFeTOgCuCiYLEiF
         GKPh6EAqxZQq46Vucncf2mI8pOfYGjZM0RLQyNuExz9pgh8KTKmlPLJe7v0Yd0yJaebm
         fptc9ux2n318FkVqWWFPQ7ZIFuf1wpsp1k0BJSinLY/rwDXGb5Y1+FTpll7aijbzsnct
         eJdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=mvw5gMP6uiaiqCLSdqiHhFmH3h1UjOFU70UxzRp0r2U=;
        b=WQfCZxfzR7j1+xAg0V4dwRwgc7WJRZZjQ8PSUv9zc1iHMi5eUh+5DWK/8f6WQzzo8S
         21EfqwXgu2Th/e3ZpOQBG6hrHurZEZvEv2g8kfukqWBky7rqiKoYrlxpN3tasmgSRV1E
         02dLn/SxclMZ+9QATuoFU6e3WS8ihF+d7mkfGtFPEMYE6AMEZ9kHQGJRfeVRZaCQIO91
         WsUBedcUNJ/eZh3YajhEu7aPIgWnWG35euKMfDU+6a7k8t4WH7AY2VR/hGOBBxjdQ9IP
         kMBlZKl0+JZmYWlEHZsqRBSDb730+hfaVv7Ncr2+o6BXlirwsfcALcmYtI6H7IqCe2C3
         EmnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id l21si218655edq.4.2020.03.12.05.41.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Mar 2020 05:41:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,544,1574118000"; 
   d="scan'208";a="342134332"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 12 Mar 2020 13:41:41 +0100
Date: Thu, 12 Mar 2020 13:41:40 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Lourdes Pedrajas <lu@pplo.net>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    vireshk@kernel.org, johan@kernel.org, elder@kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: greybus: i2c: remove unused
 pointers
In-Reply-To: <20200312121222.6609-1-lu@pplo.net>
Message-ID: <alpine.DEB.2.21.2003121339270.2418@hadrien>
References: <20200312121222.6609-1-lu@pplo.net>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 12 Mar 2020, Lourdes Pedrajas wrote:

> Remove unused pointers in gb_i2c_functionality() and int gb_i2c_probe()
> functions.

There is no connection to gb_i2c_functionality.  Diff doesn't provide the
right location information when the code extract covers two top level
entities.

You can refer to gb_i2c_probe without the return type.

It could be helpful to mention how long this code has been commented out.
You can find this with git blame.

julia

>
> Signed-off-by: Lourdes Pedrajas <lu@pplo.net>
> Suggested-by: Johan Hovold <johan@kernel.org>
> ---
>  drivers/staging/greybus/i2c.c | 2 --
>  1 file changed, 2 deletions(-)
>
> diff --git a/drivers/staging/greybus/i2c.c b/drivers/staging/greybus/i2c.c
> index c48fa1de89b0..de2f6516da09 100644
> --- a/drivers/staging/greybus/i2c.c
> +++ b/drivers/staging/greybus/i2c.c
> @@ -224,7 +224,6 @@ static u32 gb_i2c_functionality(struct i2c_adapter *adap)
>
>  static const struct i2c_algorithm gb_i2c_algorithm = {
>  	.master_xfer	= gb_i2c_master_xfer,
> -	/* .smbus_xfer	= gb_i2c_smbus_xfer, */
>  	.functionality	= gb_i2c_functionality,
>  };
>
> @@ -267,7 +266,6 @@ static int gb_i2c_probe(struct gbphy_device *gbphy_dev,
>  	adapter->owner = THIS_MODULE;
>  	adapter->class = I2C_CLASS_HWMON | I2C_CLASS_SPD;
>  	adapter->algo = &gb_i2c_algorithm;
> -	/* adapter->algo_data = what? */
>
>  	adapter->dev.parent = &gbphy_dev->dev;
>  	snprintf(adapter->name, sizeof(adapter->name), "Greybus i2c adapter");
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200312121222.6609-1-lu%40pplo.net.
>

