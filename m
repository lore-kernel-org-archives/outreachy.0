X-GM-THRID: 6671219486697193472
X-Received: by 2002:a37:7602:: with SMTP id r2mr19978622qkc.97.1553530073994;
        Mon, 25 Mar 2019 09:07:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:b742:: with SMTP id h63ls3040853qkf.2.gmail; Mon, 25 Mar
 2019 09:07:53 -0700 (PDT)
X-Received: by 2002:a37:5246:: with SMTP id g67mr19011462qkb.118.1553530073125;
        Mon, 25 Mar 2019 09:07:53 -0700 (PDT)
Received: by 2002:a37:e82:0:0:0:0:0 with SMTP id 124msqko;
        Fri, 22 Mar 2019 08:04:48 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyXlJVTcXnoEbaiXNOEyz5udatxIzZf/FV3vSzUk6KhP/5sFQQugtpA9AYMbOvbWe9AD0tK
X-Received: by 2002:a17:906:4e58:: with SMTP id g24mr5899626ejw.190.1553267088383;
        Fri, 22 Mar 2019 08:04:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553267088; cv=none;
        d=google.com; s=arc-20160816;
        b=XslW5rDan3GPJ+68eFzHBq3MpfniFWsGJEyXszdyXTgCB5Wv04fOhexcppYvHKy3rj
         0XeCYwdKvL5DoebvDrpU1e2gEsUg7pOqA7VqzVRj+EJRtQkV5Pfp6Tg9cun+VphU4uzW
         k50VkAb7W0tO6Blj5uUyycUwEk1j3c5/sRRNImp1tKsnjYpzDpUtyHAazS8BAVR/COhB
         Iiftv0VaUsdoXjl9slmXl8R6Q7z+FqYd0VVM19eSW8QnmPmdXuuJIkRxp3wVBjB3q6Lk
         4uV8a1/fDBUYVW7UuQ4nsNOM1muuJ8AAKseMCzFmjyx95+W7YVtHHmS+UFw2SI0dzWe0
         whxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :cc:to:from:subject:message-id;
        bh=NVC/LiiuZN58u8CyGW7bgE5D94X7dY+B481f46cCCEs=;
        b=ZwB53VVlpu2GkIPkMjhLevm39ElLvQqpzO24KJaKPAS5nmdBFc/5GzC8EKLCgHPIv7
         PERf+G20033Iq/q8ogtIqM96MaSOATb4v51yClC503U22zbNzf97JOTNfVnUV2VoNaBI
         FrQLH5Grl9rQiYohNrrel/5uHPArLQhCt+OCuhRx/+xHssrT+WDnMZg84us7hEANkBsc
         RV6N63O1wIJaPM4E3ZyaZyecNFKsrYu2MjiCnivYkRXvgd1TrzugHEbiPll8b7iqym3s
         mAz58Rx7vDEGczSyO9VI8oPUKtH6bapfJT93iQpcyAWucD09/M35j0aylFvc1AnYzhlt
         VFSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of p.zabel@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33 as permitted sender) smtp.mailfrom=p.zabel@pengutronix.de
Return-Path: <p.zabel@pengutronix.de>
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de. [2001:67c:670:201:290:27ff:fe1d:cc33])
        by gmr-mx.google.com with ESMTPS id jt16si109955ejb.0.2019.03.22.08.04.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 22 Mar 2019 08:04:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of p.zabel@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33 as permitted sender) client-ip=2001:67c:670:201:290:27ff:fe1d:cc33;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of p.zabel@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33 as permitted sender) smtp.mailfrom=p.zabel@pengutronix.de
Received: from lupine.hi.pengutronix.de ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
	by metis.ext.pengutronix.de with esmtp (Exim 4.89)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1h7Lix-0008BH-PZ; Fri, 22 Mar 2019 16:04:47 +0100
Message-ID: <1553267086.8366.3.camel@pengutronix.de>
Subject: Re: [PATCH] Staging: media: Remove unnecessary print statements
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Bhanusree Pola <bhanusreemahesh@gmail.com>, 
	outreachy-kernel@googlegroups.com
Cc: Steve Longerbeam <slongerbeam@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, NXP Linux Team
 <linux-imx@nxp.com>, =Fabio Estevam <festevam@gmail.com>
Date: Fri, 22 Mar 2019 16:04:46 +0100
In-Reply-To: <20190322141829.8440-1-bhanusreemahesh@gmail.com>
References: <20190322141829.8440-1-bhanusreemahesh@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.22.6-1+deb9u1 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: outreachy-kernel@googlegroups.com

On Fri, 2019-03-22 at 19:48 +0530, Bhanusree Pola wrote:
> Remove print statements that provide information about error messages
> when memory allocation is failed.

It would be nice to mention that these functions already
print error messages themselves, but the patch is fine.

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
> > 
> 
> -f(...,C);
> )
> ...
> }
> </smpl>
> 
> Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> ---
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

Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>

regards
Philipp

