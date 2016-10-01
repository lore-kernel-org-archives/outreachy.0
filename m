X-GM-THRID: 6336543746979528704
X-Received: by 10.28.193.136 with SMTP id r130mr141479wmf.8.1475341998154;
        Sat, 01 Oct 2016 10:13:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.63.23 with SMTP id m23ls893929wma.3.gmail; Sat, 01 Oct 2016
 10:13:17 -0700 (PDT)
X-Received: by 10.194.87.67 with SMTP id v3mr773729wjz.23.1475341997462;
        Sat, 01 Oct 2016 10:13:17 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id u64si211105wmf.0.2016.10.01.10.13.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 01 Oct 2016 10:13:17 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,279,1473112800"; 
   d="scan'208";a="239026600"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien.local) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 01 Oct 2016 19:13:16 +0200
Date: Sat, 1 Oct 2016 19:13:16 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Rehas Sachdeva <aquannie@gmail.com>
cc: outreachy-kernel@googlegroups.com, Oleg Drokin <oleg.drokin@intel.com>, 
    Andreas Dilger <andreas.dilger@intel.com>, 
    James Simmons <jsimmons@infradead.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: Constify kernel_param_ops
 structures
In-Reply-To: <20161001170549.GA2965@toblerone>
Message-ID: <alpine.DEB.2.10.1610011911530.3445@hadrien>
References: <20161001170549.GA2965@toblerone>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sat, 1 Oct 2016, Rehas Sachdeva wrote:

> Check for structs which can are not modified and hence can be declared as
> const. Done using Coccinelle:

"can are" -> "are"

This merits a little more discussion, though.  I have the impression that
these structures are used via the module_param macro.  It would be useful
to look at the expansion of the macros and see what exactly is going on.

julia

>
> // <smpl>
> @r disable optional_qualifier@
> identifier s != {peri_clk_data,threshold_attr,tracer_flags,tracer};
> identifier i;
> position p;
> @@
> static struct s i@p = { ... };
>
> @ok@
> identifier r.i;
> expression e;
> position p;
> @@
> e = i@p
>
> @bad@
> position p != {r.p,ok.p};
> identifier r.i;
> identifier r.s;
> struct s e;
> @@
> e@i@p
>
> @depends on !bad disable optional_qualifier@
> identifier r.i;
> identifier r.s;
> @@
> static
> +const
> struct s i = { ... };
> // </smpl>
>
> File size before:
> 	text	data	bss	dec	hex	filename
> 	4651	4296	1344	10291	2833
> 	drivers/staging/lustre/lnet/libcfs/debug.o
>
> File size after:
> 	text	data	bss	dec	hex	filename
> 	4779	4128	1344	10251	280b
> 	drivers/staging/lustre/lnet/libcfs/debug.o
>
> Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
> ---
>  drivers/staging/lustre/lnet/libcfs/debug.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/lustre/lnet/libcfs/debug.c b/drivers/staging/lustre/lnet/libcfs/debug.c
> index 23b36b8..f9194f3 100644
> --- a/drivers/staging/lustre/lnet/libcfs/debug.c
> +++ b/drivers/staging/lustre/lnet/libcfs/debug.c
> @@ -80,7 +80,7 @@ static int libcfs_param_debug_mb_set(const char *val,
>   * it needs quite a bunch of extra processing, so we define special
>   * debugmb parameter type with corresponding methods to handle this case
>   */
> -static struct kernel_param_ops param_ops_debugmb = {
> +static const struct kernel_param_ops param_ops_debugmb = {
>  	.set = libcfs_param_debug_mb_set,
>  	.get = param_get_uint,
>  };
> @@ -138,7 +138,7 @@ static int param_set_console_max_delay(const char *val,
>  				      libcfs_console_min_delay, INT_MAX);
>  }
>
> -static struct kernel_param_ops param_ops_console_max_delay = {
> +static const struct kernel_param_ops param_ops_console_max_delay = {
>  	.set = param_set_console_max_delay,
>  	.get = param_get_delay,
>  };
> @@ -156,7 +156,7 @@ static int param_set_console_min_delay(const char *val,
>  				      1, libcfs_console_max_delay);
>  }
>
> -static struct kernel_param_ops param_ops_console_min_delay = {
> +static const struct kernel_param_ops param_ops_console_min_delay = {
>  	.set = param_set_console_min_delay,
>  	.get = param_get_delay,
>  };
> @@ -188,7 +188,7 @@ static int param_set_uintpos(const char *val, const struct kernel_param *kp)
>  	return param_set_uint_minmax(val, kp, 1, -1);
>  }
>
> -static struct kernel_param_ops param_ops_uintpos = {
> +static const struct kernel_param_ops param_ops_uintpos = {
>  	.set = param_set_uintpos,
>  	.get = param_get_uint,
>  };
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161001170549.GA2965%40toblerone.
> For more options, visit https://groups.google.com/d/optout.
>

