X-GM-THRID: 6338982763407867904
X-Received: by 10.28.167.216 with SMTP id q207mr185420wme.4.1475945059536;
        Sat, 08 Oct 2016 09:44:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.29.216 with SMTP id d207ls1234813wmd.10.canary; Sat, 08 Oct
 2016 09:44:18 -0700 (PDT)
X-Received: by 10.28.69.67 with SMTP id s64mr176314wma.22.1475945058898;
        Sat, 08 Oct 2016 09:44:18 -0700 (PDT)
Return-Path: <jic23@kernel.org>
Received: from saturn.retrosnub.co.uk (saturn.retrosnub.co.uk. [178.18.118.26])
        by gmr-mx.google.com with ESMTPS id w16si321742wmd.0.2016.10.08.09.44.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 09:44:18 -0700 (PDT)
Received-SPF: neutral (google.com: 178.18.118.26 is neither permitted nor denied by best guess record for domain of jic23@kernel.org) client-ip=178.18.118.26;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 178.18.118.26 is neither permitted nor denied by best guess record for domain of jic23@kernel.org) smtp.mailfrom=jic23@kernel.org
Received: from localhost.localdomain (cpc91196-cmbg18-2-0-cust659.5-4.cable.virginm.net [81.96.234.148])
	by saturn.retrosnub.co.uk (Postfix; Retrosnub mail submission) with ESMTPSA id 28C4940662;
	Sat,  8 Oct 2016 17:44:17 +0100 (BST)
Subject: Re: [PATCH v4 1/2] staging: iio: ad7606: fix improper setting of
 oversampling pins
To: Eva Rachel Retuya <eraretuya@gmail.com>, linux-iio@vger.kernel.org,
 outreachy-kernel@googlegroups.com
References: <cover.1475942324.git.eraretuya@gmail.com>
 <b1ac6778d27e1406a8fd83b329266fce6144248e.1475942324.git.eraretuya@gmail.com>
Cc: lars@metafoo.de, Michael.Hennerich@analog.com, knaack.h@gmx.de,
 pmeerw@pmeerw.net, gregkh@linuxfoundation.org
From: Jonathan Cameron <jic23@kernel.org>
Message-ID: <1f33d844-e8da-c2fc-0a0a-7e32a8be8fc0@kernel.org>
Date: Sat, 8 Oct 2016 17:44:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <b1ac6778d27e1406a8fd83b329266fce6144248e.1475942324.git.eraretuya@gmail.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 08/10/16 17:05, Eva Rachel Retuya wrote:
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
> Acked-by: Lars-Peter Clausen <lars@metafoo.de>
I've applied this to the togreg branch of iio.git, but not currently marked
it for stable.  Primarily because it has been broken for a very long time.
If anyone wants this in stable, then feel free to shout out and we can send the
request to stable once it has merged.

Applied to the togreg branch and pushed out as testing for the autobuilders to
play with it.

Thanks,

Jonathan
> ---
>  drivers/staging/iio/adc/ad7606_core.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/iio/adc/ad7606_core.c b/drivers/staging/iio/adc/ad7606_core.c
> index f79ee61..cbd6bc5 100644
> --- a/drivers/staging/iio/adc/ad7606_core.c
> +++ b/drivers/staging/iio/adc/ad7606_core.c
> @@ -189,7 +189,7 @@ static ssize_t ad7606_store_oversampling_ratio(struct device *dev,
>  	mutex_lock(&indio_dev->mlock);
>  	gpio_set_value(st->pdata->gpio_os0, (ret >> 0) & 1);
>  	gpio_set_value(st->pdata->gpio_os1, (ret >> 1) & 1);
> -	gpio_set_value(st->pdata->gpio_os1, (ret >> 2) & 1);
> +	gpio_set_value(st->pdata->gpio_os2, (ret >> 2) & 1);
>  	st->oversampling = lval;
>  	mutex_unlock(&indio_dev->mlock);
>  
> 


