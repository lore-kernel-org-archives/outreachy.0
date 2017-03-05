X-GM-THRID: 6394061646033059840
X-Received: by 10.46.80.82 with SMTP id v18mr1758108ljd.27.1488735257331;
        Sun, 05 Mar 2017 09:34:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.81.10 with SMTP id f10ls1260236ljb.44.gmail; Sun, 05 Mar
 2017 09:34:16 -0800 (PST)
X-Received: by 10.46.80.82 with SMTP id v18mr1758102ljd.27.1488735256736;
        Sun, 05 Mar 2017 09:34:16 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id y19si1094343wmd.0.2017.03.05.09.34.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 05 Mar 2017 09:34:16 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,249,1484002800"; 
   d="scan'208";a="263196074"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 05 Mar 2017 18:34:16 +0100
Date: Sun, 5 Mar 2017 18:34:05 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: simran singhal <singhalsimran0@gmail.com>
cc: oleg.drokin@intel.com, andreas.dilger@intel.com, jsimmons@infradead.org, 
    gregkh@linuxfoundation.org, lustre-devel@lists.lustre.org, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/5] staging: lustre: Use
 list_for_each_entry_safe
In-Reply-To: <1488733610-22289-2-git-send-email-singhalsimran0@gmail.com>
Message-ID: <alpine.DEB.2.20.1703051829270.3052@hadrien>
References: <1488733610-22289-1-git-send-email-singhalsimran0@gmail.com> <1488733610-22289-2-git-send-email-singhalsimran0@gmail.com>
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

The function that is modified in this patch actually has another
opportunity.  That doesn't get transformed because with ... Coccinelle
matches the shortest path between what comes before and what comes after,
and so it only matches the first while loop.

You could sort of fix the problem by putting when any on the ...  That
allows anything in the path, including other while loops.

That though will mean that you will try to add two instances of the tmp
declaration after the declaration of I1.  Coccinelle allows adding only
one thing, unless the + is replaced by ++.  But if you do that, you will
get two decarations of tmp.

So either make the second change by hand, or let Coccinelle do it an
remove the second declaration of tmp by hand.

julia

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
>  drivers/staging/lustre/lustre/ptlrpc/service.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/lustre/lustre/ptlrpc/service.c b/drivers/staging/lustre/lustre/ptlrpc/service.c
> index b8091c1..4e7dc1d 100644
> --- a/drivers/staging/lustre/lustre/ptlrpc/service.c
> +++ b/drivers/staging/lustre/lustre/ptlrpc/service.c
> @@ -2314,6 +2314,7 @@ static void ptlrpc_svcpt_stop_threads(struct ptlrpc_service_part *svcpt)
>  {
>  	struct l_wait_info lwi = { 0 };
>  	struct ptlrpc_thread *thread;
> +	struct ptlrpc_thread *tmp;
>  	LIST_HEAD(zombie);
>
>  	CDEBUG(D_INFO, "Stopping threads for service %s\n",
> @@ -2329,9 +2330,7 @@ static void ptlrpc_svcpt_stop_threads(struct ptlrpc_service_part *svcpt)
>
>  	wake_up_all(&svcpt->scp_waitq);
>
> -	while (!list_empty(&svcpt->scp_threads)) {
> -		thread = list_entry(svcpt->scp_threads.next,
> -				    struct ptlrpc_thread, t_link);
> +	list_for_each_entry_safe(thread, tmp, &svcpt->scp_threads, t_link) {
>  		if (thread_is_stopped(thread)) {
>  			list_del(&thread->t_link);
>  			list_add(&thread->t_link, &zombie);
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1488733610-22289-2-git-send-email-singhalsimran0%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

