X-GM-THRID: 6204781093577555968
X-Received: by 10.180.106.197 with SMTP id gw5mr3026344wib.7.1444663618706;
        Mon, 12 Oct 2015 08:26:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.85.81 with SMTP id j78ls545695lfb.81.gmail; Mon, 12 Oct
 2015 08:26:58 -0700 (PDT)
X-Received: by 10.112.159.4 with SMTP id wy4mr3841808lbb.15.1444663618132;
        Mon, 12 Oct 2015 08:26:58 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id hs5si528914wib.1.2015.10.12.08.26.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2015 08:26:58 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,673,1437429600"; 
   d="scan'208";a="182374719"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 12 Oct 2015 17:26:57 +0200
Date: Mon, 12 Oct 2015 17:26:55 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Shraddha Barke <shraddha.6596@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 3/3] Staging: wilc1000: linux_wlan:
 Remove NULL check before kfree
In-Reply-To: <1444663160-26795-4-git-send-email-shraddha.6596@gmail.com>
Message-ID: <alpine.DEB.2.10.1510121726430.2652@hadrien>
References: <1444663160-26795-1-git-send-email-shraddha.6596@gmail.com> <1444663160-26795-4-git-send-email-shraddha.6596@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Mon, 12 Oct 2015, Shraddha Barke wrote:

> kfree on NULL pointer is a no-op.
>
> The semantic patch used -
>
> // <smpl>
> @@ expression E; @@
> - if (E != NULL) { kfree(E); }
> + kfree(E);
> @@ expression E; @@
> - if (E != NULL) { kfree(E); E = NULL; }
> + kfree(E);
> + E = NULL;
> // </smpl>smpl>

Nice :)

>
> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
> ---
>  drivers/staging/wilc1000/linux_wlan.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/wilc1000/linux_wlan.c b/drivers/staging/wilc1000/linux_wlan.c
> index f6a6287..2db9796 100644
> --- a/drivers/staging/wilc1000/linux_wlan.c
> +++ b/drivers/staging/wilc1000/linux_wlan.c
> @@ -1887,10 +1887,8 @@ static void __exit exit_wilc_driver(void)
>  	sdio_unregister_driver(&wilc_bus);
>  #endif
>
> -	if (g_linux_wlan != NULL) {
> -		kfree(g_linux_wlan);
> -		g_linux_wlan = NULL;
> -	}
> +	kfree(g_linux_wlan);
> +	g_linux_wlan = NULL;
>  	printk("Module_exit Done.\n");
>
>  #if defined(WILC_DEBUGFS)
> --
> 2.1.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1444663160-26795-4-git-send-email-shraddha.6596%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

