X-GM-THRID: 6264586442940350464
X-Received: by 10.107.157.10 with SMTP id g10mr24845708ioe.28.1458587693726;
        Mon, 21 Mar 2016 12:14:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.78.200 with SMTP id d8ls1016524igx.35.gmail; Mon, 21 Mar
 2016 12:14:53 -0700 (PDT)
X-Received: by 10.66.101.4 with SMTP id fc4mr23888760pab.48.1458587693207;
        Mon, 21 Mar 2016 12:14:53 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 12si3651305pfb.1.2016.03.21.12.14.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Mar 2016 12:14:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-138-182-192.hsd1.ma.comcast.net [50.138.182.192])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 0B7AC7D;
	Mon, 21 Mar 2016 19:14:51 +0000 (UTC)
Date: Mon, 21 Mar 2016 15:14:50 -0400
From: Greg KH <gregkh@linuxfoundation.org>
To: Juliana Rodrigues <juliana.orod@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] iio: humidity: hdc100x: removed
 unnecessary else after return
Message-ID: <20160321191450.GA27613@kroah.com>
References: <20160313001531.GA22845@spock>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160313001531.GA22845@spock>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sat, Mar 12, 2016 at 09:15:31PM -0300, Juliana Rodrigues wrote:
> This patch removes an else and a break after a return, fixing a checkpatch.pl warning.
> 
> WARNING: else is not generally useful after a break or return
> +                       return IIO_VAL_FRACTIONAL;
> +               } else {
> 
> Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
> ---
>  drivers/iio/humidity/hdc100x.c | 8 +++-----
>  1 file changed, 3 insertions(+), 5 deletions(-)

I can not accept patches for outreachy outside of drivers/staging/
sorry.

greg k-h

