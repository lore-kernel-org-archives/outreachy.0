X-GM-THRID: 6396185012305133568
X-Received: by 10.25.193.213 with SMTP id r204mr3402506lff.24.1489228280824;
        Sat, 11 Mar 2017 02:31:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.83.93 with SMTP id t29ls1181710ljd.29.gmail; Sat, 11 Mar
 2017 02:31:20 -0800 (PST)
X-Received: by 10.46.83.7 with SMTP id h7mr4262138ljb.24.1489228280344;
        Sat, 11 Mar 2017 02:31:20 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id e72si182648wma.0.2017.03.11.02.31.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 02:31:20 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,145,1486422000"; 
   d="scan'208";a="264126528"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 11 Mar 2017 11:31:19 +0100
Date: Sat, 11 Mar 2017 11:31:19 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Tamara Diaconita <diaconitatamara@gmail.com>
cc: aditya.shankar@microchip.com, ganesh.krishna@microchip.com, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com, 
    Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: wilc1000: Avoid excessive
 indentation
In-Reply-To: <20170311102419.7302-1-diaconita.tamara@gmail.com>
Message-ID: <alpine.DEB.2.20.1703111130080.2202@hadrien>
References: <20170311102419.7302-1-diaconita.tamara@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 11 Mar 2017, Tamara Diaconita wrote:

> Modified if/else segment to avoid excessive indentation.
> Fix the checkpatch.pl warning:
> WARNING: line over 80 characters.
>
> Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
> ---
>  drivers/staging/wilc1000/linux_wlan.c | 11 +++++------
>  1 file changed, 5 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/wilc1000/linux_wlan.c b/drivers/staging/wilc1000/linux_wlan.c
> index 2eebc62..0292aab 100644
> --- a/drivers/staging/wilc1000/linux_wlan.c
> +++ b/drivers/staging/wilc1000/linux_wlan.c
> @@ -866,14 +866,13 @@ static int wilc_mac_open(struct net_device *ndev)
>  				wilc_set_wfi_drv_handler(vif,
>  							 wilc_get_vif_idx(vif),
>  							 wl->open_ifcs);
> -			} else {
> -				if (memcmp(wl->vif[i ^ 1]->bssid,
> -					   wl->vif[i ^ 1]->src_addr, 6))
> -					wilc_set_wfi_drv_handler(vif,
> +			} else if (memcmp(wl->vif[i ^ 1]->bssid,
> +					   wl->vif[i ^ 1]->src_addr, 6)){

This line is not properly aligned with the line above.  And the { needs a
space in front of it.

Also, more braces are needed overall, to follow the principle that if one
branch has braces then they all should have them.

julia

> +				wilc_set_wfi_drv_handler(vif,
>  							 wilc_get_vif_idx(vif),
>  							 0);
> -				else
> -					wilc_set_wfi_drv_handler(vif,
> +			else
> +				wilc_set_wfi_drv_handler(vif,
>  							 wilc_get_vif_idx(vif),
>  							 1);
>  			}
> --
> 2.9.3
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170311102419.7302-1-diaconita.tamara%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

