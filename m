X-GM-THRID: 6344026907248427008
X-Received: by 10.28.209.67 with SMTP id i64mr2420358wmg.4.1477084151350;
        Fri, 21 Oct 2016 14:09:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.71.75 with SMTP id u72ls53450wma.16.canary-gmail; Fri, 21
 Oct 2016 14:09:10 -0700 (PDT)
X-Received: by 10.28.25.132 with SMTP id 126mr1434958wmz.20.1477084150576;
        Fri, 21 Oct 2016 14:09:10 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id f4si18666wmf.1.2016.10.21.14.09.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 21 Oct 2016 14:09:10 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,526,1473112800"; 
   d="scan'208";a="241855327"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 21 Oct 2016 23:09:03 +0200
Date: Fri, 21 Oct 2016 23:09:03 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Keila Novo <laurana5@gmail.com>
cc: Aditya Shankar <aditya.shankar@microchip.com>, 
    Ganesh Krishna <ganesh.krishna@microchip.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH]/wilc1000:wilc_wfi_cfgoperations:
 INTIAL fixed to INITIAL
In-Reply-To: <20161008112815.GA3154@kheixx-VB>
Message-ID: <alpine.DEB.2.20.1610212306550.2166@hadrien>
References: <20161008112815.GA3154@kheixx-VB>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 8 Oct 2016, Keila Novo wrote:

> Checkpatch error fixed INTIAL to INITIAL

Since the application period is over, you should now just send patches to
the maintainers, that you get from get_maintainres, not to the outreachy
mailing list.  You can remove the argument --nol from the get_maintainers
command line, so that any mailing list specific to the files you are
modifying receives the patch as well.

julia


>
> Signed-off-by: Keila Novo <laurana5@gmail.com>
> ---
>  drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> index c1a24f7..9d4239f 100644
> --- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> +++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> @@ -29,8 +29,8 @@
>  #define P2P_INV_REQ			0x03
>  #define P2P_INV_RSP			0x04
>  #define PUBLIC_ACT_VENDORSPEC		0x09
> -#define GAS_INTIAL_REQ			0x0a
> -#define GAS_INTIAL_RSP			0x0b
> +#define GAS_INITIAL_REQ			0x0a
> +#define GAS_INITIAL_RSP			0x0b
>
>  #define INVALID_CHANNEL			0
>
> @@ -1470,10 +1470,10 @@ void WILC_WFI_p2p_rx(struct net_device *dev, u8 *buff, u32 size)
>  			}
>  			if (buff[ACTION_CAT_ID] == PUB_ACTION_ATTR_ID) {
>  				switch (buff[ACTION_SUBTYPE_ID]) {
> -				case GAS_INTIAL_REQ:
> +				case GAS_INITIAL_REQ:
>  					break;
>
> -				case GAS_INTIAL_RSP:
> +				case GAS_INITIAL_RSP:
>  					break;
>
>  				case PUBLIC_ACT_VENDORSPEC:
> @@ -1659,10 +1659,10 @@ static int mgmt_tx(struct wiphy *wiphy,
>  					curr_channel = chan->hw_value;
>  				}
>  				switch (buf[ACTION_SUBTYPE_ID])	{
> -				case GAS_INTIAL_REQ:
> +				case GAS_INITIAL_REQ:
>  					break;
>
> -				case GAS_INTIAL_RSP:
> +				case GAS_INITIAL_RSP:
>  					break;
>
>  				case PUBLIC_ACT_VENDORSPEC:
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161008112815.GA3154%40kheixx-VB.
> For more options, visit https://groups.google.com/d/optout.
>

