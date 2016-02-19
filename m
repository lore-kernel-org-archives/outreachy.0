X-GM-THRID: 6252763365254365184
X-Received: by 10.182.20.195 with SMTP id p3mr4833670obe.47.1455851633583;
        Thu, 18 Feb 2016 19:13:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.33.34 with SMTP id o2ls2804891obi.70.gmail; Thu, 18 Feb
 2016 19:13:53 -0800 (PST)
X-Received: by 10.182.92.226 with SMTP id cp2mr10461033obb.19.1455851633014;
        Thu, 18 Feb 2016 19:13:53 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id s20si450121igr.2.2016.02.18.19.13.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Feb 2016 19:13:52 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,468,1449529200"; 
   d="scan'208";a="203730005"
Received: from unknown (HELO hadrien.lan) ([162.212.89.130])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 19 Feb 2016 04:13:50 +0100
Date: Thu, 18 Feb 2016 22:13:48 -0500 (EST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Thaissa Falbo <thaissa.falbo@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] staging: media: davinci_vpfe:
 remove unnecessary case and enum
In-Reply-To: <a97c778a2c814868c68a81dc18bfe25466422853.1455834014.git.thaissa.falbo@gmail.com>
Message-ID: <alpine.DEB.2.10.1602182213230.2821@hadrien>
References: <cover.1455834014.git.thaissa.falbo@gmail.com> <a97c778a2c814868c68a81dc18bfe25466422853.1455834014.git.thaissa.falbo@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

Why is it unnecessary?  There should probably be more information in the
commit message.

julia

On Thu, 18 Feb 2016, Thaissa Falbo wrote:

> Signed-off-by: Thaissa Falbo <thaissa.falbo@gmail.com>
> ---
>  drivers/staging/media/davinci_vpfe/dm365_isif.c | 6 ------
>  1 file changed, 6 deletions(-)
>
> diff --git a/drivers/staging/media/davinci_vpfe/dm365_isif.c b/drivers/staging/media/davinci_vpfe/dm365_isif.c
> index 747d29f..b1e6fd0 100644
> --- a/drivers/staging/media/davinci_vpfe/dm365_isif.c
> +++ b/drivers/staging/media/davinci_vpfe/dm365_isif.c
> @@ -227,7 +227,6 @@ static int
>  isif_config_format(struct vpfe_device *vpfe_dev, unsigned int pad)
>  {
>  	struct vpfe_isif_device *vpfe_isif = &vpfe_dev->vpfe_isif;
> -	enum isif_frmfmt frm_fmt = ISIF_FRMFMT_INTERLACED;
>  	struct v4l2_pix_format format;
>
>  	v4l2_fill_pix_format(&format, &vpfe_dev->vpfe_isif.formats[pad]);
> @@ -254,11 +253,6 @@ isif_config_format(struct vpfe_device *vpfe_dev, unsigned int pad)
>  		return isif_set_buftype(vpfe_isif,
>  				ISIF_BUFTYPE_FLD_INTERLEAVED);
>
> -	case V4L2_FIELD_NONE:
> -		frm_fmt = ISIF_FRMFMT_PROGRESSIVE;
> -		/* buffer type only applicable for interlaced scan */
> -		break;
> -
>  	case V4L2_FIELD_SEQ_TB:
>  		return isif_set_buftype(vpfe_isif, ISIF_BUFTYPE_FLD_SEPARATED);
>
> --
> 2.1.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/a97c778a2c814868c68a81dc18bfe25466422853.1455834014.git.thaissa.falbo%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

