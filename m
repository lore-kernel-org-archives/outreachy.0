X-GM-THRID: 6745851004285091840
X-Received: by 2002:a7b:c30f:: with SMTP id k15mr3634197wmj.161.1570647310250;
        Wed, 09 Oct 2019 11:55:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:c408:: with SMTP id v8ls497201wrf.10.gmail; Wed, 09 Oct
 2019 11:55:09 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyHB7n9rVQODZFhpqMTcuBhfUf8dBEX+Xyt4jy8WNSboF1UJ6aB0e+UICeqZ5yy9Jlu9lpI
X-Received: by 2002:a5d:55d0:: with SMTP id i16mr4435851wrw.150.1570647309307;
        Wed, 09 Oct 2019 11:55:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570647309; cv=none;
        d=google.com; s=arc-20160816;
        b=PsEC3QU1H2E4zMsZJyZ5+G0F2rY8hP9tcik5++N+8FnMnOXPv8ccQTu8KrncSvBP/x
         fw3QIgeVrQfVVsysMAuMgGzQ8DwrXteJ9Wm0HVoG+i6d0LEypC443Km212grQYUoNHHL
         8GpFTUOxIIuNsi/IQGxU6P4twuiNtNNClK1iuDwq2r+Wt2LAzBPmXY3QOfWTETLHKiSC
         yOYsqD4lmcQEJzUie9+TKvQlmjIz1BBY11h4Sni8QG4EA7T0ioNIfTp9FCvlPDhMAp8+
         T291IR/pg/AZchUV7eO09DhUKfyjIg1eAcIYIEEs8z2moA+FyT1YNnQYy8CN+mL9+l9C
         NagA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=IAU6fXxVaSLsCEP/EfazHOYGKhvSit3kIAdu9JJbXqU=;
        b=a4gWKNrsWi2Cx0LusLsFnbjQMSFKMR1PDMxJTjO/puj/Fbj+0VNzXcBQuTVTCqXtW7
         z/Z2twtnShqwX6kRjGqI62RToamYtjtQ7JLQJbt+0F897ny/b11PUrAPTtmiebGXLYnc
         cthg9OQonrXcrsefsR0l3zs5biqDEd0gckA19DWao6xZtLJBULGsxWxrgUK3yXARqC4Z
         3gtnST+GNH5Fj+0O2xLvS5INgHhhD3wUPC42Fhd3zYepjuw3d6f3aTtUlK0gVitj9wjt
         1MdqIV9A/2FyP60OLvCk2uLsBonbpKMjBDpmvoQl4hxii1ISzxhQReDT7siAM16FoR9z
         xM8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 5si411043wmf.1.2019.10.09.11.55.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 09 Oct 2019 11:55:09 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.67,277,1566856800"; 
   d="scan'208";a="405482097"
Received: from 81-65-53-202.rev.numericable.fr (HELO hadrien) ([81.65.53.202])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Oct 2019 20:55:08 +0200
Date: Wed, 9 Oct 2019 20:55:08 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Wambui Karuga <wambui.karugax@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: kpc2000: Remove unnecessary
 return variable
In-Reply-To: <20191009170703.GA2869@wambui>
Message-ID: <alpine.DEB.2.21.1910092054540.2570@hadrien>
References: <20191009170703.GA2869@wambui>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 9 Oct 2019, Wambui Karuga wrote:

> Remove unnecessary variable `val` in kp_spi_read_reg() that only holds
> the return value from readq().
> Issue found by coccinelle using the script:
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
> Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>


> ---
>  drivers/staging/kpc2000/kpc2000_spi.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/staging/kpc2000/kpc2000_spi.c b/drivers/staging/kpc2000/kpc2000_spi.c
> index 3be33c450cab..6ba94b0131da 100644
> --- a/drivers/staging/kpc2000/kpc2000_spi.c
> +++ b/drivers/staging/kpc2000/kpc2000_spi.c
> @@ -162,14 +162,12 @@ union kp_spi_ffctrl {
>  kp_spi_read_reg(struct kp_spi_controller_state *cs, int idx)
>  {
>  	u64 __iomem *addr = cs->base;
> -	u64 val;
>
>  	addr += idx;
>  	if ((idx == KP_SPI_REG_CONFIG) && (cs->conf_cache >= 0))
>  		return cs->conf_cache;
>
> -	val = readq(addr);
> -	return val;
> +	return readq(addr);
>  }
>
>  	static inline void
> --
> 2.23.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191009170703.GA2869%40wambui.
>

