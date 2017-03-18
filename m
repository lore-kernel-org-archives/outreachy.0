X-GM-THRID: 6398760479278235648
X-Received: by 10.157.17.123 with SMTP id p56mr9369640otp.116.1489854633843;
        Sat, 18 Mar 2017 09:30:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.7.18 with SMTP id 18ls2365015ote.1.gmail; Sat, 18 Mar 2017
 09:30:33 -0700 (PDT)
X-Received: by 10.129.118.77 with SMTP id j13mr9987342ywk.33.1489854633339;
        Sat, 18 Mar 2017 09:30:33 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id c123si1871989pfa.4.2017.03.18.09.30.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Mar 2017 09:30:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id 79so5188127pgf.0
        for <outreachy-kernel@googlegroups.com>; Sat, 18 Mar 2017 09:30:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=zV4wNNr9BtHRIqRihsPGPigZ8VPwSn1o7CGx5FEs8fE=;
        b=hhle+pgCEgwOKKiErFLwrfq9R+Q96TWd4oDA1TYra3SO7oaoo+GjA4CSd5ebrbDT8K
         RuNOl/oF9h4zXXdTrt9EN+BSv9C37OihDIgzPzhQNlWduTspOAya4ZfLgcUhh/H2d6vX
         W/pF9DFARhAPbQdI49IlovvQnf6inB+9Omu92bMgAFVzOcoeESCMD7uLkqR9XxDM0xNi
         goIXYaqw3b0JkO2cfiSZBGhM8iod3V7eLabZYkWA/FXsQMuKgv3WKECgitaCkONiIDKC
         Zjxvc6YVMO4Qum59fOVTDVrn0FdiJNYWFq1g0L9xv7rgukIBZnPioab2Sey2KiJ7IhwM
         39Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=zV4wNNr9BtHRIqRihsPGPigZ8VPwSn1o7CGx5FEs8fE=;
        b=gIx5zWRKIcWSDTLE36CcNGehmxnolh6+MFglA5Ao5XtFtt7b+PNo0vFkSKoEWv4Z+K
         yeIhRJZjZcWuP02s5gdzHdh18SAN51ejLSVQGJTE4yy6AhhH4NBD5gsRyEmYmwL/HRwX
         K/6xKKMQonm2RckA/S6wf+P8UdDRONcOv+Z0WlPhnGC3ulo7ddzxP0vfLIGdN1Dek87N
         qUK9Vqk5eVGlvNVPdlHnCb7+nQbqFQi1zEuBnhngJUBAwmzWCGEsr0CmBzRUWvQ6le4X
         ExG0lfYfI78bbdkJZRrqMNPQJ56fjk1qYQWOG9xFaHbKOBzgb40Fw4h4uUnSso+DtYrK
         diyw==
X-Gm-Message-State: AFeK/H3gFYX0uwsg7qt+B5mKYNx4UjilZbJBQLEbn29gnh/9oCZH7TagTcRPeowWrCObGA==
X-Received: by 10.84.232.10 with SMTP id h10mr11101118plk.143.1489854633102;
        Sat, 18 Mar 2017 09:30:33 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id t5sm23755331pgb.36.2017.03.18.09.30.32
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 18 Mar 2017 09:30:32 -0700 (PDT)
Date: Sat, 18 Mar 2017 09:30:31 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Aishwarya Pant <aishpant@gmail.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Barry Song <21cnbao@gmail.com>, outreachy-kernel@googlegroups.com,
	linux-iio@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH v3] staging: iio: accel: adis16201:
 remove iio_dev mlock
Message-ID: <20170318163030.GA1986@d830.WORKGROUP>
References: <20170317214356.GA8369@aishwarya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170317214356.GA8369@aishwarya>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sat, Mar 18, 2017 at 03:13:56AM +0530, Aishwarya Pant wrote:
> In the driver adis16201 read raw does not require an iio_dev->mlock for
> reads. It can run concurrently as adis_read_reg_16() is protected by a
> transaction lock.

Hi Aishwarya,
Perhaps the Subject & logs could be made clearer.
The subject line may suggest you removed mlock form iio_dev stuct.
You removed the locking on raw reads of IIO_CHAN_INFO_CALIBBIAS.
alisons

> 
> Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
> 
> ---
> Changes in v3:
> 	-- Fix change log format
> 	-- Send patch to linuc-iio
> Changes in v2:
> 	-- Remove read lock
> 
>  drivers/staging/iio/accel/adis16201.c | 6 +-----
>  1 file changed, 1 insertion(+), 5 deletions(-)
> 
> diff --git a/drivers/staging/iio/accel/adis16201.c b/drivers/staging/iio/accel/adis16201.c
> index d6c8658..fd2baf2 100644
> --- a/drivers/staging/iio/accel/adis16201.c
> +++ b/drivers/staging/iio/accel/adis16201.c
> @@ -223,17 +223,13 @@ static int adis16201_read_raw(struct iio_dev *indio_dev,
>  		default:
>  			return -EINVAL;
>  		}
> -		mutex_lock(&indio_dev->mlock);
>  		addr = adis16201_addresses[chan->scan_index];
>  		ret = adis_read_reg_16(st, addr, &val16);
> -		if (ret) {
> -			mutex_unlock(&indio_dev->mlock);
> +		if (ret)
>  			return ret;
> -		}
>  		val16 &= (1 << bits) - 1;
>  		val16 = (s16)(val16 << (16 - bits)) >> (16 - bits);
>  		*val = val16;
> -		mutex_unlock(&indio_dev->mlock);
>  		return IIO_VAL_INT;
>  	}
>  	return -EINVAL;
> -- 
> 2.7.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170317214356.GA8369%40aishwarya.
> For more options, visit https://groups.google.com/d/optout.

