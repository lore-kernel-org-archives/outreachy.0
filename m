X-GM-THRID: 4475579269120
X-Received: by 10.112.161.9 with SMTP id xo9mr2205014lbb.7.1425052625557;
        Fri, 27 Feb 2015 07:57:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.153.5.9 with SMTP id ci9ls195754lad.40.gmail; Fri, 27 Feb 2015
 07:57:05 -0800 (PST)
X-Received: by 10.112.167.98 with SMTP id zn2mr2133058lbb.6.1425052625153;
        Fri, 27 Feb 2015 07:57:05 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id ev8si130797wib.3.2015.02.27.07.57.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 07:57:05 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,660,1418079600"; 
   d="scan'208";a="123692515"
Received: from ip209.messe-nbg.customer.bisping.net (HELO hadrien.local) ([62.91.19.209])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 27 Feb 2015 16:57:04 +0100
Date: Fri, 27 Feb 2015 16:56:54 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 13/24] staging: lustre: mdc: remove
 unused variable
In-Reply-To: <6d810f755db18473df909a705c5258025103e33f.1425035010.git.mahfouz.saif.elyazal@gmail.com>
Message-ID: <alpine.DEB.2.10.1502271656420.2663@hadrien>
References: <cover.1425034998.git.mahfouz.saif.elyazal@gmail.com> <6d810f755db18473df909a705c5258025103e33f.1425035010.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 27 Feb 2015, Aya Mahfouz wrote:

> This patch removes a variable that was simply used to
> store the return value of a function call before
> returning it.
>
> The issue was detected and resolved using the following
> coccinelle script:
>
> @@
> identifier len,f;
> @@
>
> -int len;
>  ... when != len
>      when strict
> -len =
> +return
>         f(...);
> -return len;
>
> Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
> ---
>  drivers/staging/lustre/lustre/mdc/mdc_locks.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/staging/lustre/lustre/mdc/mdc_locks.c b/drivers/staging/lustre/lustre/mdc/mdc_locks.c
> index d1c224e..b72319b 100644
> --- a/drivers/staging/lustre/lustre/mdc/mdc_locks.c
> +++ b/drivers/staging/lustre/lustre/mdc/mdc_locks.c
> @@ -176,12 +176,10 @@ int mdc_cancel_unused(struct obd_export *exp,
>  {
>  	struct ldlm_res_id res_id;
>  	struct obd_device *obd = class_exp2obd(exp);
> -	int rc;
>
>  	fid_build_reg_res_name(fid, &res_id);
> -	rc = ldlm_cli_cancel_unused_resource(obd->obd_namespace, &res_id,
> +	return ldlm_cli_cancel_unused_resource(obd->obd_namespace, &res_id,
>  					     policy, mode, flags, opaque);

Argument alignment.

julia

> -	return rc;
>  }
>
>  int mdc_null_inode(struct obd_export *exp,
> --
> 1.9.3
>
>
> --
> Kind Regards,
> Aya Saif El-yazal Mahfouz
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/6d810f755db18473df909a705c5258025103e33f.1425035010.git.mahfouz.saif.elyazal%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

