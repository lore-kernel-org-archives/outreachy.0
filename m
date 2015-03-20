X-GM-THRID: 9252100898816
X-Received: by 10.236.53.10 with SMTP id f10mr86206024yhc.17.1426862383839;
        Fri, 20 Mar 2015 07:39:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.99.6 with SMTP id p6ls1675374qge.51.gmail; Fri, 20 Mar
 2015 07:39:43 -0700 (PDT)
X-Received: by 10.236.2.227 with SMTP id 63mr86314093yhf.12.1426862383557;
        Fri, 20 Mar 2015 07:39:43 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id f61si326857yho.3.2015.03.20.07.39.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Fri, 20 Mar 2015 07:39:43 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,437,1422918000"; 
   d="scan'208";a="126952854"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 20 Mar 2015 15:39:42 +0100
Date: Fri, 20 Mar 2015 15:39:34 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Somya Anand <somyaanand214@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] Staging: lustre: Convert macro
 class_export_rpc_dec into static inline function
In-Reply-To: <1426856679-1443-2-git-send-email-somyaanand214@gmail.com>
Message-ID: <alpine.DEB.2.10.1503201537160.2987@hadrien>
References: <1426856679-1443-1-git-send-email-somyaanand214@gmail.com> <1426856679-1443-2-git-send-email-somyaanand214@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 20 Mar 2015, Somya Anand wrote:

> Static inline function are generally preferred over macros because
> static inline functions have types and return values. But in order
> to change a macro into static inline function we have to check the
> calling sites of the macro and ensuring that the types of arguments
> in each case is same and also ensure that macro always returns same
> type.

This is a nice effort to explain things, but I think that it is too much
for a commit message.  Just explain concisely what was done and why.  Ie,
you have changed the macro to a function, and you have checked that the
type you have chosen for the parameter is compatible with the types of the
arguments at all of the call sites. The kind of explanation you have here
could be better for a cover letter.

julia

> This patch converts the macro class_export_rpc_dec into static inline
> function. To do so, we have used the following coccinelle script to
> ensure the above mentioned requirements for this change.
>
> Since this macro does not return anything, so coccinelle script can be
> simplified to avoid return type checks.
>
> @initialize:python@
> @@
> list = []
>
> @rule1@
> type T;
> T e;
> expression list[n] es;
> @@
> class_export_rpc_dec(es,e,...);
>
> @script:python rule2@
> e << rule1.e;
> T << rule1.T;
> @@
> list.append(T)
>
> @finalize:python@
> @@
> possible = True
> for t in list:
>     if t != list[0]:
>             possible = False
>
> if possible:
>     print 'This patch is possible. Argument type:', list[0]
> else:
>     print 'This patch is not possible'
>
> Signed-off-by: Somya Anand <somyaanand214@gmail.com>
> ---
>  drivers/staging/lustre/lustre/include/obd_class.h | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/staging/lustre/lustre/include/obd_class.h b/drivers/staging/lustre/lustre/include/obd_class.h
> index 9f528d4..3565660 100644
> --- a/drivers/staging/lustre/lustre/include/obd_class.h
> +++ b/drivers/staging/lustre/lustre/include/obd_class.h
> @@ -229,13 +229,13 @@ static inline void class_export_rpc_inc(struct obd_export *exp)
>  	       (exp), atomic_read(&(exp)->exp_rpc_count));
>  }
>
> -#define class_export_rpc_dec(exp)				       \
> -({								      \
> -	LASSERT_ATOMIC_POS(&exp->exp_rpc_count);			\
> -	atomic_dec(&(exp)->exp_rpc_count);			  \
> -	CDEBUG(D_INFO, "RPC PUTting export %p : new rpc_count %d\n",    \
> -	       (exp), atomic_read(&(exp)->exp_rpc_count));	  \
> -})
> +static inline void class_export_rpc_dec(struct obd_export *exp)
> +{
> +	LASSERT_ATOMIC_POS(&exp->exp_rpc_count);
> +	atomic_dec(&(exp)->exp_rpc_count);
> +	CDEBUG(D_INFO, "RPC PUTting export %p : new rpc_count %d\n",
> +	       (exp), atomic_read(&(exp)->exp_rpc_count));
> +}
>
>  #define class_export_lock_get(exp, lock)				\
>  ({								      \
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1426856679-1443-2-git-send-email-somyaanand214%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

