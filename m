X-GM-THRID: 6342441922054848512
X-Received: by 10.28.154.197 with SMTP id c188mr222620wme.8.1476823736336;
        Tue, 18 Oct 2016 13:48:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.38.81 with SMTP id m78ls25483lfm.9.gmail; Tue, 18 Oct 2016
 13:48:55 -0700 (PDT)
X-Received: by 10.25.150.11 with SMTP id y11mr187831lfd.4.1476823735401;
        Tue, 18 Oct 2016 13:48:55 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id m133si58922wmg.0.2016.10.18.13.48.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Oct 2016 13:48:55 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,511,1473112800"; 
   d="scan'208";a="197276262"
Received: from 198.67.28.109.rev.sfr.net (HELO [192.168.1.69]) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 18 Oct 2016 22:48:54 +0200
Date: Tue, 18 Oct 2016 22:48:54 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Mihaela Muraru <mihaela.muraru21@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: emxx_udc: Make a read-only
 structure
In-Reply-To: <20161018204221.GA7799@domino-MS-16Y1>
Message-ID: <alpine.DEB.2.20.1610182247190.2247@hadrien>
References: <20161018204221.GA7799@domino-MS-16Y1>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

On Tue, 18 Oct 2016, Mihaela Muraru wrote:

> This patch add const qualifier at the declaration of the structure,
> because it contains information about usb hardware device and those
> values shoud not be overwritten.

This focuses on the intent, which makes sense, but one really wants to be
sure that we won't end up with a const value floating into a modification
context, which would cause a runtime error.  So it would be good to
describe how the structure is used.  For example, is it only passed to
another function where the corresponding parameter is declared as const?

julia

>
> The structure become a read-only data, this increase the security and
> the integrity of the program.
>
> Found with Coccinelle:
> @r disable optional_qualifier@
> identifier s,i;
> @@
> * static struct s i ={...};
>
> Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
> ---
>  drivers/staging/emxx_udc/emxx_udc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
> index c3e2988..8b406f3 100644
> --- a/drivers/staging/emxx_udc/emxx_udc.c
> +++ b/drivers/staging/emxx_udc/emxx_udc.c
> @@ -1386,7 +1386,7 @@ static void _nbu2ss_set_endpoint_stall(
>
>  /*-------------------------------------------------------------------------*/
>  /* Device Descriptor */
> -static struct usb_device_descriptor device_desc = {
> +static const struct usb_device_descriptor device_desc = {
>  	.bLength              = sizeof(device_desc),
>  	.bDescriptorType      = USB_DT_DEVICE,
>  	.bcdUSB               = cpu_to_le16(0x0200),
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161018204221.GA7799%40domino-MS-16Y1.
> For more options, visit https://groups.google.com/d/optout.
>

