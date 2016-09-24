X-GM-THRID: 6333834735065759744
X-Received: by 10.25.16.202 with SMTP id 71mr625283lfq.27.1474721471982;
        Sat, 24 Sep 2016 05:51:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.166.2 with SMTP id p2ls709519wme.4.canary; Sat, 24 Sep 2016
 05:51:11 -0700 (PDT)
X-Received: by 10.194.88.134 with SMTP id bg6mr594679wjb.12.1474721471267;
        Sat, 24 Sep 2016 05:51:11 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id p199si73268wmd.1.2016.09.24.05.51.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Sep 2016 05:51:11 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,387,1470693600"; 
   d="scan'208";a="238113918"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien.local) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 24 Sep 2016 14:51:10 +0200
Date: Sat, 24 Sep 2016 14:51:09 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Namrata A Shettar <namrataashettar@gmail.com>
cc: Jarod Wilson <jarod@wilsonet.com>, 
    Mauro Carvalho Chehab <mchehab@kernel.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Amitoj Kaur Chawla <amitoj1606@gmail.com>, 
    Tapasweni Pathak <tapaswenipathak@gmail.com>, 
    Wolfram Sang <wsa-dev@sang-engineering.com>, 
    Maciek Borzecki <maciek.borzecki@gmail.com>, Arnd Bergmann <arnd@arndb.de>, 
    Shraddha Barke <shraddha.6596@gmail.com>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH 6/6] staging: media: lirc: Replace
 data type with pointer in sizeof()
In-Reply-To: <c8caeedace5534475eeadfa5286256e361761edb.1474708456.git.namrataashettar@gmail.com>
Message-ID: <alpine.DEB.2.10.1609241450440.3447@hadrien>
References: <c8caeedace5534475eeadfa5286256e361761edb.1474708456.git.namrataashettar@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sat, 24 Sep 2016, Namrata A Shettar wrote:

> Replace data tupe with pointer of same type in sizeof() to resolve
> checkpatch issue as they are of the same size.

There are lots of removed blank lines in this patch that have nothing to
do with the log message.

julia

> Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
> ---
>  drivers/staging/media/lirc/lirc_sasem.c | 18 ++++--------------
>  1 file changed, 4 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/staging/media/lirc/lirc_sasem.c b/drivers/staging/media/lirc/lirc_sasem.c
> index 9eb1eec..828efb3 100644
> --- a/drivers/staging/media/lirc/lirc_sasem.c
> +++ b/drivers/staging/media/lirc/lirc_sasem.c
> @@ -47,7 +47,6 @@
>  #include <media/lirc.h>
>  #include <media/lirc_dev.h>
>
> -
>  #define MOD_AUTHOR	"Oliver Stabel <oliver.stabel@gmx.de>, " \
>  			"Tim Davies <tim@opensystems.net.au>"
>  #define MOD_DESC	"USB Driver for Sasem Remote Controller V1.1"
> @@ -86,7 +85,6 @@ static void ir_close(void *data);
>  #define SASEM_DATA_BUF_SZ	32
>
>  struct sasem_context {
> -
>  	struct usb_device *dev;
>  	int vfd_isopen;			/* VFD port has been opened */
>  	unsigned int vfd_contrast;	/* VFD contrast */
> @@ -156,7 +154,6 @@ static int debug;
>
>
>  /*** M O D U L E   C O D E ***/
> -
>  MODULE_AUTHOR(MOD_AUTHOR);
>  MODULE_DESCRIPTION(MOD_DESC);
>  MODULE_LICENSE("GPL");
> @@ -186,7 +183,6 @@ static void deregister_from_lirc(struct sasem_context *context)
>  	else
>  		dev_info(&context->dev->dev,
>  			 "Deregistered Sasem driver (minor:%d)\n", minor);
> -
>  }
>
>  /**
> @@ -297,7 +293,6 @@ static int vfd_close(struct inode *inode, struct file *file)
>  		context->vfd_isopen = 0;
>  		dev_info(&context->dev->dev, "VFD port closed\n");
>  		if (!context->dev_present && !context->ir_isopen) {
> -
>  			/* Device disconnected before close and IR port is
>  			 * not open. If IR port is open, context will be
>  			 * deleted by ir_close. */
> @@ -548,8 +543,7 @@ static void ir_close(void *data)
>  		deregister_from_lirc(context);
>
>  		if (!context->vfd_isopen) {
> -
> -			mutex_unlock(&context->ctx_lock);
> +                	mutex_unlock(&context->ctx_lock);
>  			delete_context(context);
>  			return;
>  		}
> @@ -633,7 +627,6 @@ static void usb_rx_callback(struct urb *urb)
>  		return;
>
>  	switch (urb->status) {
> -
>  	case -ENOENT:		/* usbcore unlink successful! */
>  		return;
>
> @@ -651,8 +644,6 @@ static void usb_rx_callback(struct urb *urb)
>  	usb_submit_urb(context->rx_urb, GFP_ATOMIC);
>  }
>
> -
> -
>  /**
>   * Callback function for USB core API: Probe
>   */
> @@ -709,7 +700,6 @@ static int sasem_probe(struct usb_interface *interface,
>
>  		} else if (!vfd_ep_found &&
>  			usb_endpoint_is_int_out(ep)) {
> -
>  			tx_endpoint = ep;
>  			vfd_ep_found = 1;
>  			if (debug)
> @@ -735,17 +725,17 @@ static int sasem_probe(struct usb_interface *interface,
>  	/* Allocate memory */
>  	alloc_status = 0;
>
> -	context = kzalloc(sizeof(struct sasem_context), GFP_KERNEL);
> +	context = kzalloc(sizeof(*context), GFP_KERNEL);
>  	if (!context) {
>  		alloc_status = 1;
>  		goto alloc_status_switch;
>  	}
> -	driver = kzalloc(sizeof(struct lirc_driver), GFP_KERNEL);
> +	driver = kzalloc(sizeof(*driver), GFP_KERNEL);
>  	if (!driver) {
>  		alloc_status = 2;
>  		goto alloc_status_switch;
>  	}
> -	rbuf = kmalloc(sizeof(struct lirc_buffer), GFP_KERNEL);
> +	rbuf = kmalloc(sizeof(*rbuf), GFP_KERNEL);
>  	if (!rbuf) {
>  		alloc_status = 3;
>  		goto alloc_status_switch;
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/c8caeedace5534475eeadfa5286256e361761edb.1474708456.git.namrataashettar%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

