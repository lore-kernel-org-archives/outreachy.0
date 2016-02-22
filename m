X-GM-THRID: 6254064858167246848
X-Received: by 10.28.128.204 with SMTP id b195mr1107924wmd.7.1456144823050;
        Mon, 22 Feb 2016 04:40:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.7.2 with SMTP id 2ls357555lfh.89.gmail; Mon, 22 Feb 2016
 04:40:22 -0800 (PST)
X-Received: by 10.25.15.161 with SMTP id 33mr3324594lfp.0.1456144822385;
        Mon, 22 Feb 2016 04:40:22 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id w197si933517wmw.3.2016.02.22.04.40.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2016 04:40:22 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,484,1449529200"; 
   d="scan'208";a="204113034"
Received: from 68-74-177-106.lightspeed.wepbfl.sbcglobal.net (HELO hadrien) ([68.74.177.106])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 22 Feb 2016 13:40:21 +0100
Date: Mon, 22 Feb 2016 07:40:19 -0500 (EST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhumika Goyal <bhumirks@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 4/5] Staging: lustre: Use min_t or
 max_t instead of ternary operator
In-Reply-To: <ae653a4fe839af60c62a545477d803c8b0866968.1456136671.git.bhumirks@gmail.com>
Message-ID: <alpine.DEB.2.10.1602220740070.2532@hadrien>
References: <cover.1456136671.git.bhumirks@gmail.com> <ae653a4fe839af60c62a545477d803c8b0866968.1456136671.git.bhumirks@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Mon, 22 Feb 2016, Bhumika Goyal wrote:

> Replace ternary operators with macros min_t/max_t as they are
> shorter and thus increases code readability. Macro min_t return the minimum
> and min_t returns maximum of the two compared values.
> Made a semantic patch for changes:
>
> @@
> type T;
> T x;
> T y;

Nice use of types.

julia

> @@
> (
> - x < y ? x : y
> + min_t(T,x,y)
> |
> - x > y ? x : y
> + max_t(T,x,y)
> )
>
> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> ---
>  drivers/staging/lustre/lustre/include/lustre_disk.h | 6 ++----
>  drivers/staging/lustre/lustre/osc/osc_request.c     | 2 +-
>  drivers/staging/lustre/lustre/ptlrpc/events.c       | 2 +-
>  3 files changed, 4 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/lustre/lustre/include/lustre_disk.h b/drivers/staging/lustre/lustre/include/lustre_disk.h
> index 7c6933f..c886f7c 100644
> --- a/drivers/staging/lustre/lustre/include/lustre_disk.h
> +++ b/drivers/staging/lustre/lustre/include/lustre_disk.h
> @@ -331,14 +331,12 @@ static inline void lcd_cpu_to_le(struct lsd_client_data *lcd,
>
>  static inline __u64 lcd_last_transno(struct lsd_client_data *lcd)
>  {
> -	return (lcd->lcd_last_transno > lcd->lcd_last_close_transno ?
> -		lcd->lcd_last_transno : lcd->lcd_last_close_transno);
> +	return max_t(__u64, lcd->lcd_last_transno, lcd->lcd_last_close_transno);
>  }
>
>  static inline __u64 lcd_last_xid(struct lsd_client_data *lcd)
>  {
> -	return (lcd->lcd_last_xid > lcd->lcd_last_close_xid ?
> -		lcd->lcd_last_xid : lcd->lcd_last_close_xid);
> +	return max_t(__u64, lcd->lcd_last_xid, lcd->lcd_last_close_xid);
>  }
>
>  /****************** superblock additional info *********************/
> diff --git a/drivers/staging/lustre/lustre/osc/osc_request.c b/drivers/staging/lustre/lustre/osc/osc_request.c
> index 43b11c6..065a915 100644
> --- a/drivers/staging/lustre/lustre/osc/osc_request.c
> +++ b/drivers/staging/lustre/lustre/osc/osc_request.c
> @@ -1170,7 +1170,7 @@ static u32 osc_checksum_bulk(int nob, u32 pg_count,
>  	}
>
>  	while (nob > 0 && pg_count > 0) {
> -		int count = pga[i]->count > nob ? nob : pga[i]->count;
> +		int count = min_t(int, nob, pga[i]->count);
>
>  		/* corrupt the data before we compute the checksum, to
>  		 * simulate an OST->client data error */
> diff --git a/drivers/staging/lustre/lustre/ptlrpc/events.c b/drivers/staging/lustre/lustre/ptlrpc/events.c
> index 64eaa0e..3219fad 100644
> --- a/drivers/staging/lustre/lustre/ptlrpc/events.c
> +++ b/drivers/staging/lustre/lustre/ptlrpc/events.c
> @@ -254,7 +254,7 @@ static void ptlrpc_req_add_history(struct ptlrpc_service_part *svcpt,
>
>  	new_seq = (sec << REQS_SEC_SHIFT) |
>  		  (usec << REQS_USEC_SHIFT) |
> -		  (svcpt->scp_cpt < 0 ? 0 : svcpt->scp_cpt);
> +		  (max_t(int, 0, svcpt->scp_cpt));
>
>  	if (new_seq > svcpt->scp_hist_seq) {
>  		/* This handles the initial case of scp_hist_seq == 0 or
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/ae653a4fe839af60c62a545477d803c8b0866968.1456136671.git.bhumirks%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

