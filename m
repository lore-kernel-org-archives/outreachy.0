X-GM-THRID: 6330165032612003840
X-Received: by 10.28.152.87 with SMTP id a84mr519372wme.7.1473856555032;
        Wed, 14 Sep 2016 05:35:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.63.138 with SMTP id m132ls243417wma.18.canary; Wed, 14 Sep
 2016 05:35:54 -0700 (PDT)
X-Received: by 10.28.152.87 with SMTP id a84mr519365wme.7.1473856554227;
        Wed, 14 Sep 2016 05:35:54 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id e21si296022wmc.2.2016.09.14.05.35.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 05:35:54 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,333,1470693600"; 
   d="scan'208";a="193114523"
Received: from unknown (HELO hadrien.local) ([128.93.86.88])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 14 Sep 2016 14:35:52 +0200
Date: Wed, 14 Sep 2016 14:35:41 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sandhya Bankar <bankarsandhya512@gmail.com>
cc: outreachy-kernel@googlegroups.com, sudipm.mukherjee@gmail.com, 
    teddy.wang@siliconmotion.com, gregkh@linuxfoundation.org, 
    linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] Staging: sm750fb: Use x instead of
 x != NULL
In-Reply-To: <20160914123349.GA3770@sandhya>
Message-ID: <alpine.DEB.2.10.1609141435030.3092@hadrien>
References: <20160914123349.GA3770@sandhya>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Wed, 14 Sep 2016, Sandhya Bankar wrote:

> Use x instead of x != NULL .
> This patch removes the explicit NULL comparisons.This issue is found by checkpatch.pl script .
> CHECK: Comparison to NULL could be written "pCurrentDviCtrl->pfnInit"

OK for the patch, but please put a space after the end of each sentence,
and don't allow the lines in your commit message to go over 80 characters.

julia

>
> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> ---
>  drivers/staging/sm750fb/ddk750_dvi.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/sm750fb/ddk750_dvi.c b/drivers/staging/sm750fb/ddk750_dvi.c
> index a4a2550..8a39e0e 100644
> --- a/drivers/staging/sm750fb/ddk750_dvi.c
> +++ b/drivers/staging/sm750fb/ddk750_dvi.c
> @@ -45,7 +45,7 @@ int dviInit(
>  	dvi_ctrl_device_t *pCurrentDviCtrl;
>
>  	pCurrentDviCtrl = g_dcftSupportedDviController;
> -	if (pCurrentDviCtrl->pfnInit != NULL) {
> +	if (pCurrentDviCtrl->pfnInit) {
>  		return pCurrentDviCtrl->pfnInit(edgeSelect, busSelect, dualEdgeClkSelect, hsyncEnable,
>  						vsyncEnable, deskewEnable, deskewSetting, continuousSyncEnable,
>  						pllFilterEnable, pllFilterValue);
> --
> 1.8.2.3
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160914123349.GA3770%40sandhya.
> For more options, visit https://groups.google.com/d/optout.
>

