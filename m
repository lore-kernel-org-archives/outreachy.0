X-GM-THRID: 4924186296320
X-Received: by 10.152.19.100 with SMTP id d4mr2831546lae.7.1425152614885;
        Sat, 28 Feb 2015 11:43:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.29.164 with SMTP id jx4ls317278wid.5.canary; Sat, 28 Feb
 2015 11:43:34 -0800 (PST)
X-Received: by 10.194.11.70 with SMTP id o6mr2832740wjb.6.1425152614408;
        Sat, 28 Feb 2015 11:43:34 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id ew5si360306wid.1.2015.02.28.11.43.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sat, 28 Feb 2015 11:43:34 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,668,1418079600"; 
   d="scan'208";a="123802847"
Received: from unknown (HELO hadrien.local) ([207.164.135.98])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 28 Feb 2015 20:43:33 +0100
Date: Sat, 28 Feb 2015 14:43:31 -0500 (EST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Haneen Mohammed <hamohammed.sa@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: lustre: lustre: ldlm:
 Fix externs should be avoided in .c
In-Reply-To: <1425113778-17230-1-git-send-email-hamohammed.sa@gmail.com>
Message-ID: <alpine.DEB.2.10.1502281443101.2688@hadrien>
References: <1425075568-26188-1-git-send-email-hamohammed.sa@gmail.com> <1425113778-17230-1-git-send-email-hamohammed.sa@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

I think that Staging: lustre: would be sufficient for the subject line.

julia

On Sat, 28 Feb 2015, Haneen Mohammed wrote:

> This patch moves extern declaration to ldlm_internal.h.
> Remove prototype from ldlm_lockd.c and ldlm_lock.c.
> Issue addressed by checkpatch.pl.
>
> Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> ---
>  drivers/staging/lustre/lustre/ldlm/ldlm_internal.h | 4 ++++
>  drivers/staging/lustre/lustre/ldlm/ldlm_lock.c     | 2 --
>  drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c    | 2 --
>  3 files changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_internal.h b/drivers/staging/lustre/lustre/ldlm/ldlm_internal.h
> index 17271b0..5bf9488 100644
> --- a/drivers/staging/lustre/lustre/ldlm/ldlm_internal.h
> +++ b/drivers/staging/lustre/lustre/ldlm/ldlm_internal.h
> @@ -177,6 +177,10 @@ int ldlm_bl_to_thread_list(struct ldlm_namespace *ns,
>  void ldlm_handle_bl_callback(struct ldlm_namespace *ns,
>  			     struct ldlm_lock_desc *ld, struct ldlm_lock *lock);
>
> +extern struct kmem_cache *ldlm_resource_slab;
> +
> +/* ldlm_lockd.c & ldlm_lock.c */
> +extern struct kmem_cache *ldlm_lock_slab;
>
>  /* ldlm_extent.c */
>  void ldlm_extent_add_lock(struct ldlm_resource *res, struct ldlm_lock *lock);
> diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_lock.c b/drivers/staging/lustre/lustre/ldlm/ldlm_lock.c
> index d7fa934..84b111e 100644
> --- a/drivers/staging/lustre/lustre/ldlm/ldlm_lock.c
> +++ b/drivers/staging/lustre/lustre/ldlm/ldlm_lock.c
> @@ -151,8 +151,6 @@ char *ldlm_it2str(int it)
>  }
>  EXPORT_SYMBOL(ldlm_it2str);
>
> -extern struct kmem_cache *ldlm_lock_slab;
> -
>
>  void ldlm_register_intent(struct ldlm_namespace *ns, ldlm_res_policy arg)
>  {
> diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c b/drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c
> index 98fbd3f..e0a8157 100644
> --- a/drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c
> +++ b/drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c
> @@ -55,8 +55,6 @@ static char *ldlm_cpts;
>  module_param(ldlm_cpts, charp, 0444);
>  MODULE_PARM_DESC(ldlm_cpts, "CPU partitions ldlm threads should run on");
>
> -extern struct kmem_cache *ldlm_resource_slab;
> -extern struct kmem_cache *ldlm_lock_slab;
>  static struct mutex	ldlm_ref_mutex;
>  static int ldlm_refcount;
>
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1425113778-17230-1-git-send-email-hamohammed.sa%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

