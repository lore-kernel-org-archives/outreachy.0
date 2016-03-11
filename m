X-GM-THRID: 6254572813361872896
X-Received: by 10.107.131.230 with SMTP id n99mr5407584ioi.30.1457667355780;
        Thu, 10 Mar 2016 19:35:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.15.78 with SMTP id x75ls1120642ioi.93.gmail; Thu, 10 Mar
 2016 19:35:53 -0800 (PST)
X-Received: by 10.98.16.213 with SMTP id 82mr5408797pfq.8.1457667353725;
        Thu, 10 Mar 2016 19:35:53 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 12si1011847pfb.1.2016.03.10.19.35.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Mar 2016 19:35:53 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (mobile-166-176-184-255.mycingular.net [166.176.184.255])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 328BAC80;
	Fri, 11 Mar 2016 03:35:52 +0000 (UTC)
Date: Thu, 10 Mar 2016 19:35:40 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Janani Ravichandran <janani.rvchndrn@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: comedi: drivers: Remove
 unneeded NULL check before kfree()
Message-ID: <20160311033540.GA4980@kroah.com>
References: <20160224003604.GA3314@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160224003604.GA3314@janani-Inspiron-3521>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Tue, Feb 23, 2016 at 07:36:04PM -0500, Janani Ravichandran wrote:
> Remove NULL check before kfree as it is not needed.
> 
> Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
> ---
>  drivers/staging/comedi/drivers/amplc_pci224.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/comedi/drivers/amplc_pci224.c b/drivers/staging/comedi/drivers/amplc_pci224.c
> index cac011f..656df1a 100644
> --- a/drivers/staging/comedi/drivers/amplc_pci224.c
> +++ b/drivers/staging/comedi/drivers/amplc_pci224.c
> @@ -1096,10 +1096,8 @@ static void pci224_detach(struct comedi_device *dev)
>  	struct pci224_private *devpriv = dev->private;
>  
>  	comedi_pci_detach(dev);
> -	if (devpriv) {
> -		kfree(devpriv->ao_scan_vals);
> -		kfree(devpriv->ao_scan_order);
> -	}
> +	kfree(devpriv->ao_scan_vals);
> +	kfree(devpriv->ao_scan_order);
>  }

Oops, I applied this, but it's obviously wrong.  Think about what you
just changed here...

I'll go revert it now.

greg k-h

