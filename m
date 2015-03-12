X-GM-THRID: 7714883239936
X-Received: by 10.112.41.131 with SMTP id f3mr6139548lbl.20.1426141496729;
        Wed, 11 Mar 2015 23:24:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.3.10 with SMTP id 10ls219089lay.26.gmail; Wed, 11 Mar 2015
 23:24:56 -0700 (PDT)
X-Received: by 10.112.147.35 with SMTP id th3mr5891632lbb.15.1426141496116;
        Wed, 11 Mar 2015 23:24:56 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id o3si1449305wib.2.2015.03.11.23.24.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Wed, 11 Mar 2015 23:24:56 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,387,1422918000"; 
   d="scan'208";a="102998422"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 12 Mar 2015 07:24:55 +0100
Date: Thu, 12 Mar 2015 07:24:53 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Ioana Ciornei <ciorneiioana@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 9/9] staging: sm750: Add space before
 and after '=', ':' etc
In-Reply-To: <4b3b31362eee75a1c82c29e6ca359ca85b4d540c.1426121972.git.ciorneiioana@gmail.com>
Message-ID: <alpine.DEB.2.02.1503120723260.2072@localhost6.localdomain6>
References: <cover.1426121972.git.ciorneiioana@gmail.com> <4b3b31362eee75a1c82c29e6ca359ca85b4d540c.1426121972.git.ciorneiioana@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Thu, 12 Mar 2015, Ioana Ciornei wrote:

> Add space before and after '=', ':', '!=' etc in order to improve readability.
> 
> Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
> ---
>  drivers/staging/sm750fb/sm750.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
> index ffc977b..75d505a 100644
> --- a/drivers/staging/sm750fb/sm750.c
> +++ b/drivers/staging/sm750fb/sm750.c
> @@ -766,7 +766,7 @@ static int sm750fb_set_drv(struct lynxfb_par *par)
>  	output->proc_setBLANK = (share->revid == SM750LE_REVISION_ID)?hw_sm750le_setBLANK:hw_sm750_setBLANK;
>  	output->clear = hw_sm750_output_clear;
>  	/* chip specific phase */
> -	share->accel.de_wait = (share->revid == SM750LE_REVIvSION_ID)?hw_sm750le_deWait: hw_sm750_deWait;
> +	share->accel.de_wait = (share->revid == SM750LE_REVIvSION_ID)?hw_sm750le_deWait : hw_sm750_deWait;

You could take care of ? at the same time.  It may be that checkpatch 
overlooks this for some reason.

julia

>  	switch (spec_share->state.dataflow) {
>  	case sm750_simul_pri:
>  		output->paths = sm750_pnc;
> @@ -816,7 +816,7 @@ static int sm750fb_set_drv(struct lynxfb_par *par)
>  	return ret;
>  }
>  
> -static struct fb_ops lynxfb_ops={
> +static struct fb_ops lynxfb_ops = {
>  	.owner = THIS_MODULE,
>  	.fb_check_var =  lynxfb_ops_check_var,
>  	.fb_set_par = lynxfb_ops_set_par,
> @@ -1350,7 +1350,7 @@ static int __init lynxfb_setup(char *options)
>  		strsep() updates @options to pointer after the first found token
>  		it also returns the pointer ahead the token.
>  		*/
> -	while ((opt = strsep(&options, ":"))!=NULL) {
> +	while ((opt = strsep(&options, ":")) != NULL) {
>  		/* options that mean for any lynx chips are configured here */
>  		if (!strncmp(opt, "noaccel", strlen("noaccel")))
>  			g_noaccel = 1;
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/4b3b31362eee75a1c82c29e6ca359ca85b4d540c.1426121972.git.ciorneiioana%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

