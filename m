X-GM-THRID: 6204471677993091072
X-Received: by 10.112.138.170 with SMTP id qr10mr4834792lbb.4.1444591297421;
        Sun, 11 Oct 2015 12:21:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.146.9 with SMTP id u9ls486304lfd.63.gmail; Sun, 11 Oct 2015
 12:21:36 -0700 (PDT)
X-Received: by 10.112.63.165 with SMTP id h5mr4821578lbs.18.1444591296168;
        Sun, 11 Oct 2015 12:21:36 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id c1si344636wiv.3.2015.10.11.12.21.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 11 Oct 2015 12:21:36 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,667,1437429600"; 
   d="scan'208";a="182194281"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 11 Oct 2015 21:21:35 +0200
Date: Sun, 11 Oct 2015 21:21:35 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Shivani Bhardwaj <shivanib134@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3 1/2] Staging: vt6655: rxtx: Remove
 extra space character
In-Reply-To: <43aba6a5182d22a3856fe326dfa8e69ff796f12d.1444590771.git.shivanib134@gmail.com>
Message-ID: <alpine.DEB.2.02.1510112121190.2096@localhost6.localdomain6>
References: <cover.1444590771.git.shivanib134@gmail.com> <43aba6a5182d22a3856fe326dfa8e69ff796f12d.1444590771.git.shivanib134@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Mon, 12 Oct 2015, Shivani Bhardwaj wrote:

> Remove unnecessary space character after the variable RATE_16M
> preserving the alignment of all other variables and comments.
> Fixes the warning by checkpatch:  space prohibited before
> that ',' (ctx:WxW)
> 
> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> ---
> Changes in v3:
> 	-Make alignment of variables better.
> 
>  drivers/staging/vt6655/rxtx.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
> index 5875d65..0c1f6a1 100644
> --- a/drivers/staging/vt6655/rxtx.c
> +++ b/drivers/staging/vt6655/rxtx.c
> @@ -78,7 +78,7 @@ static const unsigned short wFB_Opt0[2][5] = {
>  };
>  static const unsigned short wFB_Opt1[2][5] = {
>  	{RATE_12M, RATE_18M, RATE_24M, RATE_24M, RATE_36M}, /* fallback_rate0 */
> -	{RATE_6M , RATE_6M,  RATE_12M, RATE_12M, RATE_18M}, /* fallback_rate1 */
> +	{RATE_6M,  RATE_6M,  RATE_12M, RATE_12M, RATE_18M}, /* fallback_rate1 */

It looks nice now :)

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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/43aba6a5182d22a3856fe326dfa8e69ff796f12d.1444590771.git.shivanib134%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

