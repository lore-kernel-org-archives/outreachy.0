X-GM-THRID: 6391540020415561728
X-Received: by 10.46.69.7 with SMTP id s7mr2222756lja.18.1488483941234;
        Thu, 02 Mar 2017 11:45:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.22.4 with SMTP id w4ls833452ljd.22.gmail; Thu, 02 Mar 2017
 11:45:40 -0800 (PST)
X-Received: by 10.46.5.136 with SMTP id 130mr2207529ljf.6.1488483940031;
        Thu, 02 Mar 2017 11:45:40 -0800 (PST)
Return-Path: <jic23@kernel.org>
Received: from saturn.retrosnub.co.uk (saturn.retrosnub.co.uk. [178.18.118.26])
        by gmr-mx.google.com with ESMTPS id m191si142356wma.0.2017.03.02.11.45.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 11:45:39 -0800 (PST)
Received-SPF: neutral (google.com: 178.18.118.26 is neither permitted nor denied by best guess record for domain of jic23@kernel.org) client-ip=178.18.118.26;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 178.18.118.26 is neither permitted nor denied by best guess record for domain of jic23@kernel.org) smtp.mailfrom=jic23@kernel.org
Received: from localhost.localdomain (cpc91196-cmbg18-2-0-cust659.5-4.cable.virginm.net [81.96.234.148])
	by saturn.retrosnub.co.uk (Postfix; Retrosnub mail submission) with ESMTPSA id 16F5E40619;
	Thu,  2 Mar 2017 19:45:39 +0000 (GMT)
Subject: Re: [PATCH v2] staging: iio: ad9834: Moved contents of the header to
 the source file
To: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>, lars@metafoo.de,
 Michael.Hennerich@analog.com, knaack.h@gmx.de, pmeerw@pmeerw.net,
 gregkh@linuxfoundation.org
References: <1488146361-14383-1-git-send-email-narcisaanamaria12@gmail.com>
 <1488233711-28721-1-git-send-email-narcisaanamaria12@gmail.com>
Cc: outreachy-kernel@googlegroups.com, linux-iio@vger.kernel.org
From: Jonathan Cameron <jic23@kernel.org>
Message-ID: <c43ffd19-d71c-7cd3-f373-ba8464dfa3fb@kernel.org>
Date: Thu, 2 Mar 2017 19:45:38 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <1488233711-28721-1-git-send-email-narcisaanamaria12@gmail.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 27/02/17 22:15, Narcisa Ana Maria Vasile wrote:
> Moved the contents of the header(ad9834.h) into the corresponding source
> file with the exception of the platform data struct which is supposed to be
> used from somewhere else other than the driver.
> 
> Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
Looks good. Applied to the togreg branch of iio.git and pushed out as testing
for the autobuilders to play with it.

A few passing comments inline, perhaps relevant to further tidy up...

Thanks,

Jonathan
> ---
> Changes to v2:
>     -Removed the platform data structure from the source file
>     and inserted it back into the header file(ad9834.h).
> ---
>  drivers/staging/iio/frequency/ad9834.c | 72 ++++++++++++++++++++++++++++++++++
>  drivers/staging/iio/frequency/ad9834.h | 72 ----------------------------------
>  2 files changed, 72 insertions(+), 72 deletions(-)
> 
> diff --git a/drivers/staging/iio/frequency/ad9834.c b/drivers/staging/iio/frequency/ad9834.c
> index 19216af..f92ff7f 100644
> --- a/drivers/staging/iio/frequency/ad9834.c
> +++ b/drivers/staging/iio/frequency/ad9834.c
> @@ -25,6 +25,78 @@
>  
>  #include "ad9834.h"
>  
> +/* Registers */
> +
> +#define AD9834_REG_CMD		0
> +#define AD9834_REG_FREQ0	BIT(14)
> +#define AD9834_REG_FREQ1	BIT(15)
> +#define AD9834_REG_PHASE0	(BIT(15) | BIT(14))
> +#define AD9834_REG_PHASE1	(BIT(15) | BIT(14) | BIT(13))
Quirky way of defining it but does line up with the datasheet description.
+ if we were going to make this more 'normal' we'd do it in a separate
patch anyway...
> +
> +/* Command Control Bits */
> +
> +#define AD9834_B28		BIT(13)
> +#define AD9834_HLB		BIT(12)
> +#define AD9834_FSEL		BIT(11)
> +#define AD9834_PSEL		BIT(10)
> +#define AD9834_PIN_SW		BIT(9)
> +#define AD9834_RESET		BIT(8)
> +#define AD9834_SLEEP1		BIT(7)
> +#define AD9834_SLEEP12		BIT(6)
> +#define AD9834_OPBITEN		BIT(5)
> +#define AD9834_SIGN_PIB		BIT(4)
> +#define AD9834_DIV2		BIT(3)
> +#define AD9834_MODE		BIT(1)
> +
> +#define AD9834_FREQ_BITS	28
> +#define AD9834_PHASE_BITS	12
> +
> +#define RES_MASK(bits)	(BIT(bits) - 1)
> +
> +/**
> + * struct ad9834_state - driver instance specific data
> + * @spi:		spi_device
> + * @reg:		supply regulator
> + * @mclk:		external master clock
> + * @control:		cached control word
> + * @xfer:		default spi transfer
> + * @msg:		default spi message
> + * @freq_xfer:		tuning word spi transfer
> + * @freq_msg:		tuning word spi message
> + * @data:		spi transmit buffer
> + * @freq_data:		tuning word spi transmit buffer
> + */
> +
> +struct ad9834_state {
> +	struct spi_device		*spi;
> +	struct regulator		*reg;
> +	unsigned int			mclk;
> +	unsigned short			control;
> +	unsigned short			devid;
> +	struct spi_transfer		xfer;
> +	struct spi_message		msg;
> +	struct spi_transfer		freq_xfer[2];
> +	struct spi_message		freq_msg;
> +
> +	/*
> +	 * DMA (thus cache coherency maintenance) requires the
> +	 * transfer buffers to live in their own cache lines.
> +	 */
> +	__be16				data ____cacheline_aligned;
> +	__be16				freq_data[2];
> +};
> +
> +/**
> + * ad9834_supported_device_ids:
> + */
As pointless comments go this one is impressive ;)
> +
> +enum ad9834_supported_device_ids {
> +	ID_AD9833,
> +	ID_AD9834,
> +	ID_AD9837,
> +	ID_AD9838,
> +};
> +
>  static unsigned int ad9834_calc_freqreg(unsigned long mclk, unsigned long fout)
>  {
>  	unsigned long long freqreg = (u64)fout * (u64)BIT(AD9834_FREQ_BITS);
> diff --git a/drivers/staging/iio/frequency/ad9834.h b/drivers/staging/iio/frequency/ad9834.h
> index 40fdd5d..ae620f3 100644
> --- a/drivers/staging/iio/frequency/ad9834.h
> +++ b/drivers/staging/iio/frequency/ad9834.h
> @@ -8,67 +8,6 @@
>  #ifndef IIO_DDS_AD9834_H_
>  #define IIO_DDS_AD9834_H_
>  
> -/* Registers */
> -
> -#define AD9834_REG_CMD		0
> -#define AD9834_REG_FREQ0	BIT(14)
> -#define AD9834_REG_FREQ1	BIT(15)
> -#define AD9834_REG_PHASE0	(BIT(15) | BIT(14))
> -#define AD9834_REG_PHASE1	(BIT(15) | BIT(14) | BIT(13))
> -
> -/* Command Control Bits */
> -
> -#define AD9834_B28		BIT(13)
> -#define AD9834_HLB		BIT(12)
> -#define AD9834_FSEL		BIT(11)
> -#define AD9834_PSEL		BIT(10)
> -#define AD9834_PIN_SW		BIT(9)
> -#define AD9834_RESET		BIT(8)
> -#define AD9834_SLEEP1		BIT(7)
> -#define AD9834_SLEEP12		BIT(6)
> -#define AD9834_OPBITEN		BIT(5)
> -#define AD9834_SIGN_PIB		BIT(4)
> -#define AD9834_DIV2		BIT(3)
> -#define AD9834_MODE		BIT(1)
> -
> -#define AD9834_FREQ_BITS	28
> -#define AD9834_PHASE_BITS	12
> -
> -#define RES_MASK(bits)	(BIT(bits) - 1)
> -
> -/**
> - * struct ad9834_state - driver instance specific data
> - * @spi:		spi_device
> - * @reg:		supply regulator
> - * @mclk:		external master clock
> - * @control:		cached control word
> - * @xfer:		default spi transfer
> - * @msg:		default spi message
> - * @freq_xfer:		tuning word spi transfer
> - * @freq_msg:		tuning word spi message
> - * @data:		spi transmit buffer
> - * @freq_data:		tuning word spi transmit buffer
> - */
> -
> -struct ad9834_state {
> -	struct spi_device		*spi;
> -	struct regulator		*reg;
> -	unsigned int			mclk;
> -	unsigned short			control;
> -	unsigned short			devid;
> -	struct spi_transfer		xfer;
> -	struct spi_message		msg;
> -	struct spi_transfer		freq_xfer[2];
> -	struct spi_message		freq_msg;
> -
> -	/*
> -	 * DMA (thus cache coherency maintenance) requires the
> -	 * transfer buffers to live in their own cache lines.
> -	 */
> -	__be16				data ____cacheline_aligned;
> -	__be16				freq_data[2];
> -};
> -
>  /*
>   * TODO: struct ad7887_platform_data needs to go into include/linux/iio
>   */
> @@ -97,15 +36,4 @@ struct ad9834_platform_data {
>  	bool			en_signbit_msb_out;
>  };
>  
> -/**
> - * ad9834_supported_device_ids:
> - */
> -
> -enum ad9834_supported_device_ids {
> -	ID_AD9833,
> -	ID_AD9834,
> -	ID_AD9837,
> -	ID_AD9838,
> -};
> -
>  #endif /* IIO_DDS_AD9834_H_ */
> 


