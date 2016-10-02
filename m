X-GM-THRID: 6336543746979528704
X-Received: by 10.46.32.230 with SMTP id g99mr588640lji.9.1475437904061;
        Sun, 02 Oct 2016 12:51:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.32.196 with SMTP id g65ls760860lji.22.gmail; Sun, 02 Oct
 2016 12:51:43 -0700 (PDT)
X-Received: by 10.25.193.148 with SMTP id r142mr1055144lff.2.1475437903467;
        Sun, 02 Oct 2016 12:51:43 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id c13si899934wme.3.2016.10.02.12.51.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Oct 2016 12:51:43 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,434,1473112800"; 
   d="scan'208";a="195356727"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 02 Oct 2016 21:51:42 +0200
Date: Sun, 2 Oct 2016 21:51:41 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Rehas Sachdeva <aquannie@gmail.com>
cc: outreachy-kernel@googlegroups.com, Oleg Drokin <oleg.drokin@intel.com>, 
    Andreas Dilger <andreas.dilger@intel.com>, 
    James Simmons <jsimmons@infradead.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: lustre: Constify
 kernel_param_ops structures
In-Reply-To: <20161002182515.GA32326@toblerone>
Message-ID: <alpine.DEB.2.10.1610022138110.3327@hadrien>
References: <20161002182515.GA32326@toblerone>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sun, 2 Oct 2016, Rehas Sachdeva wrote:

> Check for structs which are not modified and hence can be declared as const.
> Done using Coccinelle:

The semantic patch below doesn't fit well with this case.  It probably did
help you find the issue, but not for the right reason.  The semantic patch
actually doesn't find any uses of the structure at all.  But it is used,
via the unfolding of the module_param macro.

Greg gave an interesting hint in his comment, saying that structures
that are used in this way are typically const in the kernel.  So you could
instead write a semantic patch that looks for this specific situation.
This is actually a bit tricky, but it will show some features of
Coccinelle.

The first issue is how to match something like:

module_param(libcfs_debug_mb, debugmb, 0644);

which looks like a function call, but is not actually inside another
function.  If you just put a pattern like that, Coccinelle will only look
for it inside of a function definition.  You need to inform Coccinelle is
a declaration, which may be at top level.  For that, put in your
metavariable list the declaration:

declarer name module_param;

This will cause Coccinelle to treat module_param in a special way.

The next issue is how to go from eg param_ops_debugmb to debugmb, as found
in:

module_param(libcfs_debug_mb, debugmb, 0644);

For this, you will need to use python code (or ocaml code) to make a new
metavariable that inherits the name of the declared structure and cuts the
"param_ops_" part off the front.  For this, you can look at
coccinelle/demos/pythontococci.cocci.  In your case, you would have
something like the following, after your rule r that obtains the structure
name, i:

@script:python s@
i << r.i;
short;
@@

short = {now some python code to remove "param_ops_" from the beginning of i}

Then your subsequent rules can refer to s.short, for the string that
should be in the second argument of module_param

julia


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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161002182515.GA32326%40toblerone.
> For more options, visit https://groups.google.com/d/optout.
>

