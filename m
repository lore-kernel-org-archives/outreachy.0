X-GM-THRID: 6395138092490031104
X-Received: by 10.46.33.163 with SMTP id h35mr1255726lji.17.1488985197004;
        Wed, 08 Mar 2017 06:59:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.13.9 with SMTP id 9ls411468ljn.46.gmail; Wed, 08 Mar 2017
 06:59:56 -0800 (PST)
X-Received: by 10.46.80.82 with SMTP id v18mr1141806ljd.27.1488985196461;
        Wed, 08 Mar 2017 06:59:56 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id e72si693903wma.0.2017.03.08.06.59.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Mar 2017 06:59:56 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,264,1486422000"; 
   d="scan'208";a="263705563"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 08 Mar 2017 15:59:56 +0100
Date: Wed, 8 Mar 2017 15:59:43 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Gargi Sharma <gs051095@gmail.com>
cc: outreachy-kernel@googlegroups.com, johan@kernel.org, elder@kernel.org, 
    gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v2] staging: greybus: Remove unneeded
 header file
In-Reply-To: <1488984963-9642-1-git-send-email-gs051095@gmail.com>
Message-ID: <alpine.DEB.2.20.1703081559270.3004@hadrien>
References: <1488984963-9642-1-git-send-email-gs051095@gmail.com>
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
> @ depends on includesmodule @
> @@
>
> - #include <linux/moduleparam.h>
>
> Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> ---
> Changes in v2:
> 	- Added the missing line to the script.

It's still not there.

julia

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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1488984963-9642-1-git-send-email-gs051095%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

