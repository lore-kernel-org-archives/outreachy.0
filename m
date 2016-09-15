X-GM-THRID: 6330646891713265664
X-Received: by 10.46.71.207 with SMTP id u198mr1820651lja.2.1473969907668;
        Thu, 15 Sep 2016 13:05:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.173.210 with SMTP id w201ls439807wme.1.canary; Thu, 15 Sep
 2016 13:05:07 -0700 (PDT)
X-Received: by 10.194.104.230 with SMTP id gh6mr1812276wjb.7.1473969907095;
        Thu, 15 Sep 2016 13:05:07 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 82si315276wmg.3.2016.09.15.13.05.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 13:05:07 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,340,1470693600"; 
   d="scan'208";a="237014131"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 15 Sep 2016 22:05:06 +0200
Date: Thu, 15 Sep 2016 22:05:05 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sandhya Bankar <bankarsandhya512@gmail.com>
cc: outreachy-kernel@googlegroups.com, oleg.drokin@intel.com, 
    andreas.dilger@intel.com, jsimmons@infradead.org, 
    gregkh@linuxfoundation.org, jinshan.xiong@intel.com, lai.siyao@intel.com, 
    bobijam.xu@intel.com, mike.rapoport@gmail.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: Convert array index
 from the loop bound to the loop index.
In-Reply-To: <20160915194341.GA30843@sandhya>
Message-ID: <alpine.DEB.2.10.1609152203580.3364@hadrien>
References: <20160915194341.GA30843@sandhya>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Fri, 16 Sep 2016, Sandhya Bankar wrote:

> Convert array index from the loop bound to the loop index.
> Used below semantic patch to identify this issue:

This is a really nice idea!  However, it would be good for the commit
message to explain why the change is correct.  Certainly the code is
suspicious, but why is it actually wrong?  The idea would be to consider
what is done with cle on each iteration.

julia

> @@
> expression e1,e2,ar;
> @@
>
> for(e1 = 0; e1 < e2; e1++) { <...
>   ar[
> - e2
> + e1
>   ]
>   ...> }
>
>
> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> ---
>  drivers/staging/lustre/lustre/obdclass/cl_object.c |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
>
> diff --git a/drivers/staging/lustre/lustre/obdclass/cl_object.c b/drivers/staging/lustre/lustre/obdclass/cl_object.c
> index 91a5806..eeccd30 100755
> --- a/drivers/staging/lustre/lustre/obdclass/cl_object.c
> +++ b/drivers/staging/lustre/lustre/obdclass/cl_object.c
> @@ -1000,7 +1000,7 @@ static int cl_env_percpu_init(void)
>  		 * thus we must uninitialize up to i, the rest are undefined.
>  		 */
>  		for (j = 0; j < i; j++) {
> -			cle = &cl_env_percpu[i];
> +			cle = &cl_env_percpu[j];
>  			lu_context_exit(&cle->ce_ses);
>  			lu_context_fini(&cle->ce_ses);
>  			lu_env_fini(&cle->ce_lu);
> --
> 1.7.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160915194341.GA30843%40sandhya.
> For more options, visit https://groups.google.com/d/optout.
>

