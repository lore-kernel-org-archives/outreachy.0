X-GM-THRID: 6250295934225219584
X-Received: by 10.112.138.98 with SMTP id qp2mr1214lbb.4.1455261274902;
        Thu, 11 Feb 2016 23:14:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.53.129 with SMTP id c123ls53371wma.30.gmail; Thu, 11 Feb
 2016 23:14:34 -0800 (PST)
X-Received: by 10.28.128.204 with SMTP id b195mr263814wmd.7.1455261274444;
        Thu, 11 Feb 2016 23:14:34 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id w197si43717wmw.3.2016.02.11.23.14.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 23:14:34 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,435,1449529200"; 
   d="scan'208";a="202764900"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 12 Feb 2016 08:14:33 +0100
Date: Fri, 12 Feb 2016 08:14:33 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Alison Schofield <amsfield22@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: vt6656: move local var init
 closer to usage
In-Reply-To: <20160212070014.GA13288@d830.WORKGROUP>
Message-ID: <alpine.DEB.2.02.1602120814150.2055@localhost6.localdomain6>
References: <20160212070014.GA13288@d830.WORKGROUP>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Thu, 11 Feb 2016, Alison Schofield wrote:

> Move init of struct urb to after sk_buf is verified otherwise
> the init is wasted if we exit early.
>
> Signed-off-by: Alison Schofield <amsfield22@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  drivers/staging/vt6656/usbpipe.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/vt6656/usbpipe.c b/drivers/staging/vt6656/usbpipe.c
> index bec5baf..3648d16 100644
> --- a/drivers/staging/vt6656/usbpipe.c
> +++ b/drivers/staging/vt6656/usbpipe.c
> @@ -209,12 +209,12 @@ int vnt_submit_rx_urb(struct vnt_private *priv, struct vnt_rcb *rcb)
>  	int status = 0;
>  	struct urb *urb;
>  
> -	urb = rcb->urb;
>  	if (!rcb->skb) {
>  		dev_dbg(&priv->usb->dev, "rcb->skb is null\n");
>  		return status;
>  	}
>  
> +	urb = rcb->urb;
>  	usb_fill_bulk_urb(urb,
>  			  priv->usb,
>  			  usb_rcvbulkpipe(priv->usb, 2),
> -- 
> 2.1.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160212070014.GA13288%40d830.WORKGROUP.
> For more options, visit https://groups.google.com/d/optout.
> 

