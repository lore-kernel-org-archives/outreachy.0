X-GM-THRID: 4525053181952
X-Received: by 10.112.131.106 with SMTP id ol10mr2575232lbb.20.1425103381288;
        Fri, 27 Feb 2015 22:03:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.84.72 with SMTP id w8ls247994wiy.4.canary; Fri, 27 Feb
 2015 22:03:00 -0800 (PST)
X-Received: by 10.181.13.236 with SMTP id fb12mr943579wid.1.1425103380964;
        Fri, 27 Feb 2015 22:03:00 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id cl5si241251wib.3.2015.02.27.22.03.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 22:03:00 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,666,1418079600"; 
   d="scan'208";a="123756210"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 28 Feb 2015 07:03:00 +0100
Date: Sat, 28 Feb 2015 07:02:59 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Dilek Uzulmez <dilekuzulmez@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: Add blank line after
 declarations
In-Reply-To: <1425079467-3349-1-git-send-email-dilekuzulmez@gmail.com>
Message-ID: <alpine.DEB.2.10.1502280702460.2697@hadrien>
References: <1425079467-3349-1-git-send-email-dilekuzulmez@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

Dilek, you could put them all in one patch.

julia

On Sat, 28 Feb 2015, Dilek Uzulmez wrote:

> The following patch fixes the checkpatch.pl warning:
> drivers/staging/lustre/lustre/ptlrpc/import.c WARNING: Missing a blank
> line after declarations
>
> Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
> ---
>  drivers/staging/lustre/lustre/ptlrpc/import.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/drivers/staging/lustre/lustre/ptlrpc/import.c b/drivers/staging/lustre/lustre/ptlrpc/import.c
> index 4ceb90d..165aa82 100644
> --- a/drivers/staging/lustre/lustre/ptlrpc/import.c
> +++ b/drivers/staging/lustre/lustre/ptlrpc/import.c
> @@ -448,6 +448,7 @@ int ptlrpc_reconnect_import(struct obd_import *imp)
>  	if (atomic_read(&imp->imp_inval_count) > 0) {
>  		int rc;
>  		struct l_wait_info lwi = LWI_INTR(LWI_ON_SIGNAL_NOOP, NULL);
> +
>  		rc = l_wait_event(imp->imp_recovery_waitq,
>  				  (atomic_read(&imp->imp_inval_count) == 0),
>  				  &lwi);
> @@ -529,6 +530,7 @@ static int import_select_connection(struct obd_import *imp)
>  	   trying to reconnect on it.) */
>  	if (tried_all && (imp->imp_conn_list.next == &imp_conn->oic_item)) {
>  		struct adaptive_timeout *at = &imp->imp_at.iat_net_latency;
> +
>  		if (at_get(at) < CONNECTION_SWITCH_MAX) {
>  			at_measured(at, at_get(at) + CONNECTION_SWITCH_INC);
>  			if (at_get(at) > CONNECTION_SWITCH_MAX)
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1425079467-3349-1-git-send-email-dilekuzulmez%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

