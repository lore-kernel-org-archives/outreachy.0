X-GM-THRID: 6391116266457792512
X-Received: by 10.46.92.131 with SMTP id q125mr983301ljb.15.1488055998584;
        Sat, 25 Feb 2017 12:53:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.7.9 with SMTP id 9ls288842ljh.30.gmail; Sat, 25 Feb 2017
 12:53:17 -0800 (PST)
X-Received: by 10.25.213.11 with SMTP id m11mr1194383lfg.19.1488055997957;
        Sat, 25 Feb 2017 12:53:17 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id v201si418236wmv.3.2017.02.25.12.53.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 25 Feb 2017 12:53:17 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,204,1484002800"; 
   d="scan'208";a="214713192"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 25 Feb 2017 21:53:16 +0100
Date: Sat, 25 Feb 2017 21:53:16 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Varsha Rao <rvarsha016@gmail.com>
cc: Sudip Mukherjee <sudipm.mukherjee@gmail.com>, 
    Teddy Wang <teddy.wang@siliconmotion.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 6/7] staging: sm750fb: Replace NULL
 comparison.
In-Reply-To: <58b1cd6d.c525620a.a8728.d746@mx.google.com>
Message-ID: <alpine.DEB.2.20.1702252152590.2179@hadrien>
References: <cover.1488045682.git.varshar186@gmail.com> <58b1cd6d.c525620a.a8728.d746@mx.google.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

On Sun, 26 Feb 2017, Varsha Rao wrote:

> Replaced NULL comparison with pCurrentDviCtrl->pfnInit. This patch fixes
> the following checkpatch issue:

This patch appears to have been sent twice?

julia

>
> CHECK: Comparison to NULL could be written "pCurrentDviCtrl->pfnInit"
>
> Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
> ---
>  drivers/staging/sm750fb/ddk750_dvi.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/sm750fb/ddk750_dvi.c b/drivers/staging/sm750fb/ddk750_dvi.c
> index 42c753f..171ae06 100644
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
> 2.9.3
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/58b1cd6d.c525620a.a8728.d746%40mx.google.com.
> For more options, visit https://groups.google.com/d/optout.
>

