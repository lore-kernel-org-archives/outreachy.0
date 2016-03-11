X-GM-THRID: 6257911113762996224
X-Received: by 10.182.243.135 with SMTP id wy7mr7621388obc.8.1457716957733;
        Fri, 11 Mar 2016 09:22:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.122.66 with SMTP id lq2ls207780igb.26.canary; Fri, 11 Mar
 2016 09:22:37 -0800 (PST)
X-Received: by 10.66.193.225 with SMTP id hr1mr7865326pac.34.1457716957331;
        Fri, 11 Mar 2016 09:22:37 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 12si1462298pfb.1.2016.03.11.09.22.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Mar 2016 09:22:37 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 1296EB01;
	Fri, 11 Mar 2016 17:22:37 +0000 (UTC)
Date: Fri, 11 Mar 2016 09:22:36 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Sandhya Bankar <bankarsandhya512@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: rtl8192e: rtllib_softmac:
 Do not print message if kzalloc() failed.
Message-ID: <20160311172236.GB7885@kroah.com>
References: <20160306072701.GA31612@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160306072701.GA31612@sandhya>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Mar 06, 2016 at 12:57:01PM +0530, Sandhya Bankar wrote:
> As kzalloc() has its own messges, so no need of error messsge after kzalloc() failed . Also removing the NULL test whose purpose is to print the error message only and not returning any error. 

Please wrap this changelog entry :(

> 
> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> ---
> Changes in v2:
> * No change.
> *Compile this patch to check nothing is broken.
> 
>  drivers/staging/rtl8192e/rtllib_softmac.c | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192e/rtllib_softmac.c b/drivers/staging/rtl8192e/rtllib_softmac.c
> index 25b5b5e..0c891c8 100644
> --- a/drivers/staging/rtl8192e/rtllib_softmac.c
> +++ b/drivers/staging/rtl8192e/rtllib_softmac.c
> @@ -2980,8 +2980,6 @@ void rtllib_softmac_init(struct rtllib_device *ieee)
>  	for (i = 0; i < 5; i++)
>  		ieee->seq_ctrl[i] = 0;
>  	ieee->pDot11dInfo = kzalloc(sizeof(struct rt_dot11d_info), GFP_ATOMIC);
> -	if (!ieee->pDot11dInfo)
> -		netdev_err(ieee->dev, "Can't alloc memory for DOT11D\n");

Don't you think some error should happen here?  We can't just continue
on like nothing happened...

thanks,

greg k-h

