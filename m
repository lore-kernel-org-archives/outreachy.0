X-GM-THRID: 6207482452562149376
X-Received: by 10.194.240.230 with SMTP id wd6mr201063wjc.0.1445317781360;
        Mon, 19 Oct 2015 22:09:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.189.176 with SMTP id gj16ls90323wic.36.canary; Mon, 19 Oct
 2015 22:09:41 -0700 (PDT)
X-Received: by 10.194.71.166 with SMTP id w6mr197294wju.6.1445317781019;
        Mon, 19 Oct 2015 22:09:41 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id c7si592418wiy.3.2015.10.19.22.09.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Oct 2015 22:09:40 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,706,1437429600"; 
   d="scan'208";a="183553268"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 20 Oct 2015 07:09:40 +0200
Date: Tue, 20 Oct 2015 07:09:40 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Cristina Moraru <cristina.moraru09@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 10/10] staging: iio: magnetometer:
 Remove explicit comparisons
In-Reply-To: <9d1f4e46279b951b8dff1763ef89b92c14398a3c.1445291799.git.cristina.moraru09@gmail.com>
Message-ID: <alpine.DEB.2.02.1510200709020.2044@localhost6.localdomain6>
References: <cover.1445291799.git.cristina.moraru09@gmail.com> <9d1f4e46279b951b8dff1763ef89b92c14398a3c.1445291799.git.cristina.moraru09@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Tue, 20 Oct 2015, Cristina Moraru wrote:

> Remove comparisons to 0 or NULL in order to provide efficiency

I don't think it actually has any impact on effcieincy. The compiler will 
probably generate the same code in either case.  One may think that one 
looks nicer than the other.

julia

> 
> Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
> ---
>  drivers/staging/iio/magnetometer/hmc5843_core.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/iio/magnetometer/hmc5843_core.c b/drivers/staging/iio/magnetometer/hmc5843_core.c
> index 4aab022..394bc14 100644
> --- a/drivers/staging/iio/magnetometer/hmc5843_core.c
> +++ b/drivers/staging/iio/magnetometer/hmc5843_core.c
> @@ -334,7 +334,7 @@ static int hmc5843_get_scale_index(struct hmc5843_data *data, int val, int val2)
>  {
>  	int i;
>  
> -	if (val != 0)
> +	if (val)
>  		return -EINVAL;
>  
>  	for (i = 0; i < data->variant->n_regval_to_nanoscale; i++)
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/9d1f4e46279b951b8dff1763ef89b92c14398a3c.1445291799.git.cristina.moraru09%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

