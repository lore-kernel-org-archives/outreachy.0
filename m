X-GM-THRID: 6338775155629621248
X-Received: by 10.36.156.3 with SMTP id b3mr979071ite.9.1475933995362;
        Sat, 08 Oct 2016 06:39:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.34.19 with SMTP id i19ls2555875ioi.46.gmail; Sat, 08 Oct
 2016 06:39:51 -0700 (PDT)
X-Received: by 10.107.1.80 with SMTP id 77mr2202748iob.100.1475933991704;
        Sat, 08 Oct 2016 06:39:51 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 7si6701494par.0.2016.10.08.06.39.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 06:39:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 8C0262C;
	Sat,  8 Oct 2016 13:39:50 +0000 (UTC)
Date: Sat, 8 Oct 2016 15:39:58 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: sayli karnik <karniksayli1995@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>, 21cnbao@gmail.com
Subject: Re: [Outreachy kernel] [PATCH] iio: bmi160_core: Fix sparse warning
 due to incorrect type in assignment
Message-ID: <20161008133958.GC2116@kroah.com>
References: <20161007172431.GA4342@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161007172431.GA4342@sayli-HP-15-Notebook-PC>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Fri, Oct 07, 2016 at 10:54:31PM +0530, sayli karnik wrote:
> There is a type mismatch between the buffer which is of type s16 and the
> samples stored, which are declared as __le16.
> 
> Fix the following sparse warning:
> drivers/iio/imu/bmi160/bmi160_core.c:411:26: warning: incorrect type
> in assignment (different base types)
> 
> drivers/iio/imu/bmi160/bmi160_core.c:411:26: expected signed short
> [signed] [short] [explicitly-signed] <noident>
> drivers/iio/imu/bmi160/bmi160_core.c:411:26: got restricted __le16
> [addressable] [usertype] sample
> 
> This is a cosmetic-type patch since it does not alter code behaviour. The le16
> is going into a 16bit buf element, and is labelled as IIO_LE in the channel
> buffer definition.
> 
> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
> ---
>  drivers/iio/imu/bmi160/bmi160_core.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/iio/imu/bmi160/bmi160_core.c b/drivers/iio/imu/bmi160/bmi160_core.c
> index e0251b8..5355507 100644
> --- a/drivers/iio/imu/bmi160/bmi160_core.c
> +++ b/drivers/iio/imu/bmi160/bmi160_core.c
> @@ -398,7 +398,8 @@ static irqreturn_t bmi160_trigger_handler(int irq, void *p)
>  	struct iio_poll_func *pf = p;
>  	struct iio_dev *indio_dev = pf->indio_dev;
>  	struct bmi160_data *data = iio_priv(indio_dev);
> -	s16 buf[16]; /* 3 sens x 3 axis x s16 + 3 x s16 pad + 4 x s16 tstamp */
> +	__le16 buf[16];
> +	/* 3 sens x 3 axis x __le16 + 3 x __le16 pad + 4 x __le16 tstamp */

The comment doesn't make sense on the line below now does it?


