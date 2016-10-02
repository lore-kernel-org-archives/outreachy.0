X-GM-THRID: 6336889298052186112
X-Received: by 10.46.69.213 with SMTP id s204mr970229lja.18.1475422387766;
        Sun, 02 Oct 2016 08:33:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.28.206 with SMTP id c197ls1153048wmc.6.gmail; Sun, 02 Oct
 2016 08:33:07 -0700 (PDT)
X-Received: by 10.194.222.198 with SMTP id qo6mr935770wjc.11.1475422387276;
        Sun, 02 Oct 2016 08:33:07 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id u64si407721wmf.0.2016.10.02.08.33.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Oct 2016 08:33:07 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,285,1473112800"; 
   d="scan'208";a="239076506"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 02 Oct 2016 17:32:43 +0200
Date: Sun, 2 Oct 2016 17:32:40 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Anchal Jain <anchalj109@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com, 
    jic23@kernel.org
Subject: Re: [Outreachy kernel] [PATCH v3 1/2] staging: iio: cdc: ad7152:
 Add blank line after
In-Reply-To: <20161002152635.GA4163@life-desktop>
Message-ID: <alpine.DEB.2.10.1610021729380.3327@hadrien>
References: <20161002152635.GA4163@life-desktop>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sun, 2 Oct 2016, Anchal Jain wrote:

> declarations to increase readability
> Reply-To:
>
> Add a blank line after a function declaration because local variable
> declarations should be seprated from the function's statments by a blank line
> to increase the readability of a code.

The log message is not formatted properly.  It looks like a newline ended
up in the subject line, and the Reply-to is not needed.

There are people who should be on the CC list who are not.  Are you using
the get_maintainer command shown in the Submit a patch section of the
tutorial?

julia

>
> Signed-off-by: Anchal Jain <anchalj109@gmail.com>
> ---
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
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161002152635.GA4163%40life-desktop.
> For more options, visit https://groups.google.com/d/optout.
>

