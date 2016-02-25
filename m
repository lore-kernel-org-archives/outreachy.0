X-GM-THRID: 6255226926229618688
X-Received: by 10.25.154.129 with SMTP id c123mr5547071lfe.1.1456408586934;
        Thu, 25 Feb 2016 05:56:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.18.40 with SMTP id h40ls83306lfi.1.gmail; Thu, 25 Feb 2016
 05:56:25 -0800 (PST)
X-Received: by 10.112.170.7 with SMTP id ai7mr5428821lbc.1.1456408585068;
        Thu, 25 Feb 2016 05:56:25 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id h73si101030wme.0.2016.02.25.05.56.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 05:56:24 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,498,1449529200"; 
   d="scan'208";a="204617617"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 25 Feb 2016 14:56:24 +0100
Date: Thu, 25 Feb 2016 14:56:22 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: android: ion: tegra: Use
 devm_kcalloc instead of devm_kzalloc
In-Reply-To: <20160225135504.GA25593@amitoj-Inspiron-3542>
Message-ID: <alpine.DEB.2.10.1602251455550.2708@hadrien>
References: <20160225135504.GA25593@amitoj-Inspiron-3542>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Thu, 25 Feb 2016, Amitoj Kaur Chawla wrote:

> Replace devm_kzalloc with devm_kcalloc to ensure there are no integer
> overflows from the multiplication of a number * sizeof.
>
> The following Coccinelle semantic patch was used to make this change:
> //<smpl>
> @@
> expression dev,E1,E3;
> type T;
> @@
> - devm_kzalloc(dev,E1*sizeof(T),E3)
> + devm_kcalloc(dev,E1,sizeof(T),E3)
> //</smpl>
>
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
>  drivers/staging/android/ion/tegra/tegra_ion.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/android/ion/tegra/tegra_ion.c b/drivers/staging/android/ion/tegra/tegra_ion.c
> index 4d3c516..8828524 100644
> --- a/drivers/staging/android/ion/tegra/tegra_ion.c
> +++ b/drivers/staging/android/ion/tegra/tegra_ion.c
> @@ -33,9 +33,8 @@ static int tegra_ion_probe(struct platform_device *pdev)
>
>  	num_heaps = pdata->nr;
>
> -	heaps = devm_kzalloc(&pdev->dev,
> -			     sizeof(struct ion_heap *) * pdata->nr,
> -			     GFP_KERNEL);
> +	heaps = devm_kcalloc(&pdev->dev, pdata->nr,
> +			     sizeof(struct ion_heap *), GFP_KERNEL);
>
>  	idev = ion_device_create(NULL);
>  	if (IS_ERR_OR_NULL(idev))

Here's another IS_ERR_OR_NULL.  You could look into whether it is really
necessary.

julia

