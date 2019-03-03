X-GM-THRID: 6664084258635644928
X-Received: by 2002:a2e:701a:: with SMTP id l26mr672651ljc.26.1551604518697;
        Sun, 03 Mar 2019 01:15:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:5c06:: with SMTP id q6ls1582908ljb.9.gmail; Sun, 03 Mar
 2019 01:15:17 -0800 (PST)
X-Google-Smtp-Source: APXvYqwJu8iMIXFZcViaR2LpcJ5Dmn3/2uAtVWo25tq+9XDpqvHedMw3iSEnXOHQl2I1LNKmZ833
X-Received: by 2002:a2e:9a0e:: with SMTP id o14mr699240lji.9.1551604517820;
        Sun, 03 Mar 2019 01:15:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551604517; cv=none;
        d=google.com; s=arc-20160816;
        b=dWt9dr6ec6Q97ycKGEZQWYPRkTqFGXY1gpzJoZJjN6e8mm85IigQQ22TJVkqJhcTQp
         tEBBNSPrw1ErWp5VrCB22HRJTQA9jlkLN1FrK9gD5XDX9qgWRpTPYLNUxAMHgs/RrG9y
         twdG4siueAseiOG3awoBgL7kviwfVF//I3JR/7HQmLnwku9ggNuAGwHtG6UVvMMX5gn1
         GBzJwYhbeIL8HvfzpsP02Mz6rOWQsT5zgImw7sc2bOY3XOyFy9sa/d4UYdMwdRrCDMQq
         LdYjOPWbClwIGK/Yf3bHhFN5FEjP4c+Bletf0w2Mtuh6C0rhdv14ktxHHhQOC+1kdw7L
         ZnpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=5tZWcuoxLaPyIefGKqvuebef7Uxqdzae9H7qN6S1GJE=;
        b=AyxW+fggLgi2rVMbSRYtjeild9yO1raSnKPDwr+KxNDN/U3u4gj2z1uY5aem8igbV8
         EaxivqKVi+xKPb4alu3nFB3GFWwF3DoJl1ZwQvR8l03/Yd5pzLFBk85xrj4rhyudsUlq
         winVrW0kOMGnFizeTQhuU/yRTyTIaJqAnpihVDA2Z2g/XmlxKnJl64A5I2F2GPZyRBBQ
         IoeScyrxj+c+4K6zrNUBWOgMQ0m76ywXpcF82I+RPmrQHj16YrdBPSx3RP6y+e7yHAo9
         ZQ7soZrG3MCwQtEUm3H9FdzcNdF6F92ulJbKYH/Q5aFLOqos1BliaCnhk0K8sKrmt2JF
         /ZUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id y26si141527lfl.1.2019.03.03.01.15.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 03 Mar 2019 01:15:17 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,435,1544482800"; 
   d="scan'208";a="371663566"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Mar 2019 10:15:17 +0100
Date: Sun, 3 Mar 2019 10:15:16 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Himadri Pandya <himadri18.07@gmail.com>
cc: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3 3/3] staging: rtl8712: rename
 bSuspended to suspended
In-Reply-To: <20190303085013.3491-4-himadri18.07@gmail.com>
Message-ID: <alpine.DEB.2.21.1903031013090.3207@hadrien>
References: <20190303085013.3491-1-himadri18.07@gmail.com> <20190303085013.3491-4-himadri18.07@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 3 Mar 2019, Himadri Pandya wrote:

> Rename structure field bSuspended to suspended to avoid camelcase.
> Suggested by checkpatch.
>
> Changes in V2:

No, we don't care about that some changes are from v1 and other changes
are from v2 in the text above the ---.  The text above the --- will be
read in the future by people who don't have (easy) access to the patch
history.  They are not interested in what was done when.  They just want
to know what is the complete change made by the patch and why it is
useful.  The log message should thus be written as though you are starting
from scratch.

>         - Change type to bool as the varibale is used as a boolean.

varibale -> variable

julia

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
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190303085013.3491-4-himadri18.07%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

