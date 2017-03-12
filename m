X-GM-THRID: 6396588867730800640
X-Received: by 10.129.131.133 with SMTP id t127mr13510128ywf.171.1489326965011;
        Sun, 12 Mar 2017 06:56:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.141.136 with SMTP id p130ls3651306iod.9.gmail; Sun, 12 Mar
 2017 06:56:04 -0700 (PDT)
X-Received: by 10.99.36.131 with SMTP id k125mr13733106pgk.25.1489326964257;
        Sun, 12 Mar 2017 06:56:04 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id y203si2265261pfb.0.2017.03.12.06.56.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 06:56:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [88.128.80.189])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 093578F5;
	Sun, 12 Mar 2017 13:56:01 +0000 (UTC)
Date: Sun, 12 Mar 2017 14:55:43 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Varsha Rao <rvarsha016@gmail.com>
Cc: Ian Abbott <abbotti@mev.co.uk>,
	H Hartley Sweeten <hsweeten@visionengravers.com>,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: comedi: Compress return logic into one line.
Message-ID: <20170312135543.GA1209@kroah.com>
References: <58c53fae.4737620a.4ce3e.692c@mx.google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <58c53fae.4737620a.4ce3e.692c@mx.google.com>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Sun, Mar 12, 2017 at 06:01:35PM +0530, Varsha Rao wrote:
> Simplify function return by merging assignment and return into a single
> line. The following coccinelle script is used to fix this issue.
> 
> @@
> expression e,ret;
> @@
> 
> -ret = e;
> -return ret;
> +return e;
> 
> Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
> ---
>  drivers/staging/comedi/drivers.c             | 3 +--
>  drivers/staging/comedi/drivers/cb_pcidas64.c | 8 ++------
>  2 files changed, 3 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/staging/comedi/drivers.c b/drivers/staging/comedi/drivers.c
> index a5bf2cc..76e399c 100644
> --- a/drivers/staging/comedi/drivers.c
> +++ b/drivers/staging/comedi/drivers.c
> @@ -86,8 +86,7 @@ static void comedi_clear_hw_dev(struct comedi_device *dev)
>   */
>  void *comedi_alloc_devpriv(struct comedi_device *dev, size_t size)
>  {
> -	dev->private = kzalloc(size, GFP_KERNEL);
> -	return dev->private;
> +	return kzalloc(size, GFP_KERNEL);

That broke the driver :(

Please be more careful in your review.

thanks,

greg k-h

