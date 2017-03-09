X-GM-THRID: 6394971085965623296
X-Received: by 10.46.87.27 with SMTP id l27mr2245536ljb.28.1489071043364;
        Thu, 09 Mar 2017 06:50:43 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.69.66 with SMTP id s63ls696506lja.0.gmail; Thu, 09 Mar 2017
 06:50:40 -0800 (PST)
X-Received: by 10.25.216.154 with SMTP id r26mr1881419lfi.7.1489071040071;
        Thu, 09 Mar 2017 06:50:40 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id y19si8004wmd.0.2017.03.09.06.50.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 06:50:40 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,136,1486422000"; 
   d="scan'208";a="263875872"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Mar 2017 15:50:01 +0100
Date: Thu, 9 Mar 2017 15:49:48 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Varsha Rao <rvarsha016@gmail.com>
cc: Mauro Carvalho Chehab <mchehab@kernel.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: media: atomisp: Remove
 useless cast.
In-Reply-To: <58c16ab4.c348620a.f3c4a.da3e@mx.google.com>
Message-ID: <alpine.DEB.2.20.1703091548380.3186@hadrien>
References: <cover.1489069491.git.varshar186@gmail.com> <58c16ab4.c348620a.f3c4a.da3e@mx.google.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

> @@ -873,7 +873,7 @@ static int gc2235_detect(struct i2c_client *client)
>  	}
>  	ret = gc2235_read_reg(client, GC2235_8BIT,
>  					GC2235_SENSOR_ID_L, &low);
> -	id = ((((u16) high) << 8) | (u16) low);
> +	id = (((high) << 8) | low);

Useless parens.

>  	if (id != GC2235_ID) {
>  		dev_err(&client->dev, "sensor ID error, 0x%x\n", id);
> diff --git a/drivers/staging/media/atomisp/i2c/mt9m114.c b/drivers/staging/media/atomisp/i2c/mt9m114.c
> index 8762124..514b112 100644
> --- a/drivers/staging/media/atomisp/i2c/mt9m114.c
> +++ b/drivers/staging/media/atomisp/i2c/mt9m114.c
> @@ -618,9 +618,9 @@ static int distance(struct mt9m114_res_struct const *res, u32 w, u32 h)
>  	h_ratio = (res->height << 13) / h;
>  	if (h_ratio == 0)
>  		return -1;
> -	match   = abs(((w_ratio << 13) / h_ratio) - ((int)8192));
> +	match   = abs(((w_ratio << 13) / h_ratio) - (8192));
>
> -	if ((w_ratio < (int)8192) || (h_ratio < (int)8192)  ||
> +	if ((w_ratio < 8192) || (h_ratio < 8192)  ||
>  		(match > LARGEST_ALLOWED_RATIO_MISMATCH))
>  		return -1;
>
> diff --git a/drivers/staging/media/atomisp/i2c/ov2722.c b/drivers/staging/media/atomisp/i2c/ov2722.c
> index 43e872a..f615898 100644
> --- a/drivers/staging/media/atomisp/i2c/ov2722.c
> +++ b/drivers/staging/media/atomisp/i2c/ov2722.c
> @@ -807,9 +807,9 @@ static int distance(struct ov2722_resolution *res, u32 w, u32 h)
>  	h_ratio = (res->height << 13) / h;
>  	if (h_ratio == 0)
>  		return -1;
> -	match   = abs(((w_ratio << 13) / h_ratio) - ((int)8192));
> +	match   = abs(((w_ratio << 13) / h_ratio) - (8192));

More useless parens.

julia

