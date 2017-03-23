X-GM-THRID: 6400656682725146624
X-Received: by 10.99.112.77 with SMTP id a13mr564993pgn.168.1490269497464;
        Thu, 23 Mar 2017 04:44:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.1.17 with SMTP id 17ls2265921otu.16.gmail; Thu, 23 Mar
 2017 04:44:56 -0700 (PDT)
X-Received: by 10.129.75.5 with SMTP id y5mr590441ywa.28.1490269496777;
        Thu, 23 Mar 2017 04:44:56 -0700 (PDT)
Return-Path: <lars@metafoo.de>
Received: from www381.your-server.de (www381.your-server.de. [78.46.137.84])
        by gmr-mx.google.com with ESMTPS id h35si645282ywk.0.2017.03.23.04.44.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Mar 2017 04:44:56 -0700 (PDT)
Received-SPF: neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) client-ip=78.46.137.84;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) smtp.mailfrom=lars@metafoo.de
Received: from [88.198.220.130] (helo=sslproxy01.your-server.de)
	by www381.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.85_2)
	(envelope-from <lars@metafoo.de>)
	id 1cr1Ae-0000hj-V4; Thu, 23 Mar 2017 12:44:49 +0100
Received: from [2003:86:2c12:f000:8200:bff:fe9b:6612]
	by sslproxy01.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-SHA:256)
	(Exim 4.84_2)
	(envelope-from <lars@metafoo.de>)
	id 1cr1Ae-0001u0-Nk; Thu, 23 Mar 2017 12:44:48 +0100
Subject: Re: [PATCH] staging: ad7746: Moved contents of the header to the
 source file.
To: Arushi Singhal <arushisinghal19971997@gmail.com>
References: <20170323113649.GA23947@arushi-HP-Pavilion-Notebook>
Cc: Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-iio@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com
From: Lars-Peter Clausen <lars@metafoo.de>
Message-ID: <575e7930-5328-1a06-4b68-04e121e8a7f6@metafoo.de>
Date: Thu, 23 Mar 2017 12:44:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Icedove/45.6.0
MIME-Version: 1.0
In-Reply-To: <20170323113649.GA23947@arushi-HP-Pavilion-Notebook>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
X-Authenticated-Sender: lars@metafoo.de
X-Virus-Scanned: Clear (ClamAV 0.99.2/23229/Thu Mar 23 05:27:26 2017)

On 03/23/2017 12:36 PM, Arushi Singhal wrote:
> Moved the contents of the header(ad7746.h) into the source file
> ad7746.c with the exception of the platform data struct which is
> supposed to be used from somewhere else other than the driver.
> 
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
>  drivers/staging/iio/cdc/ad7746.c | 5 +++++
>  drivers/staging/iio/cdc/ad7746.h | 5 -----
>  2 files changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/staging/iio/cdc/ad7746.c b/drivers/staging/iio/cdc/ad7746.c
> index 2d8397b11b19..033a41fd9bee 100644
> --- a/drivers/staging/iio/cdc/ad7746.c
> +++ b/drivers/staging/iio/cdc/ad7746.c
> @@ -21,6 +21,11 @@
>  
>  #include "ad7746.h"
>  
> +#define AD7466_EXCLVL_0         0 /* +-VDD/8 */
> +#define AD7466_EXCLVL_1         1 /* +-VDD/4 */
> +#define AD7466_EXCLVL_2         2 /* +-VDD * 3/8 */
> +#define AD7466_EXCLVL_3         3 /* +-VDD/2 */
> +
>  /*
>   * AD7746 Register Definition
>   */
> diff --git a/drivers/staging/iio/cdc/ad7746.h b/drivers/staging/iio/cdc/ad7746.h
> index ea8572d1df02..2fbcee88fda6 100644
> --- a/drivers/staging/iio/cdc/ad7746.h
> +++ b/drivers/staging/iio/cdc/ad7746.h
> @@ -13,11 +13,6 @@
>   * TODO: struct ad7746_platform_data needs to go into include/linux/iio
>   */
>  
> -#define AD7466_EXCLVL_0		0 /* +-VDD/8 */
> -#define AD7466_EXCLVL_1		1 /* +-VDD/4 */
> -#define AD7466_EXCLVL_2		2 /* +-VDD * 3/8 */
> -#define AD7466_EXCLVL_3		3 /* +-VDD/2 */
> -

I believe those are settings for the exclvl field in the platform data
struct. Hence this has to stay here.

>  struct ad7746_platform_data {
>  	unsigned char exclvl;	/*Excitation Voltage Level */
>  	bool exca_en;		/* enables EXCA pin as the excitation output */
> 


