X-GM-THRID: 6252872571566424064
X-Received: by 10.194.62.69 with SMTP id w5mr2442447wjr.5.1455975794800;
        Sat, 20 Feb 2016 05:43:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.182.66 with SMTP id g63ls127998wmf.29.canary; Sat, 20 Feb
 2016 05:43:14 -0800 (PST)
X-Received: by 10.194.19.195 with SMTP id h3mr2440995wje.1.1455975794205;
        Sat, 20 Feb 2016 05:43:14 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id h73si482235wme.0.2016.02.20.05.43.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Feb 2016 05:43:14 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,476,1449529200"; 
   d="scan'208";a="165379570"
Received: from unknown (HELO hadrien.lan) ([162.212.89.130])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 20 Feb 2016 14:43:13 +0100
Date: Sat, 20 Feb 2016 08:43:11 -0500 (EST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8712: Remove exceptional
 & on function name
In-Reply-To: <20160219053859.GA29087@amitoj-Inspiron-3542>
Message-ID: <alpine.DEB.2.10.1602200839510.4083@hadrien>
References: <20160219053859.GA29087@amitoj-Inspiron-3542>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Fri, 19 Feb 2016, Amitoj Kaur Chawla wrote:

> In this file, function names are otherwise used as pointers without &.
>
> The Coccinelle semantic patch that is used to make this change is as
> follows:
>
> // <smpl>
> @r@
> identifier f;
> @@
>
> f(...) { ... }
> @@
> identifier r.f;
> @@
>
> - &f
> + f
> // </smpl>
>
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
>  drivers/staging/rtl8712/usb_intf.c |  4 ++--
>  drivers/staging/rtl8712/usb_ops.c  | 20 ++++++++++----------
>  2 files changed, 12 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/staging/rtl8712/usb_intf.c b/drivers/staging/rtl8712/usb_intf.c
> index f1d3d70..bb2decd 100644
> --- a/drivers/staging/rtl8712/usb_intf.c
> +++ b/drivers/staging/rtl8712/usb_intf.c
> @@ -399,8 +399,8 @@ static int r871xu_drv_init(struct usb_interface *pusb_intf,
>  	SET_NETDEV_DEV(pnetdev, &pusb_intf->dev);
>  	pnetdev->dev.type = &wlan_type;
>  	/* step 2. */
> -	padapter->dvobj_init = &r8712_usb_dvobj_init;
> -	padapter->dvobj_deinit = &r8712_usb_dvobj_deinit;
> +	padapter->dvobj_init = r8712_usb_dvobj_init;
> +	padapter->dvobj_deinit = r8712_usb_dvobj_deinit;
>  	padapter->halpriv.hal_bus_init = &r8712_usb_hal_bus_init;
>  	padapter->dvobjpriv.inirp_init = &r8712_usb_inirp_init;
>  	padapter->dvobjpriv.inirp_deinit = &r8712_usb_inirp_deinit;

Aren't these functions too?

> diff --git a/drivers/staging/rtl8712/usb_ops.c b/drivers/staging/rtl8712/usb_ops.c
> index 856f257..cf24007 100644
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
> +	pops->_read8 = usb_read8;
> +	pops->_read16 = usb_read16;
> +	pops->_read32 = usb_read32;
>  	pops->_read_port = &r8712_usb_read_port;
> -	pops->_write8 = &usb_write8;
> -	pops->_write16 = &usb_write16;
> -	pops->_write32 = &usb_write32;
> +	pops->_write8 = usb_write8;
> +	pops->_write16 = usb_write16;
> +	pops->_write32 = usb_write32;
>  	pops->_write_mem = &r8712_usb_write_mem;
>  	pops->_write_port = &r8712_usb_write_port;

Same here.

And is it really the case that there are more uses without & than with?
Theer seem to be quite a lot of uses with, and at least the second file is
rather small.

julia

