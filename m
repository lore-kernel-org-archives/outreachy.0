X-GM-THRID: 6663286701018841088
X-Received: by 2002:a1c:358a:: with SMTP id c132mr292001wma.23.1551439821637;
        Fri, 01 Mar 2019 03:30:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:23d8:: with SMTP id j207ls295074wmj.13.canary-gmail;
 Fri, 01 Mar 2019 03:30:20 -0800 (PST)
X-Google-Smtp-Source: AHgI3IbuEE97kpdcpRtjQc40v6apL1WlhzMZIPBKYTTGLK7crKAiZkwKhzWf7nBHVUHffptB/n6m
X-Received: by 2002:a1c:a943:: with SMTP id s64mr285782wme.4.1551439820845;
        Fri, 01 Mar 2019 03:30:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551439820; cv=none;
        d=google.com; s=arc-20160816;
        b=Qo3ibFlrxYrDCJ8rvHJzTZ/1v68ivRfgKG/18QYxNJiny/uuu1uo3b3hGBEHuwwp8k
         Nf6oiNylFWfphjthjsAy61LFcFZNdZELasfMjoVT8imf7okQUvvL6SxzPFz5g//QW2SI
         B7AfxIWhVobKQ7G27MlsQsskB4rSNze/cw8UThAoMd4fG7O14xDT6jFKgCORMvEEdVal
         VcxTDXPbdrubG37sqYIifyoPoAPSazSelrRrXdxpynCvOC1TJcke3Sp/TLdueYEizSI3
         D5ZTyGNK7BQLc61I7ITDM/xEaxlSyAIovHGtr7GFslrDiTBMqirTByveqbgnkjgoClby
         W0/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=uK4zQVZJ3iY6DuRCGNHcPZx3Zifj7A7rk7R1bhzkLis=;
        b=n/61rNZRkE+3ZSkZ98xm16P1OxPe5HtVSscItT3SpjNTTyxE2xFTyo6rRbjGlIla/O
         QOWFSYwuKCYLWtPsVJhs4TSVDggMIdV7zxx6zJCFOvZbGkvG1ofNdHC08O+fJl5cR+5t
         1mjFIFvEKW3QUjbqeIezwwUDoxbrixxcVCMOXnrTZDISN4FSUWqbYlP5HYam6qmKtwhQ
         rBx0U7Yf892vT26crUfJ1FiOMyaxdf3HwSzlFl7AdfWTTrSYU+xjryHB0zspiUvrbG9x
         LDCuG7Uy5fL+NGcqpAhQz2e5x2Dj5FavbTNXkTo16cZykF6UiuUtHURDdLJRhKc3Pwp4
         sSBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id b8si949540wru.1.2019.03.01.03.30.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 01 Mar 2019 03:30:20 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,427,1544482800"; 
   d="scan'208";a="371505001"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 01 Mar 2019 12:30:20 +0100
Date: Fri, 1 Mar 2019 12:30:16 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Himadri Pandya <himadri18.07@gmail.com>
cc: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 3/3] staging: rtl8712: rename
 bSuspended to suspended
In-Reply-To: <20190301104842.75482-4-himadri18.07@gmail.com>
Message-ID: <alpine.DEB.2.20.1903011228480.6234@hadrien>
References: <20190301051505.55407-1-himadri18.07@gmail.com> <20190301104842.75482-1-himadri18.07@gmail.com> <20190301104842.75482-4-himadri18.07@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 1 Mar 2019, Himadri Pandya wrote:

> Fix checkpatch warning: Avoid CamelCase by renaming struct variable
> bSuspended to suspended.
>
> Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
> ---
> Changes in V2:
> 	- Change type to bool as the varibale is used as a boolean.

The change of type should be mentioned above the ---.  That is something
that people could be interested in seeing in the future.  Below the ---,
you can make the point that you have added this change as compared to the
initial version.  That is not interesting in the future, because no one
will have seen the initial version.

julia

> ---
>  drivers/staging/rtl8712/drv_types.h     | 2 +-
>  drivers/staging/rtl8712/usb_intf.c      | 4 ++--
>  drivers/staging/rtl8712/usb_ops_linux.c | 2 +-
>  3 files changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/rtl8712/drv_types.h b/drivers/staging/rtl8712/drv_types.h
> index acee68d3d152..9ae86631fa8b 100644
> --- a/drivers/staging/rtl8712/drv_types.h
> +++ b/drivers/staging/rtl8712/drv_types.h
> @@ -147,7 +147,7 @@ struct _adapter {
>  	struct mp_priv  mppriv;
>  	bool	driver_stopped;
>  	bool	surprise_removed;
> -	s32	bSuspended;
> +	bool	suspended;
>  	u32	IsrContent;
>  	u32	ImrContent;
>  	u8	EepromAddressSize;
> diff --git a/drivers/staging/rtl8712/usb_intf.c b/drivers/staging/rtl8712/usb_intf.c
> index 674c31155cdd..7478bbd3de78 100644
> --- a/drivers/staging/rtl8712/usb_intf.c
> +++ b/drivers/staging/rtl8712/usb_intf.c
> @@ -196,7 +196,7 @@ static int r871x_suspend(struct usb_interface *pusb_intf, pm_message_t state)
>  	struct _adapter *padapter = netdev_priv(pnetdev);
>
>  	netdev_info(pnetdev, "Suspending...\n");
> -	padapter->bSuspended = true;
> +	padapter->suspended = true;
>  	rtl871x_intf_stop(padapter);
>  	if (pnetdev->netdev_ops->ndo_stop)
>  		pnetdev->netdev_ops->ndo_stop(pnetdev);
> @@ -220,7 +220,7 @@ static int r871x_resume(struct usb_interface *pusb_intf)
>  	netif_device_attach(pnetdev);
>  	if (pnetdev->netdev_ops->ndo_open)
>  		pnetdev->netdev_ops->ndo_open(pnetdev);
> -	padapter->bSuspended = false;
> +	padapter->suspended = false;
>  	rtl871x_intf_resume(padapter);
>  	return 0;
>  }
> diff --git a/drivers/staging/rtl8712/usb_ops_linux.c b/drivers/staging/rtl8712/usb_ops_linux.c
> index 8df308df35c6..9d290bc2fdb7 100644
> --- a/drivers/staging/rtl8712/usb_ops_linux.c
> +++ b/drivers/staging/rtl8712/usb_ops_linux.c
> @@ -221,7 +221,7 @@ static void r8712_usb_read_port_complete(struct urb *purb)
>  			padapter->driver_stopped = true;
>  			break;
>  		case -ENOENT:
> -			if (!padapter->bSuspended) {
> +			if (!padapter->suspended) {
>  				padapter->driver_stopped = true;
>  				break;
>  			}
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190301104842.75482-4-himadri18.07%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

