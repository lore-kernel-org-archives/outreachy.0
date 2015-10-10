X-GM-THRID: 6203951800553308160
X-Received: by 10.195.18.100 with SMTP id gl4mr3557993wjd.4.1444472595665;
        Sat, 10 Oct 2015 03:23:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.162.81 with SMTP id l78ls348493lfe.46.gmail; Sat, 10 Oct
 2015 03:23:15 -0700 (PDT)
X-Received: by 10.112.202.165 with SMTP id kj5mr3520535lbc.5.1444472595083;
        Sat, 10 Oct 2015 03:23:15 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id ch7si114493wib.2.2015.10.10.03.23.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Oct 2015 03:23:15 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,663,1437429600"; 
   d="scan'208";a="182076127"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 10 Oct 2015 12:23:14 +0200
Date: Sat, 10 Oct 2015 12:23:13 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Shivani Bhardwaj <shivanib134@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 1/2] Staging: vt6655: rxtx: Remove
 unnecessary space character
In-Reply-To: <0e904876eb0c4ce2c937f9b1c54afb1039ac83c6.1444469447.git.shivanib134@gmail.com>
Message-ID: <alpine.DEB.2.02.1510101221490.2065@localhost6.localdomain6>
References: <cover.1444469447.git.shivanib134@gmail.com> <0e904876eb0c4ce2c937f9b1c54afb1039ac83c6.1444469447.git.shivanib134@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sat, 10 Oct 2015, Shivani Bhardwaj wrote:

> Remove unnecessary space character after the variable RATE_16M.
> Fixes the warning by checkpatch : space prohibited before
> that ',' (ctx:WxW)
> 
> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> ---
> Changes in v2:
> 	-Make the commit message better and clearer.
> 
>  drivers/staging/vt6655/rxtx.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
> index 5875d65..a909128 100644
> --- a/drivers/staging/vt6655/rxtx.c
> +++ b/drivers/staging/vt6655/rxtx.c
> @@ -78,7 +78,7 @@ static const unsigned short wFB_Opt0[2][5] = {
>  };
>  static const unsigned short wFB_Opt1[2][5] = {
>  	{RATE_12M, RATE_18M, RATE_24M, RATE_24M, RATE_36M}, /* fallback_rate0 */
> -	{RATE_6M , RATE_6M,  RATE_12M, RATE_12M, RATE_18M}, /* fallback_rate1 */
> +	{RATE_6M, RATE_6M,  RATE_12M, RATE_12M, RATE_18M}, /* fallback_rate1 */

It looks lik ethere was a goal to get the constants and comment to line 
up, which doesn't seem to occur any more.  Maybe you could move the comma 
without breaking the alignment.

julia

>  };
>  
>  #define RTSDUR_BB       0
> -- 
> 2.1.0
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/0e904876eb0c4ce2c937f9b1c54afb1039ac83c6.1444469447.git.shivanib134%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

