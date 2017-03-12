X-GM-THRID: 6396335157434908672
X-Received: by 10.129.136.6 with SMTP id y6mr14038219ywf.157.1489328083581;
        Sun, 12 Mar 2017 07:14:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.136.140 with SMTP id s12ls3605603ioi.15.gmail; Sun, 12 Mar
 2017 07:14:42 -0700 (PDT)
X-Received: by 10.99.135.193 with SMTP id i184mr12212755pge.29.1489328082873;
        Sun, 12 Mar 2017 07:14:42 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id y90si2658282pfa.6.2017.03.12.07.14.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 07:14:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [88.128.80.189])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 78795902;
	Sun, 12 Mar 2017 14:14:39 +0000 (UTC)
Date: Sun, 12 Mar 2017 15:14:20 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Gargi Sharma <gs051095@gmail.com>
Cc: outreachy-kernel@googlegroups.com, swarren@wwwdotorg.org,
	lee@kernel.org, eric@anholt.net
Subject: Re: [Outreachy kernel] [PATCH] staging: vc04_services: Replace
 typedef with struct
Message-ID: <20170312141420.GB29303@kroah.com>
References: <1489310493-22530-1-git-send-email-gs051095@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1489310493-22530-1-git-send-email-gs051095@gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Sun, Mar 12, 2017 at 02:51:33PM +0530, Gargi Sharma wrote:
> Using typedef for a structure type and upper case struct names is not
> suggested in Linux kernel coding style guidelines. Removed occurences
> of typedefs and converted struct names to lowercase. Used grep to
> ensure that all occurences have been removed. The module compiles
> without any warnings or errors.
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

This is a prototype for a function that is not even in the kernel, it
should just be removed.

thanks,

greg k-h

