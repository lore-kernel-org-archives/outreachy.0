X-GM-THRID: 6664112359271825408
X-Received: by 2002:a1c:a8c1:: with SMTP id r184mr670497wme.4.1551610185307;
        Sun, 03 Mar 2019 02:49:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:a1c3:: with SMTP id v3ls2852927wrv.17.gmail; Sun, 03 Mar
 2019 02:49:44 -0800 (PST)
X-Google-Smtp-Source: APXvYqzpeG5JxG3irrtF7o/Xp+8kwCKZe16UO21pDEjzVu/hlAy4kMVJB128Ch5BOJ4MxMLgVk6d
X-Received: by 2002:a05:6000:10c1:: with SMTP id b1mr683075wrx.30.1551610184603;
        Sun, 03 Mar 2019 02:49:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551610184; cv=none;
        d=google.com; s=arc-20160816;
        b=OByHdRStvJLFU+7MabhkXuVw922i9GLKVatLL4XUrVhMDJPyBeD6RGXWtnfQMraUMX
         WFPRVZguWEix6fBFKgNKrd1Xf04d2FihSFGUGHe8i+G3sRaJzf2pu3DoHVlf3Pkglx7u
         1rku8KV1v4bxtzyQkzTyTMxxMiAa7RXJYCv7fkcVUdrVSqzlP04mUsy2XNQY9HTivMDs
         gh+V8vKOqTAfTd7NYr3rbMrYee+Oh53EvPo/2liwiZ7TPmo2EokFSFLLwsFpcTJMe2S1
         Wq1U9Djp5JRDDOTO6jJL/q4hzyP37FeVnBuS6vrJMFUkoctzUY36cousAyKhzXCloKQN
         /XZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=+28g/JDYld2Y491dpgrRojZaxHLReGUnny+MiO1NG7I=;
        b=jcssRMgQAvhHLeITSreXqVX8AXPb0MWvJDkoOf6uYM9mH19UPNSQLvz+4YcN/LdDsO
         C0RRf+XfP88xGGEco8vzMN2mkhFNRuvVsvReqCbQ/En4TT5p14MvxC/xO3XzENJ4Hl8S
         YPgtes264sy3mrMF6Mmgedpu9eI96h+16lk0KLvfNNW2YOkrji/0YoDxV9npihXu8nm7
         80u1P7ynK3owWfhj2h9DS1B/fgb5c1vEOG7k5yRjwyI4JfikvCBEzpD7k81m7u4snMxC
         kQ08bD0hHIWKierkT22MVsXTl5pyNt4eYZycZF2GjzZbJ7mt0zuSrT0k4ka+4Jtx9hB2
         k7gg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id f185si152599wme.1.2019.03.03.02.49.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 03 Mar 2019 02:49:44 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,435,1544482800"; 
   d="scan'208";a="297914723"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Mar 2019 11:49:43 +0100
Date: Sun, 3 Mar 2019 11:49:43 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Himadri Pandya <himadri18.07@gmail.com>
cc: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3 3/3] staging: rtl8712: rename
 bSuspended to suspended
In-Reply-To: <20190303103915.2684-4-himadri18.07@gmail.com>
Message-ID: <alpine.DEB.2.21.1903031149070.3207@hadrien>
References: <20190303103915.2684-1-himadri18.07@gmail.com> <20190303103915.2684-4-himadri18.07@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 3 Mar 2019, Himadri Pandya wrote:

>  - Rename structure field bSuspended to suspended to avoid camelcase.
> Suggested by checkpatch.
>  - Change type to bool as the variable is used as a boolean.
>
> Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
> ---
> Changes in V3:
> 	- Include the type change in changelog text
> 	- Change the log message to make it more concise and informative
> ---

You don't need the second ---.  But it doesn't matter - all the text
between the first --- and the first diff will be dropped.

julia

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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190303103915.2684-4-himadri18.07%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

