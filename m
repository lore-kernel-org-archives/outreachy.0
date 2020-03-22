X-GM-THRID: 6806929906514001920
X-Received: by 2002:a2e:a401:: with SMTP id p1mr10487726ljn.106.1584868427486;
        Sun, 22 Mar 2020 02:13:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:c210:: with SMTP id l16ls114575lfc.2.gmail; Sun, 22 Mar
 2020 02:13:45 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtzNxD52Yf4+Rv6CoJxEh+LJWw5/2D0y9ygzVqMMVlGnrr70V72WrpIGnkYHZkD3R85Ph0Z
X-Received: by 2002:a05:6512:1041:: with SMTP id c1mr10051047lfb.14.1584868425809;
        Sun, 22 Mar 2020 02:13:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584868425; cv=none;
        d=google.com; s=arc-20160816;
        b=sFZxdzap33ssO0Atk+wXWD9R8iV1LobB6NKc6cdWxZh+e07xzwk8860aFINEGFQkyt
         AppooaMQ1/NZD0fjlZYaJ8tv++Nx+LbtY/HAvAWiey0LgFxWHu5Pm73T1HbR3vLBFwVg
         y1073yzs65CsqsfTdMCMucfunS0lAhK1jiIvpeZjc9pn65mM0CnYrzcNxP+ZuNimlDmr
         taA71LElT3gUh2eSi22mjOKzuPyHIocz4zkJ4bQBQP/6vj1s9+k2lzVIQT8HLT+vFlJQ
         Hy2SOVkhf+fEHiMHuoVzORGttq+uuROr/pRHuE+7gQ94BrvclAqETf3k+/UB3yHmytib
         H9MQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=3zMLSgp8BJCOibedcUxEGLagGlZxpLjwYAIhUtVKw6k=;
        b=0miRCor5FUpYxum9R6AQ3+1h5P9CAdogVJTBScF5UG5csJOjFmmz0Hwo6fMtykX/Cp
         +QwT4rFIdbswFVC5/UCiuLv9v+2zgwLjLaDvoArYDmRNLFq9jmcbx4K48ZlpxcpOEirO
         wUhIVqHeaYWdMu0PyrrvvsjBa4lEusbkUMZcHM6TZE6IAzJ6D1/s4Rv5LIxT4NpcHiHM
         lRIpOQInDGh51PkQwEpUvALdmvFzk9vi2tiuqsY28+nxUcTjgXt2fK/hAEFu+d8cTHL0
         /5LE34CHiZkySYxt+GxwVHd3STHjJQUIHaann2h0EaZ4utlrxQlDJ934V80bn2zOrIA+
         k6KA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id q17si403488lfe.4.2020.03.22.02.13.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Mar 2020 02:13:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.72,292,1580770800"; 
   d="scan'208";a="343190231"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 22 Mar 2020 10:13:44 +0100
Date: Sun, 22 Mar 2020 10:13:44 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Sam Muhammed <jane.pnx9@gmail.com>
cc: Jaroslav Kysela <perex@perex.cz>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] Staging: hp: Use netdev_warn().
In-Reply-To: <20200322072424.3922-1-jane.pnx9@gmail.com>
Message-ID: <alpine.DEB.2.21.2003221012440.2325@hadrien>
References: <20200322072424.3922-1-jane.pnx9@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 22 Mar 2020, Sam Muhammed wrote:

> This replaces printk(KERN_WARNING ..) with netdev_warn(),
> as the use of printk(KERN_<LEVEL> ..) isn't preferred when
> a struct net_device is available.

This is better, but it's printk that is not desirable in general, whether
the KERN_WARNING is there or nor.  So the log message could be simpler,
thus making it easier for someone who is looking at to see the issue
quickly.

julia

>
> Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
> ---
> Changes in v3:
> - Update subject line and log message to be more clear and descriptive.
>
> Changes in v2:
> - Remove the " : " from the print message, netdev_warn() doesn't need it.
>
>  drivers/staging/hp/hp100.c | 9 ++++-----
>  1 file changed, 4 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/staging/hp/hp100.c b/drivers/staging/hp/hp100.c
> index b89c4dcf53f5..1afd511260d0 100644
> --- a/drivers/staging/hp/hp100.c
> +++ b/drivers/staging/hp/hp100.c
> @@ -469,8 +469,7 @@ static int hp100_probe1(struct net_device *dev, int ioaddr, u_char bus,
>
>  	eid = hp100_read_id(ioaddr);
>  	if (eid == NULL) {	/* bad checksum? */
> -		printk(KERN_WARNING "%s: bad ID checksum at base port 0x%x\n",
> -		       __func__, ioaddr);
> +		netdev_warn(dev, "bad ID checksum at base port 0x%x\n", ioaddr);
>  		goto out2;
>  	}
>
> @@ -478,9 +477,9 @@ static int hp100_probe1(struct net_device *dev, int ioaddr, u_char bus,
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200322072424.3922-1-jane.pnx9%40gmail.com.
>

