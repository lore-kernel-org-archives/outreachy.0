X-GM-THRID: 6252872571566424064
X-Received: by 10.28.172.194 with SMTP id v185mr599930wme.5.1456063036005;
        Sun, 21 Feb 2016 05:57:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.18.40 with SMTP id h40ls237130lfi.1.gmail; Sun, 21 Feb 2016
 05:57:15 -0800 (PST)
X-Received: by 10.25.29.211 with SMTP id d202mr2813518lfd.7.1456063035449;
        Sun, 21 Feb 2016 05:57:15 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id e130si765019wme.2.2016.02.21.05.57.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Feb 2016 05:57:15 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,480,1449529200"; 
   d="scan'208";a="165445243"
Received: from 68-74-177-106.lightspeed.wepbfl.sbcglobal.net (HELO hadrien) ([68.74.177.106])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 21 Feb 2016 14:57:14 +0100
Date: Sun, 21 Feb 2016 08:57:11 -0500 (EST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8712: Remove exceptional
 & on function name
In-Reply-To: <20160221062813.GA18950@amitoj-Inspiron-3542>
Message-ID: <alpine.DEB.2.10.1602210856220.4210@hadrien>
References: <20160221062813.GA18950@amitoj-Inspiron-3542>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 21 Feb 2016, Amitoj Kaur Chawla wrote:

> In these files, function names are otherwise used as pointers without &.

I'm still not clear on the "otherwise" part.  This semantic patch just
removes & from all function names.  Do you do anything to ensure that that
is the most common case already in the given file?

julia

> The Coccinelle semantic patch that is used to make this change is as
> follows:
>
> // <smpl>
> @r@
> identifier f;
> @@
> f(...) { ... }
> @@
> identifier r.f;
> @@
> - &f
> + f
> @m@
> type T;
> identifier f;
> @@
> T f(...);
> @@
> identifier m.f;
> @@
> - &f
> + f
> // </smpl>
>
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
> Changes in v2:
>         -Modified semantic patch and consequently, this patch to make changes
>          for non-static functions also.
>
>  drivers/staging/rtl8712/usb_intf.c | 10 +++++-----
>  drivers/staging/rtl8712/usb_ops.c  | 26 +++++++++++++-------------
>  2 files changed, 18 insertions(+), 18 deletions(-)
>
> diff --git a/drivers/staging/rtl8712/usb_intf.c b/drivers/staging/rtl8712/usb_intf.c
> index f1d3d70..c1a0ca49 100644
> --- a/drivers/staging/rtl8712/usb_intf.c
> +++ b/drivers/staging/rtl8712/usb_intf.c
> @@ -399,11 +399,11 @@ static int r871xu_drv_init(struct usb_interface *pusb_intf,
>  	SET_NETDEV_DEV(pnetdev, &pusb_intf->dev);
>  	pnetdev->dev.type = &wlan_type;
>  	/* step 2. */
> -	padapter->dvobj_init = &r8712_usb_dvobj_init;
> -	padapter->dvobj_deinit = &r8712_usb_dvobj_deinit;
> -	padapter->halpriv.hal_bus_init = &r8712_usb_hal_bus_init;
> -	padapter->dvobjpriv.inirp_init = &r8712_usb_inirp_init;
> -	padapter->dvobjpriv.inirp_deinit = &r8712_usb_inirp_deinit;
> +	padapter->dvobj_init = r8712_usb_dvobj_init;
> +	padapter->dvobj_deinit = r8712_usb_dvobj_deinit;
> +	padapter->halpriv.hal_bus_init = r8712_usb_hal_bus_init;
> +	padapter->dvobjpriv.inirp_init = r8712_usb_inirp_init;
> +	padapter->dvobjpriv.inirp_deinit = r8712_usb_inirp_deinit;
>  	/* step 3.
>  	 * initialize the dvobj_priv
>  	 */
> diff --git a/drivers/staging/rtl8712/usb_ops.c b/drivers/staging/rtl8712/usb_ops.c
> index 856f257..9172400 100644
> --- a/drivers/staging/rtl8712/usb_ops.c
> +++ b/drivers/staging/rtl8712/usb_ops.c
> @@ -179,22 +179,22 @@ static void usb_intf_hdl_close(u8 *priv)
>
>  void r8712_usb_set_intf_funs(struct intf_hdl *pintf_hdl)
>  {
> -	pintf_hdl->intf_hdl_init = &usb_intf_hdl_init;
> -	pintf_hdl->intf_hdl_unload = &usb_intf_hdl_unload;
> -	pintf_hdl->intf_hdl_open = &usb_intf_hdl_open;
> -	pintf_hdl->intf_hdl_close = &usb_intf_hdl_close;
> +	pintf_hdl->intf_hdl_init = usb_intf_hdl_init;
> +	pintf_hdl->intf_hdl_unload = usb_intf_hdl_unload;
> +	pintf_hdl->intf_hdl_open = usb_intf_hdl_open;
> +	pintf_hdl->intf_hdl_close = usb_intf_hdl_close;
>  }
>
>  void r8712_usb_set_intf_ops(struct _io_ops	*pops)
>  {
>  	memset((u8 *)pops, 0, sizeof(struct _io_ops));
> -	pops->_read8 = &usb_read8;
> -	pops->_read16 = &usb_read16;
> -	pops->_read32 = &usb_read32;
> -	pops->_read_port = &r8712_usb_read_port;
> -	pops->_write8 = &usb_write8;
> -	pops->_write16 = &usb_write16;
> -	pops->_write32 = &usb_write32;
> -	pops->_write_mem = &r8712_usb_write_mem;
> -	pops->_write_port = &r8712_usb_write_port;
> +	pops->_read8 = usb_read8;
> +	pops->_read16 = usb_read16;
> +	pops->_read32 = usb_read32;
> +	pops->_read_port = r8712_usb_read_port;
> +	pops->_write8 = usb_write8;
> +	pops->_write16 = usb_write16;
> +	pops->_write32 = usb_write32;
> +	pops->_write_mem = r8712_usb_write_mem;
> +	pops->_write_port = r8712_usb_write_port;
>  }
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160221062813.GA18950%40amitoj-Inspiron-3542.
> For more options, visit https://groups.google.com/d/optout.
>

