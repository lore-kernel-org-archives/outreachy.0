X-GM-THRID: 6463264709450661888
X-Received: by 10.223.160.199 with SMTP id n7mr88971wrn.15.1504850660279;
        Thu, 07 Sep 2017 23:04:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.152.75 with SMTP id a72ls165909wme.23.canary-gmail; Thu, 07
 Sep 2017 23:04:19 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QCJR40CmI5BVrMAbZToUzsO6hiSGB87qzv2fpJMnTZAo/IY9FrFll73y5/4AQyZz42GK58w
X-Received: by 10.28.4.69 with SMTP id 66mr98583wme.25.1504850659444;
        Thu, 07 Sep 2017 23:04:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504850659; cv=none;
        d=google.com; s=arc-20160816;
        b=Ihk0h1PUMfb8b1S4qEW3jrW39bbN5FP1AresiDqfDXw8IL8WCp60vlEWXfFrjkaHJ4
         N/iVlT9pS8rY0HrmUuxw7QeKVtY6ij5RKLSn4uETSqo6++Mid6F7JCyI0Prt3RV72SFa
         QuTtcrFK2qUXr2HgezQ7h4i81gOGNozi3OaFHSSGPAS1UzB6gdEVbw/gg7AEhbiDShuc
         EK5MzxOGgdxzhPT/dtZrzyozBHd6fHnFDVDyk3ojDDi2QYYDXlaMWKhRIBobmHpUgcTX
         KQ8A4NcujdduBAt1JcSPztOLu/LJUn85IMs94X/hWW+kD/AVMuCEk4HUOityyyT5LGff
         h3Uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=LOa9K5UezjEsWDXXS4Oc2Psy7vJ3Z0YeLAINGnjdKys=;
        b=zljm+ufOJLhYOO68EGeB9WyeAJroTDEotaSAVZAS/OQT5g44P7/pM/S/6nUbFZrIvE
         TncPkQmzttGr8RVGvNdu48qDJryxqSNGHg5DkwR5YWZU9LUI1+6aHYsb5UTtC28/6yuz
         Mu7NObVQ+zQh4AkjDZc0tsCXqDwbW/CEpP5G+YN+6+jpfiFJwoBsSNLshMYtbvzO/N5I
         AQmBOS4xzZTovCDOnsu+VS1y9YgaWpEIGsXO5BPVvhYkaT/HE8hlvpC36N82TqmTamR3
         EEuQbASp9scV2t0yGBnJbARl2C/3bHSHLTOYWyEu1MbGclASyY9zv+5g2Md3DQD4HQV0
         DSKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id p200si61077wmg.4.2017.09.07.23.04.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Sep 2017 23:04:19 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,360,1500933600"; 
   d="scan'208";a="236732088"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 08 Sep 2017 08:04:18 +0200
Date: Fri, 8 Sep 2017 08:04:18 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Himanshi Jain <himshijain.hj@gmail.com>
cc: outreachy-kernel@googlegroups.com, lars@metafoo.de, 
    Michael.Hennerich@analog.com, jic23@kernel.org, knaack.h@gmx.de, 
    pmeerw@pmeerw.net, gregkh@linuxfoundation.org, linux-iio@vger.kernel.org, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] Staging: iio: adc: Added Space around
 binary op.
In-Reply-To: <20170908044752.GA6199@himanshi-Inspiron-5558>
Message-ID: <alpine.DEB.2.20.1709080802310.2161@hadrien>
References: <20170908044752.GA6199@himanshi-Inspiron-5558>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 8 Sep 2017, Himanshi Jain wrote:

> Added space around(one on each side of) binary

I think that just around would be clear enough.

In the previous patches on this file, found with git log --oneline, a
subject line of staging: iio: ad7192: seems to be more popular when the
patch affects only this file.  But maybe it doesn't matter either way.

julia

> operator(-) as preferred according to kernel
> coding style.
>
> Signed-off-by: Himanshi Jain <himshijain.hj@gmail.com>
> ---
>  drivers/staging/iio/adc/ad7192.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
> index d11c6de..1aee662 100644
> --- a/drivers/staging/iio/adc/ad7192.c
> +++ b/drivers/staging/iio/adc/ad7192.c
> @@ -341,7 +341,7 @@ static int ad7192_setup(struct ad7192_state *st,
>  }
>
>  static IIO_DEVICE_ATTR_NAMED(in_v_m_v_scale_available,
> -			     in_voltage-voltage_scale_available,
> +			     in_voltage - voltage_scale_available,
>  			     0444, ad7192_show_scale_available, NULL, 0);
>
>  static IIO_DEVICE_ATTR(in_voltage_scale_available, 0444,
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170908044752.GA6199%40himanshi-Inspiron-5558.
> For more options, visit https://groups.google.com/d/optout.
>

