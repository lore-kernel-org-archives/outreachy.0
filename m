X-GM-THRID: 6392601277801431040
X-Received: by 10.46.22.16 with SMTP id w16mr2105591ljd.8.1488481660486;
        Thu, 02 Mar 2017 11:07:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.5.71 with SMTP id 68ls763047ljf.34.gmail; Thu, 02 Mar 2017
 11:07:39 -0800 (PST)
X-Received: by 10.25.156.74 with SMTP id f71mr1775602lfe.26.1488481659667;
        Thu, 02 Mar 2017 11:07:39 -0800 (PST)
Return-Path: <jic23@kernel.org>
Received: from saturn.retrosnub.co.uk (saturn.retrosnub.co.uk. [178.18.118.26])
        by gmr-mx.google.com with ESMTPS id b186si181361wme.1.2017.03.02.11.07.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 11:07:39 -0800 (PST)
Received-SPF: neutral (google.com: 178.18.118.26 is neither permitted nor denied by best guess record for domain of jic23@kernel.org) client-ip=178.18.118.26;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 178.18.118.26 is neither permitted nor denied by best guess record for domain of jic23@kernel.org) smtp.mailfrom=jic23@kernel.org
Received: from localhost.localdomain (cpc91196-cmbg18-2-0-cust659.5-4.cable.virginm.net [81.96.234.148])
	by saturn.retrosnub.co.uk (Postfix; Retrosnub mail submission) with ESMTPSA id E9C4D4062E;
	Thu,  2 Mar 2017 19:07:38 +0000 (GMT)
Subject: Re: [PATCH] staging: iio: ad9832: Move header file content to source
 file
To: Arushi Singhal <arushisinghal19971997@gmail.com>, lars@metafoo.de
References: <20170301183741.GA20038@arushi-HP-Pavilion-Notebook>
Cc: Michael Hennerich <Michael.Hennerich@analog.com>,
 Hartmut Knaack <knaack.h@gmx.de>, Peter Meerwald-Stadler
 <pmeerw@pmeerw.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org,
 devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com
From: Jonathan Cameron <jic23@kernel.org>
Message-ID: <dc04507b-adc8-73b6-a124-c4078a7cba8c@kernel.org>
Date: Thu, 2 Mar 2017 19:07:38 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <20170301183741.GA20038@arushi-HP-Pavilion-Notebook>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 01/03/17 18:37, Arushi Singhal wrote:
> The contents of the header file are used only by this single
> source file. Move content into .c and remove .h.
> 
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
Just noticed that I have another series doing this change waiting for
review so probably going to have already been fixed before you can post
a V2.

Thanks,

Jonathan
> ---
>  drivers/staging/iio/frequency/ad9832.c | 100 +++++++++++++++++++++++++-
>  drivers/staging/iio/frequency/ad9832.h | 128 ---------------------------------
>  2 files changed, 99 insertions(+), 129 deletions(-)
>  delete mode 100644 drivers/staging/iio/frequency/ad9832.h
> 
> diff --git a/drivers/staging/iio/frequency/ad9832.c b/drivers/staging/iio/frequency/ad9832.c
> index a5b2f068168d..8302ec91b2d7 100644
> --- a/drivers/staging/iio/frequency/ad9832.c
> +++ b/drivers/staging/iio/frequency/ad9832.c
> @@ -20,7 +20,105 @@
>  #include <linux/iio/sysfs.h>
>  #include "dds.h"
>  
> -#include "ad9832.h"
> +#define AD9832_FREQ0LL		0x0
> +#define AD9832_FREQ0HL		0x1
> +#define AD9832_FREQ0LM		0x2
> +#define AD9832_FREQ0HM		0x3
> +#define AD9832_FREQ1LL		0x4
> +#define AD9832_FREQ1HL		0x5
> +#define AD9832_FREQ1LM		0x6
> +#define AD9832_FREQ1HM		0x7
> +#define AD9832_PHASE0L		0x8
> +#define AD9832_PHASE0H		0x9
> +#define AD9832_PHASE1L		0xA
> +#define AD9832_PHASE1H		0xB
> +#define AD9832_PHASE2L		0xC
> +#define AD9832_PHASE2H		0xD
> +#define AD9832_PHASE3L		0xE
> +#define AD9832_PHASE3H		0xF
> +
> +#define AD9832_PHASE_SYM	0x10
> +#define AD9832_FREQ_SYM		0x11
> +#define AD9832_PINCTRL_EN	0x12
> +#define AD9832_OUTPUT_EN	0x13
> +
> +/* Command Control Bits */
> +
> +#define AD9832_CMD_PHA8BITSW	0x1
> +#define AD9832_CMD_PHA16BITSW	0x0
> +#define AD9832_CMD_FRE8BITSW	0x3
> +#define AD9832_CMD_FRE16BITSW	0x2
> +#define AD9832_CMD_FPSELECT	0x6
> +#define AD9832_CMD_SYNCSELSRC	0x8
> +#define AD9832_CMD_SLEEPRESCLR	0xC
> +
> +#define AD9832_FREQ		BIT(11)
> +#define AD9832_PHASE(x)		(((x) & 3) << 9)
> +#define AD9832_SYNC		BIT(13)
> +#define AD9832_SELSRC		BIT(12)
> +#define AD9832_SLEEP		BIT(13)
> +#define AD9832_RESET		BIT(12)
> +#define AD9832_CLR		BIT(11)
> +#define CMD_SHIFT		12
> +#define ADD_SHIFT		8
> +#define AD9832_FREQ_BITS	32
> +#define AD9832_PHASE_BITS	12
> +#define RES_MASK(bits)		((1 << (bits)) - 1)
> +
> +/**
> + * struct ad9832_state - driver instance specific data
> + * @spi:		spi_device
> + * @avdd:		supply regulator for the analog section
> + * @dvdd:		supply regulator for the digital section
> + * @mclk:		external master clock
> + * @ctrl_fp:		cached frequency/phase control word
> + * @ctrl_ss:		cached sync/selsrc control word
> + * @ctrl_src:		cached sleep/reset/clr word
> + * @xfer:		default spi transfer
> + * @msg:		default spi message
> + * @freq_xfer:		tuning word spi transfer
> + * @freq_msg:		tuning word spi message
> + * @phase_xfer:		tuning word spi transfer
> + * @phase_msg:		tuning word spi message
> + * @data:		spi transmit buffer
> + * @phase_data:		tuning word spi transmit buffer
> + * @freq_data:		tuning word spi transmit buffer
> + */
> +
> +struct ad9832_state {
> +	struct spi_device		*spi;
> +	struct regulator		*avdd;
> +	struct regulator		*dvdd;
> +	unsigned long			mclk;
> +	unsigned short			ctrl_fp;
> +	unsigned short			ctrl_ss;
> +	unsigned short			ctrl_src;
> +	struct spi_transfer		xfer;
> +	struct spi_message		msg;
> +	struct spi_transfer		freq_xfer[4];
> +	struct spi_message		freq_msg;
> +	struct spi_transfer		phase_xfer[2];
> +	struct spi_message		phase_msg;
> +	/*
> +	 * DMA (thus cache coherency maintenance) requires the
> +	 * transfer buffers to live in their own cache lines.
> +	 */
> +	union {
> +		__be16			freq_data[4]____cacheline_aligned;
> +		__be16			phase_data[2];
> +		__be16			data;
> +	};
> +};
> +
> +struct ad9832_platform_data {
> +	unsigned long		mclk;
> +	unsigned long		freq0;
> +	unsigned long		freq1;
> +	unsigned short		phase0;
> +	unsigned short		phase1;
> +	unsigned short		phase2;
> +	unsigned short		phase3;
> +};
>  
>  static unsigned long ad9832_calc_freqreg(unsigned long mclk, unsigned long fout)
>  {
> diff --git a/drivers/staging/iio/frequency/ad9832.h b/drivers/staging/iio/frequency/ad9832.h
> deleted file mode 100644
> index 1b08b04482a4..000000000000
> --- a/drivers/staging/iio/frequency/ad9832.h
> +++ /dev/null
> @@ -1,128 +0,0 @@
> -/*
> - * AD9832 SPI DDS driver
> - *
> - * Copyright 2011 Analog Devices Inc.
> - *
> - * Licensed under the GPL-2 or later.
> - */
> -#ifndef IIO_DDS_AD9832_H_
> -#define IIO_DDS_AD9832_H_
> -
> -/* Registers */
> -
> -#define AD9832_FREQ0LL		0x0
> -#define AD9832_FREQ0HL		0x1
> -#define AD9832_FREQ0LM		0x2
> -#define AD9832_FREQ0HM		0x3
> -#define AD9832_FREQ1LL		0x4
> -#define AD9832_FREQ1HL		0x5
> -#define AD9832_FREQ1LM		0x6
> -#define AD9832_FREQ1HM		0x7
> -#define AD9832_PHASE0L		0x8
> -#define AD9832_PHASE0H		0x9
> -#define AD9832_PHASE1L		0xA
> -#define AD9832_PHASE1H		0xB
> -#define AD9832_PHASE2L		0xC
> -#define AD9832_PHASE2H		0xD
> -#define AD9832_PHASE3L		0xE
> -#define AD9832_PHASE3H		0xF
> -
> -#define AD9832_PHASE_SYM	0x10
> -#define AD9832_FREQ_SYM		0x11
> -#define AD9832_PINCTRL_EN	0x12
> -#define AD9832_OUTPUT_EN	0x13
> -
> -/* Command Control Bits */
> -
> -#define AD9832_CMD_PHA8BITSW	0x1
> -#define AD9832_CMD_PHA16BITSW	0x0
> -#define AD9832_CMD_FRE8BITSW	0x3
> -#define AD9832_CMD_FRE16BITSW	0x2
> -#define AD9832_CMD_FPSELECT	0x6
> -#define AD9832_CMD_SYNCSELSRC	0x8
> -#define AD9832_CMD_SLEEPRESCLR	0xC
> -
> -#define AD9832_FREQ		BIT(11)
> -#define AD9832_PHASE(x)		(((x) & 3) << 9)
> -#define AD9832_SYNC		BIT(13)
> -#define AD9832_SELSRC		BIT(12)
> -#define AD9832_SLEEP		BIT(13)
> -#define AD9832_RESET		BIT(12)
> -#define AD9832_CLR		BIT(11)
> -#define CMD_SHIFT		12
> -#define ADD_SHIFT		8
> -#define AD9832_FREQ_BITS	32
> -#define AD9832_PHASE_BITS	12
> -#define RES_MASK(bits)		((1 << (bits)) - 1)
> -
> -/**
> - * struct ad9832_state - driver instance specific data
> - * @spi:		spi_device
> - * @avdd:		supply regulator for the analog section
> - * @dvdd:		supply regulator for the digital section
> - * @mclk:		external master clock
> - * @ctrl_fp:		cached frequency/phase control word
> - * @ctrl_ss:		cached sync/selsrc control word
> - * @ctrl_src:		cached sleep/reset/clr word
> - * @xfer:		default spi transfer
> - * @msg:		default spi message
> - * @freq_xfer:		tuning word spi transfer
> - * @freq_msg:		tuning word spi message
> - * @phase_xfer:		tuning word spi transfer
> - * @phase_msg:		tuning word spi message
> - * @data:		spi transmit buffer
> - * @phase_data:		tuning word spi transmit buffer
> - * @freq_data:		tuning word spi transmit buffer
> - */
> -
> -struct ad9832_state {
> -	struct spi_device		*spi;
> -	struct regulator		*avdd;
> -	struct regulator		*dvdd;
> -	unsigned long			mclk;
> -	unsigned short			ctrl_fp;
> -	unsigned short			ctrl_ss;
> -	unsigned short			ctrl_src;
> -	struct spi_transfer		xfer;
> -	struct spi_message		msg;
> -	struct spi_transfer		freq_xfer[4];
> -	struct spi_message		freq_msg;
> -	struct spi_transfer		phase_xfer[2];
> -	struct spi_message		phase_msg;
> -	/*
> -	 * DMA (thus cache coherency maintenance) requires the
> -	 * transfer buffers to live in their own cache lines.
> -	 */
> -	union {
> -		__be16			freq_data[4]____cacheline_aligned;
> -		__be16			phase_data[2];
> -		__be16			data;
> -	};
> -};
> -
> -/*
> - * TODO: struct ad9832_platform_data needs to go into include/linux/iio
> - */
> -
> -/**
> - * struct ad9832_platform_data - platform specific information
> - * @mclk:		master clock in Hz
> - * @freq0:		power up freq0 tuning word in Hz
> - * @freq1:		power up freq1 tuning word in Hz
> - * @phase0:		power up phase0 value [0..4095] correlates with 0..2PI
> - * @phase1:		power up phase1 value [0..4095] correlates with 0..2PI
> - * @phase2:		power up phase2 value [0..4095] correlates with 0..2PI
> - * @phase3:		power up phase3 value [0..4095] correlates with 0..2PI
> - */
> -
> -struct ad9832_platform_data {
> -	unsigned long		mclk;
> -	unsigned long		freq0;
> -	unsigned long		freq1;
> -	unsigned short		phase0;
> -	unsigned short		phase1;
> -	unsigned short		phase2;
> -	unsigned short		phase3;
> -};
> -
> -#endif /* IIO_DDS_AD9832_H_ */
> 


