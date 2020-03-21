X-GM-THRID: 6806652966405144576
X-Received: by 2002:adf:f8c1:: with SMTP id f1mr2715715wrq.345.1584799158944;
        Sat, 21 Mar 2020 06:59:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:afd4:: with SMTP id y20ls141247wrd.5.gmail; Sat, 21 Mar
 2020 06:59:17 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vu7TzeaITVZEVG+VUhuIooWe/T1CV/78M0X34vUwViYrvtjQdWNyi+L1jaTrwfWKqQi4jDK
X-Received: by 2002:adf:82a6:: with SMTP id 35mr17920233wrc.307.1584799157680;
        Sat, 21 Mar 2020 06:59:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584799157; cv=none;
        d=google.com; s=arc-20160816;
        b=K/w2oiux9MYDrgpJTG6iy4MHgeOYFxa08vvdtmn+XNF8hIPRVIGsicKdyt60KAWwcv
         z79Soi9Xm0Dlu/Bxb1UwKVM3dqGViWzQ6PiGb9ZvOzyh/HGSlKlGuvG3NY0PTgby8rYf
         o9lBON+Ndj7JxPnecM3dA4/h8dcytd+ELYFP5MdgzjhlieDOL8gbLQk6BcAS0BCG4UaM
         H5ZqLhq+GQRm+EjJyPcuQVUjWIS4bPaPP46act+Xoav4UmpGumU2NSdOErtx8AAHFVTC
         P7V+tuihTOuHqa0u/4MMRy3hB6OqCq7JJzpUydzVkzqp873yRHD6EmmjDpr7MJG4x30E
         pENg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=w5SHuyBl6XFRyR0SXX3EMRPafw1k7LW9gx10exdVtAo=;
        b=l7k3GX6IaKnwMkMEk2FXaUqsrs3aGaWbOYUSI9OcYRrKim5uUzlF+L5DuDNoKaDnLC
         uLd42qAz2ack0GQNEku8UhPDN/w+aq+p8diDSuFbz8i84WzqU6W7VQ9YwEr0/Tb8cXuG
         h8+6B33vpmWmeN+rSkBy7Db4JkjGXSrDdBDX9WlnHbiLiFRvV1wiNPZDlD6a9oIRvFpf
         tGwdPX4E7fdm2i3DTHr1Cq+YGMZA40nCshpkcR3yT2GpnFCF8ydBr6MY6duzWge9CqOo
         /kO4sbKl3cRdAKJHWVbL4+ZyTXhRrMG8x/RvG+PacS+vDScDr8pkog/sp6KX8CKVz6Fm
         1krw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id d16si430517wrv.4.2020.03.21.06.59.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Mar 2020 06:59:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.72,288,1580770800"; 
   d="scan'208";a="441485184"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 21 Mar 2020 14:59:17 +0100
Date: Sat, 21 Mar 2020 14:59:17 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Sam Muhammed <jane.pnx9@gmail.com>
cc: Jaroslav Kysela <perex@perex.cz>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: hp: Replace printk(KERN_WARNING
 ..) with netdev_warn().
In-Reply-To: <20200321132919.27704-1-jane.pnx9@gmail.com>
Message-ID: <alpine.DEB.2.21.2003211444450.2522@hadrien>
References: <20200321132919.27704-1-jane.pnx9@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 21 Mar 2020, Sam Muhammed wrote:

> Fixup the following Checkpatch.pl WARNING:
> WARNING: Prefer [subsystem eg: netdev]_warn([subsystem]dev, ...
> then dev_warn(dev, ... then pr_warn(...  to printk(KERN_WARNING ...
>
> Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
> ---
>  drivers/staging/hp/hp100.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/staging/hp/hp100.c b/drivers/staging/hp/hp100.c
> index b89c4dcf53f5..89af70571661 100644
> --- a/drivers/staging/hp/hp100.c
> +++ b/drivers/staging/hp/hp100.c
> @@ -469,8 +469,8 @@ static int hp100_probe1(struct net_device *dev, int ioaddr, u_char bus,
>
>  	eid = hp100_read_id(ioaddr);
>  	if (eid == NULL) {	/* bad checksum? */
> -		printk(KERN_WARNING "%s: bad ID checksum at base port 0x%x\n",
> -		       __func__, ioaddr);
> +		netdev_warn(dev,
> +			    " : bad ID checksum at base port 0x%x\n", ioaddr);
>  		goto out2;
>  	}
>
> @@ -478,9 +478,9 @@ static int hp100_probe1(struct net_device *dev, int ioaddr, u_char bus,
>  	for (i = uc = 0; i < 7; i++)
>  		uc += hp100_inb(LAN_ADDR + i);
>  	if (uc != 0xff) {
> -		printk(KERN_WARNING
> -		       "%s: bad lan address checksum at port 0x%x)\n",
> -		       __func__, ioaddr);
> +		netdev_warn(dev,
> +			    " : bad lan address checksum at port 0x%x)\n",
> +			    ioaddr);

Other calls to netdev_warn don't have a string that starts with " : ", so
you can probably drop that part as well.

julia


>  		err = -EIO;
>  		goto out2;
>  	}
> --
> 2.20.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200321132919.27704-1-jane.pnx9%40gmail.com.
>

