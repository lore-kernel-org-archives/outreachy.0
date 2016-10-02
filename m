X-GM-THRID: 6335442483781042176
X-Received: by 10.66.134.36 with SMTP id ph4mr4865087pab.9.1475421233906;
        Sun, 02 Oct 2016 08:13:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.23.236 with SMTP id j99ls8688835otj.7.gmail; Sun, 02 Oct
 2016 08:13:53 -0700 (PDT)
X-Received: by 10.129.112.149 with SMTP id l143mr4542109ywc.20.1475421233545;
        Sun, 02 Oct 2016 08:13:53 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 203si258104pfu.0.2016.10.02.08.13.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Oct 2016 08:13:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [62.214.2.210])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id C8BB092;
	Sun,  2 Oct 2016 15:13:52 +0000 (UTC)
Date: Sun, 2 Oct 2016 17:11:55 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Anchal Jain <anchalj109@gmail.com>
Cc: michael.hennerich@analog.com, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] staging: iio: cdc: ad7150: add
 comment to mutex
Message-ID: <20161002151155.GC10868@kroah.com>
References: <20160928180943.GA14179@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160928180943.GA14179@life-desktop>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Wed, Sep 28, 2016 at 11:39:51PM +0530, Anchal Jain wrote:
> Fix the checkpatch.pl issues:
> CHECK: struct mutex definition without comment
> 
> Signed-off-by: Anchal Jain <anchalj109@gmail.com>
> ---
>  drivers/staging/iio/cdc/ad7150.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/iio/cdc/ad7150.c b/drivers/staging/iio/cdc/ad7150.c
> index f6b9a10..13709bf 100644
> --- a/drivers/staging/iio/cdc/ad7150.c
> +++ b/drivers/staging/iio/cdc/ad7150.c
> @@ -78,7 +78,7 @@ struct ad7150_chip_info {
>  	u8 mag_timeout[2][2];
>  	int old_state;
>  	char *conversion_mode;
> -	struct mutex state_lock;
> +	struct mutex state_lock; /* protect hardware state */
>  };
>  
>  /*

Same review comment here.

