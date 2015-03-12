X-GM-THRID: 7714883239936
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,31430fd6994c5b1e
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.189.227 with SMTP id gl3mr6142954lbc.2.1426141692144;
        Wed, 11 Mar 2015 23:28:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.90.43 with SMTP id bt11ls522484wib.37.canary; Wed, 11 Mar
 2015 23:28:11 -0700 (PDT)
X-Received: by 10.194.11.70 with SMTP id o6mr6040300wjb.6.1426141691768;
        Wed, 11 Mar 2015 23:28:11 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id ew13si455263wid.0.2015.03.11.23.28.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Wed, 11 Mar 2015 23:28:11 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,387,1422918000"; 
   d="scan'208";a="125517425"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 12 Mar 2015 07:28:11 +0100
Date: Thu, 12 Mar 2015 07:28:10 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Ioana Ciornei <ciorneiioana@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 5/9] staging: sm750: Place open bracket
 '{' on the next line
In-Reply-To: <73002c755cfd51cb124daf7f26ea81b686429f5a.1426121972.git.ciorneiioana@gmail.com>
Message-ID: <alpine.DEB.2.02.1503120727540.2072@localhost6.localdomain6>
References: <cover.1426121972.git.ciorneiioana@gmail.com> <73002c755cfd51cb124daf7f26ea81b686429f5a.1426121972.git.ciorneiioana@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 12 Mar 2015, Ioana Ciornei wrote:

> Move open curly bracket on next line after the definition of a function, to follow
> the Linux coding style.

This patch has the space and semicolon changes too.

julia

> 
> Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
> ---
>  drivers/staging/sm750fb/sm750.c | 14 ++++++++------
>  1 file changed, 8 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
> index 6ac572c..f6083c4 100644
> --- a/drivers/staging/sm750fb/sm750.c
> +++ b/drivers/staging/sm750fb/sm750.c
> @@ -60,7 +60,8 @@ static char *g_option = NULL;
>  
>  /* if not use spin_lock, system will die if user load driver
>   * and immediatly unload driver frequently (dual)*/
> -static inline void myspin_lock(spinlock_t *sl) {
> +static inline void myspin_lock(spinlock_t *sl)
> +{
>  	struct lynx_share *share;
>  
>  	share = container_of(sl, struct lynx_share, slock);
> @@ -68,7 +69,8 @@ static inline void myspin_lock(spinlock_t *sl) {
>  		spin_lock(sl);
>  }
>  
> -static inline void myspin_unlock(spinlock_t *sl) {
> +static inline void myspin_unlock(spinlock_t *sl)
> +{
>  	struct lynx_share *share;
>  
>  	share = container_of(sl, struct lynx_share, slock);
> @@ -419,7 +421,7 @@ static int lynxfb_ops_set_par(struct fb_info *info)
>  		var->red.length = 8;
>  		var->green.offset = 8;
>  		var->green.length = 8;
> -		var->blue.offset = 0;
> +		var->blue.offset = 0 ;
>  		var->blue.length = 8;
>  		fix->visual = FB_VISUAL_TRUECOLOR;
>  		break;
> @@ -640,7 +642,7 @@ static int lynxfb_ops_check_var(struct fb_var_screeninfo *var, struct fb_info *i
>  		var->red.length = 8;
>  		var->green.offset = 8;
>  		var->green.length = 8;
> -		var->blue.offset = 0;
> +		var->blue.offset = 0 ;
>  		var->blue.length = 8;
>  		info->fix.visual = FB_VISUAL_TRUECOLOR;
>  		break;
> @@ -772,7 +774,7 @@ static int sm750fb_set_drv(struct lynxfb_par *par)
>  	output->proc_setBLANK = (share->revid == SM750LE_REVISION_ID)?hw_sm750le_setBLANK:hw_sm750_setBLANK;
>  	output->clear = hw_sm750_output_clear;
>  	/* chip specific phase */
> -	share->accel.de_wait = (share->revid == SM750LE_REVISION_ID)?hw_sm750le_deWait: hw_sm750_deWait;
> +	share->accel.de_wait = (share->revid == SM750LE_REVIvSION_ID)?hw_sm750le_deWait: hw_sm750_deWait;
>  	switch (spec_share->state.dataflow) {
>  	case sm750_simul_pri:
>  		output->paths = sm750_pnc;
> @@ -1408,7 +1410,7 @@ static struct pci_driver lynxfb_driver = {
>  
>  static int __init lynxfb_init(void)
>  {
> -	char *option;
> +	char *option ;
>  	int ret;
>  
>  #ifdef MODULE
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/73002c755cfd51cb124daf7f26ea81b686429f5a.1426121972.git.ciorneiioana%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

