X-GM-THRID: 1678556266496
X-Received: by 10.112.199.69 with SMTP id ji5mr240890lbc.0.1424515150401;
        Sat, 21 Feb 2015 02:39:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.87.135 with SMTP id ay7ls251988wib.13.gmail; Sat, 21 Feb
 2015 02:39:10 -0800 (PST)
X-Received: by 10.180.182.44 with SMTP id eb12mr205629wic.4.1424515150041;
        Sat, 21 Feb 2015 02:39:10 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id ew5si285139wid.1.2015.02.21.02.39.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sat, 21 Feb 2015 02:39:10 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,620,1418079600"; 
   d="scan'208";a="122790072"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 21 Feb 2015 11:39:09 +0100
Date: Sat, 21 Feb 2015 11:39:08 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: rtl8192u: Convert comment
 from C99 to C89 style.
In-Reply-To: <1424510597-4149-1-git-send-email-ksenija.stanojevic@gmail.com>
Message-ID: <alpine.DEB.2.02.1502211138440.2059@localhost6.localdomain6>
References: <1424510597-4149-1-git-send-email-ksenija.stanojevic@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sat, 21 Feb 2015, Ksenija Stanojevic wrote:

> Kernel style for comments is C89 style. Issue found by checkpatch.pl.
> 
> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> ---
> v2: fix e-mail address in Signed-off-by
>  drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
> index 447af93..a826d88 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
> @@ -5,13 +5,13 @@
>   * Portions Copyright (C) 2004, Intel Corporation <jketreno@linux.intel.com>
>   *
>   * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2 as
> +i * it under the terms of the GNU General Public License version 2 as

Something strange happened here.

julia

>   * published by the Free Software Foundation. See README and COPYING for
>   * more details.
>   *
>   */
>  
> -//#include <linux/config.h>
> +/* #include <linux/config.h> */
>  #include <linux/module.h>
>  #include <linux/init.h>
>  #include <linux/slab.h>
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424510597-4149-1-git-send-email-ksenija.stanojevic%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

