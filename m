X-GM-THRID: 6334391952263348224
X-Received: by 10.107.19.156 with SMTP id 28mr5156792iot.75.1474860375715;
        Sun, 25 Sep 2016 20:26:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.7.7 with SMTP id 7ls11613580ote.37.gmail; Sun, 25 Sep 2016
 20:26:15 -0700 (PDT)
X-Received: by 10.157.47.9 with SMTP id h9mr3750362otb.81.1474860375128;
        Sun, 25 Sep 2016 20:26:15 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id 7si3847310par.0.2016.09.25.20.26.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Sep 2016 20:26:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id oz2so8119823pac.0
        for <outreachy-kernel@googlegroups.com>; Sun, 25 Sep 2016 20:26:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=oLMsFT6ephBYlAa10SzPncDaWeASTyrsu7Pp0onhuow=;
        b=02SyjhSK8xDlxs4+xPHDvCWOzOEB0DmHAnU/CZy2mrYvb5Rre0t/LC6cTR85X/FmO1
         3hBVN3e3VDJhBunOq464t3mYljBgKlIDClAHoHlCpLSqkvzR3FP20+eHF6YOHYcmvp9t
         wNFDa3BTz5t+ijU+AEjNN1A+GksPp4eGP2OBRYVVLo+Hq5kb/YtNOSH56iveL6iQMH8L
         dAXLjj8hDAKtsuGz/OwwT5AGm9GsjHlQ2HoQ2dNwTrBdVUHgptFAx0RqvCrpi+cxA8kP
         qi5qya3GheI5a+bYY4n534p+wYgUUifl7rJCnzZLdBXRlQlVDzFcBpJpiTTqr5SEQ/lz
         CHvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=oLMsFT6ephBYlAa10SzPncDaWeASTyrsu7Pp0onhuow=;
        b=UAOOo1wvcnXLJjqW2fFh+HSmFvgzEFFrSLh01n1GjG5zuG3fLcSU2GeYhFY65cPi/0
         yV5tnihA7bNg4kwTUgl+7Q6NeB7BqvOyXJE6qZ7hvJu7tIEcAl/SQdnCYfN/19bqWoRD
         dGkyrPtt691rZUNl9ZcHGHfHZRnk1Oq2JAGEZLMo+GKYjsVzXYgqEgmekUodULi/RW7d
         LY+vRTKfZswiVksclsZqxzVnyccHzb7oZUiLEAH8dM6/fP6Kxdscah/6uQQC+KCTzkwA
         hd3Gc2bbmGTXljHxPXXuSSmDoTfev4MDIr7UI+6nVwKSjinMFrRHxP13Dp7DSaqcegAA
         UyDw==
X-Gm-Message-State: AA6/9RnS9Lzc9lsnnOpVUxWo0M5mh19+AR9hvSk0xaKYZJmjP7e3e+a8TbWVskegydEyAw==
X-Received: by 10.66.227.132 with SMTP id sa4mr12801900pac.176.1474860374924;
        Sun, 25 Sep 2016 20:26:14 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-77-201.dhcp.embarqhsd.net. [67.232.77.201])
        by smtp.gmail.com with ESMTPSA id y11sm24545918pfa.4.2016.09.25.20.26.14
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 25 Sep 2016 20:26:14 -0700 (PDT)
Date: Sun, 25 Sep 2016 20:26:12 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: sayli karnik <karniksayli1995@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>
Subject: Re: [Outreachy kernel] [PATCH] drivers: iio: temperature: Fix sparse
 endianness warnings
Message-ID: <20160926032611.GA7995@d830.WORKGROUP>
References: <20160925215530.GA7543@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160925215530.GA7543@sayli-HP-15-Notebook-PC>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Mon, Sep 26, 2016 at 03:25:30AM +0530, sayli karnik wrote:
> Fix following endianness warnings:
> warning: cast to restricted __be16
> warning: cast to restricted __be32
> 
> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>

Hi Sayli - Thanks for picking up one of these Endianess issues!

Please take another look at what the function was trying to do before
your patch.  Although the definition of 2 bufs may be part of the
solution, 2 reads won't be.  

The solution may be what you have started: define 2 different size bufs
based on the storage_bytes but you'll need to then move the reads into
the appropriate case statement. Maybe you'll come up with another
option.

In v2 - please also:
- path is: iio: temperature: maxim_thermocouple: 
- commit msg needs to be something like: use __be16 type for incoming read data
  (say what you end up changing....in a nutshell ;))
- see Lar's msg http://marc.info/?l=linux-iio&m=147481589111338&w=2 
  and try to distinguish in your changelog if it's cosmetic or bug.
- You should keep the reference to the tool you used to find the bug,
  and the warning you fixed.  It's nice to be able to grep for those.
- There's a checkpatch CHECK hiding in there. You didn't put it in, but
  since you are probably touching that line of code. Fix it. Your checkpatch
  check should have caught that. 

Questions....please ask,
alisons


> ---
>  drivers/iio/temperature/maxim_thermocouple.c | 13 +++++++++----
>  1 file changed, 9 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/iio/temperature/maxim_thermocouple.c b/drivers/iio/temperature/maxim_thermocouple.c
> index 39dd202..3e99056 100644
> --- a/drivers/iio/temperature/maxim_thermocouple.c
> +++ b/drivers/iio/temperature/maxim_thermocouple.c
> @@ -123,19 +123,24 @@ static int maxim_thermocouple_read(struct maxim_thermocouple_data *data,
>  {
>  	unsigned int storage_bytes = data->chip->read_size;
>  	unsigned int shift = chan->scan_type.shift + (chan->address * 8);
> -	unsigned int buf;
> +	__be16 buf1;
> +	__be32 buf2;
>  	int ret;
>  
> -	ret = spi_read(data->spi, (void *) &buf, storage_bytes);
> +	ret = spi_read(data->spi, (void *) &buf1, storage_bytes);
> +	if (ret)
> +		return ret;
> +
> +	ret = spi_read(data->spi, (void *) &buf2, storage_bytes);
>  	if (ret)
>  		return ret;
>  
>  	switch (storage_bytes) {
>  	case 2:
> -		*val = be16_to_cpu(buf);
> +		*val = be16_to_cpu(buf1);
>  		break;
>  	case 4:
> -		*val = be32_to_cpu(buf);
> +		*val = be32_to_cpu(buf2);
>  		break;
>  	}
>  
> -- 
> 2.7.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160925215530.GA7543%40sayli-HP-15-Notebook-PC.
> For more options, visit https://groups.google.com/d/optout.

