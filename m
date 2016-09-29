X-GM-THRID: 6335506669412286464
X-Received: by 10.194.222.198 with SMTP id qo6mr1963953wjc.11.1475128225389;
        Wed, 28 Sep 2016 22:50:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.1.210 with SMTP id f79ls212426lji.1.gmail; Wed, 28 Sep 2016
 22:50:24 -0700 (PDT)
X-Received: by 10.46.33.161 with SMTP id h33mr2093954lji.19.1475128224725;
        Wed, 28 Sep 2016 22:50:24 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id s6si1730042wmb.1.2016.09.28.22.50.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Sep 2016 22:50:24 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,413,1470693600"; 
   d="scan'208";a="195011954"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 29 Sep 2016 07:50:23 +0200
Date: Thu, 29 Sep 2016 07:50:23 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Keila <laurana5@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Add a description into Kconfig
In-Reply-To: <20160928105648.GA26845@kheixx-VB>
Message-ID: <alpine.DEB.2.10.1609290747180.3288@hadrien>
References: <20160928105648.GA26845@kheixx-VB>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Wed, 28 Sep 2016, Keila wrote:

Greg will want a commit log message in addition to the subject line.

The subject line needs to give information about the code affected.  Run
git log --oneline drivers/staging/board/Kconfig to see the subject lines
that others have used for this file.  If there are not enough to judge,
you can also run the above command for the directory rather than the
specific file.

The subject line could be a little more descriptive as well.  It is a
description for what?

> Signed-off-by: Keila <laurana5@gmail.com>

Do you have only one name?  If there is more to it, you have to put the
whole thing.

> ---
>  drivers/staging/board/Kconfig | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/board/Kconfig b/drivers/staging/board/Kconfig
> index 3f287c4..8951531 100644
> --- a/drivers/staging/board/Kconfig
> +++ b/drivers/staging/board/Kconfig
> @@ -1,8 +1,11 @@
> +#These a Linux kernel configuration item.The items we can configure are:
> +#OF_IRQ is an interrupt requests item
> +#OF_ADDRESS is an device address item
> +#CLKDEV_LOOKUP is clock lookup from devices tree configuration item
>  config STAGING_BOARD
>  	bool "Staging Board Support"
>  	depends on OF_ADDRESS && OF_IRQ && CLKDEV_LOOKUP
>  	help
> -	  Select to enable per-board staging support code.
> -
> -	  If in doubt, say N here.
> +	Select to enable per-board staging support code.
>
> +	 If in doubt, say N here.

These last few changes seem to go beyond what is in the subject.  I'm not
sure what the goal was here.

thanks,
julia

> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160928105648.GA26845%40kheixx-VB.
> For more options, visit https://groups.google.com/d/optout.
>

