X-GM-THRID: 7714883239936
X-Received: by 10.152.45.7 with SMTP id i7mr6009861lam.9.1426141590471;
        Wed, 11 Mar 2015 23:26:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.102.100 with SMTP id fn4ls989412wib.24.canary; Wed, 11 Mar
 2015 23:26:30 -0700 (PDT)
X-Received: by 10.180.11.34 with SMTP id n2mr6497635wib.2.1426141590134;
        Wed, 11 Mar 2015 23:26:30 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id cl5si449799wib.3.2015.03.11.23.26.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Wed, 11 Mar 2015 23:26:30 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,387,1422918000"; 
   d="scan'208";a="125517309"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 12 Mar 2015 07:26:24 +0100
Date: Thu, 12 Mar 2015 07:26:23 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Ioana Ciornei <ciorneiioana@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 7/9] staging: sm750: Remove space
 before ')'
In-Reply-To: <dc9a353f0623e2e1ada333f76573f3417e4e8a51.1426121972.git.ciorneiioana@gmail.com>
Message-ID: <alpine.DEB.2.02.1503120726050.2072@localhost6.localdomain6>
References: <cover.1426121972.git.ciorneiioana@gmail.com> <dc9a353f0623e2e1ada333f76573f3417e4e8a51.1426121972.git.ciorneiioana@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 12 Mar 2015, Ioana Ciornei wrote:

> Remove space before ')' as it is prohibited by the Linux coding style.

In one case you remve a space after (.  It is better to describe 
everything you do.

julia

> 
> Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
> ---
>  drivers/staging/sm750fb/sm750.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
> index 8f12370..f5b4dae 100644
> --- a/drivers/staging/sm750fb/sm750.c
> +++ b/drivers/staging/sm750fb/sm750.c
> @@ -208,7 +208,7 @@ static void lynxfb_ops_fillrect(struct fb_info* info, const struct fb_fillrect*
>  	Bpp = info->var.bits_per_pixel >> 3;
>  
>  	color = (Bpp == 1)?region->color:((u32*)info->pseudo_palette)[region->color];
> -	rop = ( region->rop != ROP_COPY ) ? HW_ROP2_XOR:HW_ROP2_COPY;
> +	rop = (region->rop != ROP_COPY) ? HW_ROP2_XOR:HW_ROP2_COPY;
>  
>  	myspin_lock(&share->slock);
>  	share->accel.de_fillrect(&share->accel,
> @@ -699,7 +699,7 @@ static int lynxfb_ops_setcolreg(unsigned regno, unsigned red,
>  	}
>  
>  
> -	if (info->fix.visual == FB_VISUAL_TRUECOLOR && regno < 256 ) {
> +	if (info->fix.visual == FB_VISUAL_TRUECOLOR && regno < 256) {
>  		u32 val;
>  
>  		if (var->bits_per_pixel == 16 ||
> @@ -1154,7 +1154,7 @@ static int lynxfb_pci_probe(struct pci_dev *pdev,
>  	}
>  
>  	/* setting share structure */
> -	share = (struct lynx_share * )(&(spec_share->share));
> +	share = (struct lynx_share *)(&(spec_share->share));
>  	share->fbinfo[0] = share->fbinfo[1] = NULL;
>  	share->devid = pdev->device;
>  	share->revid = pdev->revision;
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/dc9a353f0623e2e1ada333f76573f3417e4e8a51.1426121972.git.ciorneiioana%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

