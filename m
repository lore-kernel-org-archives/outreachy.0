X-GM-THRID: 6392227374862172160
X-Received: by 10.99.66.6 with SMTP id p6mr1220796pga.20.1488306771414;
        Tue, 28 Feb 2017 10:32:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.141.19 with SMTP id p19ls612455iod.9.gmail; Tue, 28 Feb
 2017 10:32:50 -0800 (PST)
X-Received: by 10.99.120.193 with SMTP id t184mr1255691pgc.26.1488306770241;
        Tue, 28 Feb 2017 10:32:50 -0800 (PST)
Return-Path: <lars@metafoo.de>
Received: from www381.your-server.de (www381.your-server.de. [78.46.137.84])
        by gmr-mx.google.com with ESMTPS id y63si244085ywe.5.2017.02.28.10.32.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Feb 2017 10:32:49 -0800 (PST)
Received-SPF: neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) client-ip=78.46.137.84;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) smtp.mailfrom=lars@metafoo.de
Received: from [88.198.220.132] (helo=sslproxy03.your-server.de)
	by www381.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.85_2)
	(envelope-from <lars@metafoo.de>)
	id 1cimZp-0002ko-Ee; Tue, 28 Feb 2017 19:32:45 +0100
Received: from [2003:86:2c11:ad00:8200:bff:fe9b:6612]
	by sslproxy03.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-SHA:256)
	(Exim 4.84_2)
	(envelope-from <lars@metafoo.de>)
	id 1cimZp-0003Mf-6m; Tue, 28 Feb 2017 19:32:45 +0100
Subject: Re: [PATCH] staging: iio: ad7280a: Move contents of header file to
 source file
To: sayli karnik <karniksayli1995@gmail.com>,
 outreachy-kernel@googlegroups.com
References: <20170228182630.GA10423@sayli-HP-15-Notebook-PC>
Cc: Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-iio@vger.kernel.org
From: Lars-Peter Clausen <lars@metafoo.de>
Message-ID: <7a8ae020-2c89-933a-4e3a-ff7771626a57@metafoo.de>
Date: Tue, 28 Feb 2017 19:32:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Icedove/45.6.0
MIME-Version: 1.0
In-Reply-To: <20170228182630.GA10423@sayli-HP-15-Notebook-PC>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
X-Authenticated-Sender: lars@metafoo.de
X-Virus-Scanned: Clear (ClamAV 0.99.2/23145/Tue Feb 28 17:56:05 2017)

On 02/28/2017 07:26 PM, sayli karnik wrote:
> The contents of the header file are used only by this single
> source file.  Move content into .c and remove .h.

Hi,

Thanks for the patch. I'm afraid that these are values that are supposed to
be used to initialize the fields in the platform data struct. So they have
to stay in the header as well.

If you want to clean this up, convert at least the enumerations to a enum
data type, so that it is clear what their function is.

> 
> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
> ---
>  drivers/staging/iio/adc/ad7280a.c | 15 +++++++++++++++
>  drivers/staging/iio/adc/ad7280a.h | 15 ---------------
>  2 files changed, 15 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/staging/iio/adc/ad7280a.c b/drivers/staging/iio/adc/ad7280a.c
> index ee679ac..44d13dc 100644
> --- a/drivers/staging/iio/adc/ad7280a.c
> +++ b/drivers/staging/iio/adc/ad7280a.c
> @@ -22,6 +22,21 @@
>  
>  #include "ad7280a.h"
>  
> +#define AD7280A_ACQ_TIME_400ns			0
> +#define AD7280A_ACQ_TIME_800ns			1
> +#define AD7280A_ACQ_TIME_1200ns			2
> +#define AD7280A_ACQ_TIME_1600ns			3
> +
> +#define AD7280A_CONV_AVG_DIS			0
> +#define AD7280A_CONV_AVG_2			1
> +#define AD7280A_CONV_AVG_4			2
> +#define AD7280A_CONV_AVG_8			3
> +
> +#define AD7280A_ALERT_REMOVE_VIN5		BIT(2)
> +#define AD7280A_ALERT_REMOVE_VIN4_VIN5		BIT(3)
> +#define AD7280A_ALERT_REMOVE_AUX5		BIT(0)
> +#define AD7280A_ALERT_REMOVE_AUX4_AUX5		BIT(1)
> +
>  /* Registers */
>  #define AD7280A_CELL_VOLTAGE_1		0x0  /* D11 to D0, Read only */
>  #define AD7280A_CELL_VOLTAGE_2		0x1  /* D11 to D0, Read only */
> diff --git a/drivers/staging/iio/adc/ad7280a.h b/drivers/staging/iio/adc/ad7280a.h
> index ccfb90d..1b50dd8 100644
> --- a/drivers/staging/iio/adc/ad7280a.h
> +++ b/drivers/staging/iio/adc/ad7280a.h
> @@ -13,21 +13,6 @@
>   * TODO: struct ad7280_platform_data needs to go into include/linux/iio
>   */
>  
> -#define AD7280A_ACQ_TIME_400ns			0
> -#define AD7280A_ACQ_TIME_800ns			1
> -#define AD7280A_ACQ_TIME_1200ns			2
> -#define AD7280A_ACQ_TIME_1600ns			3
> -
> -#define AD7280A_CONV_AVG_DIS			0
> -#define AD7280A_CONV_AVG_2			1
> -#define AD7280A_CONV_AVG_4			2
> -#define AD7280A_CONV_AVG_8			3
> -
> -#define AD7280A_ALERT_REMOVE_VIN5		BIT(2)
> -#define AD7280A_ALERT_REMOVE_VIN4_VIN5		BIT(3)
> -#define AD7280A_ALERT_REMOVE_AUX5		BIT(0)
> -#define AD7280A_ALERT_REMOVE_AUX4_AUX5		BIT(1)
> -
>  struct ad7280_platform_data {
>  	unsigned int		acquisition_time;
>  	unsigned int		conversion_averaging;
> 


