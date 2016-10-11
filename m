X-GM-THRID: 6338775155629621248
X-Received: by 10.28.31.81 with SMTP id f78mr10712wmf.7.1476211383412;
        Tue, 11 Oct 2016 11:43:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.31.81 with SMTP id f78ls15625wmf.11.gmail; Tue, 11 Oct 2016
 11:43:02 -0700 (PDT)
X-Received: by 10.28.197.129 with SMTP id v123mr11686wmf.0.1476211382660;
        Tue, 11 Oct 2016 11:43:02 -0700 (PDT)
Return-Path: <jic23@kernel.org>
Received: from saturn.retrosnub.co.uk (saturn.retrosnub.co.uk. [178.18.118.26])
        by gmr-mx.google.com with ESMTPS id c10si6371wme.0.2016.10.11.11.43.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 11 Oct 2016 11:43:02 -0700 (PDT)
Received-SPF: neutral (google.com: 178.18.118.26 is neither permitted nor denied by best guess record for domain of jic23@kernel.org) client-ip=178.18.118.26;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 178.18.118.26 is neither permitted nor denied by best guess record for domain of jic23@kernel.org) smtp.mailfrom=jic23@kernel.org
Received: from localhost.localdomain (cpc91196-cmbg18-2-0-cust659.5-4.cable.virginm.net [81.96.234.148])
	by saturn.retrosnub.co.uk (Postfix; Retrosnub mail submission) with ESMTPSA id 2BC3140687;
	Tue, 11 Oct 2016 19:43:02 +0100 (BST)
Subject: Re: [PATCH v2] iio: bmi160_core: Fix sparse warning due to incorrect
 type in assignment
To: sayli karnik <karniksayli1995@gmail.com>,
 outreachy-kernel@googlegroups.com
References: <20161011113721.GA26944@sayli-HP-15-Notebook-PC>
Cc: Hartmut Knaack <knaack.h@gmx.de>, Lars-Peter Clausen <lars@metafoo.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, linux-iio@vger.kernel.org
From: Jonathan Cameron <jic23@kernel.org>
Message-ID: <27fa1ed2-54c8-df68-2b46-bdfd086d3bc3@kernel.org>
Date: Tue, 11 Oct 2016 19:43:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <20161011113721.GA26944@sayli-HP-15-Notebook-PC>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 11/10/16 12:37, sayli karnik wrote:
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
> This is a cosmetic-type patch since it does not alter code behaviour.
> The le16 is going into a 16bit buf element, and is labelled as IIO_LE in the
> channel buffer definition.
> 
> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
Applied to the togreg branch of iio.git - initially pushed out
as testing for the autobuilders to play with it.

Thanks,

Jonathan
> ---
> Changes in v2:
> Moved comment above declaration of buf array
> 
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
>  	int i, ret, j = 0, base = BMI160_REG_DATA_MAGN_XOUT_L;
>  	__le16 sample;
>  
> 


