X-GM-THRID: 6257139046088179712
X-Received: by 10.28.225.8 with SMTP id y8mr34655wmg.7.1456853915700;
        Tue, 01 Mar 2016 09:38:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.155.68 with SMTP id d65ls638438lfe.34.gmail; Tue, 01 Mar
 2016 09:38:35 -0800 (PST)
X-Received: by 10.25.210.201 with SMTP id j192mr2559353lfg.6.1456853915019;
        Tue, 01 Mar 2016 09:38:35 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id h73si18736wme.0.2016.03.01.09.38.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Mar 2016 09:38:34 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,524,1449529200"; 
   d="scan'208";a="205300642"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 01 Mar 2016 18:38:20 +0100
Date: Tue, 1 Mar 2016 18:38:14 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: ptlrpc: Remove
 unnecessary macros
In-Reply-To: <20160301173208.GA21310@Karyakshetra>
Message-ID: <alpine.DEB.2.10.1603011837490.2624@hadrien>
References: <20160301173208.GA21310@Karyakshetra>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Tue, 1 Mar 2016, Bhaktipriya Shridhar wrote:

> The macros REQS_SEC_SHIFT,REQS_USEC_SHIFT declare constants 32 and 16

Is it really an improvement?  It's not so nice to just use magic numbers.

julia

> and their occurences have been replaced with their respective values.
> Also, occurences of REQS_SEQ_SHIFT have been replaced with
> REQS_CPT_BITS.
>
> This was detected using Coccinelle:
>
> @@
>
> identifier f;
> constant c;
> @@
> *#define f(...) c
>
> @@
> identifier a,b;
> @@
>
> *#define f(...) b(...)
>
> Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
> ---
>  drivers/staging/lustre/lustre/ptlrpc/events.c | 10 +++-------
>  1 file changed, 3 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/staging/lustre/lustre/ptlrpc/events.c b/drivers/staging/lustre/lustre/ptlrpc/events.c
> index 47be21a..7b7b8a7 100644
> --- a/drivers/staging/lustre/lustre/ptlrpc/events.c
> +++ b/drivers/staging/lustre/lustre/ptlrpc/events.c
> @@ -243,9 +243,6 @@ void client_bulk_callback(lnet_event_t *ev)
>
>  #define REQS_CPT_BITS(svcpt)	((svcpt)->scp_service->srv_cpt_bits)
>
> -#define REQS_SEC_SHIFT		32
> -#define REQS_USEC_SHIFT		16
> -#define REQS_SEQ_SHIFT(svcpt)	REQS_CPT_BITS(svcpt)
>
>  static void ptlrpc_req_add_history(struct ptlrpc_service_part *svcpt,
>  				   struct ptlrpc_request *req)
> @@ -258,8 +255,7 @@ static void ptlrpc_req_add_history(struct ptlrpc_service_part *svcpt,
>  	 * it must be called with hold svcpt::scp_lock
>  	 */
>
> -	new_seq = (sec << REQS_SEC_SHIFT) |
> -		  (usec << REQS_USEC_SHIFT) |
> +	new_seq = (sec << 32) | (usec << 16) |
>  		  (svcpt->scp_cpt < 0 ? 0 : svcpt->scp_cpt);
>
>  	if (new_seq > svcpt->scp_hist_seq) {
> @@ -268,14 +264,14 @@ static void ptlrpc_req_add_history(struct ptlrpc_service_part *svcpt,
>  		 */
>  		svcpt->scp_hist_seq = new_seq;
>  	} else {
> -		LASSERT(REQS_SEQ_SHIFT(svcpt) < REQS_USEC_SHIFT);
> +		LASSERT(REQS_CPT_BITS(svcpt) < 16);
>  		/* NB: increase sequence number in current usec bucket,
>  		 * however, it's possible that we used up all bits for
>  		 * sequence and jumped into the next usec bucket (future time),
>  		 * then we hope there will be less RPCs per bucket at some
>  		 * point, and sequence will catch up again
>  		 */
> -		svcpt->scp_hist_seq += (1U << REQS_SEQ_SHIFT(svcpt));
> +		svcpt->scp_hist_seq += (1U << REQS_CPT_BITS(svcpt));
>  		new_seq = svcpt->scp_hist_seq;
>  	}
>
> --
> 2.1.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160301173208.GA21310%40Karyakshetra.
> For more options, visit https://groups.google.com/d/optout.
>

