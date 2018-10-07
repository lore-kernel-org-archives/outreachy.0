X-GM-THRID: 6609620704439566336
X-Received: by 2002:a50:a550:: with SMTP id z16-v6mr4120636edb.12.1538928857253;
        Sun, 07 Oct 2018 09:14:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:824b:: with SMTP id f11-v6ls2976708ejx.12.gmail;
 Sun, 07 Oct 2018 09:14:16 -0700 (PDT)
X-Google-Smtp-Source: ACcGV63+kGvuijyCi56afMA6/oaQx9EICk+DC+2rDt+oLNKyix5C1kg8KR4hmXTozwDkuA59lFj/
X-Received: by 2002:a17:906:790:: with SMTP id l16-v6mr3532291ejc.0.1538928856512;
        Sun, 07 Oct 2018 09:14:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538928856; cv=none;
        d=google.com; s=arc-20160816;
        b=vAHvZ9GmfaXiIC1QF0dCU/AEf3ZuHfZwSZZl9JOOj8nJqu+UNkmuvREN+uSd7Tsr4W
         6+JmzAfaSpYFxPr0A5KgnIwta8UdgAo2EsVUGpPPsfsw4ZRN83TBfjOZCzC152a5MuSp
         tyeeVCcreOwqQxzZBiZ9LYKh6ErbBdpLlsurpuT2wSsyoCi5qQzYuXWP5ua21IZMbRZr
         +jDE3QBjNZvBG7clFJi0k03KzYZeA2//aPOH3lOPIhCrjWrV5Qo2WLWAgGSMFGmOgeW5
         GaGxAK8ULCl8MEgU0HAARQw2ylbkRNCdk33cmY9XePIS/xU1NHnPKGs2+0BjuUe+z68Q
         sRng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=Qz+6DONryopTaBphcLfyORhLYn3vbfSbRkQ4u8WY120=;
        b=V7N2pXrx+1DsizLQXHsz17G1JVBkRtJPftmNpW4i6bQXzrC4hM3hAhzqDnYii+6a4Z
         YIGlyMl0Ut09X96N3BYLPQjScMeSl1wTsE5Av+b2AUwDUJM1XxdsdHx+CFCYKSO2rBa2
         2N/yC3QZTyzG+IdGY7NV1omCWjI+O2YWr6ylCG3mOX1MqX7u4mOf84YIgx0occZ5gPV8
         yJWruTPKmckacxKBUWVDVxWGdi6oXQg8X9SYIX5CY4vVYbCjzKLj5mBIp/DxXW6/QZc2
         AC/JdyW+lonz+tpTSYGrOd4IaZ4O+o2rkIyOZbByfNZoZhkhu1PohU6XNAT9ZAqG1EbL
         z8xQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id f18-v6si529927edj.3.2018.10.07.09.14.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 07 Oct 2018 09:14:16 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,353,1534802400"; 
   d="scan'208";a="349981519"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 07 Oct 2018 18:14:16 +0200
Date: Sun, 7 Oct 2018 18:14:15 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Mamta Shukla <mamtashukla555@gmail.com>
cc: outreachy-kernel@googlegroups.com, mchehab@kernel.org, 
    gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v3] staging: media: davinci_vpfe: Use
 __func__ instead of function name
In-Reply-To: <20181006220157.GA13993@armorer>
Message-ID: <alpine.DEB.2.21.1810071813150.2347@hadrien>
References: <20181006220157.GA13993@armorer>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 7 Oct 2018, Mamta Shukla wrote:

> Access current function name using __func__.
> Use %s and __func__ instead of function name.
> Predefined identifier __func__ gives the name of current function name.

The third sentence pretty much says the same thing as the first one.  An
important reason for using __func__ is that it is more robust.  Actually
there have been a number of print calls in the kernel where the function
name was spelled incorrectly.

julia

>
> Issue found with checkpatch.pl
>
> Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>
> ---
> change in v3:
> -change in commit message.
>
>  change in v2:
>   -Put useful information above ---
>
>
>  drivers/staging/media/davinci_vpfe/dm365_ipipe.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
> index 9594276..4d09e81 100644
> --- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
> +++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
> @@ -695,21 +695,21 @@ static int ipipe_get_gamma_params(struct vpfe_ipipe_device *ipipe, void *param)
>
>  	if (!gamma->bypass_r) {
>  		dev_err(dev,
> -			"ipipe_get_gamma_params: table ptr empty for R\n");
> +			"%s: table ptr empty for R\n", __func__);
>  		return -EINVAL;
>  	}
>  	memcpy(gamma_param->table_r, gamma->table_r,
>  	       (table_size * sizeof(struct vpfe_ipipe_gamma_entry)));
>
>  	if (!gamma->bypass_g) {
> -		dev_err(dev, "ipipe_get_gamma_params: table ptr empty for G\n");
> +		dev_err(dev, "%s: table ptr empty for G\n", __func__);
>  		return -EINVAL;
>  	}
>  	memcpy(gamma_param->table_g, gamma->table_g,
>  	       (table_size * sizeof(struct vpfe_ipipe_gamma_entry)));
>
>  	if (!gamma->bypass_b) {
> -		dev_err(dev, "ipipe_get_gamma_params: table ptr empty for B\n");
> +		dev_err(dev, "%s: table ptr empty for B\n", __func__);
>  		return -EINVAL;
>  	}
>  	memcpy(gamma_param->table_b, gamma->table_b,
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181006220157.GA13993%40armorer.
> For more options, visit https://groups.google.com/d/optout.
>

