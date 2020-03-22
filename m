X-GM-THRID: 6806929906514001920
X-Received: by 2002:a1c:e914:: with SMTP id q20mr13101664wmc.105.1584878141214;
        Sun, 22 Mar 2020 04:55:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:d4c4:: with SMTP id w4ls941038wrk.8.gmail; Sun, 22 Mar
 2020 04:55:39 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsZ+L5Wt8BROmiBdPfDD8VJGSEDFjjX8R8ush7quYhpq2ctp4tk7yDCcKO5V1tw3RC9fYTA
X-Received: by 2002:a05:6000:10d1:: with SMTP id b17mr23971076wrx.360.1584878139908;
        Sun, 22 Mar 2020 04:55:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584878139; cv=none;
        d=google.com; s=arc-20160816;
        b=U9VnncU3JtpBnTjQA9i2T0cdUBO+w/0gxuJ3c0uG41MRN3L4k3iCdcIJnbyXeB9kHG
         dxcODOfXe+yqQKazPuVbsXeKYHpE4+wU7KDD6qVwpPTXckYdmvIYMia3lbOwN4EE74tb
         P09gNPvgmPXlMQbhCBYtf4EnplzE9JkZ8pgQANa/4Wb6TpmVJogvG4n8L0ITPo1+aNNK
         qis49u9IrOnWVT8RDrgMreW56Y3F7u+t+2kGHWzmACGNqKrwBaiAhbPChz/5UaTvuV9k
         6EWub8Zkx3XaHEzs9puEbj3rQHmW+bzNTzU2couX58CkVpndgLeva05g2JSonzOzY6Vl
         sWZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=Pp/gFqRz6u/BQTLuA/7fKY2SXwPulF8PDqHFIaqhYH0=;
        b=nwV6NHZFgjL+TyjCMs1B4nevQT9wGQ1D3fNz8WZKcI/0Lh06KohT7Vp6E7Vmgcju/K
         6lWVNssl8khJqTYCliw5PbR9M7dutaRdIAesBNplvU5tTSBDlHbYmSjqF01awjEc+G1K
         HX0Ip+yBqaqWKcPjajKohoNslgTOr1VqMNSKmV8+6cWXjcfq3THFrnmS1GXj8o4r7v6b
         NhAYhfR2JjNB1ZXrXGzdxGyhyCY9hVaVVxEGGC1PyvgupGzFdqxbJr8Z+TjvhWeLaDHS
         TeWlxusEEe9fBKnXBgreoux119isfs1r9BHd9yY7M9m1qw0xvvIFfDnH8oMxuwC7fb1o
         W2cA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id b81si396381wmc.2.2020.03.22.04.55.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Mar 2020 04:55:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.72,292,1580770800"; 
   d="scan'208";a="343196060"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 22 Mar 2020 12:55:16 +0100
Date: Sun, 22 Mar 2020 12:55:16 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Sam Muhammed <jane.pnx9@gmail.com>
cc: Jaroslav Kysela <perex@perex.cz>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v5] Staging: hp: Use netdev_warn().
In-Reply-To: <20200322115051.2767-1-jane.pnx9@gmail.com>
Message-ID: <alpine.DEB.2.21.2003221255060.2325@hadrien>
References: <20200322115051.2767-1-jane.pnx9@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 22 Mar 2020, Sam Muhammed wrote:

> This replaces printk(KERN_WARNING ..) with netdev_warn(),
> as the use of printk() isn't preferred when
> a struct net_device is available.

Acked-by: Julia Lawall <julia.lawall@inria.fr>


>
> Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
> ---
> Changes in v5:
> - Reformat the first netdev_warn() by moving ioaddr
> to a seperate line to prevent line over 80.
>
> Changes in v4:
> - Make log message more clear.
>
> Changes in v3:
> - Update subject line and log message to be more descriptive.
>
> Changes in v2:
> - Remove " : " from the printing message, netdev_warn() doesn't need it.
>
>  drivers/staging/hp/hp100.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/staging/hp/hp100.c b/drivers/staging/hp/hp100.c
> index b89c4dcf53f5..c1f5506b7381 100644
> --- a/drivers/staging/hp/hp100.c
> +++ b/drivers/staging/hp/hp100.c
> @@ -469,8 +469,8 @@ static int hp100_probe1(struct net_device *dev, int ioaddr, u_char bus,
>
>  	eid = hp100_read_id(ioaddr);
>  	if (eid == NULL) {	/* bad checksum? */
> -		printk(KERN_WARNING "%s: bad ID checksum at base port 0x%x\n",
> -		       __func__, ioaddr);
> +		netdev_warn(dev, "bad ID checksum at base port 0x%x\n",
> +			    ioaddr);
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
> +			    "bad lan address checksum at port 0x%x)\n",
> +			    ioaddr);
>  		err = -EIO;
>  		goto out2;
>  	}
> ---
> 2.20.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200322115051.2767-1-jane.pnx9%40gmail.com.
>

