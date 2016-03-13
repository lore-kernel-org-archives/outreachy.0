X-GM-THRID: 6261199575440162816
X-Received: by 10.28.232.155 with SMTP id f27mr1222754wmi.0.1457841331110;
        Sat, 12 Mar 2016 19:55:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.22.106 with SMTP id m103ls542724lfi.94.gmail; Sat, 12 Mar
 2016 19:55:30 -0800 (PST)
X-Received: by 10.25.153.196 with SMTP id b187mr2136511lfe.3.1457841330551;
        Sat, 12 Mar 2016 19:55:30 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id a126si260375wmd.2.2016.03.12.19.55.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 12 Mar 2016 19:55:30 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.24,328,1454972400"; 
   d="scan'208";a="207447551"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 13 Mar 2016 04:55:15 +0100
Date: Sun, 13 Mar 2016 04:55:15 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Anchal Jain <anchalj109@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] drivers: staging: wilc1000: else is
 not generally useful after a break or return
In-Reply-To: <20160312161141.GA3241@life-desktop>
Message-ID: <alpine.DEB.2.02.1603130453280.2069@localhost6.localdomain6>
References: <20160312161141.GA3241@life-desktop>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sat, 12 Mar 2016, Anchal Jain wrote:

> Remove else after a break. Because else is generally not useful after a break or return.

The lines in the commit log message should be at most 80 characters, 
ideally a bit less.

> Signed-off-by: Anchal Jain <anchalj109@gmail.com>
> ---
>  drivers/staging/wilc1000/wilc_wlan.c | 8 +++-----
>  1 file changed, 3 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/staging/wilc1000/wilc_wlan.c b/drivers/staging/wilc1000/wilc_wlan.c
> index fd938fb..704771a 100644
> --- a/drivers/staging/wilc1000/wilc_wlan.c
> +++ b/drivers/staging/wilc1000/wilc_wlan.c
> @@ -626,14 +626,13 @@ int wilc_wlan_handle_txq(struct net_device *dev, u32 *txq_count)
>  
>  			if ((reg & 0x1) == 0) {
>  				break;
> -			} else {
> +			}
>  				counter++;

The above line and the ones following are no longer inside an if, so they 
should be less indented.

>  				if (counter > 200) {
>  					counter = 0;
>  					ret = wilc->hif_func->hif_write_reg(wilc, WILC_HOST_TX_CTRL, 0);
>  					break;
> -				}
> -			}
> +					}

The above brace does not appear to be in the right place.

julia

>  		} while (!wilc->quit);
>  
>  		if (!ret)
> @@ -679,9 +678,8 @@ int wilc_wlan_handle_txq(struct net_device *dev, u32 *txq_count)
>  				if (!ret)
>  					break;
>  				break;
> -			} else {
> -				break;
>  			}
> +			break;
>  		} while (1);
>  
>  		if (!ret)
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160312161141.GA3241%40life-desktop.
> For more options, visit https://groups.google.com/d/optout.
> 

