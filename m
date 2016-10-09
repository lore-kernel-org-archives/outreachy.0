X-GM-THRID: 6339051787828330496
X-Received: by 10.157.6.197 with SMTP id 63mr7398965otx.85.1476011058548;
        Sun, 09 Oct 2016 04:04:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.36.85 with SMTP id p79ls8020495ota.25.gmail; Sun, 09 Oct
 2016 04:04:18 -0700 (PDT)
X-Received: by 10.13.231.68 with SMTP id q65mr7586069ywe.58.1476011058267;
        Sun, 09 Oct 2016 04:04:18 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id p131si2356806vkf.1.2016.10.09.04.04.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Oct 2016 04:04:18 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,466,1473112800"; 
   d="scan'208";a="239996232"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien.local) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 09 Oct 2016 13:04:16 +0200
Date: Sun, 9 Oct 2016 13:04:16 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Mihaela Muraru <mihaela.muraru21@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com, 
    Aditya Shankar <aditya.shankar@microchip.com>, 
    Ganesh Krishna <ganesh.krishna@microchip.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: wilc1000: Unnecessary 'out
 of memory' message
In-Reply-To: <20161008111825.GA11921@domino-MS-16Y1>
Message-ID: <alpine.DEB.2.10.1610091303560.3462@hadrien>
References: <20161008111825.GA11921@domino-MS-16Y1>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sat, 8 Oct 2016, Mihaela Muraru wrote:

> Delete unnecessary 'out of memory' message , warning found by
> cehckpatch.pl tool.
>
> WARNING: Possible unnecessary 'out of memory' message.
>
> Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
> ---
>  drivers/staging/wilc1000/host_interface.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
>
> diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
> index 78f5613..2072170 100644
> --- a/drivers/staging/wilc1000/host_interface.c
> +++ b/drivers/staging/wilc1000/host_interface.c
> @@ -1723,7 +1723,6 @@ _WPAPtk_end_case_:
>  	case PMKSA:
>  		pu8keybuf = kmalloc((pstrHostIFkeyAttr->attr.pmkid.numpmkid * PMKSA_KEY_LEN) + 1, GFP_KERNEL);
>  		if (!pu8keybuf) {
> -			netdev_err(vif->ndev, "No buffer to send PMKSA Key\n");
>  			return -ENOMEM;
>  		}

You need to drop the braces here too, like you did in the next case.

julia

>
> @@ -2322,10 +2321,8 @@ static u32 Handle_ListenStateExpired(struct wilc_vif *vif,
>  		wid.size = 2;
>  		wid.val = kmalloc(wid.size, GFP_KERNEL);
>
> -		if (!wid.val) {
> -			netdev_err(vif->ndev, "Failed to allocate memory\n");
> +		if (!wid.val)
>  			return -ENOMEM;
> -		}
>
>  		wid.val[0] = u8remain_on_chan_flag;
>  		wid.val[1] = FALSE_FRMWR_CHANNEL;
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161008111825.GA11921%40domino-MS-16Y1.
> For more options, visit https://groups.google.com/d/optout.
>

