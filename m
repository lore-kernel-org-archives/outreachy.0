X-GM-THRID: 1371208155136
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,a90d0dab6b263336
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.13.98 with SMTP id g2mr566214wic.3.1424451717858;
        Fri, 20 Feb 2015 09:01:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.83.40 with SMTP id n8ls131125wiy.14.gmail; Fri, 20 Feb
 2015 09:01:57 -0800 (PST)
X-Received: by 10.180.101.101 with SMTP id ff5mr560397wib.5.1424451717586;
        Fri, 20 Feb 2015 09:01:57 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id by11si359498wib.1.2015.02.20.09.01.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Fri, 20 Feb 2015 09:01:57 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,615,1418079600"; 
   d="scan'208";a="100783168"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 20 Feb 2015 18:01:57 +0100
Date: Fri, 20 Feb 2015 18:01:52 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: =?ISO-8859-15?Q?Hatice_ERT=DCRK?= <haticeerturk27@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: drivers: usb: serial: ipw:
 Deleted space
In-Reply-To: <1424451508-4127-1-git-send-email-haticeerturk27@gmail.com>
Message-ID: <alpine.DEB.2.10.1502201759470.2375@hadrien>
References: <1424451508-4127-1-git-send-email-haticeerturk27@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-365629984-1424451712=:2375"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-365629984-1424451712=:2375
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Fri, 20 Feb 2015, Hatice ERTÜRK wrote:

> Deleted spaces in 263 line.
> Used the checkpatch.pl.

I can't see any spaces that are deleted.  So I guess it is actually that
you turned spaces into tabs?  It could be better to say that.  Also, you
don't have to mention the line number.  One can see that in the patch
itself.

And finally, unfortunately you should not be working on this code.  You
should only be working on code where the patch name begins with
drivers/staging.

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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424451508-4127-1-git-send-email-haticeerturk27%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
--8323329-365629984-1424451712=:2375--

