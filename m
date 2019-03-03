X-GM-THRID: 6664084258635644928
X-Received: by 2002:adf:e702:: with SMTP id c2mr665084wrm.31.1551607969421;
        Sun, 03 Mar 2019 02:12:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:2356:: with SMTP id j83ls1202568wmj.4.gmail; Sun, 03 Mar
 2019 02:12:48 -0800 (PST)
X-Google-Smtp-Source: APXvYqwiYMG74/3e6bdkNSPtnxoAeCQGCSWycqQPW064hBWC2k/dQPtq4F8KLicQIqID3m1+cLif
X-Received: by 2002:a1c:9d91:: with SMTP id g139mr658793wme.24.1551607968449;
        Sun, 03 Mar 2019 02:12:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551607968; cv=none;
        d=google.com; s=arc-20160816;
        b=hlfT2M06Kr7kQE8P0gPTNA2t4B4KV/I2Dq2gi+r7/bWSL/9eShrqu1ooZbbRTnk0Zf
         yfFlfE1HJlBil4HHdX4dFfDybCzwqNdGZ/fdqZ7m6zv1cUOQe7ZKqPkwW+YqDbKxo8Ye
         UuxHDJzyA/r+/S2IINSy6t4A9l1ILe1yGj8LeaO97PudJkmD/HsSjWzwM7f9TRQupPta
         jA8B0mLfQuX5eYi9fnOFkBfOA6M8l6wt8fVP2Sp6u/ialtFdXNR5oaRGH6LZ8E5bVIVn
         sBedOmHWLEysbyq7XdsZv4d10CriwIQ4tOlBD6hqkkfB6kSSa+Y25pFXwE+koYtFnYle
         +ivQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=iSz2Sya9LARaiA5PeG0gZMn+wtC38JednV7tqV5cTR4=;
        b=SEKFzOinneNOtb78mv5keUfEfB9RytEUtRTRSJlIlMg1Tcn4TXIGMcwZ7kiEcf6y5U
         9ONX6ATGskK/v7HhhIJ6TaSUwOIiAxmntKEV54ZdOsS5VrymRTtNqdAqb0KxyVWKUls4
         s2eX7Cxy5cnfgiNrDBJtQeXnz7SZnakempt5oBFqZeR8Ed9Lb1e6v/VTRXvad19O2BtJ
         F1F/+Q013cllMGnSAXBG2yREDmHfCHUcnQioszMVP39CknPqswXKwYJZpXj4YEQI4fAt
         tcGP+HeUJPfUG8jBnjDW9uu6Hn7bbA0wm22Aq20vp6woSZpNeWeb0uEVpIQnLfNQhqhg
         UUwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 60si109228wra.3.2019.03.03.02.12.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 03 Mar 2019 02:12:48 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,435,1544482800"; 
   d="scan'208";a="297913253"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Mar 2019 11:12:47 +0100
Date: Sun, 3 Mar 2019 11:12:47 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Himadri Pandya <himadri18.07@gmail.com>
cc: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com, 
    gregkh@linuxfoundation.org, julia.lawall@lip6.fr, 
    outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v3 3/3] staging: rtl8712: rename bSuspended to
 suspended
In-Reply-To: <20190303100859.4945-1-himadri18.07@gmail.com>
Message-ID: <alpine.DEB.2.21.1903031112000.3207@hadrien>
References: <20190303085013.3491-4-himadri18.07@gmail.com> <20190303100859.4945-1-himadri18.07@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 3 Mar 2019, Himadri Pandya wrote:

> Rename structure field bSuspended to suspended to avoid camelcase.
> Suggested by checkpatch.
>
> Changes in V2:
>         - Change type to bool as the variable is used as a boolean.

I'm not sure what this represents. If you want to make a change in a patch
in a series, you need to send the whole series again.  And the problem of
Changes in V2 being above the --- has not been resolved.

julia

>
> Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
> ---
> Changes in V3:
> 	- Include the type change in changelog text
> 	- Change the log message to make it more concise and informative
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
>

