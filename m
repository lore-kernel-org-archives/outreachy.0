X-GM-THRID: 6465930684409053184
X-Received: by 10.28.143.13 with SMTP id r13mr282020wmd.30.1505472198093;
        Fri, 15 Sep 2017 03:43:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.35.68 with SMTP id j65ls253229wmj.19.canary-gmail; Fri, 15
 Sep 2017 03:43:16 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QDlOHxX76ncBKcdKrf6rNsFUHamNiRyzS1ql0YXjcd0VEiXMG3s37HLCFZdRQXemNGYTAdm
X-Received: by 10.28.88.197 with SMTP id m188mr278950wmb.4.1505472196932;
        Fri, 15 Sep 2017 03:43:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505472196; cv=none;
        d=google.com; s=arc-20160816;
        b=SzMYk1fyTcT7fgWR+rmu2O/hTE3I60dk0k+f1I7MYcNTOJjdjbsIxqQcBMkZHdg1NO
         hiNFZymsIFBE2QX8Rf6zXAt1NeNZHf7cBoG0iRAfuIMzBWSMz3F7+NbYJuxIOglumt4H
         fmQk+VocpJSst/0URzvFoKfdHjgvkjH1a9AX51qihl4pMFTzHWzXlG1uoQVU6xP/d+w/
         xNwyfuNSvDCof3WTwPHZZbbqUcWfYgETDGvlbmY/G1fm98MhM4UZHA6SZOkzHJDZ9/Td
         jm8atvAg8ADslaKFknJ4icqJibvVOfHLiqRkzBqcCvTOryAVtHNwIpf9/Sskf7tQpcIn
         gmcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=GlyuK3b9XBuum7aKeneFFt81dSs9Llt8TY3BX2O6V04=;
        b=0lozjuzBfxadfISVNJ1mKwunI2NJq24LOkSRKJ/QpNYtHyNab+DtG3biMIdO3OWBd+
         eu1xmsqWurwUy1oEA0t/FVRAKxiUwUgFOp4ObWW4xlEVlHrKbmCp5I1KzEs/msxen5+F
         LaB0k35uOIK967T1YTAixiogY/EB5eIt426Ep5YhdGDN0zUy+FjAn7kx24ueQ3vDelHj
         wLpG+vw98oC1iNnOtgC9LOw14RfFo+CLG4YkawyNvqfhNSX2XrQBTNc3sbN/rVc9MEoJ
         B9A2Ltmut7AKVsAwJm1+6TepMAGjKiZZwI6XmyBOpi/vhmEJ34wOVC7qsUCtBRqXo9Gp
         YjJg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id t142si153429wmt.2.2017.09.15.03.43.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Sep 2017 03:43:16 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,396,1500933600"; 
   d="scan'208";a="237619296"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 15 Sep 2017 12:43:16 +0200
Date: Fri, 15 Sep 2017 12:42:42 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: irda: drivers: Replace (skb
 == NULL) with (!skb)
In-Reply-To: <20170915091310.GA21039@meghana-HP-Pavilion-Notebook>
Message-ID: <alpine.DEB.2.20.1709151240450.3146@hadrien>
References: <20170915091310.GA21039@meghana-HP-Pavilion-Notebook>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 15 Sep 2017, Meghana Madhyastha wrote:

> Some functions return NULL as an indication of failure.
> The style (!skb) is more common than (skb == NULL) for these
> functions.
>
> Found by the following Coccinelle script.
>
> @@
> identifier i;
> statement S;
> @@
>
> i = (\(kmalloc\|devm_kzalloc\|kmalloc_array\|devm_ioremap\|usb_alloc_urb\|
> alloc_netdev\|dev_alloc_skb\)(...));
>
> (
> -if (i == NULL)
> +if (!i)
> S

If you provide just this option, Coccinelle should expand your rule to
consider the other option as well.

You can see the section on isomorphisms in the Coccinelle tutorial.

> |
> -if (NULL == i)
> +if (!i)
> S
> )
>
> Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>

Acked-by: drivers/staging/irda/drivers/ali-ircc.c

> ---
>  drivers/staging/irda/drivers/ali-ircc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/irda/drivers/ali-ircc.c b/drivers/staging/irda/drivers/ali-ircc.c
> index 35f198d..756ae53 100644
> --- a/drivers/staging/irda/drivers/ali-ircc.c
> +++ b/drivers/staging/irda/drivers/ali-ircc.c
> @@ -1876,7 +1876,7 @@ static int  ali_ircc_dma_receive_complete(struct ali_ircc_cb *self)
>  			self->stamp = ktime_get();
>
>  			skb = dev_alloc_skb(len+1);
> -			if (skb == NULL)
> +			if (!skb)
>  			{

It's not related to the change in your patch, but this brace should b up
on the line before.

julia

>  				self->netdev->stats.rx_dropped++;
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170915091310.GA21039%40meghana-HP-Pavilion-Notebook.
> For more options, visit https://groups.google.com/d/optout.
>

