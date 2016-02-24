X-GM-THRID: 6254801452291588096
X-Received: by 10.28.45.82 with SMTP id t79mr2500614wmt.2.1456310689116;
        Wed, 24 Feb 2016 02:44:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.145.149 with SMTP id t143ls481403lfd.105.gmail; Wed, 24 Feb
 2016 02:44:48 -0800 (PST)
X-Received: by 10.112.168.201 with SMTP id zy9mr4725449lbb.23.1456310688525;
        Wed, 24 Feb 2016 02:44:48 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id c143si121181wmd.1.2016.02.24.02.44.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Feb 2016 02:44:48 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,493,1449529200"; 
   d="scan'208";a="165809796"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 24 Feb 2016 11:44:33 +0100
Date: Wed, 24 Feb 2016 11:44:32 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Bhumika Goyal <bhumirks@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723au: Clean up tests
 if NULL returned on failure
In-Reply-To: <1456309437-7356-1-git-send-email-bhumirks@gmail.com>
Message-ID: <alpine.DEB.2.02.1602241143500.2149@localhost6.localdomain6>
References: <1456309437-7356-1-git-send-email-bhumirks@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 24 Feb 2016, Bhumika Goyal wrote:

> Some functions like kmalloc/usb_alloc_urb returns Null as their return
> value on failure. !x is generally preferred over x==NULL or NULL==x. So 
> make use of !x if the value returned on failure by these functions is NULL.
> Done using coccinelle:
> 
> @@
> expression e;
> statement S;
> @@
> e = \(kmalloc\|devm_kzalloc\|kmalloc_array
>      \|devm_ioremap\|usb_alloc_urb\|alloc_netdev\)(...);
> - if(e==NULL)
> + if(!e)
>   S
> 
> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> ---
>  drivers/staging/rtl8723au/hal/rtl8723a_hal_init.c | 4 ++--
>  drivers/staging/rtl8723au/os_dep/xmit_linux.c     | 2 +-
>  2 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723au/hal/rtl8723a_hal_init.c b/drivers/staging/rtl8723au/hal/rtl8723a_hal_init.c
> index e3dc889..71d0549 100644
> --- a/drivers/staging/rtl8723au/hal/rtl8723a_hal_init.c
> +++ b/drivers/staging/rtl8723au/hal/rtl8723a_hal_init.c
> @@ -399,7 +399,7 @@ hal_ReadEFuse_WiFi(struct rtw_adapter *padapter,
>  	}
>  
>  	efuseTbl = kmalloc(EFUSE_MAP_LEN_8723A, GFP_KERNEL);
> -	if (efuseTbl == NULL) {
> +	if (!efuseTbl) {
>  		DBG_8723A("%s: alloc efuseTbl fail!\n", __func__);

Unrelated to the change you are doing, kmalloc generates a complete 
backtrace on failure, so there is no need for these debug messages.

julia

>  		return;
>  	}
> @@ -491,7 +491,7 @@ hal_ReadEFuse_BT(struct rtw_adapter *padapter,
>  	}
>  
>  	efuseTbl = kmalloc(EFUSE_BT_MAP_LEN, GFP_KERNEL);
> -	if (efuseTbl == NULL) {
> +	if (!efuseTbl) {
>  		DBG_8723A("%s: efuseTbl malloc fail!\n", __func__);
>  		return;
>  	}
> diff --git a/drivers/staging/rtl8723au/os_dep/xmit_linux.c b/drivers/staging/rtl8723au/os_dep/xmit_linux.c
> index 9a14074..64be72a 100644
> --- a/drivers/staging/rtl8723au/os_dep/xmit_linux.c
> +++ b/drivers/staging/rtl8723au/os_dep/xmit_linux.c
> @@ -37,7 +37,7 @@ int rtw_os_xmit_resource_alloc23a(struct rtw_adapter *padapter,
>  
>  	for (i = 0; i < 8; i++) {
>  		pxmitbuf->pxmit_urb[i] = usb_alloc_urb(0, GFP_KERNEL);
> -		if (pxmitbuf->pxmit_urb[i] == NULL) {
> +		if (!pxmitbuf->pxmit_urb[i]) {
>  			DBG_8723A("pxmitbuf->pxmit_urb[i]==NULL");
>  			return _FAIL;
>  		}
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1456309437-7356-1-git-send-email-bhumirks%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

