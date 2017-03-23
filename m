X-GM-THRID: 6400705153326907392
X-Received: by 10.25.56.22 with SMTP id f22mr450042lfa.13.1490280496192;
        Thu, 23 Mar 2017 07:48:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.22.220 with SMTP id 89ls431461lfw.5.gmail; Thu, 23 Mar 2017
 07:48:15 -0700 (PDT)
X-Received: by 10.25.198.86 with SMTP id w83mr455346lff.28.1490280495050;
        Thu, 23 Mar 2017 07:48:15 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id x188si193320wmx.0.2017.03.23.07.48.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Mar 2017 07:48:14 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,210,1486422000"; 
   d="scan'208";a="217787243"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 23 Mar 2017 15:48:13 +0100
Date: Thu, 23 Mar 2017 15:48:10 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aishwarya Pant <aishpant@gmail.com>
cc: Lars-Peter Clausen <lars@metafoo.de>, 
    Michael Hennerich <Michael.Hennerich@analog.com>, 
    Jonathan Cameron <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>, 
    Peter Meerwald-Stadler <pmeerw@pmeerw.net>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Barry Song <21cnbao@gmail.com>, outreachy-kernel@googlegroups.com, 
    linux-iio@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: accel: adis16201: remove
 local variable addr
In-Reply-To: <20170323144453.GA7093@aishwarya>
Message-ID: <alpine.DEB.2.20.1703231547290.3193@hadrien>
References: <20170323144453.GA7093@aishwarya>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 23 Mar 2017, Aishwarya Pant wrote:

> Remove local variable addr from adis_read_reg_16() and adis_write_reg_16()
> as it is used only once.
>
> Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
> ---
>  drivers/staging/iio/accel/adis16201.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/iio/accel/adis16201.c b/drivers/staging/iio/accel/adis16201.c
> index fbc2406..b03c4f3 100644
> --- a/drivers/staging/iio/accel/adis16201.c
> +++ b/drivers/staging/iio/accel/adis16201.c
> @@ -175,7 +175,6 @@ static int adis16201_read_raw(struct iio_dev *indio_dev,
>  	struct adis *st = iio_priv(indio_dev);
>  	int ret;
>  	int bits;
> -	u8 addr;
>  	s16 val16;
>
>  	switch (mask) {
> @@ -223,8 +222,9 @@ static int adis16201_read_raw(struct iio_dev *indio_dev,
>  		default:
>  			return -EINVAL;
>  		}
> -		addr = adis16201_addresses[chan->scan_index];
> -		ret = adis_read_reg_16(st, addr, &val16);
> +		ret = adis_read_reg_16(st,
> +				       adis16201_addresses[chan->scan_index],
> +				       &val16);

The original code was probably nicer.  One line shorter in the part that
actually does computation.

julia

>  		if (ret)
>  			return ret;
>  		val16 &= (1 << bits) - 1;
> @@ -244,7 +244,6 @@ static int adis16201_write_raw(struct iio_dev *indio_dev,
>  	struct adis *st = iio_priv(indio_dev);
>  	int bits;
>  	s16 val16;
> -	u8 addr;
>
>  	switch (mask) {
>  	case IIO_CHAN_INFO_CALIBBIAS:
> @@ -259,8 +258,9 @@ static int adis16201_write_raw(struct iio_dev *indio_dev,
>  			return -EINVAL;
>  		}
>  		val16 = val & ((1 << bits) - 1);
> -		addr = adis16201_addresses[chan->scan_index];
> -		return adis_write_reg_16(st, addr, val16);
> +		return adis_write_reg_16(st,
> +					 adis16201_addresses[chan->scan_index],
> +					 val16);
>  	}
>  	return -EINVAL;
>  }
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170323144453.GA7093%40aishwarya.
> For more options, visit https://groups.google.com/d/optout.
>

