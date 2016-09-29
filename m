X-GM-THRID: 6335831660956745728
X-Received: by 10.25.74.71 with SMTP id x68mr221774lfa.6.1475176242997;
        Thu, 29 Sep 2016 12:10:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.154.14 with SMTP id c14ls41311wme.17.gmail; Thu, 29 Sep
 2016 12:10:42 -0700 (PDT)
X-Received: by 10.28.199.198 with SMTP id x189mr18047wmf.13.1475176242500;
        Thu, 29 Sep 2016 12:10:42 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id u190si22202wmf.0.2016.09.29.12.10.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Sep 2016 12:10:42 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,268,1473112800"; 
   d="scan'208";a="238805008"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 29 Sep 2016 21:10:26 +0200
Date: Thu, 29 Sep 2016 21:10:25 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Keila Novo <laurana5@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Add a paragraph that describes the
 config simbol
In-Reply-To: <20160928132757.GA28908@kheixx-VB>
Message-ID: <alpine.DEB.2.10.1609292107280.3160@hadrien>
References: <20160928132757.GA28908@kheixx-VB>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Wed, 28 Sep 2016, Keila Novo wrote:

> This Linux Kernel configuration item is a part of the a
>  collection of configuration options which are organized in a tree structure.
>  This item like the others has its own dependecies and depends on others too.
>  In the description I add an explanation of which are the three dependencies
>  that STAGING_BOARD depends on and they have to be visible/avaible to
>  STAGING_BOARD dependency be avaible/visible too.

Commit messages should be limited to 72 characters.  They will end up
indented in the git history, so limiting them to 72 characters ensures
that they will be within 80 characters later.

The beginning of this commit message seems to be too low level.  A good
idea could be to search for other patches that add comments in Kconfig
files, and see what their commit messages look like.

> Reply-To:

This should not be here.

> Signed-off-by: Keila Novo <laurana5@gmail.com>
> ---
>  drivers/staging/board/Kconfig | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/board/Kconfig b/drivers/staging/board/Kconfig
> index 8951531..006b134 100644
> --- a/drivers/staging/board/Kconfig
> +++ b/drivers/staging/board/Kconfig
> @@ -1,7 +1,7 @@
> -#These a Linux kernel configuration item.The items we can configure are:
> -#OF_IRQ is an interrupt requests item
> -#OF_ADDRESS is an device address item
> -#CLKDEV_LOOKUP is clock lookup from devices tree configuration item
> +#These is a Linux kernel configuration item. STAGING_BOARD directly depends on
> +#OF_ADDRESS && OF_IRQ && CLKDEV_LOOKUP.
> +#It will only be visible, if OF_ADDRESS, OF_IRQ and CLKDEV_LOOKUP are different
> +#from 'n'.

These lines seem also to be too long.

Also, I wonder if this patch is on top of your previous patch?  It should
be on top of what is in Greg's tree.

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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160928132757.GA28908%40kheixx-VB.
> For more options, visit https://groups.google.com/d/optout.
>

