X-GM-THRID: 6330145501902536704
X-Received: by 10.194.46.233 with SMTP id y9mr470729wjm.3.1473856749287;
        Wed, 14 Sep 2016 05:39:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.170.79 with SMTP id t76ls31723lfe.34.gmail; Wed, 14 Sep
 2016 05:39:08 -0700 (PDT)
X-Received: by 10.46.32.80 with SMTP id g77mr469502ljg.9.1473856748749;
        Wed, 14 Sep 2016 05:39:08 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id e21si297339wmc.2.2016.09.14.05.39.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 05:39:08 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,333,1470693600"; 
   d="scan'208";a="193114923"
Received: from unknown (HELO hadrien.local) ([128.93.86.88])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 14 Sep 2016 14:39:08 +0200
Date: Wed, 14 Sep 2016 14:38:57 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sandhya Bankar <bankarsandhya512@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: iio: ad7280a: Add space
 around '-'
In-Reply-To: <20160914111802.GA3364@sandhya>
Message-ID: <alpine.DEB.2.10.1609141438440.3092@hadrien>
References: <20160914111802.GA3364@sandhya>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 14 Sep 2016, Sandhya Bankar wrote:

> Add space around operator '-' .
> This patch is found by checkpatch.pl script .
> CHECK: spaces preferred around that '-' (ctx:VxV)

This one may also have other maintainers.

julia

>
> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> ---
>  drivers/staging/iio/adc/ad7280a.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/iio/adc/ad7280a.c b/drivers/staging/iio/adc/ad7280a.c
> index 2177f1d..bc40153 100644
> --- a/drivers/staging/iio/adc/ad7280a.c
> +++ b/drivers/staging/iio/adc/ad7280a.c
> @@ -744,14 +744,14 @@ out:
>  }
>
>  static IIO_DEVICE_ATTR_NAMED(in_thresh_low_value,
> -		in_voltage-voltage_thresh_low_value,
> +		in_voltage - voltage_thresh_low_value,
>  		S_IRUGO | S_IWUSR,
>  		ad7280_read_channel_config,
>  		ad7280_write_channel_config,
>  		AD7280A_CELL_UNDERVOLTAGE);
>
>  static IIO_DEVICE_ATTR_NAMED(in_thresh_high_value,
> -		in_voltage-voltage_thresh_high_value,
> +		in_voltage - voltage_thresh_high_value,
>  		S_IRUGO | S_IWUSR,
>  		ad7280_read_channel_config,
>  		ad7280_write_channel_config,
> --
> 1.8.2.3
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160914111802.GA3364%40sandhya.
> For more options, visit https://groups.google.com/d/optout.
>

