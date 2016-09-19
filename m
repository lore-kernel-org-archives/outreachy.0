X-GM-THRID: 6332051289282707456
X-Received: by 10.46.9.202 with SMTP id 193mr706732ljj.30.1474295741433;
        Mon, 19 Sep 2016 07:35:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.5.150 with SMTP id 144ls366670ljf.16.gmail; Mon, 19 Sep
 2016 07:35:41 -0700 (PDT)
X-Received: by 10.25.135.137 with SMTP id j131mr704318lfd.31.1474295741040;
        Mon, 19 Sep 2016 07:35:41 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 82si1458852wmg.3.2016.09.19.07.35.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 07:35:41 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,362,1470693600"; 
   d="scan'208";a="193929029"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 19 Sep 2016 16:35:40 +0200
Date: Mon, 19 Sep 2016 16:35:38 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: sayli karnik <karniksayli1995@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: i4l: act2000: Move assignment
 out of if statement
In-Reply-To: <20160919143240.GA30690@sayli-HP-15-Notebook-PC>
Message-ID: <alpine.DEB.2.10.1609191635260.3203@hadrien>
References: <20160919143240.GA30690@sayli-HP-15-Notebook-PC>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Mon, 19 Sep 2016, sayli karnik wrote:

> This patch places assignments which are inside the if condition, above it.
> Done using coccinelle:
>
> @@
> statement s;
> expression e;
> identifier id;
> @@
> - if ((id = e))
> + id = e;
> + if (id)
>         s
>
> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  drivers/staging/i4l/act2000/module.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/staging/i4l/act2000/module.c b/drivers/staging/i4l/act2000/module.c
> index 68073d0..b862be5 100644
> --- a/drivers/staging/i4l/act2000/module.c
> +++ b/drivers/staging/i4l/act2000/module.c
> @@ -289,7 +289,8 @@ act2000_command(act2000_card *card, isdn_ctrl *c)
>  			if (copy_from_user(tmp, arg,
>  					   sizeof(tmp)))
>  				return -EFAULT;
> -			if ((ret = act2000_set_msn(card, tmp)))
> +			ret = act2000_set_msn(card, tmp);
> +			if (ret)
>  				return ret;
>  			if (card->flags & ACT2000_FLAGS_RUNNING)
>  				return (actcapi_manufacturer_req_msn(card));
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160919143240.GA30690%40sayli-HP-15-Notebook-PC.
> For more options, visit https://groups.google.com/d/optout.
>

