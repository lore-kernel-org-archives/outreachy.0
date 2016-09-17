X-GM-THRID: 6330646891713265664
X-Received: by 10.46.5.196 with SMTP id 187mr209719ljf.13.1474102060833;
        Sat, 17 Sep 2016 01:47:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.35.86 with SMTP id j83ls921715wmj.17.gmail; Sat, 17 Sep
 2016 01:47:40 -0700 (PDT)
X-Received: by 10.195.17.199 with SMTP id gg7mr210369wjd.10.1474102060340;
        Sat, 17 Sep 2016 01:47:40 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 82si840506wmg.3.2016.09.17.01.47.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 01:47:40 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,349,1470693600"; 
   d="scan'208";a="237191549"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 17 Sep 2016 10:47:39 +0200
Date: Sat, 17 Sep 2016 10:47:39 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sandhya Bankar <bankarsandhya512@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    oleg.drokin@intel.com, andreas.dilger@intel.com, jsimmons@infradead.org
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: lustre: Convert array
 index from the loop bound to the loop index.
In-Reply-To: <20160916213106.GA4147@sandhya>
Message-ID: <alpine.DEB.2.10.1609171046580.3113@hadrien>
References: <20160916213106.GA4147@sandhya>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sat, 17 Sep 2016, Sandhya Bankar wrote:

> Convert array index from the loop bound to the loop index.
>
> The structure cl_env_percpu[NR_CPUS] has been initializing for each
> possible cpu (i.e 0 to i) but during initialization if any error will
> occurred this come to the error handling code which should uninitialize
> the cl_env_percpu upto i but currently cleanup is happening repeatedly for
> the same cl_env_percpu[i] element which does not seems to be correct.

This is one very long sentence.  It would be more understandable with
several shorter sentences.

julia

>
> Used below semantic patch to identify this issue:
>
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
> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> ---
> Changes in v2:
>  *Correcting the commit message.
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160916213106.GA4147%40sandhya.
> For more options, visit https://groups.google.com/d/optout.
>

