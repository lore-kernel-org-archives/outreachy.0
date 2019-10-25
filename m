X-GM-THRID: 6751743425868988416
X-Received: by 2002:a5d:678e:: with SMTP id v14mr3188120wru.393.1572013381214;
        Fri, 25 Oct 2019 07:23:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:dd03:: with SMTP id a3ls3083497wrm.6.gmail; Fri, 25 Oct
 2019 07:23:00 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwMjMg4cRjhaVurvpE3hCRnPLuOkNCu4ta6/9H1kYlGroMNCRF4SksgDf/bxON3Nq2YwNVq
X-Received: by 2002:adf:e5cc:: with SMTP id a12mr507423wrn.258.1572013380004;
        Fri, 25 Oct 2019 07:23:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572013380; cv=none;
        d=google.com; s=arc-20160816;
        b=b5jXcjG+zZMhH0J3+a8HLsAYLhX9oTRMrqvMEoqzK4Wl1idM9P7WHLt/g2GC5IId+F
         73XAznfjb0ceRoWtulPvDp9iAAMIBCwmlC98UxzI4lpQk0sfRkgM47cx9FzdLTqIRnpe
         BeKh4Bqgf00ABZnfVxFQIVig7YDWXu8vHd9V01JQU735qIieL2zWfIGk3hXzyZ20+tPn
         Y8cB/w751bSxDd2LYfdSPAoBh8SWKKn+XLMq0ajJZrN7jE73IaRtyeIu61WVUKbMlMhR
         eqaEXLAry7X1FNv8QilttEX7oMn5VMYhQDmy2oKdh7rJQMyiCeiNCJRFEJSUhI3JnAIu
         I3Vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=zvzKDFh2P27MruZS6RinIRWanDz91XykVAgeLfQHcDU=;
        b=OrbX490r8bj5TjXlZC5qFLDUzso27cf/t4kIhx9vFfHabHxoIuKFAGh558J+Kf0Tvf
         dQQxb2Xq5j/bEXtt8ncoH/DBCHNw3a2zX1+NuufmmsQiEI3gpHUsoDdnb8kLQLMbP54h
         0c+NWelRcvys0nzJZ1COxwZUrboktumbuSEGookpDWC2K2eIy6GNuFX1JeqK4c79Ezxm
         jTdZypYsRG1QlzOcQQMYDjo3gEkpv77yHpFGZM+fMygAzOYxRYpH7Dn8gypUAQkA+j62
         hFbHv9/hNm789yhHnKLmSMHutfJ/pgqvncmKA+4b3llfvvs/8ADVx6lOF2D95FYPy9zd
         K4oQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id y188si136269wmc.0.2019.10.25.07.22.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 25 Oct 2019 07:22:59 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.68,228,1569276000"; 
   d="scan'208";a="408238622"
Received: from portablejulia.rsr.lip6.fr ([132.227.76.63])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 25 Oct 2019 16:22:59 +0200
Date: Fri, 25 Oct 2019 16:22:59 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: julia@hadrien
To: CristianeNaves <cristianenavescardoso09@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Jean-Philippe Brucker <jean-philippe@linaro.org>, 
    Joerg Roedel <joro@8bytes.org>, Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] iommu : Remove var of return
In-Reply-To: <20191025141240.GA30575@cristiane-Inspiron-5420>
Message-ID: <alpine.DEB.2.21.1910251622030.3307@hadrien>
References: <20191025141240.GA30575@cristiane-Inspiron-5420>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 25 Oct 2019, CristianeNaves wrote:

> Remove the variable of return. Issue found by
> coccicheck(scripts/coccinelle/misc/returnvar.cocci)
>
> Signed-off-by: CristianeNaves <cristianenavescardoso09@gmail.com>

So there is really no space between Cristiane and Naves?  I would have
expected it to go the other way, with a space in both cases.

julia

> ---
>  drivers/iommu/virtio-iommu.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/iommu/virtio-iommu.c b/drivers/iommu/virtio-iommu.c
> index 3ea9d76..d8f29c8 100644
> --- a/drivers/iommu/virtio-iommu.c
> +++ b/drivers/iommu/virtio-iommu.c
> @@ -153,7 +153,6 @@ static off_t viommu_get_write_desc_offset(struct viommu_dev *viommu,
>   */
>  static int __viommu_sync_req(struct viommu_dev *viommu)
>  {
> -	int ret = 0;
>  	unsigned int len;
>  	size_t write_len;
>  	struct viommu_request *req;
> @@ -182,7 +181,7 @@ static int __viommu_sync_req(struct viommu_dev *viommu)
>  		kfree(req);
>  	}
>
> -	return ret;
> +	return 0;
>  }
>
>  static int viommu_sync_req(struct viommu_dev *viommu)
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191025141240.GA30575%40cristiane-Inspiron-5420.
>

