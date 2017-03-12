X-GM-THRID: 6396604644937695232
X-Received: by 10.107.164.151 with SMTP id d23mr8209883ioj.39.1489343587480;
        Sun, 12 Mar 2017 11:33:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.44.99 with SMTP id f90ls1158735otb.24.gmail; Sun, 12 Mar
 2017 11:33:07 -0700 (PDT)
X-Received: by 10.157.31.42 with SMTP id x39mr13345488otd.111.1489343587111;
        Sun, 12 Mar 2017 11:33:07 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id r66si2742540pfb.7.2017.03.12.11.33.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 11:33:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id j5so16662864pfb.3
        for <outreachy-kernel@googlegroups.com>; Sun, 12 Mar 2017 11:33:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=6eWFqpqfYF44ga6VKRn9EZvbAmteitdzGgJVE2FSlx0=;
        b=ZlHL/KLyVXjnP28/xcfM6LI6eb9Hu5HEMdpqYYAFmglOwF5nE4Ir9g9+E/1ZwbX4BR
         QM0JOwgWgn02tEgvJIGhq3F3H6BXshsypwZJ6KdhSehu3le1ciBOKJxE2eL3GtYWlzVl
         gmwi8WMNpdKYm/NaMdGRSlG6H2WbzfFY9oY6eC17eSqjx1aR3gsW3RyTzm3etuQSfMD/
         +zt1+gYBJ6/UDYx392abN1BYVP8eAd+Lkt/m5cnLIfAQ8GdaOS+9A1c6fJ0w3Ac7tdhD
         N3Tq/wM2M+0JJnTaRFk1TRIva+4HqX+iJSGWtfHjxezjkjmbBIdP0rf9PJAooPrHmzLP
         XTaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=6eWFqpqfYF44ga6VKRn9EZvbAmteitdzGgJVE2FSlx0=;
        b=IfGt98Kn9TA+Xd9Ub/BcUijWkmhiQwl5j/rsA7tDHdXdubpGq+854TFP+qZxCZ08KU
         cGBtqAAc4YXy3oNhDCUHh//CTkxWsIBSdd9hm70wQ23LGl0kMof+um0Lcp7x7l9pf7MW
         BeBIDydz+k8n9oTYYp7POo8J/HWCgi0l/N2g7B/Ko3YEQx0YvOjxfxuzXouSIu+FGHBd
         NkLoNsg1bNZdzh6NrvgWrshl80ZHp6t9MZZawAecx+QlHuFJ6MpNdxjXLhkqInGj7fm+
         h43otEBgxzW588B/3RZq55YzrwY104ziSa/SJ1xLpwKg97igaw3iSWYa0n1/x79ZJXiN
         JoNQ==
X-Gm-Message-State: AMke39nR4uj/9EgV4yaMNWdHvZmqhPR7ZJZVGIU82jIdNXzrJi2IP+jlCVPR9AV7bMXfqA==
X-Received: by 10.99.102.71 with SMTP id a68mr32121855pgc.67.1489343586894;
        Sun, 12 Mar 2017 11:33:06 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id i127sm29445400pfe.15.2017.03.12.11.33.06
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 12 Mar 2017 11:33:06 -0700 (PDT)
Date: Sun, 12 Mar 2017 11:33:05 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: simran singhal <singhalsimran0@gmail.com>
Cc: lars@metafoo.de, Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Pete Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-iio@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: ade7753: replace mlock
 with driver private lock
Message-ID: <20170312183304.GB7728@d830.WORKGROUP>
References: <20170312133250.GA7772@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170312133250.GA7772@singhal-Inspiron-5558>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sun, Mar 12, 2017 at 07:02:50PM +0530, simran singhal wrote:
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

Hi Simran, This looks good to me.  Let's see what the
reviewers say.  I think the white space stuff is ok,
since it was right where you were editing. 
alisons

> ---
>  drivers/staging/iio/meter/ade7753.c | 14 ++++++++------
>  1 file changed, 8 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/iio/meter/ade7753.c b/drivers/staging/iio/meter/ade7753.c
> index dfd8b71..ca99d82 100644
> --- a/drivers/staging/iio/meter/ade7753.c
> +++ b/drivers/staging/iio/meter/ade7753.c
> @@ -81,12 +81,14 @@
>   * @tx:         transmit buffer
>   * @rx:         receive buffer
>   * @buf_lock:       mutex to protect tx and rx
> + * @lock:	protect sensor state
>   **/
>  struct ade7753_state {
> -	    struct spi_device   *us;
> -		    struct mutex        buf_lock;
> -			    u8          tx[ADE7753_MAX_TX] ____cacheline_aligned;
> -				    u8          rx[ADE7753_MAX_RX];
> +	struct spi_device   *us;
> +	struct mutex        buf_lock;
> +	struct mutex        lock;	/* protect sensor state */
> +	u8          tx[ADE7753_MAX_TX] ____cacheline_aligned;
> +	u8          rx[ADE7753_MAX_RX];
>  };
>  
>  static int ade7753_spi_write_reg_8(struct device *dev,
> @@ -484,7 +486,7 @@ static ssize_t ade7753_write_frequency(struct device *dev,
>  	if (!val)
>  		return -EINVAL;
>  
> -	mutex_lock(&indio_dev->mlock);
> +	mutex_lock(&st->lock);
>  
>  	t = 27900 / val;
>  	if (t > 0)
> @@ -505,7 +507,7 @@ static ssize_t ade7753_write_frequency(struct device *dev,
>  	ret = ade7753_spi_write_reg_16(dev, ADE7753_MODE, reg);
>  
>  out:
> -	mutex_unlock(&indio_dev->mlock);
> +	mutex_unlock(&st->lock);
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170312133250.GA7772%40singhal-Inspiron-5558.
> For more options, visit https://groups.google.com/d/optout.

