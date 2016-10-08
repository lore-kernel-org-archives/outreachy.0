X-GM-THRID: 6338982763407867904
X-Received: by 10.36.29.148 with SMTP id 142mr910952itj.0.1475929314734;
        Sat, 08 Oct 2016 05:21:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.10.166 with SMTP id 35ls6615992otq.35.gmail; Sat, 08 Oct
 2016 05:21:54 -0700 (PDT)
X-Received: by 10.31.137.140 with SMTP id l134mr2348076vkd.4.1475929314138;
        Sat, 08 Oct 2016 05:21:54 -0700 (PDT)
Return-Path: <lars@metafoo.de>
Received: from www381.your-server.de (www381.your-server.de. [78.46.137.84])
        by gmr-mx.google.com with ESMTPS id v187si464493ith.2.2016.10.08.05.21.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 05:21:54 -0700 (PDT)
Received-SPF: neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) client-ip=78.46.137.84;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) smtp.mailfrom=lars@metafoo.de
Received: from [88.198.220.132] (helo=sslproxy03.your-server.de)
	by www381.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.85_2)
	(envelope-from <lars@metafoo.de>)
	id 1bsqdP-0000mA-Qz; Sat, 08 Oct 2016 14:21:47 +0200
Received: from [46.244.229.129] (helo=[192.168.178.23])
	by sslproxy03.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-SHA:256)
	(Exim 4.84_2)
	(envelope-from <lars@metafoo.de>)
	id 1bsqdP-0000Mh-7G; Sat, 08 Oct 2016 14:21:47 +0200
Subject: Re: [PATCH v3 2/2] staging: iio: ad7606: fix improper setting of
 oversampling pins
To: Eva Rachel Retuya <eraretuya@gmail.com>, linux-iio@vger.kernel.org,
 outreachy-kernel@googlegroups.com
References: <cover.1475907512.git.eraretuya@gmail.com>
 <9018314d134e3e33f892ad78969e11bf5ffa0950.1475907512.git.eraretuya@gmail.com>
Cc: Michael.Hennerich@analog.com, jic23@kernel.org, knaack.h@gmx.de,
 pmeerw@pmeerw.net, gregkh@linuxfoundation.org
From: Lars-Peter Clausen <lars@metafoo.de>
Message-ID: <39a0c2c4-6fcb-21f2-f9b3-ddb360f58c75@metafoo.de>
Date: Sat, 8 Oct 2016 14:21:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Icedove/45.1.0
MIME-Version: 1.0
In-Reply-To: <9018314d134e3e33f892ad78969e11bf5ffa0950.1475907512.git.eraretuya@gmail.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
X-Authenticated-Sender: lars@metafoo.de
X-Virus-Scanned: Clear (ClamAV 0.99.2/22326/Sat Oct  8 11:46:34 2016)

On 10/08/2016 08:50 AM, Eva Rachel Retuya wrote:
> The oversampling ratio is controlled using the oversampling pins,
> OS [2:0] with OS2 being the MSB control bit, and OS0 the LSB control
> bit.
> 
> The gpio connected to the OS2 pin is not being set correctly, only OS0
> and OS1 pins are being set. Fix the typo to allow proper control of the
> oversampling pins.
> 
> Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
> Fixes: b9618c0 ("staging: IIO: ADC: New driver for AD7606/AD7606-6/AD7606-4")

Looks good, thanks.

Acked-by: Lars-Peter Clausen <lars@metafoo.de>

Ideally you'd have but the patches in the opposite order, fix first, then
rework. As it is right now with the fix after the rework the fix no longer
applies cleanly to older versions.

> ---
>  drivers/staging/iio/adc/ad7606_core.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/iio/adc/ad7606_core.c b/drivers/staging/iio/adc/ad7606_core.c
> index 437c7d0..2042225 100644
> --- a/drivers/staging/iio/adc/ad7606_core.c
> +++ b/drivers/staging/iio/adc/ad7606_core.c
> @@ -183,7 +183,7 @@ static int ad7606_write_raw(struct iio_dev *indio_dev,
>  		mutex_lock(&indio_dev->mlock);
>  		gpio_set_value(st->pdata->gpio_os0, (ret >> 0) & 1);
>  		gpio_set_value(st->pdata->gpio_os1, (ret >> 1) & 1);
> -		gpio_set_value(st->pdata->gpio_os1, (ret >> 2) & 1);
> +		gpio_set_value(st->pdata->gpio_os2, (ret >> 2) & 1);
>  		st->oversampling = val;
>  		mutex_unlock(&indio_dev->mlock);
>  		return 0;
> 


