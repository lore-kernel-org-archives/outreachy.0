X-GM-THRID: 6394061646033059840
X-Received: by 10.46.21.11 with SMTP id s11mr1865536ljd.23.1488735559871;
        Sun, 05 Mar 2017 09:39:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.69.66 with SMTP id s63ls1284544lja.0.gmail; Sun, 05 Mar
 2017 09:39:19 -0800 (PST)
X-Received: by 10.25.195.206 with SMTP id t197mr1547509lff.11.1488735559397;
        Sun, 05 Mar 2017 09:39:19 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id y19si1095188wmd.0.2017.03.05.09.39.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 05 Mar 2017 09:39:19 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,249,1484002800"; 
   d="scan'208";a="215632841"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 05 Mar 2017 18:39:18 +0100
Date: Sun, 5 Mar 2017 18:39:07 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: simran singhal <singhalsimran0@gmail.com>
cc: oleg.drokin@intel.com, andreas.dilger@intel.com, jsimmons@infradead.org, 
    gregkh@linuxfoundation.org, lustre-devel@lists.lustre.org, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/5] staging: lustre: ptlrpc: Use
 list_for_each_entry_safe
In-Reply-To: <1488733610-22289-3-git-send-email-singhalsimran0@gmail.com>
Message-ID: <alpine.DEB.2.20.1703051838110.3052@hadrien>
References: <1488733610-22289-1-git-send-email-singhalsimran0@gmail.com> <1488733610-22289-3-git-send-email-singhalsimran0@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 5 Mar 2017, simran singhal wrote:

> Doubly linked lists which are  iterated  using list_empty
> and list_entry macros have been replaced with list_for_each_entry_safe
> macro.
> This makes the iteration simpler and more readable.
>
> This patch replaces the while loop containing list_empty and list_entry
> with list_for_each_entry_safe.
>
> This was done with Coccinelle.
>
> @@
> expression E1;
> identifier I1, I2;
> type T;
> iterator name list_for_each_entry_safe;
> @@
>
> T *I1;
> + T *tmp;
> ...
> - while (list_empty(&E1) == 0)
> + list_for_each_entry_safe (I1, tmp, &E1, I2)
> {
> ...when != T *I1;
> - I1 = list_entry(E1.next, T, I2);
> ...
> }
>
> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
> ---
>  drivers/staging/lustre/lustre/ptlrpc/sec_gc.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/lustre/lustre/ptlrpc/sec_gc.c b/drivers/staging/lustre/lustre/ptlrpc/sec_gc.c
> index 8ffd000..fe1c0af 100644
> --- a/drivers/staging/lustre/lustre/ptlrpc/sec_gc.c
> +++ b/drivers/staging/lustre/lustre/ptlrpc/sec_gc.c
> @@ -98,12 +98,11 @@ void sptlrpc_gc_del_sec(struct ptlrpc_sec *sec)
>  static void sec_process_ctx_list(void)
>  {
>  	struct ptlrpc_cli_ctx *ctx;
> +	struct ptlrpc_cli_ctx *tmp;

Another improvement would be to define both variables at once:

T *I1
+ , *tmp
  ;

julia

>
>  	spin_lock(&sec_gc_ctx_list_lock);
>
> -	while (!list_empty(&sec_gc_ctx_list)) {
> -		ctx = list_entry(sec_gc_ctx_list.next,
> -				 struct ptlrpc_cli_ctx, cc_gc_chain);
> +	list_for_each_entry_safe(ctx, tmp, &sec_gc_ctx_list, cc_gc_chain) {
>  		list_del_init(&ctx->cc_gc_chain);
>  		spin_unlock(&sec_gc_ctx_list_lock);
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1488733610-22289-3-git-send-email-singhalsimran0%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

