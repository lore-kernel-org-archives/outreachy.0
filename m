X-GM-THRID: 6207482452562149376
X-Received: by 10.194.156.193 with SMTP id wg1mr217408wjb.3.1445319740059;
        Mon, 19 Oct 2015 22:42:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.22.88 with SMTP id m85ls26669lfi.21.gmail; Mon, 19 Oct 2015
 22:42:19 -0700 (PDT)
X-Received: by 10.112.12.132 with SMTP id y4mr223420lbb.0.1445319739581;
        Mon, 19 Oct 2015 22:42:19 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id d7si43573wiy.2.2015.10.19.22.42.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Oct 2015 22:42:19 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,706,1437429600"; 
   d="scan'208";a="183555473"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 20 Oct 2015 07:42:19 +0200
Date: Tue, 20 Oct 2015 07:42:18 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Cristina Moraru <cristina.moraru09@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 02/10] staging: iio: addac: Remove
 explicit comparisons
In-Reply-To: <933f0eb8aa4bb81e75671c9531bf4d59d78e3ceb.1445291799.git.cristina.moraru09@gmail.com>
Message-ID: <alpine.DEB.2.02.1510200741370.2044@localhost6.localdomain6>
References: <cover.1445291799.git.cristina.moraru09@gmail.com> <933f0eb8aa4bb81e75671c9531bf4d59d78e3ceb.1445291799.git.cristina.moraru09@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

> diff --git a/drivers/staging/iio/addac/adt7316.c b/drivers/staging/iio/addac/adt7316.c
> index 3adc451..cb23fec 100644
> --- a/drivers/staging/iio/addac/adt7316.c
> +++ b/drivers/staging/iio/addac/adt7316.c
> @@ -1419,7 +1419,7 @@ static ssize_t adt7316_show_DAC(struct adt7316_chip_info *chip,
>  	int ret;
>  
>  	if (channel >= ADT7316_DA_MSB_DATA_REGS ||
> -		(channel == 0 &&
> +		(!channel &&

Here too it is probably better to keep the comparison to 0, since there is 
a comparison to 1 just below.  Same in the next case.

julia

>  		(chip->config3 & ADT7316_EN_IN_TEMP_PROP_DACA)) ||
>  		(channel == 1 &&
>  		(chip->config3 & ADT7316_EN_EX_TEMP_PROP_DACB)))
> @@ -1452,7 +1452,7 @@ static ssize_t adt7316_store_DAC(struct adt7316_chip_info *chip,
>  	int ret;
>  
>  	if (channel >= ADT7316_DA_MSB_DATA_REGS ||
> -		(channel == 0 &&
> +		(!channel &&
>  		(chip->config3 & ADT7316_EN_IN_TEMP_PROP_DACA)) ||
>  		(channel == 1 &&
>  		(chip->config3 & ADT7316_EN_EX_TEMP_PROP_DACB)))
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/933f0eb8aa4bb81e75671c9531bf4d59d78e3ceb.1445291799.git.cristina.moraru09%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

