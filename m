X-GM-THRID: 6342268830362894336
X-Received: by 10.66.85.10 with SMTP id d10mr5484639paz.4.1476690675539;
        Mon, 17 Oct 2016 00:51:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.12.40 with SMTP id 37ls11329082otr.33.gmail; Mon, 17 Oct
 2016 00:51:15 -0700 (PDT)
X-Received: by 10.13.223.83 with SMTP id i80mr7527247ywe.74.1476690674989;
        Mon, 17 Oct 2016 00:51:14 -0700 (PDT)
Return-Path: <lars@metafoo.de>
Received: from www381.your-server.de (www381.your-server.de. [78.46.137.84])
        by gmr-mx.google.com with ESMTPS id y17si1781034ywy.1.2016.10.17.00.51.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 Oct 2016 00:51:14 -0700 (PDT)
Received-SPF: neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) client-ip=78.46.137.84;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) smtp.mailfrom=lars@metafoo.de
Received: from [88.198.220.132] (helo=sslproxy03.your-server.de)
	by www381.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.85_2)
	(envelope-from <lars@metafoo.de>)
	id 1bw2hR-0004by-0C; Mon, 17 Oct 2016 09:51:09 +0200
Received: from [46.244.248.73] (helo=[192.168.178.23])
	by sslproxy03.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-SHA:256)
	(Exim 4.84_2)
	(envelope-from <lars@metafoo.de>)
	id 1bw2hQ-0008J7-7t; Mon, 17 Oct 2016 09:51:08 +0200
Subject: Re: [PATCH] staging: iio: cdc: ad7746: add additional config defines
To: Eva Rachel Retuya <eraretuya@gmail.com>, linux-iio@vger.kernel.org,
 outreachy-kernel@googlegroups.com
References: <1476674510-10734-1-git-send-email-eraretuya@gmail.com>
Cc: Michael.Hennerich@analog.com, jic23@kernel.org, knaack.h@gmx.de,
 pmeerw@pmeerw.net, gregkh@linuxfoundation.org
From: Lars-Peter Clausen <lars@metafoo.de>
X-Enigmail-Draft-Status: N1110
Message-ID: <e0a34a65-5443-7fc4-500c-f1b43b1788dc@metafoo.de>
Date: Mon, 17 Oct 2016 09:51:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Icedove/45.1.0
MIME-Version: 1.0
In-Reply-To: <1476674510-10734-1-git-send-email-eraretuya@gmail.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit
X-Authenticated-Sender: lars@metafoo.de
X-Virus-Scanned: Clear (ClamAV 0.99.2/22379/Mon Oct 17 07:52:44 2016)

On 10/17/2016 05:21 AM, Eva Rachel Retuya wrote:
> Introduce defines for shifting and mask under the config register for
> better readability.
> 
> Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>

Hi,

Thanks for the patch. Comments inline.

> ---
>  drivers/staging/iio/cdc/ad7746.c | 26 ++++++++++++++++----------
>  1 file changed, 16 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/staging/iio/cdc/ad7746.c b/drivers/staging/iio/cdc/ad7746.c
> index f41251c..751f0d1 100644
> --- a/drivers/staging/iio/cdc/ad7746.c
> +++ b/drivers/staging/iio/cdc/ad7746.c
> @@ -70,8 +70,12 @@
>  #define AD7746_EXCSETUP_EXCLVL(x)	(((x) & 0x3) << 0)
>  
>  /* Config Register Bit Designations (AD7746_REG_CFG) */
> -#define AD7746_CONF_VTFS(x)		((x) << 6)
> -#define AD7746_CONF_CAPFS(x)		((x) << 3)
> +#define AD7746_CONF_VTFS_SHIFT		6
> +#define AD7746_CONF_CAPFS_SHIFT		3
> +#define AD7746_CONF_VTFS_MASK		0x3
> +#define AD7746_CONF_CAPFS_MASK		0x7
> +#define AD7746_CONF_VTFS(x)		((x) << AD7746_CONF_VTFS_SHIFT)
> +#define AD7746_CONF_CAPFS(x)		((x) << AD7746_CONF_CAPFS_SHIFT)
>  #define AD7746_CONF_MODE_IDLE		(0 << 0)
>  #define AD7746_CONF_MODE_CONT_CONV	(1 << 0)
>  #define AD7746_CONF_MODE_SINGLE_CONV	(2 << 0)
> @@ -224,8 +228,8 @@ static int ad7746_select_channel(struct iio_dev *indio_dev,
>  	case IIO_CAPACITANCE:
>  		cap_setup = (chan->address & 0xFF) | AD7746_CAPSETUP_CAPEN;
>  		vt_setup = chip->vt_setup & ~AD7746_VTSETUP_VTEN;
> -		delay = ad7746_cap_filter_rate_table[(chip->config >> 3) &
> -			0x7][1];
> +		delay = ad7746_cap_filter_rate_table[(chip->config &
> +			AD7746_CONF_CAPFS_MASK) >> AD7746_CONF_CAPFS_SHIFT][1];

This flips the order in which the shift and the mask are applied, that will
break things. But maybe we should change things so that the mask includes
the offset and use the GENMASK() macro to create them. This would also allow
to simplify

	chip->config &= ~AD7746_CONF_CAPFS(AD7746_CONF_CAPFS_MASK);

to

	chip->config &= ~AD7746_CONF_CAPFS_MASK;

I'd also introduce a helper variable to move the index calculation outside
of the array brackets. It is a bit convoluted the way it is right now.

Same comment for the similar changes done below.

>  
>  		if (chip->capdac_set != chan->channel) {
>  			ret = i2c_smbus_write_byte_data(chip->client,
> @@ -246,8 +250,8 @@ static int ad7746_select_channel(struct iio_dev *indio_dev,
>  	case IIO_TEMP:
>  		vt_setup = (chan->address & 0xFF) | AD7746_VTSETUP_VTEN;
>  		cap_setup = chip->cap_setup & ~AD7746_CAPSETUP_CAPEN;
> -		delay = ad7746_cap_filter_rate_table[(chip->config >> 6) &
> -			0x3][1];
> +		delay = ad7746_cap_filter_rate_table[(chip->config &
> +			AD7746_CONF_VTFS_MASK) >> AD7746_CONF_VTFS_SHIFT][1];
>  		break;
>  	default:
>  		return -EINVAL;
[...]
> @@ -636,12 +640,14 @@ static int ad7746_read_raw(struct iio_dev *indio_dev,
>  		switch (chan->type) {
>  		case IIO_CAPACITANCE:
>  			*val = ad7746_cap_filter_rate_table[
> -					(chip->config >> 3) & 0x7][0];
> +				(chip->config & AD7746_CONF_CAPFS_MASK) >>
> +					AD7746_CONF_CAPFS_SHIFT][0];
>  			ret = IIO_VAL_INT;
>  			break;
>  		case IIO_VOLTAGE:
>  			*val = ad7746_vt_filter_rate_table[
> -					(chip->config >> 6) & 0x3][0];
> +				(chip->config & AD7746_CONF_VTFS_MASK) >>
> +					AD7746_CONF_VTFS_SHIFT][0];
>  			break;
>  		default:
>  			ret = -EINVAL;
> 


