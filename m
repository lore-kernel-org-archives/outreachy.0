X-GM-THRID: 6673109681211179008
X-Received: by 2002:adf:ebce:: with SMTP id v14mr735329wrn.20.1553718999427;
        Wed, 27 Mar 2019 13:36:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:678a:: with SMTP id b132ls189159wmc.0.gmail; Wed, 27 Mar
 2019 13:36:38 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyMrwvjcDVebaFNULxt7aWE1RY52kz81eQmJ/9UNehJWl31wZUK0ufq1F9wvMQxflddQHL9
X-Received: by 2002:a1c:b48b:: with SMTP id d133mr491783wmf.6.1553718998274;
        Wed, 27 Mar 2019 13:36:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553718998; cv=none;
        d=google.com; s=arc-20160816;
        b=UIGKeHuWCPsqPG1svlHSTKPC+Y8PQNcBOk29Aj6QiZGcshajbi21krnLf/HUkOqLRs
         ObCeTWZQ4oC2+M3ehirMkCUZShcfFrsaYeJp5guxLlNcuXSjFODYfbbOouYGfoBN8zXt
         w73YMOT0te2t/jxuCICG6naiQYUpGkUH4zh3c6xZQXd9W1NQLzGgZHxep6qSaM0/w5gq
         XEELqXcjfhmXY0nebIXd2YsAUozF7WuzkrCZPHuxQ9jcp3dEbI/cLdZb0T+kasIEjZV+
         +tjRgJHHyZdYrk3cDywWMoBwzcbSR5DTt69MGRu7+VbkWZGPUm0fM907zx+NJ35bAq4C
         na4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=SmWcsqzoCgLxE3yZEiPbxgWmC16vm95y7Y+nXnMgA7I=;
        b=AqS/wOl6Mzfe+4zbpndgucYTBkG4rEmeDaykM0rdj8XJQQB0eDFfCTLjJs1iSV6zjU
         iK46blt/PXvIcaCS27/LleZoVer3+a7u5irI05xjYjwhRql5ZHnHZ7ipLR/vLVOL6eCS
         uuMYhPdwvWd7aFEtQLj23S5npdqNLXEuKHgYMgOtTj/mIZeNFnMcKm28J5MqcVidQ4K0
         3yqziVJ12oD2gewV0/fJK9jvGffH4Zaoz2MKTdUzU3oDacXHBERKjVVxXesfNjnU8jGS
         p7lsEyNCe07ZmaDWSzCAWt+y4BxKh4pzGGN9ACXy66q/8tMLCP76S0uII9hCViVE6d8y
         qd5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id v17si354292wmc.4.2019.03.27.13.36.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Mar 2019 13:36:38 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,277,1549926000"; 
   d="scan'208";a="300951176"
Received: from unknown (HELO hadrien) ([94.134.122.206])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 27 Mar 2019 21:36:37 +0100
Date: Wed, 27 Mar 2019 21:36:37 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
cc: mchehab@kernel.org, gregkh@linuxfoundation.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: media: davinci_vpfe: Convert
 macro into an inline function
In-Reply-To: <20190327175648.29538-1-madhumithabiw@gmail.com>
Message-ID: <alpine.DEB.2.21.1903272136120.2741@hadrien>
References: <20190327175648.29538-1-madhumithabiw@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 27 Mar 2019, Madhumitha Prabakaran wrote:

> COnvert macro into an inline function in order to maintain Linux kernel
> coding style based on which the inline function is preferable over the
> macro.
>
> Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> ---
>  drivers/staging/media/davinci_vpfe/dm365_ipipe.h   | 5 ++++-
>  drivers/staging/media/davinci_vpfe/dm365_resizer.c | 4 ++--
>  2 files changed, 6 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.h b/drivers/staging/media/davinci_vpfe/dm365_ipipe.h
> index 174334b53f96..32dce3c95304 100644
> --- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.h
> +++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.h
> @@ -27,7 +27,10 @@
>  #include "davinci_vpfe_user.h"
>  #include "vpfe_video.h"
>
> -#define CEIL(a, b)	(((a) + (b-1)) / (b))
> +inline unsigned int ceil(unsigned int a, unsigned int b)
> +{
> +	return ((a + (b - 1)) / b);
> +}

You could check around perhaps in kernel.h and see if this already exists.

julia

>
>  enum ipipe_noise_filter {
>  	IPIPE_D2F_1ST = 0,
> diff --git a/drivers/staging/media/davinci_vpfe/dm365_resizer.c b/drivers/staging/media/davinci_vpfe/dm365_resizer.c
> index 9d726298b406..395c66520932 100644
> --- a/drivers/staging/media/davinci_vpfe/dm365_resizer.c
> +++ b/drivers/staging/media/davinci_vpfe/dm365_resizer.c
> @@ -386,7 +386,7 @@ resizer_calculate_down_scale_f_div_param(struct device *dev,
>  	}
>  	o = 10 + (two_power << 2);
>  	if (((input_width << 7) / rsz) % 2)
> -		o += (((CEIL(rsz, 1024)) << 1) << n);
> +		o += ((ceil(rsz, 1024) << 1) << n);
>  	h2 = output_width - h1;
>  	/* phi */
>  	val = (h1 * rsz) - (((upper_h1 - (o - 10)) / two_power) << 8);
> @@ -630,7 +630,7 @@ resizer_calculate_normal_f_div_param(struct device *dev, int input_width,
>  		val /= rsz << 1;
>  		val <<= 1;
>  		val += 2;
> -		o += ((CEIL(rsz, 1024)) << 1);
> +		o += (ceil(rsz, 1024) << 1);
>  		h1 = val;
>  	}
>  	h2 = output_width - h1;
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190327175648.29538-1-madhumithabiw%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

