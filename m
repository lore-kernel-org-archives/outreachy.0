X-GM-THRID: 6212181078592978944
X-Received: by 10.50.62.49 with SMTP id v17mr17589276igr.1.1446582474829;
        Tue, 03 Nov 2015 12:27:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.8.215 with SMTP id h84ls175934ioi.36.gmail; Tue, 03 Nov
 2015 12:27:53 -0800 (PST)
X-Received: by 10.66.159.168 with SMTP id xd8mr24351853pab.6.1446582473933;
        Tue, 03 Nov 2015 12:27:53 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id vy6si2809783pbc.1.2015.11.03.12.27.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Nov 2015 12:27:53 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (mobile-166-176-185-129.mycingular.net [166.176.185.129])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 67DB090;
	Tue,  3 Nov 2015 20:27:53 +0000 (UTC)
Date: Tue, 3 Nov 2015 12:21:15 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Ioana Ciornei <ciorneiioana@gmail.com>
Cc: outreachy-kernel@googlegroups.com, arve@android.com,
	riandrews@android.com
Subject: Re: [Outreachy kernel] [PATCH v2 5/5] staging: android: add comment
 to spinlock_t definition
Message-ID: <20151103202115.GA30176@kroah.com>
References: <cover.1446388483.git.ciorneiioana@gmail.com>
 <91ba263d643d552220aa67b67045d5dee8fd06f8.1446388483.git.ciorneiioana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <91ba263d643d552220aa67b67045d5dee8fd06f8.1446388483.git.ciorneiioana@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Nov 01, 2015 at 04:38:24PM +0200, Ioana Ciornei wrote:
> Add comment to the spinlock_t fields of struct timed_gpio_data in
> order to follow the linux coding style.
> 
> Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
> ---
> Changes in v2:
>     - nothing
> 
>  drivers/staging/android/timed_gpio.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/android/timed_gpio.c b/drivers/staging/android/timed_gpio.c
> index bcd9924..99f8473 100644
> --- a/drivers/staging/android/timed_gpio.c
> +++ b/drivers/staging/android/timed_gpio.c
> @@ -28,7 +28,7 @@
>  struct timed_gpio_data {
>  	struct timed_output_dev dev;
>  	struct hrtimer timer;
> -	spinlock_t lock;
> +	spinlock_t lock; /* protects the fields of timed_gpio_data */

Not really, that's not what this lock protects, please re-read the
driver to figure this out exactly.  But, I wouldn't really worry about
this, I need to just delete this driver, no one uses it anymore...

thanks,

greg k-h

