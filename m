X-GM-THRID: 6330141489404837888
X-Received: by 10.28.206.68 with SMTP id e65mr1121846wmg.3.1473856113388;
        Wed, 14 Sep 2016 05:28:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.1.166 with SMTP id f38ls71154lji.31.gmail; Wed, 14 Sep 2016
 05:28:32 -0700 (PDT)
X-Received: by 10.25.193.148 with SMTP id r142mr464468lff.2.1473856112510;
        Wed, 14 Sep 2016 05:28:32 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id p199si1875050wmd.1.2016.09.14.05.28.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 05:28:32 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,333,1470693600"; 
   d="scan'208";a="193113269"
Received: from unknown (HELO hadrien.local) ([128.93.86.88])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 14 Sep 2016 14:28:09 +0200
Date: Wed, 14 Sep 2016 14:27:58 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sandhya Bankar <bankarsandhya512@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: iio: adc: Add space around
 '-'
In-Reply-To: <20160914110228.GA3269@sandhya>
Message-ID: <alpine.DEB.2.10.1609141427430.3092@hadrien>
References: <20160914110228.GA3269@sandhya>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

Is there no other maintainer that should receive this?

julia

On Wed, 14 Sep 2016, Sandhya Bankar wrote:

> Add space around operator '-' .
> This patch is found by checkpatch.pl script .
> CHECK: spaces preferred around that '-' (ctx:VxV) .
>
> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> ---
>  drivers/staging/iio/adc/ad7192.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
> index 1cf6b79..5688b29 100644
> --- a/drivers/staging/iio/adc/ad7192.c
> +++ b/drivers/staging/iio/adc/ad7192.c
> @@ -391,7 +391,7 @@ ad7192_show_scale_available(struct device *dev,
>  }
>
>  static IIO_DEVICE_ATTR_NAMED(in_v_m_v_scale_available,
> -			     in_voltage-voltage_scale_available,
> +			     in_voltage - voltage_scale_available,
>  			     S_IRUGO, ad7192_show_scale_available, NULL, 0);
>
>  static IIO_DEVICE_ATTR(in_voltage_scale_available, S_IRUGO,
> --
> 1.8.2.3
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160914110228.GA3269%40sandhya.
> For more options, visit https://groups.google.com/d/optout.
>

