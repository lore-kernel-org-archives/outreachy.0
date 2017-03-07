X-GM-THRID: 6392397624378392576
X-Received: by 10.13.201.4 with SMTP id l4mr973282ywd.75.1488914272806;
        Tue, 07 Mar 2017 11:17:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.34.49 with SMTP id o46ls1201408ota.35.gmail; Tue, 07 Mar
 2017 11:17:52 -0800 (PST)
X-Received: by 10.13.248.198 with SMTP id i189mr961072ywf.156.1488914272465;
        Tue, 07 Mar 2017 11:17:52 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id y90si174902pfa.6.2017.03.07.11.17.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 11:17:52 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12060-104.w90-92.abo.wanadoo.fr [90.92.122.104])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id C4897902;
	Tue,  7 Mar 2017 19:17:51 +0000 (UTC)
Date: Tue, 7 Mar 2017 20:17:46 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: sayli karnik <karniksayli1995@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	linux-iio@vger.kernel.org
Subject: Re: [PATCH v2] staging: iio: ad7280a: Group similar macros into enums
Message-ID: <20170307191746.GA22068@kroah.com>
References: <20170307191112.GA29306@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170307191112.GA29306@sayli-HP-15-Notebook-PC>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Wed, Mar 08, 2017 at 12:41:12AM +0530, sayli karnik wrote:
> The patch groups similar macros into enum data types.

Why?

What benefit does this provide?

> 
> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
> ---
> Changes in v2:
> Corrected the order of both the enums.
> Used enum data type names instead of unsigned int inside struct
> ad7280_platform_data.
> 
>  drivers/staging/iio/adc/ad7280a.h | 24 ++++++++++++++----------
>  1 file changed, 14 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/staging/iio/adc/ad7280a.h b/drivers/staging/iio/adc/ad7280a.h
> index ccfb90d..e22694f 100644
> --- a/drivers/staging/iio/adc/ad7280a.h
> +++ b/drivers/staging/iio/adc/ad7280a.h
> @@ -13,15 +13,19 @@
>   * TODO: struct ad7280_platform_data needs to go into include/linux/iio
>   */
>  
> -#define AD7280A_ACQ_TIME_400ns			0
> -#define AD7280A_ACQ_TIME_800ns			1
> -#define AD7280A_ACQ_TIME_1200ns			2
> -#define AD7280A_ACQ_TIME_1600ns			3
> +enum ad7280a_acq_time {
> +	AD7280A_ACQ_TIME_400ns = 0,
> +	AD7280A_ACQ_TIME_800ns,
> +	AD7280A_ACQ_TIME_1200ns,
> +	AD7280A_ACQ_TIME_1600ns,

Before your change, you instantly knew that the 1600ns value needed to
be 3.  Now I need to count an enum.  Does this seem like a better
change?  Are you _sure_ the compiler sets the values properly?

thanks,

greg k-h

