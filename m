X-GM-THRID: 1721300418560
X-Received: by 10.112.162.135 with SMTP id ya7mr311891lbb.14.1424528536166;
        Sat, 21 Feb 2015 06:22:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.246.11 with SMTP id xs11ls394061lac.54.gmail; Sat, 21 Feb
 2015 06:22:15 -0800 (PST)
X-Received: by 10.112.168.104 with SMTP id zv8mr307979lbb.10.1424528535850;
        Sat, 21 Feb 2015 06:22:15 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id o3si308114wib.2.2015.02.21.06.22.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sat, 21 Feb 2015 06:22:15 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,620,1418079600"; 
   d="scan'208";a="100853563"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 21 Feb 2015 15:22:15 +0100
Date: Sat, 21 Feb 2015 15:22:09 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: vt6656: replace memcpy by
 ether_addr_copy
In-Reply-To: <1424518321-5700-1-git-send-email-yeliztaneroglu@gmail.com>
Message-ID: <alpine.DEB.2.10.1502211521310.2480@hadrien>
References: <1424518321-5700-1-git-send-email-yeliztaneroglu@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sat, 21 Feb 2015, Yeliz Taneroglu wrote:

> This patch fixes the following checkpatch.pl warning:
>
> Prefer ether_addr_copy() over memcpy() if the Ethernet addresses are
> __aligned(2)

You should explain why the address is aligned.  Perhaps the tool pahole
can be helpful.

julia

>
> Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
> ---
>  drivers/staging/vt6656/main_usb.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/vt6656/main_usb.c b/drivers/staging/vt6656/main_usb.c
> index 2fbff90..27a1f98 100644
> --- a/drivers/staging/vt6656/main_usb.c
> +++ b/drivers/staging/vt6656/main_usb.c
> @@ -319,7 +319,7 @@ static int vnt_init_registers(struct vnt_private *priv)
>
>  	/* get permanent network address */
>  	memcpy(priv->permanent_net_addr, init_rsp->net_addr, 6);
> -	memcpy(priv->current_net_addr, priv->permanent_net_addr, ETH_ALEN);
> +	ether_addr_copy(priv->current_net_addr, priv->permanent_net_addr);
>
>  	/* if exist SW network address, use it */
>  	dev_dbg(&priv->usb->dev, "Network address = %pM\n",
> --
> 1.8.3.2
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424518321-5700-1-git-send-email-yeliztaneroglu%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

