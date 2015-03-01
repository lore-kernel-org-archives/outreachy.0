X-GM-THRID: 5271474667520
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,b251f69e5d11924f
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.16.102 with SMTP id f6mr594777lbd.19.1425214216905;
        Sun, 01 Mar 2015 04:50:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.19.66 with SMTP id c2ls33501wie.1.canary; Sun, 01 Mar 2015
 04:50:16 -0800 (PST)
X-Received: by 10.180.101.101 with SMTP id ff5mr1543403wib.5.1425214216615;
        Sun, 01 Mar 2015 04:50:16 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id by11si495270wib.1.2015.03.01.04.50.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sun, 01 Mar 2015 04:50:16 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,671,1418079600"; 
   d="scan'208";a="101693903"
Received: from wnpgmb0903w-ds01-92-71.dynamic.mtsallstream.net (HELO unknownE0F847206056) ([142.161.92.71])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 01 Mar 2015 13:50:04 +0100
Date: Sun, 1 Mar 2015 06:50:02 -0600 (CST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Navya Sri Nizamkari <navyasri.tech@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: lustre: Use kasprintf.
In-Reply-To: <20150301073759.GA21185@localhost>
Message-ID: <alpine.DEB.2.10.1503010649150.2545@hadrien>
References: <20150301073759.GA21185@localhost>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 1 Mar 2015, Navya Sri Nizamkari wrote:

> This patch uses kasprintf as it combines kmalloc and
> sprintf, and takes care of the size calculation itself.
>
> The semantic patch that makes this change is as follows:
>
> // <smpl>
> @@
> expression a,flag;
> expression list args;
> statement S;
> @@
>
>   a =
> -  \(kmalloc\|kzalloc\)(...,flag)
> +  kasprintf(flag,args)
>   <... when != a
>   if (a == NULL || ...) S
>   ...>
> - sprintf(a,args);

Nice :)

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

>
> Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
> ---
> Changes in v2:
>      -Change arguments of kasprintf to the right ones.
>
>  drivers/staging/lustre/lustre/llite/llite_lib.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/lustre/lustre/llite/llite_lib.c b/drivers/staging/lustre/lustre/llite/llite_lib.c
> index 0c1b583..26e8626 100644
> --- a/drivers/staging/lustre/lustre/llite/llite_lib.c
> +++ b/drivers/staging/lustre/lustre/llite/llite_lib.c
> @@ -978,19 +978,17 @@ int ll_fill_super(struct super_block *sb, struct vfsmount *mnt)
>  	CDEBUG(D_CONFIG, "Found profile %s: mdc=%s osc=%s\n", profilenm,
>  	       lprof->lp_md, lprof->lp_dt);
>
> -	dt = kzalloc(strlen(lprof->lp_dt) + instlen + 2, GFP_NOFS);
> +	dt = kasprintf(GFP_NOFS, "%s-%p", lprof->lp_dt, cfg->cfg_instance);
>  	if (!dt) {
>  		err = -ENOMEM;
>  		goto out_free;
>  	}
> -	sprintf(dt, "%s-%p", lprof->lp_dt, cfg->cfg_instance);
>
> -	md = kzalloc(strlen(lprof->lp_md) + instlen + 2, GFP_NOFS);
> +	md = kasprintf(GFP_NOFS, "%s-%p", lprof->lp_dt, cfg->cfg_instance);
>  	if (!md) {
>  		err = -ENOMEM;
>  		goto out_free;
>  	}
> -	sprintf(md, "%s-%p", lprof->lp_md, cfg->cfg_instance);
>
>  	/* connections, registrations, sb setup */
>  	err = client_common_fill_super(sb, md, dt, mnt);
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150301073759.GA21185%40localhost.
> For more options, visit https://groups.google.com/d/optout.
>

