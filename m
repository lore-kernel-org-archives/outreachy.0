X-GM-THRID: 6210088605629546496
X-Received: by 10.194.203.33 with SMTP id kn1mr5234705wjc.3.1445936753821;
        Tue, 27 Oct 2015 02:05:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.211.230 with SMTP id nf6ls291462wic.19.canary; Tue, 27 Oct
 2015 02:05:53 -0700 (PDT)
X-Received: by 10.194.82.193 with SMTP id k1mr5249028wjy.2.1445936753355;
        Tue, 27 Oct 2015 02:05:53 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id em5si540290wib.2.2015.10.27.02.05.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2015 02:05:53 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.20,204,1444687200"; 
   d="scan'208";a="184609279"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 27 Oct 2015 10:05:53 +0100
Date: Tue, 27 Oct 2015 10:05:40 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: SirnamSwetha <theonly.ultimate@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 3/8] Staging : rdma ipath: spaces
 preferred around that '<<'
In-Reply-To: <e7077e1d1c8bc59b7ebfa8151fa4788b38daf74b.1445936144.git.theonly.ultimate@gmail.com>
Message-ID: <alpine.DEB.2.10.1510271004380.2363@hadrien>
References: <cover.1445936143.git.theonly.ultimate@gmail.com> <e7077e1d1c8bc59b7ebfa8151fa4788b38daf74b.1445936144.git.theonly.ultimate@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Tue, 27 Oct 2015, SirnamSwetha wrote:

> This patch fixes the checkpatch issue:
>
> CHECK: spaces preferred around that '<<'
>
> Signed-off-by: SirnamSwetha <theonly.ultimate@gmail.com>

Normally there would be a space between the two parts of your name.

Also, you shouldn't be sending patches to linux-usb, only to the outreachy
mailing list.

julia

> ---
>  drivers/staging/rdma/ipath/ipath_common.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/rdma/ipath/ipath_common.h b/drivers/staging/rdma/ipath/ipath_common.h
> index df2a211..3f9b4bc 100644
> --- a/drivers/staging/rdma/ipath/ipath_common.h
> +++ b/drivers/staging/rdma/ipath/ipath_common.h
> @@ -365,7 +365,7 @@ struct ipath_base_info {
>   */
>  #define IPATH_USER_SWMINOR 6
>
> -#define IPATH_USER_SWVERSION ((IPATH_USER_SWMAJOR<<16) | IPATH_USER_SWMINOR)
> +#define IPATH_USER_SWVERSION ((IPATH_USER_SWMAJOR << 16) | IPATH_USER_SWMINOR)
>
>  #define IPATH_KERN_TYPE 0
>
> @@ -380,7 +380,7 @@ struct ipath_base_info {
>   * spi_sw_version field of ipath_base_info, so the user code can in turn
>   * check for compatibility with the kernel.
>  */
> -#define IPATH_KERN_SWVERSION ((IPATH_KERN_TYPE<<31) | IPATH_USER_SWVERSION)
> +#define IPATH_KERN_SWVERSION ((IPATH_KERN_TYPE << 31) | IPATH_USER_SWVERSION)
>
>  /*
>   * This structure is passed to ipath_userinit() to tell the driver where
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/e7077e1d1c8bc59b7ebfa8151fa4788b38daf74b.1445936144.git.theonly.ultimate%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

