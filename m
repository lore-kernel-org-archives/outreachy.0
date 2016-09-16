X-GM-THRID: 6331000982206414848
X-Received: by 10.46.33.163 with SMTP id h35mr97034lji.22.1474051380441;
        Fri, 16 Sep 2016 11:43:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.1.100 with SMTP id 97ls460752ljb.23.gmail; Fri, 16 Sep 2016
 11:42:58 -0700 (PDT)
X-Received: by 10.25.22.65 with SMTP id m62mr102828lfi.29.1474051378898;
        Fri, 16 Sep 2016 11:42:58 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id p199si966256wmd.1.2016.09.16.11.42.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 11:42:58 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,346,1470693600"; 
   d="scan'208";a="193712778"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 16 Sep 2016 20:42:57 +0200
Date: Fri, 16 Sep 2016 20:42:57 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: sayli karnik <karniksayli1995@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Mauro Carvalho Chehab <mchehab@kernel.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: media: davinci_vpfe: Use
 BIT macro instead of left shifting 1
In-Reply-To: <20160916183658.GA26442@sayli-HP-15-Notebook-PC>
Message-ID: <alpine.DEB.2.10.1609162040120.3397@hadrien>
References: <20160916183658.GA26442@sayli-HP-15-Notebook-PC>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sat, 17 Sep 2016, sayli karnik wrote:

> This patch replaces left shifts on 1 with the BIT(x) macro, as suggested
> by checkpatch.pl.

You could do this with Coccinelle also :)

julia

>
> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
> ---
>  .../staging/media/davinci_vpfe/davinci_vpfe_user.h | 36 +++++++++++-----------
>  1 file changed, 18 insertions(+), 18 deletions(-)
>
> diff --git a/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h b/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h
> index f4f35c9..d3f34f9 100644
> --- a/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h
> +++ b/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h
> @@ -544,41 +544,41 @@ struct vpfe_isif_raw_config {
>  /* IPIPE module configurations */
>
>  /* IPIPE input configuration */
> -#define VPFE_IPIPE_INPUT_CONFIG		(1 << 0)
> +#define VPFE_IPIPE_INPUT_CONFIG		BIT(0)
>  /* LUT based Defect Pixel Correction */
> -#define VPFE_IPIPE_LUTDPC		(1 << 1)
> +#define VPFE_IPIPE_LUTDPC		BIT(1)
>  /* On the fly (OTF) Defect Pixel Correction */
> -#define VPFE_IPIPE_OTFDPC		(1 << 2)
> +#define VPFE_IPIPE_OTFDPC		BIT(2)
>  /* Noise Filter - 1 */
> -#define VPFE_IPIPE_NF1			(1 << 3)
> +#define VPFE_IPIPE_NF1			BIT(3)
>  /* Noise Filter - 2 */
> -#define VPFE_IPIPE_NF2			(1 << 4)
> +#define VPFE_IPIPE_NF2			BIT(4)
>  /* White Balance.  Also a control ID */
> -#define VPFE_IPIPE_WB			(1 << 5)
> +#define VPFE_IPIPE_WB			BIT(5)
>  /* 1st RGB to RBG Blend module */
> -#define VPFE_IPIPE_RGB2RGB_1		(1 << 6)
> +#define VPFE_IPIPE_RGB2RGB_1		BIT(6)
>  /* 2nd RGB to RBG Blend module */
> -#define VPFE_IPIPE_RGB2RGB_2		(1 << 7)
> +#define VPFE_IPIPE_RGB2RGB_2		BIT(7)
>  /* Gamma Correction */
> -#define VPFE_IPIPE_GAMMA		(1 << 8)
> +#define VPFE_IPIPE_GAMMA		BIT(8)
>  /* 3D LUT color conversion */
> -#define VPFE_IPIPE_3D_LUT		(1 << 9)
> +#define VPFE_IPIPE_3D_LUT		BIT(9)
>  /* RGB to YCbCr module */
> -#define VPFE_IPIPE_RGB2YUV		(1 << 10)
> +#define VPFE_IPIPE_RGB2YUV		BIT(10)
>  /* YUV 422 conversion module */
> -#define VPFE_IPIPE_YUV422_CONV		(1 << 11)
> +#define VPFE_IPIPE_YUV422_CONV		BIT(11)
>  /* Edge Enhancement */
> -#define VPFE_IPIPE_YEE			(1 << 12)
> +#define VPFE_IPIPE_YEE			BIT(12)
>  /* Green Imbalance Correction */
> -#define VPFE_IPIPE_GIC			(1 << 13)
> +#define VPFE_IPIPE_GIC			BIT(13)
>  /* CFA Interpolation */
> -#define VPFE_IPIPE_CFA			(1 << 14)
> +#define VPFE_IPIPE_CFA			BIT(14)
>  /* Chroma Artifact Reduction */
> -#define VPFE_IPIPE_CAR			(1 << 15)
> +#define VPFE_IPIPE_CAR			BIT(15)
>  /* Chroma Gain Suppression */
> -#define VPFE_IPIPE_CGS			(1 << 16)
> +#define VPFE_IPIPE_CGS			BIT(16)
>  /* Global brightness and contrast control */
> -#define VPFE_IPIPE_GBCE			(1 << 17)
> +#define VPFE_IPIPE_GBCE			BIT(17)
>
>  #define VPFE_IPIPE_MAX_MODULES		18
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160916183658.GA26442%40sayli-HP-15-Notebook-PC.
> For more options, visit https://groups.google.com/d/optout.
>

