X-GM-THRID: 6395785103347286016
X-Received: by 10.25.72.71 with SMTP id v68mr212145lfa.9.1489135310113;
        Fri, 10 Mar 2017 00:41:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.15.1 with SMTP id 1ls935870ljp.36.gmail; Fri, 10 Mar 2017
 00:41:49 -0800 (PST)
X-Received: by 10.46.15.2 with SMTP id 2mr2965622ljp.31.1489135309041;
        Fri, 10 Mar 2017 00:41:49 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id t131si100161wmf.1.2017.03.10.00.41.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 00:41:48 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,139,1486422000"; 
   d="scan'208";a="263978126"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Mar 2017 09:40:37 +0100
Date: Fri, 10 Mar 2017 09:40:36 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: sayli karnik <karniksayli1995@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Mauro Carvalho Chehab <mchehab@kernel.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: media: mt9m114: Use true/false
 instead of 1/0 for bool initialisations
In-Reply-To: <20170310083218.GA23882@sayli-HP-15-Notebook-PC>
Message-ID: <alpine.DEB.2.20.1703100939550.2169@hadrien>
References: <20170310083218.GA23882@sayli-HP-15-Notebook-PC>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 10 Mar 2017, sayli karnik wrote:

> Bool initializations should use true and false instead of 1 and 0.
> Detected by coccinelle/misc/boolinit.cocci.
>
> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

There is also code to update in the header file that defines the
mt9m114_res array.

julia

> ---
>  drivers/staging/media/atomisp/i2c/mt9m114.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/media/atomisp/i2c/mt9m114.c b/drivers/staging/media/atomisp/i2c/mt9m114.c
> index 1b79cdb..60ba6f9 100644
> --- a/drivers/staging/media/atomisp/i2c/mt9m114.c
> +++ b/drivers/staging/media/atomisp/i2c/mt9m114.c
> @@ -926,10 +926,10 @@ static int mt9m114_set_fmt(struct v4l2_subdev *sd,
>  		for (index = 0; index < N_RES; index++) {
>  			if ((width == mt9m114_res[index].width) &&
>  			    (height == mt9m114_res[index].height)) {
> -				mt9m114_res[index].used = 1;
> +				mt9m114_res[index].used = true;
>  				continue;
>  			}
> -			mt9m114_res[index].used = 0;
> +			mt9m114_res[index].used = false;
>  		}
>  	}
>  	ret = mt9m114_get_intg_factor(c, mt9m114_info,
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170310083218.GA23882%40sayli-HP-15-Notebook-PC.
> For more options, visit https://groups.google.com/d/optout.
>

