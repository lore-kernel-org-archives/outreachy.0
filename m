X-GM-THRID: 8122735263744
X-Received: by 10.182.112.167 with SMTP id ir7mr56398194obb.29.1426326885385;
        Sat, 14 Mar 2015 02:54:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.86.230 with SMTP id p93ls2056415qgd.35.gmail; Sat, 14 Mar
 2015 02:54:45 -0700 (PDT)
X-Received: by 10.236.14.2 with SMTP id c2mr53272744yhc.29.1426326885205;
        Sat, 14 Mar 2015 02:54:45 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id e3si404071igq.1.2015.03.14.02.54.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sat, 14 Mar 2015 02:54:44 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,399,1422918000"; 
   d="scan'208";a="125907887"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 14 Mar 2015 10:54:42 +0100
Date: Sat, 14 Mar 2015 10:54:42 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Cristina Opriceana <cristina.opriceana@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/3] Staging: rtl8188eu: Bool tests
 don't need comparisons
In-Reply-To: <89c63fedf7d2979ad94f85a601bc6d8ef80fe142.1426273386.git.cristina.opriceana@gmail.com>
Message-ID: <alpine.DEB.2.02.1503141053470.2075@localhost6.localdomain6>
References: <cover.1426273386.git.cristina.opriceana@gmail.com> <89c63fedf7d2979ad94f85a601bc6d8ef80fe142.1426273386.git.cristina.opriceana@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 13 Mar 2015, Cristina Opriceana wrote:

> This patch simplifies the if condition by removing the comparison to
> bool values. It also removes the following coccinelle warning:
> "WARNING: Comparison to bool".
> 
> Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
> ---
>  drivers/staging/rtl8188eu/hal/rf_cfg.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/rtl8188eu/hal/rf_cfg.c b/drivers/staging/rtl8188eu/hal/rf_cfg.c
> index 455ecdc..954cade 100644
> --- a/drivers/staging/rtl8188eu/hal/rf_cfg.c
> +++ b/drivers/staging/rtl8188eu/hal/rf_cfg.c
> @@ -295,7 +295,7 @@ static bool rf6052_conf_para(struct adapter *adapt)
>  			break;
>  		}
>  
> -		if (rtstatus != true)
> +		if (!rtstatus)
>  			return false;

Looking at this code a bit, I can't see how rtstatus could be anything 
other than true.  So perhaps the test, and even the variable, is not 
needed?

julia

>  	}
>  
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/89c63fedf7d2979ad94f85a601bc6d8ef80fe142.1426273386.git.cristina.opriceana%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

