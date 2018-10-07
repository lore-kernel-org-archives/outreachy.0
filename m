X-GM-THRID: 6609620704439566336
X-Received: by 2002:a1c:da95:: with SMTP id r143-v6mr1863553wmg.6.1538930530312;
        Sun, 07 Oct 2018 09:42:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:60f:: with SMTP id 15-v6ls902116wmg.19.gmail; Sun, 07
 Oct 2018 09:42:09 -0700 (PDT)
X-Google-Smtp-Source: ACcGV63mhFvY+ZNaipQZiXRlRGpU+KXQbcqg3iMa8Kc2/oGNYw6lqKzUPMZgMv0EPYw6zGzAA0H6
X-Received: by 2002:a1c:8211:: with SMTP id e17-v6mr1515649wmd.0.1538930529436;
        Sun, 07 Oct 2018 09:42:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538930529; cv=none;
        d=google.com; s=arc-20160816;
        b=mZ4jUvy9rSdIA6LU9m/NoYvhq/hqyM9uhUqBWc5JSvlv5MqsuQNYTvOJLivben8WXm
         /zKvP8AeL3lj4VWORASYejxf/s5LKgPOposUig8KzAKxWW20NOqSDPuGIC/QFUnNq5sK
         ClhSyf6L0ckqZTcKz0APsYBjBdgc6V27xZp3twjnZYHKpTI0q9EfB5sKuGcMLK3nzA/j
         mWejpPCAVZjJ6yEJP2t5gk2R0sEZXwHFzACljUYuJZtPZ6I5k5agmuQ5sFJGHu36h5nD
         GWTUTqb0auZeEdAyiV1OQp9l6yTqno9/7TT+lOGaVjwY+x40r9uaXBM3sPTRgLRPp8/j
         slWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=+J1BVxecJLIQLJWtmIDW/oEdPPHwGEmzDvQbiwp1IKk=;
        b=x8XW1jaWzn4i9IXXq/2UVfyfugWPaNsFaRumFdVwa77NRkr1AxpT9AfE8lwptxu6UZ
         ASS986z2YYbyf+cBG5E1vLbpbkHwHJXNinUsIcQZYFBBS+/5M/QDN54Rkh9pUeCth+cE
         B5G4LAj5O9aXPCgYZJFBQW+ildtjD5SiMqMT9ft57cN5vSu4L0vtegJoJNnZ4uA1T2Ma
         2+TVBVW+ygckNBtx2gjxNSkB+W39m0arGe5+uXFdAuPifI+svsU846SNgY3HTOBOP5bX
         G9fd0xXokea/DO2g/YlWveuXGYKLvhqF6PPPhA0yxa2WcxPDagC3y5fJYHekOx8qZOo8
         uMHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id o9-v6si232216wmh.2.2018.10.07.09.42.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 07 Oct 2018 09:42:09 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,353,1534802400"; 
   d="scan'208";a="349986450"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 07 Oct 2018 18:42:08 +0200
Date: Sun, 7 Oct 2018 18:42:08 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Mamta Shukla <mamtashukla555@gmail.com>
cc: outreachy-kernel@googlegroups.com, mchehab@kernel.org, 
    gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v4] staging: media: davinci_vpfe: Use
 __func__ instead of function name
In-Reply-To: <20181006222819.GA14461@armorer>
Message-ID: <alpine.DEB.2.21.1810071841500.2347@hadrien>
References: <20181006222819.GA14461@armorer>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 7 Oct 2018, Mamta Shukla wrote:

> Access current function name using __func__.
> Use %s and __func__ instead of function name.
> Use of predefined identifier __func__ prevents typo error in function
> name in print calls.
>
> Issue found with checkpatch.pl
>
> Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>


> ---
> change in v4:
> -Fix the commit message
>
> change in v3:
>   -change in commit message.
>
> change in v2:
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181006222819.GA14461%40armorer.
> For more options, visit https://groups.google.com/d/optout.
>

