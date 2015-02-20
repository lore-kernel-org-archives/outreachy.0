X-GM-THRID: 1385330376704
X-Received: by 10.152.37.200 with SMTP id a8mr1424176lak.5.1424451862868;
        Fri, 20 Feb 2015 09:04:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.224.129 with SMTP id rc1ls290116lac.48.gmail; Fri, 20 Feb
 2015 09:04:22 -0800 (PST)
X-Received: by 10.112.138.202 with SMTP id qs10mr1401836lbb.24.1424451862393;
        Fri, 20 Feb 2015 09:04:22 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id o3si140074wib.2.2015.02.20.09.04.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Fri, 20 Feb 2015 09:04:22 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,615,1418079600"; 
   d="scan'208";a="122720435"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 20 Feb 2015 18:04:21 +0100
Date: Fri, 20 Feb 2015 18:04:16 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: =?ISO-8859-15?Q?Hatice_ERT=DCRK?= <haticeerturk27@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 11/11] Staging: drivers: usb: serial:
 ipw: Deleted space
In-Reply-To: <1424451380-4051-1-git-send-email-haticeerturk27@gmail.com>
Message-ID: <alpine.DEB.2.10.1502201803400.2375@hadrien>
References: <1424451380-4051-1-git-send-email-haticeerturk27@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-1814593199-1424451857=:2375"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1814593199-1424451857=:2375
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Fri, 20 Feb 2015, Hatice ERTÜRK wrote:

> Deleted spaces in 263 line.
> Used the checkpatch.pl.

This seems to be the same as another one that doesn't have a patch number
(11/11)?

julia

>
> Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
> ---
>  drivers/usb/serial/ipw.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/usb/serial/ipw.c b/drivers/usb/serial/ipw.c
> index 8b1cf18..150bca9 100644
> --- a/drivers/usb/serial/ipw.c
> +++ b/drivers/usb/serial/ipw.c
> @@ -260,7 +260,7 @@ static void ipw_close(struct usb_serial_port *port)
>  	dev_dbg(dev, "%s:sending purge\n", __func__);
>  	result = usb_control_msg(udev, usb_sndctrlpipe(udev, 0),
>  			 IPW_SIO_PURGE, USB_TYPE_VENDOR |
> -			 		USB_RECIP_INTERFACE | USB_DIR_OUT,
> +					USB_RECIP_INTERFACE | USB_DIR_OUT,
>  			 0x03,
>  			 0,
>  			 NULL,
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424451380-4051-1-git-send-email-haticeerturk27%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
--8323329-1814593199-1424451857=:2375--

