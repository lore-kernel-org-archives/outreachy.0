X-GM-THRID: 6341957980641034240
X-Received: by 10.31.155.143 with SMTP id d137mr1460924vke.7.1476616266798;
        Sun, 16 Oct 2016 04:11:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.4.144 with SMTP id 16ls8655773otm.7.gmail; Sun, 16 Oct
 2016 04:11:06 -0700 (PDT)
X-Received: by 10.129.136.71 with SMTP id y68mr5809015ywf.139.1476616266284;
        Sun, 16 Oct 2016 04:11:06 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id p131si4055000vkf.1.2016.10.16.04.11.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 16 Oct 2016 04:11:06 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,501,1473112800"; 
   d="scan'208";a="196931039"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Oct 2016 13:11:04 +0200
Date: Sun, 16 Oct 2016 13:11:03 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: sayli karnik <karniksayli1995@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: vc04_services: vchiq_arm:
 Use ARRAY_SIZE macro
In-Reply-To: <20161016071531.GA15510@sayli-HP-15-Notebook-PC>
Message-ID: <alpine.DEB.2.20.1610161310430.2116@hadrien>
References: <20161016071531.GA15510@sayli-HP-15-Notebook-PC>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 16 Oct 2016, sayli karnik wrote:

> This patch uses ARRAY_SIZE macro instead of division of two sizeofs to find array size.
> Done using coccinelle.
> @@
> type T;
> T[] E;
> @@
> (
> - (sizeof(E)/sizeof(*E))
> + ARRAY_SIZE(E)
> |
> - (sizeof(E)/sizeof(E[...]))
> + ARRAY_SIZE(E)
> |
> - (sizeof(E)/sizeof(T))
> + ARRAY_SIZE(E)
> )
>
> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
> ---
>  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> index 5ec7c96..f7d9513 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> @@ -190,8 +190,8 @@ static const char *const ioctl_names[] = {
>  	"CLOSE_DELIVERED"
>  };
>
> -vchiq_static_assert((sizeof(ioctl_names)/sizeof(ioctl_names[0])) ==
> -	(VCHIQ_IOC_MAX + 1));
> +vchiq_static_assert(ARRAY_SIZE(ioctl_names) ==
> +		    (VCHIQ_IOC_MAX + 1));

Doesn't this code all fit on one line?

julia

>
>  static void
>  dump_phys_mem(void *virt_addr, uint32_t num_bytes);
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161016071531.GA15510%40sayli-HP-15-Notebook-PC.
> For more options, visit https://groups.google.com/d/optout.
>

