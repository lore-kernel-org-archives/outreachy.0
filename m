X-GM-THRID: 6396604644937695232
X-Received: by 10.13.240.193 with SMTP id z184mr17802975ywe.129.1489434803701;
        Mon, 13 Mar 2017 12:53:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.133.9 with SMTP id h9ls4406483iod.49.gmail; Mon, 13 Mar
 2017 12:53:22 -0700 (PDT)
X-Received: by 10.99.122.25 with SMTP id v25mr16919757pgc.96.1489434802684;
        Mon, 13 Mar 2017 12:53:22 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id 2si3335930pfx.8.2017.03.13.12.53.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 12:53:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id b5so19326600pgg.1
        for <outreachy-kernel@googlegroups.com>; Mon, 13 Mar 2017 12:53:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=3ly7+QRmlbTaiqPtkIjGf6Yign8Bz+dmLgFFz5HvGWA=;
        b=X8dHhQFNbnAXMAg+u5QQlN2Vyw1QbAUs+tbhc08MVTblqUBBCqts9Yf76KHU6UjbOm
         1Bxylt8TX9GcvcokVXAviH6j7qun23CAddME/KM3TQl1WgW6Xfu42kfTOdvqUOfHeunj
         dvKpID799uy53HuFTt/2a3QZqi1Gz9yDrb8Lm3ReJdmLqktdMbRDC+lw330qwFP1eRTi
         XNbdP3qTLWPNM7jfjAf5pC6CF1RHbxVMJsKUu61ZtwU/C5rN+fnSLeUyUpWPo/GzN+1B
         cV5h/votfJ/foRH5yUPAHCUPmsSkCi/1573/EZ9yOVEaHWI3gPoIjRhH3PBQWCqcDMR0
         W0PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=3ly7+QRmlbTaiqPtkIjGf6Yign8Bz+dmLgFFz5HvGWA=;
        b=ntTUW3nq2kM+9WqJCbjRYSgw0OFh8ZYwWwIPm4w3Zzm6gRFMvhmmQwhJQezERZu8Wq
         Ml2d8Z9hm/WjzQgYRD7Td4U8NYsuS6tQaV0iZlUSmtoLMWO4mWgLHRDHKSnniy8SWVPC
         WnZC5k+FUv4NNBsoino0XulHukGVTVY8AmfAYLal8vRh2Rn+Hczwfz5yqGl/Y+WtsP/U
         QtFDm/kTo8Iqg3/Fl1J9J9wsv95Qvzi7Ot/szAXppTVmzVE76Fkf/EbpBSf5N7Ps7txI
         a6Y9ZfflyCxFJ57M0SyweFeILz0CYo2Svo/zxKiQDlQi+0b7O+iIin+WlBArfI4Rb79h
         5sGg==
X-Gm-Message-State: AMke39kypqI221wTzZhSp17GGalhbRKsl2sZr8zEW0JLWYc0SWdRiX6o/tCHmowyA6J5IA==
X-Received: by 10.99.105.66 with SMTP id e63mr39139425pgc.104.1489434802446;
        Mon, 13 Mar 2017 12:53:22 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id i3sm34107918pfg.117.2017.03.13.12.53.21
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 13 Mar 2017 12:53:21 -0700 (PDT)
Date: Mon, 13 Mar 2017 12:53:21 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: simran singhal <singhalsimran0@gmail.com>
Cc: lars@metafoo.de, Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Pete Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-iio@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: iio: ade7753: replace
 mlock with driver private lock
Message-ID: <20170313195320.GA6705@d830.WORKGROUP>
References: <20170313163107.GA31496@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170313163107.GA31496@singhal-Inspiron-5558>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Mon, Mar 13, 2017 at 10:01:07PM +0530, simran singhal wrote:
> The IIO subsystem is redefining iio_dev->mlock to be used by
> the IIO core only for protecting device operating mode changes.
> ie. Changes between INDIO_DIRECT_MODE, INDIO_BUFFER_* modes.
> 
> In this driver, mlock was being used to protect hardware state
> changes.  Replace it with a lock in the devices global data.
> 
> Fix some coding style issues related to white space also.
> 
> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
> ---
> 
>  v2:
>    -Removed new lock to reuse the existing lock
Simran,

The good news is that you have 2 patches that have similar
challenges!  I'll suggest picking one, drive it to completion,
then do the other.

This has the nested locking issue that Lars warned about.
Need to refactor to avoid.  Check back on his review comments.

I suggest dropping those whitespace changes - they appear
out of place in this patch since you are no longer actually
touching those lines of code.

alisons


> 
>  drivers/staging/iio/meter/ade7753.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/iio/meter/ade7753.c b/drivers/staging/iio/meter/ade7753.c
> index dfd8b71..d88eaa3 100644
> --- a/drivers/staging/iio/meter/ade7753.c
> +++ b/drivers/staging/iio/meter/ade7753.c
> @@ -83,10 +83,10 @@
>   * @buf_lock:       mutex to protect tx and rx
>   **/
>  struct ade7753_state {
> -	    struct spi_device   *us;
> -		    struct mutex        buf_lock;
> -			    u8          tx[ADE7753_MAX_TX] ____cacheline_aligned;
> -				    u8          rx[ADE7753_MAX_RX];
> +	struct spi_device   *us;
> +	struct mutex        buf_lock;
> +	u8          tx[ADE7753_MAX_TX] ____cacheline_aligned;
> +	u8          rx[ADE7753_MAX_RX];
>  };
>  
>  static int ade7753_spi_write_reg_8(struct device *dev,
> @@ -484,7 +484,7 @@ static ssize_t ade7753_write_frequency(struct device *dev,
>  	if (!val)
>  		return -EINVAL;
>  
> -	mutex_lock(&indio_dev->mlock);
> +	mutex_lock(&st->buf_lock);
>  
>  	t = 27900 / val;
>  	if (t > 0)
> @@ -505,7 +505,7 @@ static ssize_t ade7753_write_frequency(struct device *dev,
>  	ret = ade7753_spi_write_reg_16(dev, ADE7753_MODE, reg);
>  
>  out:
> -	mutex_unlock(&indio_dev->mlock);
> +	mutex_unlock(&st->buf_lock);
>  
>  	return ret ? ret : len;
>  }
> -- 
> 2.7.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170313163107.GA31496%40singhal-Inspiron-5558.
> For more options, visit https://groups.google.com/d/optout.

