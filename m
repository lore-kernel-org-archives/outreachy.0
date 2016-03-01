X-GM-THRID: 6257131864000036864
X-Received: by 10.112.138.98 with SMTP id qp2mr2650093lbb.4.1456852571685;
        Tue, 01 Mar 2016 09:16:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.10.209 with SMTP id 200ls206327wmk.18.gmail; Tue, 01 Mar
 2016 09:16:11 -0800 (PST)
X-Received: by 10.28.47.140 with SMTP id v134mr22539wmv.3.1456852571165;
        Tue, 01 Mar 2016 09:16:11 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id s141si43439wmd.1.2016.03.01.09.16.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Mar 2016 09:16:11 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,524,1449529200"; 
   d="scan'208";a="205297416"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 01 Mar 2016 18:16:10 +0100
Date: Tue, 1 Mar 2016 18:16:05 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sandhya Bankar <bankarsandhya512@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/4] Staging: lustre: Do not print
 message if kzalloc() failed.
In-Reply-To: <a9225769650e278d513f73c69521c9a52d20808f.1456822984.git.bankarsandhya512@gmail.com>
Message-ID: <alpine.DEB.2.10.1603011815520.2624@hadrien>
References: <cover.1456822984.git.bankarsandhya512@gmail.com> <a9225769650e278d513f73c69521c9a52d20808f.1456822984.git.bankarsandhya512@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Tue, 1 Mar 2016, Sandhya Bankar wrote:

> Do not print message if kzalloc() failed.
> kzalloc() has its own messages. So no need to add extra one.
>
> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> ---
>  drivers/staging/lustre/lustre/llite/llite_lib.c | 4 ----
>  1 file changed, 4 deletions(-)
>
> diff --git a/drivers/staging/lustre/lustre/llite/llite_lib.c b/drivers/staging/lustre/lustre/llite/llite_lib.c
> index 1f3e8e8..c7b0729 100644
> --- a/drivers/staging/lustre/lustre/llite/llite_lib.c
> +++ b/drivers/staging/lustre/lustre/llite/llite_lib.c
> @@ -1938,10 +1938,6 @@ void ll_open_cleanup(struct super_block *sb, struct ptlrpc_request *open_req)
>  	body = req_capsule_server_get(&open_req->rq_pill, &RMF_MDT_BODY);
>  	op_data = kzalloc(sizeof(*op_data), GFP_NOFS);
>  	if (!op_data) {
> -		CWARN("%s: cannot allocate op_data to release open handle for "
> -		      DFID "\n",
> -		      ll_get_fsname(sb, NULL, 0), PFID(&body->fid1));
> -
>  		return;

Same problem.

julia

>  	}
>
> --
> 1.8.3.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/a9225769650e278d513f73c69521c9a52d20808f.1456822984.git.bankarsandhya512%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

