X-GM-THRID: 6253814918113394688
X-Received: by 10.28.45.82 with SMTP id t79mr797031wmt.2.1456101478570;
        Sun, 21 Feb 2016 16:37:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.170.74 with SMTP id t71ls291900lfe.20.gmail; Sun, 21 Feb
 2016 16:37:57 -0800 (PST)
X-Received: by 10.112.132.97 with SMTP id ot1mr1095996lbb.10.1456101477565;
        Sun, 21 Feb 2016 16:37:57 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id s141si1074100wmd.1.2016.02.21.16.37.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Feb 2016 16:37:57 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,483,1449529200"; 
   d="scan'208";a="165477598"
Received: from 68-74-177-106.lightspeed.wepbfl.sbcglobal.net (HELO hadrien) ([68.74.177.106])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 22 Feb 2016 01:37:56 +0100
Date: Sun, 21 Feb 2016 19:37:53 -0500 (EST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 3/4] staging: most: hdm-usb: Use macro
 DIV_ROUND_UP
In-Reply-To: <20160221183624.GA3428@Karyakshetra>
Message-ID: <alpine.DEB.2.10.1602211937020.2512@hadrien>
References: <20160221183624.GA3428@Karyakshetra>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Mon, 22 Feb 2016, Bhaktipriya Shridhar wrote:

> The macro DIV_ROUND_UP performs the computation
> (((n) + (d) - 1) /(d)). It clarifies the divisor calculations.
> This was done using the coccinelle script:
> @@
> expression e1;
> expression e2;
> @@
> (
> - ((e1) + e2 - 1) / (e2)
> + DIV_ROUND_UP(e1,e2)
> |
> - ((e1) + (e2 - 1)) / (e2)
> + DIV_ROUND_UP(e1,e2)
> )
>
> Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
> ---
>  drivers/staging/most/hdm-usb/hdm_usb.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/most/hdm-usb/hdm_usb.c b/drivers/staging/most/hdm-usb/hdm_usb.c
> index 3ee9e6f..29ffe51 100644
> --- a/drivers/staging/most/hdm-usb/hdm_usb.c
> +++ b/drivers/staging/most/hdm-usb/hdm_usb.c
> @@ -40,7 +40,7 @@
>  #define MAX_SUFFIX_LEN		10
>  #define MAX_STRING_LEN		80
>  #define MAX_BUF_SIZE		0xFFFF
> -#define CEILING(x, y)		(((x) + (y) - 1) / (y))
> +#define CEILING(x, y)		(DIV_ROUND_UP(x, (y)))

Maybe it would be better to just drop CEILING completely?  You could lok
at where it is used, and see if there would be any conceptul loss in just
calling DIV_ROUND_UP.

julia

>
>  #define USB_VENDOR_ID_SMSC	0x0424  /* VID: SMSC */
>  #define USB_DEV_ID_BRDG		0xC001  /* PID: USB Bridge */
> --
> 2.1.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160221183624.GA3428%40Karyakshetra.
> For more options, visit https://groups.google.com/d/optout.
>

