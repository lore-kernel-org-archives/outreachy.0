X-GM-THRID: 6199997314749169664
X-Received: by 10.182.94.204 with SMTP id de12mr9972178obb.21.1443551161458;
        Tue, 29 Sep 2015 11:26:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.29.7 with SMTP id d7ls16370iod.13.gmail; Tue, 29 Sep 2015
 11:26:01 -0700 (PDT)
X-Received: by 10.66.240.138 with SMTP id wa10mr23243516pac.43.1443551161116;
        Tue, 29 Sep 2015 11:26:01 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id o73si2051909ywd.6.2015.09.29.11.26.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Sep 2015 11:26:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [83.145.64.161])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id D3B911C32;
	Tue, 29 Sep 2015 18:25:59 +0000 (UTC)
Date: Tue, 29 Sep 2015 20:25:58 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Shraddha Barke <shraddha.6596@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: media: lirc: Use USB API
 functions rather than constants
Message-ID: <20150929182558.GA18009@kroah.com>
References: <1443549347-15879-1-git-send-email-shraddha.6596@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1443549347-15879-1-git-send-email-shraddha.6596@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Tue, Sep 29, 2015 at 11:25:47PM +0530, Shraddha Barke wrote:
> Introduce the use of the function usb_endpoint_type.
> 
> The Coccinelle semantic patch that makes these changes is as follows:
> 
> @@ struct usb_endpoint_descriptor *epd; @@
> 
> - (epd->bmAttributes & \(USB_ENDPOINT_XFERTYPE_MASK\|3\))
> + usb_endpoint_type(epd)
> 
> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
> ---
>  drivers/staging/media/lirc/lirc_sasem.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/lirc/lirc_sasem.c b/drivers/staging/media/lirc/lirc_sasem.c
> index b247649a..4230c00 100644
> --- a/drivers/staging/media/lirc/lirc_sasem.c
> +++ b/drivers/staging/media/lirc/lirc_sasem.c
> @@ -702,7 +702,7 @@ static int sasem_probe(struct usb_interface *interface,
>  
>  		ep = &iface_desc->endpoint [i].desc;
>  		ep_dir = ep->bEndpointAddress & USB_ENDPOINT_DIR_MASK;
> -		ep_type = ep->bmAttributes & USB_ENDPOINT_XFERTYPE_MASK;
> +		ep_type = usb_endpoint_type(ep);
>  
>  		if (!ir_ep_found &&
>  			ep_dir == USB_DIR_IN &&

The ep_type and ep_dir variables can just go away and you can use the
functions like usb_endpoint_is_int_in() for testing this type of thing.
Please do that instead.

thanks,

greg k-h

