X-GM-THRID: 6337506771959021568
X-Received: by 10.46.1.197 with SMTP id f66mr771739lji.20.1475999639192;
        Sun, 09 Oct 2016 00:53:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.198.73 with SMTP id w70ls1441640wmf.9.gmail; Sun, 09 Oct
 2016 00:53:58 -0700 (PDT)
X-Received: by 10.28.207.5 with SMTP id f5mr278131wmg.11.1475999638513;
        Sun, 09 Oct 2016 00:53:58 -0700 (PDT)
Return-Path: <jic23@kernel.org>
Received: from saturn.retrosnub.co.uk (saturn.retrosnub.co.uk. [178.18.118.26])
        by gmr-mx.google.com with ESMTPS id p199si759596wmd.1.2016.10.09.00.53.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Oct 2016 00:53:58 -0700 (PDT)
Received-SPF: neutral (google.com: 178.18.118.26 is neither permitted nor denied by best guess record for domain of jic23@kernel.org) client-ip=178.18.118.26;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 178.18.118.26 is neither permitted nor denied by best guess record for domain of jic23@kernel.org) smtp.mailfrom=jic23@kernel.org
Received: from localhost.localdomain (cpc91196-cmbg18-2-0-cust659.5-4.cable.virginm.net [81.96.234.148])
	by saturn.retrosnub.co.uk (Postfix; Retrosnub mail submission) with ESMTPSA id E3AFC4062D;
	Sun,  9 Oct 2016 08:53:27 +0100 (BST)
Subject: Re: [PATCH v4 1/2] staging: iio: cdc: ad7152: Add blank line after
 function to increase readability
To: Anchal Jain <anchalj109@gmail.com>, gregkh@linuxfoundation.org
References: <20161004072236.GA4047@life-desktop>
Cc: lars@metafoo.de, outreachy-kernel@googlegroups.com
From: Jonathan Cameron <jic23@kernel.org>
Message-ID: <060fdec3-b29f-2911-6c73-44a276bdb0a9@kernel.org>
Date: Sun, 9 Oct 2016 08:53:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <20161004072236.GA4047@life-desktop>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 04/10/16 08:22, Anchal Jain wrote:
> Add a blank line after the function to increase the readability of the code.
> 
> Signed-off-by: Anchal Jain <anchalj109@gmail.com>
Hi Anchal,

I applied V3.  Good to clean up patches, but once they've gone in just
remember to get the little details right for the next one!

(this confused me when I tried to apply V4 today :) Too early on a Sunday
and no coffee yet.

Jonathan
> ---
> 	changes in v4-
> 		-modify patch title
>  drivers/staging/iio/cdc/ad7152.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/staging/iio/cdc/ad7152.c b/drivers/staging/iio/cdc/ad7152.c
> index 1962052..f9767e9 100644
> --- a/drivers/staging/iio/cdc/ad7152.c
> +++ b/drivers/staging/iio/cdc/ad7152.c
> @@ -134,6 +134,7 @@ static inline ssize_t ad7152_start_calib(struct device *dev,
>  	mutex_unlock(&indio_dev->mlock);
>  	return len;
>  }
> +
>  static ssize_t ad7152_start_offset_calib(struct device *dev,
>  					 struct device_attribute *attr,
>  					 const char *buf,
> @@ -142,6 +143,7 @@ static ssize_t ad7152_start_offset_calib(struct device *dev,
>  	return ad7152_start_calib(dev, attr, buf, len,
>  				  AD7152_CONF_MODE_OFFS_CAL);
>  }
> +
>  static ssize_t ad7152_start_gain_calib(struct device *dev,
>  				       struct device_attribute *attr,
>  				       const char *buf,
> @@ -317,6 +319,7 @@ out:
>  	mutex_unlock(&indio_dev->mlock);
>  	return ret;
>  }
> +
>  static int ad7152_read_raw(struct iio_dev *indio_dev,
>  			   struct iio_chan_spec const *chan,
>  			   int *val, int *val2,
> @@ -470,6 +473,7 @@ static const struct iio_chan_spec ad7152_channels[] = {
>  		BIT(IIO_CHAN_INFO_SCALE),
>  	}
>  };
> +
>  /*
>   * device probe and remove
>   */
> 


