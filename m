X-GM-THRID: 6396335157434908672
X-Received: by 10.46.5.136 with SMTP id 130mr4445652ljf.6.1489321329510;
        Sun, 12 Mar 2017 05:22:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.18.225 with SMTP id 94ls244582lfs.32.gmail; Sun, 12 Mar
 2017 05:22:08 -0700 (PDT)
X-Received: by 10.46.84.13 with SMTP id i13mr4494320ljb.2.1489321328368;
        Sun, 12 Mar 2017 05:22:08 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id y19si520172wmd.0.2017.03.12.05.22.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 05:22:08 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,152,1486422000"; 
   d="scan'208";a="216441686"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 12 Mar 2017 13:22:07 +0100
Date: Sun, 12 Mar 2017 13:22:06 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Gargi Sharma <gs051095@gmail.com>
cc: outreachy-kernel@googlegroups.com, swarren@wwwdotorg.org, lee@kernel.org, 
    eric@anholt.net, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: vc04_services: Replace
 typedef with struct
In-Reply-To: <1489310493-22530-1-git-send-email-gs051095@gmail.com>
Message-ID: <alpine.DEB.2.20.1703121319180.2174@hadrien>
References: <1489310493-22530-1-git-send-email-gs051095@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 12 Mar 2017, Gargi Sharma wrote:

> Using typedef for a structure type and upper case struct names is not
> suggested in Linux kernel coding style guidelines. Removed occurences
> of typedefs and converted struct names to lowercase. Used grep to
> ensure that all occurences have been removed. The module compiles
> without any warnings or errors.

Actually, the bcm people have requested not to be CCd on patches.  I'm
leaving them on this one, though, because they might have some useful
input.

It's always suspicious when you change a type name and it only affects a
header file.  And in this case, it only affects a function prototype.  I
don't see any definition of the function.  Can the whole thing (type and
prototype) go away?

julia

>
> Script 1:
> @r1@
> type T;
> @@
>
> typedef struct { ... } T;
>
> @script:python c1@
> T2;
> T << r1.T;
> @@
> if T[-2:] =="_T":
>   coccinelle.T2 = T[:-2].lower();
>   print T
> else:
>   coccinelle.T2=T.lower();
>
> @r2@
> type r1.T;
> identifier c1.T2;
> @@
> -typedef
> struct
> + T2
> { ... }
> -T
> ;
>
> @r3@
> type r1.T;
> identifier c1.T2;
> @@
> - T
> + struct T2
>
> Script 2:
> @@
> typedef VCHIQ_SHARED_MEM_INFO_T;
> @@
>
> (
> - VCHIQ_SHARED_MEM_INFO_T
> + struct vchiq_shared_mem_info
> )
> Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> ---
>  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_memdrv.h | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_memdrv.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_memdrv.h
> index dd43458..2e30a78 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_memdrv.h
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_memdrv.h
> @@ -41,7 +41,7 @@
>
>  /* ---- Constants and Types ---------------------------------------------- */
>
> -typedef struct {
> +struct vchiq_shared_mem_info {
>  	 void                   *arm_shared_mem_virt;
>  	 dma_addr_t              arm_shared_mem_phys;
>  	 size_t                  arm_shared_mem_size;
> @@ -49,13 +49,13 @@ typedef struct {
>  	 void                   *vc_shared_mem_virt;
>  	 dma_addr_t              vc_shared_mem_phys;
>  	 size_t                  vc_shared_mem_size;
> -} VCHIQ_SHARED_MEM_INFO_T;
> +};
>
>  /* ---- Variable Externs ------------------------------------------------- */
>
>  /* ---- Function Prototypes ---------------------------------------------- */
>
> -void vchiq_get_shared_mem_info(VCHIQ_SHARED_MEM_INFO_T *info);
> +void vchiq_get_shared_mem_info(struct vchiq_shared_mem_info *info);
>
>  VCHIQ_STATUS_T vchiq_memdrv_initialise(void);
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1489310493-22530-1-git-send-email-gs051095%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

