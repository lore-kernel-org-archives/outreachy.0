X-GM-THRID: 6395138092490031104
X-Received: by 10.46.83.7 with SMTP id h7mr1260366ljb.24.1488984469272;
        Wed, 08 Mar 2017 06:47:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.84.6 with SMTP id i6ls384719ljb.3.gmail; Wed, 08 Mar 2017
 06:47:48 -0800 (PST)
X-Received: by 10.25.157.14 with SMTP id g14mr922943lfe.28.1488984468729;
        Wed, 08 Mar 2017 06:47:48 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id p144si372711wme.2.2017.03.08.06.47.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Mar 2017 06:47:48 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,264,1486422000"; 
   d="scan'208";a="216033960"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 08 Mar 2017 15:47:48 +0100
Date: Wed, 8 Mar 2017 15:47:35 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Gargi Sharma <gs051095@gmail.com>
cc: outreachy-kernel@googlegroups.com, johan@kernel.org, elder@kernel.org, 
    gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: greybus: Remove unneeded
 header file
In-Reply-To: <1488983970-8493-1-git-send-email-gs051095@gmail.com>
Message-ID: <alpine.DEB.2.20.1703081547190.3004@hadrien>
References: <1488983970-8493-1-git-send-email-gs051095@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 8 Mar 2017, Gargi Sharma wrote:

> module.h contains a call to moduleparam.h making the call to it
> redundant and useless.
>
> The Coccinelle semantic patch used to make this change is as follows:
> @ includesmodule @
> @@
>

Code is missing here.

julia

> @ depends on includesmodule @
> @@
>
> - #include <linux/moduleparam.h>
>
> Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> ---
>  drivers/staging/greybus/gbphy.c | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/drivers/staging/greybus/gbphy.c b/drivers/staging/greybus/gbphy.c
> index 64a1eb9..603de6f 100644
> --- a/drivers/staging/greybus/gbphy.c
> +++ b/drivers/staging/greybus/gbphy.c
> @@ -11,7 +11,6 @@
>
>  #include <linux/types.h>
>  #include <linux/module.h>
> -#include <linux/moduleparam.h>
>  #include <linux/kernel.h>
>  #include <linux/slab.h>
>  #include <linux/device.h>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1488983970-8493-1-git-send-email-gs051095%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

