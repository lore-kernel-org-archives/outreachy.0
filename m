X-GM-THRID: 6394971085965623296
X-Received: by 10.25.190.65 with SMTP id o62mr743573lff.16.1488964608261;
        Wed, 08 Mar 2017 01:16:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.7.81 with SMTP id i17ls290192ljd.41.gmail; Wed, 08 Mar 2017
 01:16:47 -0800 (PST)
X-Received: by 10.46.80.82 with SMTP id v18mr850151ljd.27.1488964607753;
        Wed, 08 Mar 2017 01:16:47 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id p144si291394wme.2.2017.03.08.01.16.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Mar 2017 01:16:47 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,262,1486422000"; 
   d="scan'208";a="215985090"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 08 Mar 2017 10:16:46 +0100
Date: Wed, 8 Mar 2017 10:16:34 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Varsha Rao <rvarsha016@gmail.com>
cc: Mauro Carvalho Chehab <mchehab@kernel.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: media: atomisp: Remove
 useless cast.
In-Reply-To: <58bf8051.081a620a.e7433.8064@mx.google.com>
Message-ID: <alpine.DEB.2.20.1703081016060.3156@hadrien>
References: <cover.1488944614.git.varshar186@gmail.com> <58bf8051.081a620a.e7433.8064@mx.google.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

y

On Wed, 8 Mar 2017, Varsha Rao wrote:

> Explicit type casting of variable, with same type as that of variable,
> is not required. The following coccinelle script is used to remove it.
>
> @@
> type T;
> T *ptr,p;
> @@
> (
> - (T *)(&p)
> + &p
> |
> - (T *)ptr
> + ptr
> |
> - (T *)(ptr)
> + ptr
> |
> - (T)(p)
> + p
> )
>
> Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
> ---
>  drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css.c    | 2 +-
>  drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_sp.c | 2 +-
>  drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm.c           | 2 +-
>  3 files changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css.c b/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css.c
> index f39d6f5..0bb6fa0 100644
> --- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css.c
> +++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css.c
> @@ -1335,7 +1335,7 @@ static int pc_monitoring(void *data)
>  {
>  	int i = 0;
>
> -	(void)data;
> +	data;

Did Coccinelle really find this case for you?  Because void and void * are
not the same.

julia

>  	while (true) {
>  		if (sh_binary_running) {
>  			sh_css_metrics_sample_pcs();
> diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_sp.c b/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_sp.c
> index 00b2d16..e274950 100644
> --- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_sp.c
> +++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_sp.c
> @@ -1155,7 +1155,7 @@ sp_init_stage(struct ia_css_pipeline_stage *stage,
>  	}
>
>  	err = sh_css_sp_init_stage(binary,
> -			     (const char *)binary_name,
> +			     binary_name,
>  			     blob_info,
>  			     args,
>  			     pipe_num,
> diff --git a/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm.c b/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm.c
> index 358d340..a32c981 100644
> --- a/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm.c
> +++ b/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm.c
> @@ -553,7 +553,7 @@ int hmm_set(ia_css_ptr virt, int c, unsigned int bytes)
>  		vptr = hmm_bo_vmap(bo, true);
>  		if (vptr) {
>  			vptr = vptr + (virt - bo->start);
> -			memset((void *)vptr, c, bytes);
> +			memset(vptr, c, bytes);
>  			clflush_cache_range(vptr, bytes);
>  			hmm_bo_vunmap(bo);
>  			return 0;
> --
> 2.9.3
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/58bf8051.081a620a.e7433.8064%40mx.google.com.
> For more options, visit https://groups.google.com/d/optout.
>

