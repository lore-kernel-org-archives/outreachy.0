X-GM-THRID: 6208780182707240960
X-Received: by 10.112.140.202 with SMTP id ri10mr4658612lbb.10.1445594393585;
        Fri, 23 Oct 2015 02:59:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.90.136 with SMTP id bw8ls115002wib.13.canary; Fri, 23 Oct
 2015 02:59:53 -0700 (PDT)
X-Received: by 10.194.248.131 with SMTP id ym3mr4721312wjc.7.1445594393014;
        Fri, 23 Oct 2015 02:59:53 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id en3si14006wib.3.2015.10.23.02.59.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Oct 2015 02:59:52 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.20,186,1444687200"; 
   d="scan'208";a="151536433"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 23 Oct 2015 11:59:51 +0200
Date: Fri, 23 Oct 2015 11:59:41 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Shraddha Barke <shraddha.6596@gmail.com>
cc: outreachy-kernel@googlegroups.com, lustre-devel@lists.lustre.org
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: obdclass: Remove
 unused header files
In-Reply-To: <1445594277-14421-1-git-send-email-shraddha.6596@gmail.com>
Message-ID: <alpine.DEB.2.10.1510231158450.2437@hadrien>
References: <1445594277-14421-1-git-send-email-shraddha.6596@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Fri, 23 Oct 2015, Shraddha Barke wrote:

> Remove unused header files that are already included in 'lu_object.h'
> and 'obd.h'
>
> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
> ---
>  drivers/staging/lustre/lustre/obdclass/lu_object.c | 1 -
>  drivers/staging/lustre/lustre/obdclass/lu_ref.c    | 1 -
>  2 files changed, 2 deletions(-)
>
> diff --git a/drivers/staging/lustre/lustre/obdclass/lu_object.c b/drivers/staging/lustre/lustre/obdclass/lu_object.c
> index 0d15bd5..549df95 100644
> --- a/drivers/staging/lustre/lustre/obdclass/lu_object.c
> +++ b/drivers/staging/lustre/lustre/obdclass/lu_object.c
> @@ -55,7 +55,6 @@
>  #include "../include/lustre_disk.h"
>  #include "../include/lustre_fid.h"
>  #include "../include/lu_object.h"
> -#include "../include/lu_ref.h"

If things from lu_ref.h are directly referred to in the .c file, it may be
better to keep the include, rather than relying on some other include file
(that could change in the future) to include it.

julia

>  #include <linux/list.h>
>
>  static void lu_object_free(const struct lu_env *env, struct lu_object *o);
> diff --git a/drivers/staging/lustre/lustre/obdclass/lu_ref.c b/drivers/staging/lustre/lustre/obdclass/lu_ref.c
> index 993697b..df2d8b9 100644
> --- a/drivers/staging/lustre/lustre/obdclass/lu_ref.c
> +++ b/drivers/staging/lustre/lustre/obdclass/lu_ref.c
> @@ -47,4 +47,3 @@
>  #include "../include/obd.h"
>  #include "../include/obd_class.h"
>  #include "../include/obd_support.h"
> -#include "../include/lu_ref.h"
> --
> 2.1.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1445594277-14421-1-git-send-email-shraddha.6596%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

