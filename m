X-GM-THRID: 6400149763723886592
X-Received: by 10.99.115.3 with SMTP id o3mr19525462pgc.149.1490175692469;
        Wed, 22 Mar 2017 02:41:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.27.155 with SMTP id z27ls1546436otd.14.gmail; Wed, 22 Mar
 2017 02:41:32 -0700 (PDT)
X-Received: by 10.129.162.10 with SMTP id z10mr18603422ywg.167.1490175692065;
        Wed, 22 Mar 2017 02:41:32 -0700 (PDT)
Return-Path: <dan.carpenter@oracle.com>
Received: from aserp1040.oracle.com (aserp1040.oracle.com. [141.146.126.69])
        by gmr-mx.google.com with ESMTPS id 190si222423pfv.3.2017.03.22.02.41.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Mar 2017 02:41:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.69 as permitted sender) client-ip=141.146.126.69;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.69 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com
Received: from aserv0021.oracle.com (aserv0021.oracle.com [141.146.126.233])
	by aserp1040.oracle.com (Sentrion-MTA-4.3.2/Sentrion-MTA-4.3.2) with ESMTP id v2M9fSZH022010
	(version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=OK);
	Wed, 22 Mar 2017 09:41:28 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
	by aserv0021.oracle.com (8.13.8/8.14.4) with ESMTP id v2M9fSwR013781
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=OK);
	Wed, 22 Mar 2017 09:41:28 GMT
Received: from abhmp0013.oracle.com (abhmp0013.oracle.com [141.146.116.19])
	by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id v2M9fQ3t013191;
	Wed, 22 Mar 2017 09:41:26 GMT
Received: from mwanda (/154.0.138.2)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Wed, 22 Mar 2017 02:41:25 -0700
Date: Wed, 22 Mar 2017 12:41:14 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: outreachy-kernel@googlegroups.com, devel@driverdev.osuosl.org,
        linux-fbdev@vger.kernel.org, Teddy Wang <teddy.wang@siliconmotion.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        linux-kernel@vger.kernel.org,
        Sudip Mukherjee <sudipm.mukherjee@gmail.com>
Subject: Re: staging: iio: Replace a bit shift by a use of BIT.
Message-ID: <20170322094114.GH32449@mwanda>
References: <20170322024942.GA21242@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170322024942.GA21242@arushi-HP-Pavilion-Notebook>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Source-IP: aserv0021.oracle.com [141.146.126.233]

On Wed, Mar 22, 2017 at 08:19:42AM +0530, Arushi Singhal wrote:
> This patch replaces bit shifting on 1 with the BIT(x) macro.
> This was done with coccinelle:
> @@
> constant c;
> @@
> 
> -1 << c
> +BIT(c)
> 
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
>  drivers/staging/iio/adc/ad7816.c |  2 +-
>  drivers/staging/iio/cdc/ad7150.c |  2 +-
>  drivers/staging/iio/cdc/ad7746.c | 22 +++++++++++-----------
>  3 files changed, 13 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/staging/iio/adc/ad7816.c b/drivers/staging/iio/adc/ad7816.c
> index 17d280581e24..42f637ca0251 100644
> --- a/drivers/staging/iio/adc/ad7816.c
> +++ b/drivers/staging/iio/adc/ad7816.c
> @@ -222,7 +222,7 @@ static ssize_t ad7816_show_value(struct device *dev,
>  		value = (s8)((data >> AD7816_TEMP_FLOAT_OFFSET) - 103);
>  		data &= AD7816_TEMP_FLOAT_MASK;
>  		if (value < 0)
> -			data = (1 << AD7816_TEMP_FLOAT_OFFSET) - data;
> +			data = (BIT(AD7816_TEMP_FLOAT_OFFSET)) - data;

Remove the extra parentheses from all of these:

			data = BIT(AD7816_TEMP_FLOAT_OFFSET) - data;

regards,
dan carpenter


