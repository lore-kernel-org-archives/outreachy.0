X-GM-THRID: 6534517780926955520
X-Received: by 10.46.46.21 with SMTP id u21mr163454lju.9.1521443695834;
        Mon, 19 Mar 2018 00:14:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:fc2:: with SMTP id 63-v6ls1205643lfp.16.gmail; Mon, 19
 Mar 2018 00:14:54 -0700 (PDT)
X-Google-Smtp-Source: AG47ELt14f1u2W9o/gbq8CzkdajN2rUhBBctOhbQxU+mXW/hd6lzyfEDgSYyisZGhFn4n99LSJ+C
X-Received: by 2002:a19:4806:: with SMTP id v6-v6mr644631lfa.37.1521443694291;
        Mon, 19 Mar 2018 00:14:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521443694; cv=none;
        d=google.com; s=arc-20160816;
        b=pjnU/y64oq35OuHr4OJ4ElCySx+hLEgzwxeUHNdp7iKHN6ExeKRXtqhNnMPFpZCGvD
         VuUfVM3gDcbhwGrC3R4RWEk4ZtX+lOt9whDB+weZQ26sfBWWkm2jtM+/ch7pmCvOkMv5
         wubJgJpMt7ewdcAiOEykP3O2XgUl0xgLlpuI8BQOH39VclmJg82trzj1tR+lo98/6EMM
         d/PayLPah0UTqEHan8gnhTWYwIbgGaAABUeDVrseDqqXT6E+6kIzYcWr5Xf+1JBiLg0u
         QxQPXo6KeiTL8CpYz/GuSLyvSkNDDIvHi2kHvVv/BGU6abQt6CQacA0+YzM0omyVR+/p
         3cHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=kxP1FkMmRj0PieX4Pzpy79sd82Cvm1D3LRBjD+4WwaE=;
        b=WhPJ9ADus6CHgVsaD3zi0mbp6T+38r/VLfDfOLMxIjMXmUjzS3d9fupjFBuHSs9UYb
         wO1owWY5tCSNb9eX9RPoJR9AhF//qJZHXWTdVyTKjFD3bsQsh7A+yBVciidbBBXbC+z3
         yifeurm/6YoAq1LaiUkYkt48Bk7zhlxQd4JAn+66F+g31Mj85qPtlKz1em5JACmNAOcR
         2pInnD3AyIqeoEklMVrNkrvYYdYJnu8UzcssEHOV7Jn34koqCLW7ayT+ldMoEVY/Jfl0
         DWLWASUa3lf4wIjiZIsNWCGSHxaaxyryPfAhWkM1VkQxrTGe3MIG+dDDv8ezCUbsUcK0
         whag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id v6si472199ljc.0.2018.03.19.00.14.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Mar 2018 00:14:54 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.48,329,1517871600"; 
   d="scan'208";a="318729739"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Mar 2018 08:14:53 +0100
Date: Mon, 19 Mar 2018 08:14:53 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arushi Singhal <arushisinghal19971997@gmail.com>
cc: daniel.vetter@intel.com, Gustavo Padovan <gustavo@padovan.org>, 
    Sean Paul <seanpaul@chromium.org>, David Airlie <airlied@linux.ie>, 
    Ben Skeggs <bskeggs@redhat.com>, dri-devel@lists.freedesktop.org, 
    linux-kernel@vger.kernel.org, nouveau@lists.freedesktop.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] gpu: drm: Use list_{next/prev}_entry
 instead of list_entry
In-Reply-To: <20180319050530.GA25589@seema-Inspiron-15-3567>
Message-ID: <alpine.DEB.2.20.1803190805260.2864@hadrien>
References: <20180319050530.GA25589@seema-Inspiron-15-3567>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 19 Mar 2018, Arushi Singhal wrote:

> This patch replace list_entry with list_{next/prev}_entry as it makes
> the code more clear to read.
> Done using coccinelle:
>
> @@
> expression e1;
> identifier e3;
> type t;
> @@
> (
> - list_entry(e1->e3.next,t,e3)
> + list_next_entry(e1,e3)
> |
> - list_entry(e1->e3.prev,t,e3)
> + list_prev_entry(e1,e3)
> )

This looks like a rule that could be nice for the Linux kernel in general,
because the code really is much simpler.

I would suggest to write the rule in a more robust way, as follows:

@@
identifier e3;
type t;
t *e1;
@@

(
- list_entry(e1->e3.next,t,e3)
+ list_next_entry(e1,e3)
|
- list_entry(e1->e3.prev,t,e3)
+ list_prev_entry(e1,e3)
)

@@
expression e1;
identifier e3;
@@

(
- list_entry(e1->e3.next,typeof(*e1),e3)
+ list_next_entry(e1,e3)
|
- list_entry(e1->e3.prev,typeof(*e1),e3)
+ list_prev_entry(e1,e3)

This checks that the type that is specified corresponds to the one on e1.
It could actually be that the call is getting the first element of a list,
from some different type, and coincidentally the two types have the same
field name for the list element.

Unfortunately, the second rule, with the typeof call, doesn't currently
work in Coccinelle, because the semantic patch language doesn't actually
support typeof, and thinks that it is a function call.  I will fix this.

To make a semantic patch for the kernel, you can try running spgen on the
above file and answer the questions that it asks.  You can find examples
in the coccinelle/scripts directory.  Just run

spgen foo.cocci

Then answer the questions.  Then run

spgen foo.cocci > foo_for_kernel.cocci

The second run will use the results of the first run to print the semantic
patch.  Let me know if you have any questions.  You can always adjust the
semantic patch that is generated by hand afterwards if needed.

julia


>
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
>  drivers/gpu/drm/drm_lease.c                    | 2 +-
>  drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/drm_lease.c b/drivers/gpu/drm/drm_lease.c
> index 1402c0e..4dcfb5f 100644
> --- a/drivers/gpu/drm/drm_lease.c
> +++ b/drivers/gpu/drm/drm_lease.c
> @@ -340,7 +340,7 @@ static void _drm_lease_revoke(struct drm_master *top)
>  				break;
>
>  			/* Over */
> -			master = list_entry(master->lessee_list.next, struct drm_master, lessee_list);
> +			master = list_next_entry(master, lessee_list);
>  		}
>  	}
>  }
> diff --git a/drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c b/drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c
> index e4c8d31..81c3567 100644
> --- a/drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c
> +++ b/drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c
> @@ -134,7 +134,7 @@ nvkm_cstate_find_best(struct nvkm_clk *clk, struct nvkm_pstate *pstate,
>  			       nvkm_volt_map(volt, volt->max2_id, clk->temp));
>
>  	for (cstate = start; &cstate->head != &pstate->list;
> -	     cstate = list_entry(cstate->head.prev, typeof(*cstate), head)) {
> +	     cstate = list_prev_entry(cstate, head)) {
>  		if (nvkm_cstate_valid(clk, cstate, max_volt, clk->temp))
>  			break;
>  	}
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20180319050530.GA25589%40seema-Inspiron-15-3567.
> For more options, visit https://groups.google.com/d/optout.
>

