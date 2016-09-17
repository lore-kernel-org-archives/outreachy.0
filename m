X-GM-THRID: 6331013322941399040
X-Received: by 10.36.189.70 with SMTP id x67mr923598ite.32.1474137319828;
        Sat, 17 Sep 2016 11:35:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.14.162 with SMTP id 31ls2250901otj.25.gmail; Sat, 17 Sep
 2016 11:35:19 -0700 (PDT)
X-Received: by 10.200.49.145 with SMTP id h17mr1806476qte.56.1474137319453;
        Sat, 17 Sep 2016 11:35:19 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 7si3707612pfw.1.2016.09.17.11.35.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 11:35:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id A999489E;
	Sat, 17 Sep 2016 18:35:18 +0000 (UTC)
Date: Sat, 17 Sep 2016 20:35:22 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Namrata A Shettar <namrataashettar@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>,
	Ian Abbott <abbotti@mev.co.uk>,
	H Hartley Sweeten <hsweeten@visionengravers.com>,
	Leslie Klein <lesliebklein@gmail.com>
Subject: Re: [PATCH] staging: comedi: Optimize code using logical
 short-circuiting
Message-ID: <20160917183522.GA30404@kroah.com>
References: <20160916192454.GA6366@namrata-HP-Pavilion-g6-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160916192454.GA6366@namrata-HP-Pavilion-g6-Notebook-PC>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Sat, Sep 17, 2016 at 12:54:59AM +0530, Namrata A Shettar wrote:
> Optimize code using logical short-circuiting. Two if statements
> having same return value is equivalent to a single if statement with
> condition being the union of the prior two.
> 
> Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
> ---
>  drivers/staging/comedi/comedi_fops.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/comedi/comedi_fops.c b/drivers/staging/comedi/comedi_fops.c
> index 1999eed..0d69ed7 100644
> --- a/drivers/staging/comedi/comedi_fops.c
> +++ b/drivers/staging/comedi/comedi_fops.c
> @@ -791,9 +791,7 @@ static int is_device_busy(struct comedi_device *dev)
>  
>  	for (i = 0; i < dev->n_subdevices; i++) {
>  		s = &dev->subdevices[i];
> -		if (s->busy)
> -			return 1;
> -		if (s->async && comedi_buf_is_mmapped(s))
> +		if (s->busy || (s->async && comedi_buf_is_mmapped(s)))
>  			return 1;

The original code was easier to read.

We write kernel code for developers first, and the compiler second.  In
either case, the compiler will create the same output, you haven't
really saved any logic or speed here.  You have made it harder to read
and follow, so I will have to reject this change, sorry.

thanks,

greg k-h

