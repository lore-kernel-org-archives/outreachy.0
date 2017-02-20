X-GM-THRID: 6388911007678332928
X-Received: by 10.31.165.12 with SMTP id o12mr5071655vke.34.1487579373099;
        Mon, 20 Feb 2017 00:29:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.8.69 with SMTP id 63ls8340218oty.30.gmail; Mon, 20 Feb
 2017 00:29:32 -0800 (PST)
X-Received: by 10.157.17.117 with SMTP id p50mr1248448otp.4.1487579372443;
        Mon, 20 Feb 2017 00:29:32 -0800 (PST)
Return-Path: <lars@metafoo.de>
Received: from www381.your-server.de (www381.your-server.de. [78.46.137.84])
        by gmr-mx.google.com with ESMTPS id z191si1326834itc.0.2017.02.20.00.29.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Feb 2017 00:29:32 -0800 (PST)
Received-SPF: neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) client-ip=78.46.137.84;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) smtp.mailfrom=lars@metafoo.de
Received: from [88.198.220.130] (helo=sslproxy01.your-server.de)
	by www381.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.85_2)
	(envelope-from <lars@metafoo.de>)
	id 1cfjLb-0004YE-Tr; Mon, 20 Feb 2017 09:29:27 +0100
Received: from [93.104.184.77] (helo=[192.168.178.44])
	by sslproxy01.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-SHA:256)
	(Exim 4.84_2)
	(envelope-from <lars@metafoo.de>)
	id 1cfjLb-00044v-GC; Mon, 20 Feb 2017 09:29:27 +0100
Subject: Re: [PATCH v2 2/2] staging: iio: ad7152: Use GENMASK() macro for left
 shifts
To: sayli karnik <karniksayli1995@gmail.com>,
 outreachy-kernel@googlegroups.com
References: <cover.1487483384.git.karniksayli1995@gmail.com>
 <b74094e5c94e11cad734b1bde11db0356e6d3aab.1487483384.git.karniksayli1995@gmail.com>
Cc: Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-iio@vger.kernel.org
From: Lars-Peter Clausen <lars@metafoo.de>
Message-ID: <74cd812d-14ae-9adc-7c5b-8fe4d8daf272@metafoo.de>
Date: Mon, 20 Feb 2017 09:29:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Icedove/45.6.0
MIME-Version: 1.0
In-Reply-To: <b74094e5c94e11cad734b1bde11db0356e6d3aab.1487483384.git.karniksayli1995@gmail.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
X-Authenticated-Sender: lars@metafoo.de
X-Virus-Scanned: Clear (ClamAV 0.99.2/23095/Mon Feb 20 05:52:24 2017)

On 02/19/2017 09:00 PM, sayli karnik wrote:
> Use GENMASK() macro for left shifting integers.
> 
> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
> ---
> v2:
> Used GENMASK() macro instead of BIT() macro for multi-bit bitfields.
> Removed extra parentheses around argument to macro
> 
>  drivers/staging/iio/cdc/ad7152.c | 32 ++++++++++++++++----------------
>  1 file changed, 16 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/staging/iio/cdc/ad7152.c b/drivers/staging/iio/cdc/ad7152.c
> index e8609b8..ab94fad 100644
> --- a/drivers/staging/iio/cdc/ad7152.c
> +++ b/drivers/staging/iio/cdc/ad7152.c
> @@ -47,28 +47,28 @@
>  #define AD7152_STATUS_PWDN		BIT(7)
>  
>  /* Setup Register Bit Designations (AD7152_REG_CHx_SETUP) */
> -#define AD7152_SETUP_CAPDIFF		(1 << 5)
> [...]
> +#define AD7152_SETUP_CAPDIFF		GENMASK(1, 5)

This was actually right, the first time, CAPDIFF is a single bit bitfield,
so it should use BIT().

> [...]
> -#define AD7152_CONF_CH2EN		(1 << 3)
> -#define AD7152_CONF_CH1EN		(1 << 4)
> [...]
> +#define AD7152_CONF_CH2EN		GENMASK(1, 3)
> +#define AD7152_CONF_CH1EN		GENMASK(1, 4)

Same here CH2EN and CH1EN are single bit bitfields.

>  /* Capdac Register Bit Designations (AD7152_REG_CAPDAC_XXX) */
> -#define AD7152_CAPDAC_DACEN		(1 << 7)
> [...]
> +#define AD7152_CAPDAC_DACEN		GENMASK(1, 7)

Same for DACEN.


