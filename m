X-GM-THRID: 6330600437442412544
X-Received: by 10.13.213.22 with SMTP id x22mr9041117ywd.52.1474002083635;
        Thu, 15 Sep 2016 22:01:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.49.22 with SMTP id e22ls5205421otc.32.gmail; Thu, 15 Sep
 2016 22:01:23 -0700 (PDT)
X-Received: by 10.200.54.118 with SMTP id n51mr9193284qtb.29.1474002083248;
        Thu, 15 Sep 2016 22:01:23 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id h124si3592539pfe.0.2016.09.15.22.01.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 22:01:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id p2so2964345pap.3
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 22:01:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=AnXcaMUPpqNaZbTk187hCN8jdIeN65vq5V4EsoftW5E=;
        b=Z/V88WXIg/+4ynEzxZZ1b8yPUCLifvd6MdStFvqm7v/pRphFslLbgj9/t//AWf2SBP
         Uj1jQ1e5pQmg5AdIq07fuPa6fRjMF7mj4+p4Pb9dt5jlsH3ec5vLWcVFNrrbuYxFnRZt
         HcCXwsmr3V2B/puFFGv3DR2yg/l/7C0F8Bu8ujPOgiUAuuLiYy+7PmuCWMb+QB1T7DKU
         uYA2wQOPvEA3Fu3S1iFs8fguDtJhosV8u+9ccldBLIyG8sHd9YBz9f3A5EA8tXH9u+gN
         937LvQRS7MfrLuy5GETm1XZhG5W3HoihPdJt0yd5jL5Zh77BPIhP0vc3VAbV4FoIFQnD
         z+6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=AnXcaMUPpqNaZbTk187hCN8jdIeN65vq5V4EsoftW5E=;
        b=bOIehQ8KsnlgR8Q0DXdkI3U84wosjazgDFSeJFkkPiEs+WTVo3aId/t0DYDTvK7fIq
         pJPPQqOtiuXesPEb/vznnSkSMrT9BQ/sCEGw7c66EW0To7O+XnK5xjGfS0fbzHdI8W92
         O+kdkk/MAlrE+3uOjbqZPPEYc4D/qMUSmu8sxNfEQvtGqZpcwNxFNM/rjcJSp/wxZYMn
         3qI1hQ8/B9tsLPxR+womqC9tFP5oXwn96mR9/MCXv3p1ed4IjcSOLAXa/T9Ga6J6PzbI
         +h9dBUpldljxXxfh8NuloOcC0d4d0SPbgntM7NdJWb5S6hns9XPyHolHPayO5TC/H17d
         VUrA==
X-Gm-Message-State: AE9vXwMy2XURdqDN5O7MinaDNOTjH81Uk+XwplL9OmpDu2EmoEiGpSehTt506uUVL2lPAA==
X-Received: by 10.66.255.42 with SMTP id an10mr20237979pad.57.1474002083027;
        Thu, 15 Sep 2016 22:01:23 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-77-201.dhcp.embarqhsd.net. [67.232.77.201])
        by smtp.gmail.com with ESMTPSA id b64sm48529596pfa.82.2016.09.15.22.01.22
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 15 Sep 2016 22:01:22 -0700 (PDT)
Date: Thu, 15 Sep 2016 22:01:20 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Katie Dunne <kdunne@mail.ccsf.edu>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <michael.hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: adc: Add spaces around
 operator
Message-ID: <20160916050119.GA3124@d830.WORKGROUP>
References: <20160915164248.GA4812@katie-Inspiron-5748>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160915164248.GA4812@katie-Inspiron-5748>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Thu, Sep 15, 2016 at 09:42:48AM -0700, Katie Dunne wrote:
> Issue found by checkpatch.pl

Hi Katie,
This one's a checkpatch error.  I'll just cut/paste the response
Jonathan gave to the person who sent it last week ;)

  "Just to explain a bit more.  Checkpatch is assuming that it is looking
  at two parameters. It's not. That's a string being passed into the
  macro.  It ultimately forms a file name in sysfs.
  p.s. We get patches for this from time to time ;(  Unfortunately it's
  a somewhat obscure case for checkpatch."

But, if this had been a valid patch, I also would add the feedback to
give the driver name in the subject - staging: iio: adc: ad7192: 

Thanks,
alisons


> 
> Signed-off-by: Katie Dunne <kdunne@mail.ccsf.edu>
> ---
>  drivers/staging/iio/adc/ad7280a.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/iio/adc/ad7280a.c b/drivers/staging/iio/adc/ad7280a.c
> index 2177f1d..bc40153 100644
> --- a/drivers/staging/iio/adc/ad7280a.c
> +++ b/drivers/staging/iio/adc/ad7280a.c
> @@ -744,14 +744,14 @@ out:
>  }
>  
>  static IIO_DEVICE_ATTR_NAMED(in_thresh_low_value,
> -		in_voltage-voltage_thresh_low_value,
> +		in_voltage - voltage_thresh_low_value,
>  		S_IRUGO | S_IWUSR,
>  		ad7280_read_channel_config,
>  		ad7280_write_channel_config,
>  		AD7280A_CELL_UNDERVOLTAGE);
>  
>  static IIO_DEVICE_ATTR_NAMED(in_thresh_high_value,
> -		in_voltage-voltage_thresh_high_value,
> +		in_voltage - voltage_thresh_high_value,
>  		S_IRUGO | S_IWUSR,
>  		ad7280_read_channel_config,
>  		ad7280_write_channel_config,
> -- 
> 2.7.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160915164248.GA4812%40katie-Inspiron-5748.
> For more options, visit https://groups.google.com/d/optout.

