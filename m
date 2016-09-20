X-GM-THRID: 6332156650242179072
X-Received: by 10.28.152.6 with SMTP id a6mr82456wme.23.1474350123628;
        Mon, 19 Sep 2016 22:42:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.86.131 with SMTP id k125ls253707lfb.24.gmail; Mon, 19 Sep
 2016 22:42:02 -0700 (PDT)
X-Received: by 10.46.69.196 with SMTP id s187mr622371lja.17.1474350122664;
        Mon, 19 Sep 2016 22:42:02 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 82si1707605wmg.3.2016.09.19.22.42.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 22:42:02 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,366,1470693600"; 
   d="scan'208";a="193983410"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 20 Sep 2016 07:42:01 +0200
Date: Tue, 20 Sep 2016 07:42:00 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Rehas Sachdeva <aquannie@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Mauro Carvalho Chehab <mchehab@kernel.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH 2/2] staging: media: davinci_vpfe:
 Remove unnecessary return capture
In-Reply-To: <443e4617cce56bfed713a460ee40c5ec319c1861.1474319701.git.aquannie@gmail.com>
Message-ID: <alpine.DEB.2.10.1609200740260.3346@hadrien>
References: <cover.1474319701.git.aquannie@gmail.com> <443e4617cce56bfed713a460ee40c5ec319c1861.1474319701.git.aquannie@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

I don't understand what "return capture" means.  Maybe "Merge assignment
with return".

julia

On Tue, 20 Sep 2016, Rehas Sachdeva wrote:

>
> Instead of storing the return value into a variable and then returning it, we
> can club the two into a single return statement. This change was made using
> the following semantic patch by Coccinelle:
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
>
> Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
> ---
>  drivers/staging/media/davinci_vpfe/dm365_isif.c | 8 +++-----
>  1 file changed, 3 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/staging/media/davinci_vpfe/dm365_isif.c b/drivers/staging/media/davinci_vpfe/dm365_isif.c
> index ae9202d..569bcdc 100644
> --- a/drivers/staging/media/davinci_vpfe/dm365_isif.c
> +++ b/drivers/staging/media/davinci_vpfe/dm365_isif.c
> @@ -146,9 +146,8 @@ enum v4l2_field vpfe_isif_get_fid(struct vpfe_device *vpfe_dev)
>  	u32 field_status;
>
>  	field_status = isif_read(isif->isif_cfg.base_addr, MODESET);
> -	field_status = (field_status >> DM365_ISIF_MDFS_OFFSET) &
> -			DM365_ISIF_MDFS_MASK;
> -	return field_status;
> +	return (field_status >> DM365_ISIF_MDFS_OFFSET) &
> +		DM365_ISIF_MDFS_MASK;
>  }
>
>  static int
> @@ -594,8 +593,7 @@ isif_validate_raw_params(struct vpfe_isif_raw_config *params)
>  	ret = isif_validate_dfc_params(&params->dfc);
>  	if (ret)
>  		return ret;
> -	ret = isif_validate_bclamp_params(&params->bclamp);
> -	return ret;
> +	return isif_validate_bclamp_params(&params->bclamp);
>  }
>
>  static int isif_set_params(struct v4l2_subdev *sd, void *params)
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/443e4617cce56bfed713a460ee40c5ec319c1861.1474319701.git.aquannie%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

