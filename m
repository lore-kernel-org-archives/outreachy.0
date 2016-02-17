X-GM-THRID: 6252308314150928384
X-Received: by 10.112.54.202 with SMTP id l10mr451674lbp.14.1455729202420;
        Wed, 17 Feb 2016 09:13:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.12.149 with SMTP id 143ls1032266wmm.46.gmail; Wed, 17 Feb
 2016 09:13:21 -0800 (PST)
X-Received: by 10.28.30.147 with SMTP id e141mr606011wme.0.1455729201846;
        Wed, 17 Feb 2016 09:13:21 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id e130si1033571wme.2.2016.02.17.09.13.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Feb 2016 09:13:21 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,461,1449529200"; 
   d="scan'208";a="165071674"
Received: from 68-74-177-106.lightspeed.wepbfl.sbcglobal.net (HELO hadrien) ([68.74.177.106])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 17 Feb 2016 18:13:20 +0100
Date: Wed, 17 Feb 2016 12:13:18 -0500 (EST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Alison Schofield <amsfield22@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: vt6656: use 0 in test for
 successful urb status
In-Reply-To: <20160217170915.GA4387@d830.WORKGROUP>
Message-ID: <alpine.DEB.2.10.1602171212530.4547@hadrien>
References: <20160217170915.GA4387@d830.WORKGROUP>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Wed, 17 Feb 2016, Alison Schofield wrote:

> Replace STATUS_SUCCESS with 0 in urb->status test.
>
> Successful usb status is simply 0.  STATUS_SUCCESS is defined
> for NDIS status in this driver, but was being misused in this case.

Maybe if (status) would be more normal.

julia

> Signed-off-by: Alison Schofield <amsfield22@gmail.com>
> ---
>  drivers/staging/vt6656/usbpipe.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/vt6656/usbpipe.c b/drivers/staging/vt6656/usbpipe.c
> index f27eb9a..5551b4f 100644
> --- a/drivers/staging/vt6656/usbpipe.c
> +++ b/drivers/staging/vt6656/usbpipe.c
> @@ -116,7 +116,7 @@ static void vnt_start_interrupt_urb_complete(struct urb *urb)
>  		break;
>  	}
>
> -	if (status != STATUS_SUCCESS) {
> +	if (status != 0) {
>  		priv->int_buf.in_use = false;
>
>  		dev_dbg(&priv->usb->dev, "%s status = %d\n", __func__, status);
> --
> 2.1.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160217170915.GA4387%40d830.WORKGROUP.
> For more options, visit https://groups.google.com/d/optout.
>

