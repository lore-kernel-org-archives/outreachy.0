X-GM-THRID: 6202526188194234368
X-Received: by 10.66.90.196 with SMTP id by4mr35160010pab.44.1444193700086;
        Tue, 06 Oct 2015 21:55:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.133.94 with SMTP id h91ls108948iod.11.gmail; Tue, 06 Oct
 2015 21:54:59 -0700 (PDT)
X-Received: by 10.107.7.87 with SMTP id 84mr36325432ioh.9.1444193699301;
        Tue, 06 Oct 2015 21:54:59 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id zg1si4910189pbb.2.2015.10.06.21.54.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Oct 2015 21:54:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id hy16so8979782pad.1
        for <outreachy-kernel@googlegroups.com>; Tue, 06 Oct 2015 21:54:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=SVStV49FdeMVE00oCB4D3Vw+wnhw8jNbmN3rkqbZWWQ=;
        b=OQsF90dlfrR/PxFxuZJNykvJrLuWO2U/8t73gJgleW7AR4tXSJrwJ4DlooBqdZRjUG
         sw/U8ev0KjcQauxElQMRKaAY53BDQhXGz5gnK86dFJAPoin1NAtBIQCcYrBrGdxQ74P7
         aMF+PIUFJgPH2cipLQSBH/kDi8kdE8cgBO+dcPy+R8VqDaCk/dbtxti3Zt+g6DmwTcza
         ST/0gEtqu0zfXLOJZBW2fnXaNclr6pTEn/Q1yIQzaOQDn6DjgdSY0yeOb0QN33bgkVYV
         V/PCA+97PMcJBpxbXJxw01HBiNQbVsLWLQLYpEJk5rnuWY7qeg8xj3POid6I2kzX4Ksn
         0E3Q==
X-Received: by 10.68.65.104 with SMTP id w8mr51399757pbs.48.1444193699166;
        Tue, 06 Oct 2015 21:54:59 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([49.206.251.3])
        by smtp.gmail.com with ESMTPSA id su3sm36580337pbc.83.2015.10.06.21.54.57
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Tue, 06 Oct 2015 21:54:58 -0700 (PDT)
Date: Wed, 7 Oct 2015 10:24:53 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Shraddha Barke <shraddha.6596@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Jonathan Cameron <jic23@kernel.org>
Subject: Re: [Outreachy kernel] [PATCH] Staging: iio: meter: Use direct
 return instead of gotos
Message-ID: <20151007045453.GB4070@sudip-pc>
References: <1444138140-13818-1-git-send-email-shraddha.6596@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1444138140-13818-1-git-send-email-shraddha.6596@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Tue, Oct 06, 2015 at 06:59:00PM +0530, Shraddha Barke wrote:
> Use direct return instead of gotos. Thus remove the unnecessary
> label error_ret.
> 
> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
> Suggested-by: Jonathan Cameron <jic23@kernel.org>
> ---
> --- a/drivers/staging/iio/meter/ade7758_trigger.c
> +++ b/drivers/staging/iio/meter/ade7758_trigger.c
<snip>
> @@ -89,14 +89,11 @@ int ade7758_probe_trigger(struct iio_dev *indio_dev)
>  	if (ret)
>  		goto error_free_irq;
>  
> -	return 0;
> -
But isn't this changing the logic? If iio_trigger_register() return 0 then we
used to return 0. But now what is the difference between the success
path and the error path?

>  error_free_irq:
>  	free_irq(st->us->irq, st->trig);
>  error_free_trig:
>  	iio_trigger_free(st->trig);
> -error_ret:
> -	return ret;
> +	return 0;
You are returning 0 (success) in all cases now, even if it is an error.

regards
sudip

