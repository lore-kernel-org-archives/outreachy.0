X-GM-THRID: 4475579269120
X-Received: by 10.194.11.70 with SMTP id o6mr2182081wjb.6.1425052550842;
        Fri, 27 Feb 2015 07:55:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.206.104 with SMTP id ln8ls173476lac.94.gmail; Fri, 27 Feb
 2015 07:55:50 -0800 (PST)
X-Received: by 10.152.45.7 with SMTP id i7mr2172851lam.9.1425052550351;
        Fri, 27 Feb 2015 07:55:50 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id by11si158872wib.1.2015.02.27.07.55.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 07:55:50 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,660,1418079600"; 
   d="scan'208";a="123692286"
Received: from ip209.messe-nbg.customer.bisping.net (HELO hadrien.local) ([62.91.19.209])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 27 Feb 2015 16:55:37 +0100
Date: Fri, 27 Feb 2015 16:55:27 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 16/24] staging: lustre: llite: remove
 unused variable
In-Reply-To: <8046f90779d408bf363802fd0c5298dbc759d3dc.1425035011.git.mahfouz.saif.elyazal@gmail.com>
Message-ID: <alpine.DEB.2.10.1502271655080.2663@hadrien>
References: <cover.1425034998.git.mahfouz.saif.elyazal@gmail.com> <8046f90779d408bf363802fd0c5298dbc759d3dc.1425035011.git.mahfouz.saif.elyazal@gmail.com>
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
>  drivers/staging/lustre/lustre/llite/vvp_io.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
>
> diff --git a/drivers/staging/lustre/lustre/llite/vvp_io.c b/drivers/staging/lustre/lustre/llite/vvp_io.c
> index 91bba79..6acf422 100644
> --- a/drivers/staging/lustre/lustre/llite/vvp_io.c
> +++ b/drivers/staging/lustre/lustre/llite/vvp_io.c
> @@ -309,12 +309,9 @@ static int vvp_io_read_lock(const struct lu_env *env,
>  {
>  	struct cl_io	 *io = ios->cis_io;
>  	struct cl_io_rw_common *rd = &io->u.ci_rd.rd;
> -	int result;
>
> -	result = vvp_io_rw_lock(env, io, CLM_READ, rd->crw_pos,
> +	return vvp_io_rw_lock(env, io, CLM_READ, rd->crw_pos,
>  				rd->crw_pos + rd->crw_count - 1);

Same argument alignment problem here.

julia

> -
> -	return result;
>  }
>
>  static int vvp_io_fault_lock(const struct lu_env *env,
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/8046f90779d408bf363802fd0c5298dbc759d3dc.1425035011.git.mahfouz.saif.elyazal%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

