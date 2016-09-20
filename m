X-GM-THRID: 6332120256066093056
X-Received: by 10.98.193.129 with SMTP id i123mr5273889pfg.39.1474353960960;
        Mon, 19 Sep 2016 23:46:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.162.132 with SMTP id l126ls3729348ioe.34.gmail; Mon, 19
 Sep 2016 23:46:00 -0700 (PDT)
X-Received: by 10.67.24.100 with SMTP id ih4mr5649541pad.49.1474353960273;
        Mon, 19 Sep 2016 23:46:00 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 7si5930322pfw.1.2016.09.19.23.46.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 23:46:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 48916360;
	Tue, 20 Sep 2016 06:45:59 +0000 (UTC)
Date: Tue, 20 Sep 2016 08:46:05 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Sandhya Bankar <bankarsandhya512@gmail.com>
Cc: outreachy-kernel@googlegroups.com, abbotti@mev.co.uk,
	hsweeten@visionengravers.com
Subject: Re: [PATCH] Staging: comedi: Use USB_ENDPOINT_DIR_MASK instead of
 USB_DIR_IN
Message-ID: <20160920064605.GA8527@kroah.com>
References: <20160919190019.GA9583@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160919190019.GA9583@sandhya>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Tue, Sep 20, 2016 at 12:30:19AM +0530, Sandhya Bankar wrote:
> USB_ENDPOINT_DIR_MASK and USB_DIR_IN have the same value, 
> but USB_ENDPOINT_DIR_MASK is more correct for use as a mask.
> 
> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> ---
>  drivers/staging/comedi/drivers/dt9812.c |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
> 
> diff --git a/drivers/staging/comedi/drivers/dt9812.c b/drivers/staging/comedi/drivers/dt9812.c
> index 7ebca86..40a7d97 100644
> --- a/drivers/staging/comedi/drivers/dt9812.c
> +++ b/drivers/staging/comedi/drivers/dt9812.c
> @@ -676,7 +676,7 @@ static int dt9812_find_endpoints(struct comedi_device *dev)
>  			dir = USB_DIR_IN;
>  			break;
>  		}
> -		if ((ep->bEndpointAddress & USB_DIR_IN) != dir) {
> +		if ((ep->bEndpointAddress & USB_ENDPOINT_DIR_MASK) != dir) {

This is messy, and I don't think that this code will ever "normally" be
triggered.  Can you rewrite this loop to properly check for the endpoint
type using the functions you used last time, and not trigger off of the
endpoint number?  That would be a much cleaner and saner fix for this.

thanks,

greg k-h

