X-GM-THRID: 3468768051200
X-Received: by 10.182.91.79 with SMTP id cc15mr5614922obb.20.1424905224540;
        Wed, 25 Feb 2015 15:00:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.236.7 with SMTP id uq7ls116066obc.68.gmail; Wed, 25 Feb
 2015 15:00:24 -0800 (PST)
X-Received: by 10.182.231.199 with SMTP id ti7mr3813123obc.7.1424905224259;
        Wed, 25 Feb 2015 15:00:24 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id nt14si3472783pab.2.2015.02.25.15.00.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Feb 2015 15:00:24 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id BFC52B14;
	Wed, 25 Feb 2015 23:00:23 +0000 (UTC)
Date: Wed, 25 Feb 2015 15:00:23 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: aybuke ozdemir <aybuke.147@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/3] Staging: i2o: Remove unnecessary
 'out of memory' message
Message-ID: <20150225230023.GB14612@kroah.com>
References: <1424902222-10105-1-git-send-email-aybuke.147@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1424902222-10105-1-git-send-email-aybuke.147@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Thu, Feb 26, 2015 at 12:10:20AM +0200, aybuke ozdemir wrote:
> This patch removes unnecessay out of memory message fixing the following
> checkpach.pl warning in device.c
> 
> Signed-off-by: aybuke ozdemir <aybuke.147@gmail.com>
> ---
>  drivers/staging/i2o/device.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/staging/i2o/device.c b/drivers/staging/i2o/device.c
> index 2af2255..162a887 100644
> --- a/drivers/staging/i2o/device.c
> +++ b/drivers/staging/i2o/device.c
> @@ -566,7 +566,6 @@ int i2o_parm_table_get(struct i2o_device *dev, int oper, int group,
>  
>  	opblk = kmalloc(size, GFP_KERNEL);
>  	if (opblk == NULL) {
> -		printk(KERN_ERR "i2o: no memory for query buffer.\n");
>  		return -ENOMEM;
>  	}
>  
> -- 
> 1.9.1

I'll take these, but please stay away from the i2o drivers, they are
going to be removed from the kernel soon and are not worth the cleanup.

thanks,

greg k-h

