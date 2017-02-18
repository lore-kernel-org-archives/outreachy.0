X-GM-THRID: 6388140683581980672
X-Received: by 10.25.29.11 with SMTP id d11mr1481812lfd.14.1487444175505;
        Sat, 18 Feb 2017 10:56:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.32.216 with SMTP id g85ls370100lji.7.gmail; Sat, 18 Feb
 2017 10:56:14 -0800 (PST)
X-Received: by 10.25.41.85 with SMTP id p82mr1490380lfp.16.1487444174549;
        Sat, 18 Feb 2017 10:56:14 -0800 (PST)
Return-Path: <jic23@kernel.org>
Received: from saturn.retrosnub.co.uk (saturn.retrosnub.co.uk. [2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466])
        by gmr-mx.google.com with ESMTPS id p185si420762wme.1.2017.02.18.10.56.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Feb 2017 10:56:14 -0800 (PST)
Received-SPF: neutral (google.com: 2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466 is neither permitted nor denied by best guess record for domain of jic23@kernel.org) client-ip=2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466 is neither permitted nor denied by best guess record for domain of jic23@kernel.org) smtp.mailfrom=jic23@kernel.org
Received: from localhost.localdomain (cpc91196-cmbg18-2-0-cust659.5-4.cable.virginm.net [81.96.234.148])
	by saturn.retrosnub.co.uk (Postfix; Retrosnub mail submission) with ESMTPSA id BDDEE405EB;
	Sat, 18 Feb 2017 18:56:13 +0000 (GMT)
Subject: Re: [PATCH] staging: iio: adis16240_core: Replace symbolic permission
 with octal permission
To: sayli karnik <karniksayli1995@gmail.com>,
 outreachy-kernel@googlegroups.com
References: <20170217180807.GA18849@sayli-HP-15-Notebook-PC>
Cc: Hartmut Knaack <knaack.h@gmx.de>, Lars-Peter Clausen <lars@metafoo.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
From: Jonathan Cameron <jic23@kernel.org>
Message-ID: <fc505638-1355-7a14-3853-32210e186df8@kernel.org>
Date: Sat, 18 Feb 2017 18:56:13 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <20170217180807.GA18849@sayli-HP-15-Notebook-PC>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 17/02/17 18:08, sayli karnik wrote:
> The patch resolves following checkpatch issue:
> WARNING: Symbolic permissions 'S_IRUGO' are not preferred. Consider using
> octal permissions '0444'.
> 
> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
Applied to the togreg branch of iio.git. Pushed out as testing initially to let
the autobuilders play with it.

One request though, please post iio related patches to linux-iio@vger.kernel.org even
for drivers in staging.  That way they are less likely to fall through the cracks!

Jonathan
> ---
>  drivers/staging/iio/accel/adis16240_core.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/iio/accel/adis16240_core.c b/drivers/staging/iio/accel/adis16240_core.c
> index d5b99e6..e1bc9fc 100644
> --- a/drivers/staging/iio/accel/adis16240_core.c
> +++ b/drivers/staging/iio/accel/adis16240_core.c
> @@ -65,7 +65,7 @@ static ssize_t adis16240_read_12bit_signed(struct device *dev,
>  	return ret;
>  }
>  
> -static IIO_DEVICE_ATTR(in_accel_xyz_squared_peak_raw, S_IRUGO,
> +static IIO_DEVICE_ATTR(in_accel_xyz_squared_peak_raw, 0444,
>  		       adis16240_read_12bit_signed, NULL,
>  		       ADIS16240_XYZPEAK_OUT);
>  
> 


