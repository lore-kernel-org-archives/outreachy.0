X-GM-THRID: 6394884347886829568
X-Received: by 10.25.29.11 with SMTP id d11mr492982lfd.14.1488926038070;
        Tue, 07 Mar 2017 14:33:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.201.79 with SMTP id z76ls32640lff.54.gmail; Tue, 07 Mar
 2017 14:33:57 -0800 (PST)
X-Received: by 10.46.78.9 with SMTP id c9mr535456ljb.20.1488926037577;
        Tue, 07 Mar 2017 14:33:57 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id l138si167917wmg.0.2017.03.07.14.33.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 14:33:57 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,260,1486422000"; 
   d="scan'208";a="263588374"
Received: from 198.67.28.109.rev.sfr.net (HELO [192.168.1.69]) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 07 Mar 2017 23:33:56 +0100
Date: Tue, 7 Mar 2017 23:33:56 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Tamara Diaconita <diaconitatamara@gmail.com>
cc: aditya.shankar@microchip.com, ganesh.krishna@microchip.com, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com, 
    Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: speakup: wilc1000: Align
 the code
In-Reply-To: <20170307221709.5489-1-diaconita.tamara@gmail.com>
Message-ID: <alpine.DEB.2.20.1703072333430.2292@hadrien>
References: <20170307221709.5489-1-diaconita.tamara@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 8 Mar 2017, Tamara Diaconita wrote:

> Deleted tabs and added spaces to align the code.

Deleted -> Delete
Added -> Add

julia

>
> Fixed the checkpath.pl issue:
> CHECK: Aligment should match open paranthesis.
>
> Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
> ---
>  drivers/staging/wilc1000/linux_wlan.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/wilc1000/linux_wlan.c b/drivers/staging/wilc1000/linux_wlan.c
> index 2eebc62..c65c5e8 100644
> --- a/drivers/staging/wilc1000/linux_wlan.c
> +++ b/drivers/staging/wilc1000/linux_wlan.c
> @@ -870,12 +870,12 @@ static int wilc_mac_open(struct net_device *ndev)
>  				if (memcmp(wl->vif[i ^ 1]->bssid,
>  					   wl->vif[i ^ 1]->src_addr, 6))
>  					wilc_set_wfi_drv_handler(vif,
> -							 wilc_get_vif_idx(vif),
> -							 0);
> +								 wilc_get_vif_idx(vif),
> +								 0);
>  				else
>  					wilc_set_wfi_drv_handler(vif,
> -							 wilc_get_vif_idx(vif),
> -							 1);
> +								 wilc_get_vif_idx(vif),
> +								 1);
>  			}
>  			wilc_set_operation_mode(vif, vif->iftype);
>
> --
> 2.9.3
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170307221709.5489-1-diaconita.tamara%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

