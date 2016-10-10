X-GM-THRID: 6339051787828330496
X-Received: by 10.129.105.3 with SMTP id e3mr7730371ywc.91.1476075411355;
        Sun, 09 Oct 2016 21:56:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.45.164 with SMTP id g33ls3660574otb.21.gmail; Sun, 09 Oct
 2016 21:56:50 -0700 (PDT)
X-Received: by 10.237.53.2 with SMTP id a2mr4725563qte.62.1476075410787;
        Sun, 09 Oct 2016 21:56:50 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id p131si3010331vkf.1.2016.10.09.21.56.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Oct 2016 21:56:50 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,470,1473112800"; 
   d="scan'208";a="196179980"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 10 Oct 2016 06:56:48 +0200
Date: Mon, 10 Oct 2016 06:56:48 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Mihaela Muraru <mihaela.muraru21@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com, 
    Aditya Shankar <aditya.shankar@microchip.com>, 
    Ganesh Krishna <ganesh.krishna@microchip.com>
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: wilc1000: Unnecessary
 'out of memory' message
In-Reply-To: <20161009205605.GA3816@domino-MS-16Y1>
Message-ID: <alpine.DEB.2.10.1610100656290.3148@hadrien>
References: <20161009205605.GA3816@domino-MS-16Y1>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sun, 9 Oct 2016, Mihaela Muraru wrote:

> Delete unnecessary 'out of memory' message , warning found by
> cehckpatch.pl tool.

You could fix the spelling of checkpatch also.

julia

>
> WARNING: Possible unnecessary 'out of memory' message.
>
> Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
>
> ---
> Changes in v2:
> 	-- delete the unnecessary braces.
> ---
>  drivers/staging/wilc1000/host_interface.c | 8 ++------
>  1 file changed, 2 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
> index 78f5613..ff3d267 100644
> --- a/drivers/staging/wilc1000/host_interface.c
> +++ b/drivers/staging/wilc1000/host_interface.c
> @@ -1722,10 +1722,8 @@ _WPAPtk_end_case_:
>
>  	case PMKSA:
>  		pu8keybuf = kmalloc((pstrHostIFkeyAttr->attr.pmkid.numpmkid * PMKSA_KEY_LEN) + 1, GFP_KERNEL);
> -		if (!pu8keybuf) {
> -			netdev_err(vif->ndev, "No buffer to send PMKSA Key\n");
> +		if (!pu8keybuf)
>  			return -ENOMEM;
> -		}
>
>  		pu8keybuf[0] = pstrHostIFkeyAttr->attr.pmkid.numpmkid;
>
> @@ -2322,10 +2320,8 @@ static u32 Handle_ListenStateExpired(struct wilc_vif *vif,
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161009205605.GA3816%40domino-MS-16Y1.
> For more options, visit https://groups.google.com/d/optout.
>

