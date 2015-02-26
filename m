X-GM-THRID: 3468768051200
X-Received: by 10.66.97.10 with SMTP id dw10mr9158861pab.48.1424975908311;
        Thu, 26 Feb 2015 10:38:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.164.93 with SMTP id n90ls288653ioe.7.gmail; Thu, 26 Feb
 2015 10:38:28 -0800 (PST)
X-Received: by 10.68.104.5 with SMTP id ga5mr9187986pbb.2.1424975908082;
        Thu, 26 Feb 2015 10:38:28 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id bo1si231754pbc.0.2015.02.26.10.38.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 10:38:28 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id C1A0EBBC;
	Thu, 26 Feb 2015 18:38:27 +0000 (UTC)
Date: Thu, 26 Feb 2015 10:38:27 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: aybuke ozdemir <aybuke.147@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 2/2] Staging: i2o: Corrected code
 indentation
Message-ID: <20150226183827.GA32036@kroah.com>
References: <1424905939-11537-1-git-send-email-aybuke.147@gmail.com>
 <1424905939-11537-2-git-send-email-aybuke.147@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1424905939-11537-2-git-send-email-aybuke.147@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Thu, Feb 26, 2015 at 01:12:19AM +0200, aybuke ozdemir wrote:
> WARNING: suspect code indent for conditional statements(8,12)
> spaces are converting to tabs suspect code indent is deleted.
> That was found by running checkpatch.pl
> 
> Signed-off-by: aybuke ozdemir <aybuke.147@gmail.com>
> ---
>  drivers/staging/i2o/device.c | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/staging/i2o/device.c b/drivers/staging/i2o/device.c
> index e47496c..cd6da9c 100644
> --- a/drivers/staging/i2o/device.c
> +++ b/drivers/staging/i2o/device.c
> @@ -260,10 +260,10 @@ static int i2o_device_add(struct i2o_controller *c, i2o_lct_entry *entry)
>  
>  	/* create user entries referring to this device */
>  	list_for_each_entry(tmp, &c->devices, list)
> -	    if ((tmp->lct_data.user_tid == i2o_dev->lct_data.tid)
> -		&& (tmp != i2o_dev)) {
> -		rc = sysfs_create_link(&tmp->device.kobj,
> -				       &i2o_dev->device.kobj, "user");
> +		if ((tmp->lct_data.user_tid == i2o_dev->lct_data.tid)
> +						&& (tmp != i2o_dev)) {
> +			rc = sysfs_create_link(&tmp->device.kobj,
> +						&i2o_dev->device.kobj, "user");
>  		if (rc)
>  			goto rmlink1;

Something is still wrong with the indentation here, sorry.  Look at the
{ placement.

thanks,

greg k-h

