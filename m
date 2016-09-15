X-GM-THRID: 6330624598541860864
X-Received: by 10.194.172.9 with SMTP id ay9mr1788808wjc.2.1473966324796;
        Thu, 15 Sep 2016 12:05:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.78.76 with SMTP id c73ls97064lfb.30.gmail; Thu, 15 Sep 2016
 12:05:24 -0700 (PDT)
X-Received: by 10.25.42.197 with SMTP id q188mr1792597lfq.7.1473966324096;
        Thu, 15 Sep 2016 12:05:24 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id y6si119741wmg.0.2016.09.15.12.05.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 12:05:24 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,340,1470693600"; 
   d="scan'208";a="193587655"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 15 Sep 2016 21:05:17 +0200
Date: Thu, 15 Sep 2016 21:05:07 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Rehas Sachdeva <aquannie@gmail.com>
cc: outreachy-kernel@googlegroups.com, Oleg Drokin <oleg.drokin@intel.com>, 
    Andreas Dilger <andreas.dilger@intel.com>, 
    James Simmons <jsimmons@infradead.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: Remove unnecessary
 return capture
In-Reply-To: <20160915181631.GA32498@toblerone>
Message-ID: <alpine.DEB.2.10.1609152104140.3364@hadrien>
References: <20160915181631.GA32498@toblerone>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Thu, 15 Sep 2016, Rehas Sachdeva wrote:

> Instead of storing the return value of a function call into a variable and
> then returning it, we can club the two into a single return - call form of
> statement. This change was made using the following semantic patch by
> Coccinelle:
>
> @@
> local idexpression ret;
> expression e;
> @@
>
> -ret =
> +return
>      e;
> -return ret;

"return - call form of statement" is a bit verbose.  "return" would be
fine.  Looks fine otherwise.

julia

>
> Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
> ---
>  drivers/staging/lustre/lustre/mdc/mdc_request.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/lustre/lustre/mdc/mdc_request.c b/drivers/staging/lustre/lustre/mdc/mdc_request.c
> index 5bf95f9..cf94926 100644
> --- a/drivers/staging/lustre/lustre/mdc/mdc_request.c
> +++ b/drivers/staging/lustre/lustre/mdc/mdc_request.c
> @@ -2488,9 +2488,8 @@ static int mdc_set_info_async(const struct lu_env *env,
>  		}
>  		spin_unlock(&imp->imp_lock);
>
> -		rc = do_set_info_async(imp, MDS_SET_INFO, LUSTRE_MDS_VERSION,
> -				       keylen, key, vallen, val, set);
> -		return rc;
> +		return do_set_info_async(imp, MDS_SET_INFO, LUSTRE_MDS_VERSION,
> +					 keylen, key, vallen, val, set);
>  	}
>  	if (KEY_IS(KEY_SPTLRPC_CONF)) {
>  		sptlrpc_conf_client_adapt(exp->exp_obd);
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160915181631.GA32498%40toblerone.
> For more options, visit https://groups.google.com/d/optout.
>

