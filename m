X-GM-THRID: 6212059851141414912
X-Received: by 10.50.62.49 with SMTP id v17mr22550674igr.1.1446668850902;
        Wed, 04 Nov 2015 12:27:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.136.222 with SMTP id s91ls499052ioi.76.gmail; Wed, 04 Nov
 2015 12:27:30 -0800 (PST)
X-Received: by 10.107.138.221 with SMTP id c90mr4293058ioj.9.1446668850527;
        Wed, 04 Nov 2015 12:27:30 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id iz5si291732pbc.2.2015.11.04.12.27.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Nov 2015 12:27:30 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [104.135.10.71])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 1EBAA8A8;
	Wed,  4 Nov 2015 20:27:30 +0000 (UTC)
Date: Wed, 4 Nov 2015 12:27:29 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Shraddha Barke <shraddha.6596@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] Staging: fwserial: Remove wrapper
 function fwtty_port_put
Message-ID: <20151104202729.GA31218@kroah.com>
References: <1446357881-2672-1-git-send-email-shraddha.6596@gmail.com>
 <1446357881-2672-3-git-send-email-shraddha.6596@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1446357881-2672-3-git-send-email-shraddha.6596@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Nov 01, 2015 at 11:34:41AM +0530, Shraddha Barke wrote:
> Function fwtty_port_put can be replaced with direct calls to
> kref_put. Thus drop the wrapper function.
> 
> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
> ---
>  drivers/staging/fwserial/fwserial.c | 16 +++++-----------
>  drivers/staging/fwserial/fwserial.h |  1 -
>  2 files changed, 5 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/staging/fwserial/fwserial.c b/drivers/staging/fwserial/fwserial.c
> index b3ea4bb..8f4c3c0 100644
> --- a/drivers/staging/fwserial/fwserial.c
> +++ b/drivers/staging/fwserial/fwserial.c
> @@ -893,12 +893,6 @@ static void fwserial_destroy(struct kref *kref)
>  	kfree(serial);
>  }
>  
> -void fwtty_port_put(struct fwtty_port *port)
> -{
> -	kref_put(&port->serial->kref, fwserial_destroy);
> -}
> -EXPORT_SYMBOL(fwtty_port_put);

This function is ok to have as it properly "hides" the implementation.
But, it doesn't need to be exported, and should be made static, can you
make that change instead?

thanks,

greg k-h

