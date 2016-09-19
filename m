X-GM-THRID: 6332017798578962432
X-Received: by 10.46.9.80 with SMTP id 77mr266364ljj.0.1474300037904;
        Mon, 19 Sep 2016 08:47:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.184.193 with SMTP id i184ls1928914wmf.7.gmail; Mon, 19 Sep
 2016 08:47:17 -0700 (PDT)
X-Received: by 10.28.72.196 with SMTP id v187mr568953wma.0.1474300036950;
        Mon, 19 Sep 2016 08:47:16 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id s6si662276wmb.1.2016.09.19.08.47.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 08:47:16 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,362,1470693600"; 
   d="scan'208";a="193940944"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 19 Sep 2016 17:46:49 +0200
Date: Mon, 19 Sep 2016 17:46:46 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
cc: outreachy-kernel@googlegroups.com, lars@metafoo.de, 
    Michael.Hennerich@analog.com, jic23@kernel.org, knaack.h@gmx.de, 
    pmeerw@pmeerw.net, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v2] staging: iio: meter: ade7758_ring:
 Match alignment with open parenthesis
In-Reply-To: <20160919154156.GA13797@fireworks>
Message-ID: <alpine.DEB.2.10.1609191746330.3203@hadrien>
References: <20160919154156.GA13797@fireworks>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Mon, 19 Sep 2016, Georgiana Rodica Chelu wrote:

> Organize the parameters on a single line to improve the readability of
> the code. Also, indent the line to match alignment with the open
> parenthesis. Ensure that the modifications do not break the rule
> of 80 characters per line.
>
> Issues found by checkpatch.pl script.
>
> Signed-off-by: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
> Changes in v2:
>   - Make the commit message clearer.
>
> drivers/staging/iio/meter/ade7758_ring.c | 10 +++-------
>  1 file changed, 3 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/staging/iio/meter/ade7758_ring.c b/drivers/staging/iio/meter/ade7758_ring.c
> index a6b76d4..57c213d 100644
> --- a/drivers/staging/iio/meter/ade7758_ring.c
> +++ b/drivers/staging/iio/meter/ade7758_ring.c
> @@ -38,18 +38,14 @@ static int ade7758_write_waveform_type(struct device *dev, unsigned int type)
>  	int ret;
>  	u8 reg;
>
> -	ret = ade7758_spi_read_reg_8(dev,
> -			ADE7758_WAVMODE,
> -			&reg);
> +	ret = ade7758_spi_read_reg_8(dev, ADE7758_WAVMODE, &reg);
>  	if (ret)
>  		goto out;
>
>  	reg &= ~0x1F;
>  	reg |= type & 0x1F;
>
> -	ret = ade7758_spi_write_reg_8(dev,
> -			ADE7758_WAVMODE,
> -			reg);
> +	ret = ade7758_spi_write_reg_8(dev, ADE7758_WAVMODE, reg);
>  out:
>  	return ret;
>  }
> @@ -94,7 +90,7 @@ static int ade7758_ring_preenable(struct iio_dev *indio_dev)
>  				 indio_dev->masklength);
>
>  	ade7758_write_waveform_type(&indio_dev->dev,
> -		indio_dev->channels[channel].address);
> +				    indio_dev->channels[channel].address);
>
>  	return 0;
>  }
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160919154156.GA13797%40fireworks.
> For more options, visit https://groups.google.com/d/optout.
>

