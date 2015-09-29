X-GM-THRID: 6199796620596346880
X-Received: by 10.180.106.197 with SMTP id gw5mr3493556wib.7.1443505213283;
        Mon, 28 Sep 2015 22:40:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.31.207 with SMTP id f198ls378060lff.31.gmail; Mon, 28 Sep
 2015 22:40:12 -0700 (PDT)
X-Received: by 10.112.169.34 with SMTP id ab2mr3893879lbc.23.1443505212405;
        Mon, 28 Sep 2015 22:40:12 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id hs5si635542wib.1.2015.09.28.22.40.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 28 Sep 2015 22:40:12 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,606,1437429600"; 
   d="scan'208";a="148894406"
Received: from ip4d16f0bc.dynamic.kabel-deutschland.de (HELO lanhost53) ([77.22.240.188])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 29 Sep 2015 07:40:11 +0200
Date: Tue, 29 Sep 2015 07:40:10 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Shraddha Barke <shraddha.6596@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/2] Staging: gdm724x: gdm_usb.c: Use
 module_usb_driver
In-Reply-To: <1443502609-9918-1-git-send-email-shraddha.6596@gmail.com>
Message-ID: <alpine.DEB.2.10.1509290738570.2764@hadrien>
References: <1443502609-9918-1-git-send-email-shraddha.6596@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Tue, 29 Sep 2015, Shraddha Barke wrote:

> Macro module_usb_driver is used for drivers whose init
> and exit paths does only register and unregister.Remove
> boilerplate code by using module_usb_driver.
>
> Problem found using Coccinelle.

If you find a problem with Coccinelle, please put at least a simplified
version of the semantic patch you used.  As Sudip noted, this patch series
is not at allcorrect, and knowing what semantic patch you used could help
suggest where things went wrong.

julia

> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
> ---
>  drivers/staging/gdm724x/gdm_usb.c | 38 +-------------------------------------
>  1 file changed, 1 insertion(+), 37 deletions(-)
>
> diff --git a/drivers/staging/gdm724x/gdm_usb.c b/drivers/staging/gdm724x/gdm_usb.c
> index ed1a12f..3977663 100644
> --- a/drivers/staging/gdm724x/gdm_usb.c
> +++ b/drivers/staging/gdm724x/gdm_usb.c
> @@ -998,43 +998,7 @@ static struct usb_driver gdm_usb_lte_driver = {
>  	.reset_resume = gdm_usb_resume,
>  };
>
> -static int __init gdm_usb_lte_init(void)
> -{
> -	if (gdm_lte_event_init() < 0) {
> -		pr_err("error creating event\n");
> -		return -1;
> -	}
> -
> -	usb_tx_wq = create_workqueue("usb_tx_wq");
> -	if (usb_tx_wq == NULL)
> -		return -1;
> -
> -	usb_rx_wq = create_workqueue("usb_rx_wq");
> -	if (usb_rx_wq == NULL)
> -		return -1;
> -
> -	return usb_register(&gdm_usb_lte_driver);
> -}
> -
> -static void __exit gdm_usb_lte_exit(void)
> -{
> -	gdm_lte_event_exit();
> -
> -	usb_deregister(&gdm_usb_lte_driver);
> -
> -	if (usb_tx_wq) {
> -		flush_workqueue(usb_tx_wq);
> -		destroy_workqueue(usb_tx_wq);
> -	}
> -
> -	if (usb_rx_wq) {
> -		flush_workqueue(usb_rx_wq);
> -		destroy_workqueue(usb_rx_wq);
> -	}
> -}
> -
> -module_init(gdm_usb_lte_init);
> -module_exit(gdm_usb_lte_exit);
> +module_usb_driver(gdm_usb_lte_driver);
>
>  MODULE_VERSION(DRIVER_VERSION);
>  MODULE_DESCRIPTION("GCT LTE USB Device Driver");
> --
> 2.1.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1443502609-9918-1-git-send-email-shraddha.6596%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

