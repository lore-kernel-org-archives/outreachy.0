X-GM-THRID: 6802694026822680576
X-Received: by 2002:a17:906:2602:: with SMTP id h2mr7487359ejc.169.1584033725384;
        Thu, 12 Mar 2020 10:22:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:d4d7:: with SMTP id t23ls4261858edr.9.gmail; Thu, 12 Mar
 2020 10:22:04 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvUxzkdJbNE5JX8UPPlN8n3LlBjI9j29slLB4CVq6STeyHhhCHymf7qgUNrwoYMjMP6H4sv
X-Received: by 2002:a05:6402:1c91:: with SMTP id cy17mr9295362edb.6.1584033724046;
        Thu, 12 Mar 2020 10:22:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584033724; cv=none;
        d=google.com; s=arc-20160816;
        b=dbY60mdtHEUX457jfcMPUuJUs4e0rds5v9HSHM/AC+T5BIjhMMXs0LJ2Gaz9sS5WS8
         c4g2DDAGJZqE1E/z3eu1ZsKTI4kVjBD2MLaxE1pWGiknvLlB+VR+eG1p5tnPlNx6ClQ7
         0431NJup1XtHpoq4tMZGrzAbbK0eMPQavU8rhwnJyYhntT/mS0c6fClT99PM1NYq9Dci
         s8hE6v5zSvdxRe9epqd9qVsmSR19T3rPPg9GVV/mCju+hextZmwU5QTVICEk7rbl/ntC
         bwNDZRstjvAPjuEDb8T+UW3f2gz6NLrgeWgs+uLEdGcZzPutcsrrwEa83WXd8FrIPa/m
         C79Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=o20OBexMbVELUnV5YX58xZ6e9/XorOub7AkJX1339R0=;
        b=X5Cd1udrHH787v1nadq1u4Kt+ncSTp2b3z3uKWZbRk4WzinqPHkDvg4UJRCWvMR//i
         WSfm+BNAT2lazGaq0/e+iDJAdtpkDCieM6E44Ds6iqOFfX2iULQ3iZtHMcTJshm+Cbay
         G5Y12IiZCMTTRaZYMy9+a+mc538zT4ljn+MmA11qh85GnZSSWSBtzGLSgqcNcCVHzRWp
         c5NyaM6WZoq/H8esHprriNsfcRzEhaQx2iasQJeyWWJFlQajeUP+j+H5ZdiegTdM5lNS
         O7ChXYf64YiSK3E2EGlbPQLD5eexzqtZomv946gTiWNUPoxqSGAVY2dI2vY9KyOdQL7r
         tafw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id c21si25874edj.0.2020.03.12.10.22.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Mar 2020 10:22:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,545,1574118000"; 
   d="scan'208";a="440071866"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 12 Mar 2020 18:22:03 +0100
Date: Thu, 12 Mar 2020 18:22:03 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Lourdes Pedrajas <lu@pplo.net>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v4] staging: rtl8192u: r8192U_wx: use
 netdev_warn() instead of printk()
In-Reply-To: <20200312161548.5631-1-lu@pplo.net>
Message-ID: <alpine.DEB.2.21.2003121820420.2418@hadrien>
References: <20200312161548.5631-1-lu@pplo.net>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 12 Mar 2020, Lourdes Pedrajas wrote:

> printk() is deprecated, use netdev_warn() instead, which is a message printing
> function specific for network devices and uses net_device data structure,
> defined in include/linux/netdevice.h. Issue found by checkpatch.

I think that you could drop the part about the net_device structure.  The
netdev debug functions are widley used in networking code, so anyone
interested in the patch should know about them already.

julia

>
> Suggested-by: Julia Lawall <julia.lawall@inria.fr>
> Suggested-by: Stefano Brivio <sbrivio@redhat.com>
> Signed-off-by: Lourdes Pedrajas <lu@pplo.net>
> ---
> Changes since v3:
> - use netdev_warn() correcly
>
>  drivers/staging/rtl8192u/r8192U_wx.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rtl8192u/r8192U_wx.c b/drivers/staging/rtl8192u/r8192U_wx.c
> index 0118edb0b9ab..100532598781 100644
> --- a/drivers/staging/rtl8192u/r8192U_wx.c
> +++ b/drivers/staging/rtl8192u/r8192U_wx.c
> @@ -588,7 +588,7 @@ static int r8192_wx_set_enc(struct net_device *dev,
>  				hwkey);                 /* KeyContent */
>
>  		} else {
> -			printk("wrong type in WEP, not WEP40 and WEP104\n");
> +			netdev_warn(dev, "wrong type in WEP, not WEP40 and WEP104\n");
>  		}
>
>  	}
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200312161548.5631-1-lu%40pplo.net.
>

