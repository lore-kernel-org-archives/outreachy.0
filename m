X-GM-THRID: 6671240645547393024
X-Received: by 2002:a17:906:a2c6:: with SMTP id by6mr6148835ejb.134.1553270788803;
        Fri, 22 Mar 2019 09:06:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:fc07:: with SMTP id i7ls219172edr.6.gmail; Fri, 22 Mar
 2019 09:06:28 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxPG0RTUQtkwh0srGej5jIMf5hafnHV8xL2jp6zLI/hQ9Q3Pzd2bgTnuEPEcTA1OED9MK8E
X-Received: by 2002:a50:9473:: with SMTP id q48mr7058118eda.290.1553270787965;
        Fri, 22 Mar 2019 09:06:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553270787; cv=none;
        d=google.com; s=arc-20160816;
        b=b4JCtWLTYxHpZX95fEJ6eEaX7/qGSp4QAjH0Z1zv43eGd0JvWJaXnLXXFrnRNw10VM
         NuZdYT1cpndKHvvklsOBHP5r8tZwLgzz7Hvk9Bq+Uyqpgyrt3SK6Ec+J0KFFULLwt/Wf
         S8wbuCA/buPmeD2NMlTFTzy6kUYsAKlcOORZeqKDkyKt/iWzaoPWFL7KmFQGk4RJtEPd
         gCLUg+mMaU+RASRj15UQYHjUsbtrIzB3QkSu6pn2X4g3IIxM7tPDB4tWlUWNrZCdTFSg
         YG+sfZBu2EkaH7g4A3JFRA6Eicotbqrw8qdhUs014+HsWL6uNWBFOpuu4P5XJEKb/M2I
         LAGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=J2cq2dxD4+Rgk55zu7b6Son+aeOKX/KPTCFOWsVNaRM=;
        b=qULmJCWvzMfp+OUlnPaeVwjL9V9vcMdNcwkOXtwJ/oXZbT7Iqpdju13oolFm+sdGwY
         kSoM5J2of729m5zsKM+R9V8Rw3TbP729gmstBQSRN3BetKyzbaOwM80TWvXoPDaQhP2i
         Pctn4IRwoJMHCY1ko/w8Khsbc+a0Swy5aeR9o8TLwXvRhYfnBiIofHDqy0LDrlTEYq9l
         gF72MWCr4t3jP5+wfLgJxZctlzVBFpL+DMr+7K/G0SZHK7TZZxdJ8wmYz82AZeN5/GKZ
         7kACtllh9CWAd0/jwMQ/fyypt3BShtdxO5bO0WTsZD1U6Hml+Ez0H1W7T8e48dC//HtL
         xc7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id r10si448043eda.4.2019.03.22.09.06.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Mar 2019 09:06:27 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,256,1549926000"; 
   d="scan'208";a="300422414"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 22 Mar 2019 17:06:26 +0100
Date: Fri, 22 Mar 2019 17:06:26 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhanusree Pola <bhanusreemahesh@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Steve Longerbeam <slongerbeam@gmail.com>, 
    Philipp Zabel <p.zabel@pengutronix.de>, 
    Mauro Carvalho Chehab <mchehab@kernel.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
    Pengutronix Kernel Team <kernel@pengutronix.de>, 
    NXP Linux Team <linux-imx@nxp.com>, =Fabio Estevam <festevam@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: media: imx: imx6-mipi-csi2.c
 Remove unnecessary error messages
In-Reply-To: <20190322154035.9014-1-bhanusreemahesh@gmail.com>
Message-ID: <alpine.DEB.2.20.1903221705070.14339@hadrien>
References: <20190322154035.9014-1-bhanusreemahesh@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

It's not normal to put the file name in the subject line.  There aren't
many examples on this file, but maybe:

media: imx: mipi csi-2:

julia

On Fri, 22 Mar 2019, Bhanusree Pola wrote:

> The function devm_ioremap already prints error message  when there
> is no enough memory.
> Remove print statements that give error messages
> Issue found using coccinelle
> The following semantic patch is used to solve this:
>
> <smpl>
> @@
> expression x;
> constant char[] C;
> identifier f;
> @@
>
> x = (\(kmalloc\|devm_kzalloc\|kmalloc_array\|devm_ioremap\|
> usb_alloc_urb\|alloc_netdev\|dev_alloc_skb\)(...));
>
> if(x==NULL)
> {
> ...
> (
> -f(C,...);
> |
> -f(...,C);
> )
> ...
> }
> </smpl>
>
> Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> ---
> v2:
>  -subject line modified
>  -commit log modified
>
>  drivers/staging/media/imx/imx6-mipi-csi2.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/staging/media/imx/imx6-mipi-csi2.c b/drivers/staging/media/imx/imx6-mipi-csi2.c
> index 6a1cee55a49b..2c5e3dd58cea 100644
> --- a/drivers/staging/media/imx/imx6-mipi-csi2.c
> +++ b/drivers/staging/media/imx/imx6-mipi-csi2.c
> @@ -628,10 +628,8 @@ static int csi2_probe(struct platform_device *pdev)
>  	}
>
>  	csi2->base = devm_ioremap(&pdev->dev, res->start, PAGE_SIZE);
> -	if (!csi2->base) {
> -		v4l2_err(&csi2->sd, "failed to map CSI-2 registers\n");
> +	if (!csi2->base)
>  		return -ENOMEM;
> -	}
>
>  	mutex_init(&csi2->lock);
>
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190322154035.9014-1-bhanusreemahesh%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

