X-GM-THRID: 6337006318696529920
X-Received: by 10.46.5.68 with SMTP id 65mr1060830ljf.28.1475471931895;
        Sun, 02 Oct 2016 22:18:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.32.65 with SMTP id g62ls203774ljg.44.gmail; Sun, 02 Oct
 2016 22:18:50 -0700 (PDT)
X-Received: by 10.46.33.101 with SMTP id h98mr453511ljh.5.1475471930708;
        Sun, 02 Oct 2016 22:18:50 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 185si997097wmr.2.2016.10.02.22.18.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Oct 2016 22:18:50 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,288,1473112800"; 
   d="scan'208";a="239104917"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 03 Oct 2016 07:18:50 +0200
Date: Mon, 3 Oct 2016 07:18:49 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Keila <laurana5@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH]board/Kconfig: Add a paragraph that
 describes the simbol.
In-Reply-To: <20160928231022.GA14711@kheixx-VB>
Message-ID: <alpine.DEB.2.10.1610030717300.3142@hadrien>
References: <20160928231022.GA14711@kheixx-VB>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Thu, 29 Sep 2016, Keila wrote:

> The staging board allows continous upstream in-tree development and
> integration of new platform devices.
> ---
>  drivers/staging/board/Kconfig | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/board/Kconfig b/drivers/staging/board/Kconfig
> index 006b134..deb7fda 100644
> --- a/drivers/staging/board/Kconfig
> +++ b/drivers/staging/board/Kconfig
> @@ -1,7 +1,6 @@
> -#These is a Linux kernel configuration item. STAGING_BOARD directly depends on
> -#OF_ADDRESS && OF_IRQ && CLKDEV_LOOKUP.
> -#It will only be visible, if OF_ADDRESS, OF_IRQ and CLKDEV_LOOKUP are different
> -#from 'n'.
> +#
> +#Staging board gives support and configures the Kernel build.
> +#

Looking at the removed and added code, I'm not sure that the added code is
more helpful than the removed code.  But when I look at the actual staging
code, I don't see any comment here at all.  Is this patch on top of some
patch you previously sent?  Or is your staging tree not up to date?

julia

>  config STAGING_BOARD
>  	bool "Staging Board Support"
>  	depends on OF_ADDRESS && OF_IRQ && CLKDEV_LOOKUP
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160928231022.GA14711%40kheixx-VB.
> For more options, visit https://groups.google.com/d/optout.
>

