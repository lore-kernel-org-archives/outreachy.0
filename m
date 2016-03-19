X-GM-THRID: 6263750571303370752
X-Received: by 10.141.3.134 with SMTP id f128mr15360212qhd.7.1458395866249;
        Sat, 19 Mar 2016 06:57:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.36.210 with SMTP id p76ls2946388qgp.17.gmail; Sat, 19 Mar
 2016 06:57:45 -0700 (PDT)
X-Received: by 10.13.194.67 with SMTP id e64mr15315411ywd.17.1458395865279;
        Sat, 19 Mar 2016 06:57:45 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id ui7si2802262pab.0.2016.03.19.06.57.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 19 Mar 2016 06:57:45 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.24,360,1454972400"; 
   d="scan'208";a="208880849"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 19 Mar 2016 14:57:42 +0100
Date: Sat, 19 Mar 2016 14:57:42 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Sandhya Bankar <bankarsandhya512@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] Staging: rdma: Remove & from
 function name.
In-Reply-To: <6a66bd13896f6f5e6ff2873e697fbc72af8c8185.1458367377.git.bankarsandhya512@gmail.com>
Message-ID: <alpine.DEB.2.02.1603191457270.2072@localhost6.localdomain6>
References: <cover.1458367377.git.bankarsandhya512@gmail.com> <6a66bd13896f6f5e6ff2873e697fbc72af8c8185.1458367377.git.bankarsandhya512@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sat, 19 Mar 2016, Sandhya Bankar wrote:

> Remove & from function name.
> 
> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> ---
>  drivers/staging/rdma/hfi1/verbs.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/rdma/hfi1/verbs.c b/drivers/staging/rdma/hfi1/verbs.c
> index 1761686..ece62b7 100644
> --- a/drivers/staging/rdma/hfi1/verbs.c
> +++ b/drivers/staging/rdma/hfi1/verbs.c
> @@ -261,7 +261,7 @@ static const opcode_handler opcode_handler_tbl[256] = {
>  	[IB_OPCODE_UD_SEND_ONLY]                      = &hfi1_ud_rcv,
>  	[IB_OPCODE_UD_SEND_ONLY_WITH_IMMEDIATE]       = &hfi1_ud_rcv,
>  	/* CNP */
> -	[IB_OPCODE_CNP]				      = &hfi1_cnp_rcv
> +	[IB_OPCODE_CNP]				      = hfi1_cnp_rcv

Why not make the change in the other cases?

julia

>  };
>  
>  /*
> -- 
> 1.8.3.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/6a66bd13896f6f5e6ff2873e697fbc72af8c8185.1458367377.git.bankarsandhya512%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

