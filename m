X-GM-THRID: 6334961343676809216
X-Received: by 10.176.86.88 with SMTP id z24mr893740uaa.5.1474974967572;
        Tue, 27 Sep 2016 04:16:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.30.67 with SMTP id e64ls9089732ioe.1.gmail; Tue, 27 Sep
 2016 04:16:03 -0700 (PDT)
X-Received: by 10.36.236.68 with SMTP id g65mr771083ith.35.1474974963465;
        Tue, 27 Sep 2016 04:16:03 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id um12si409715pab.2.2016.09.27.04.16.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Sep 2016 04:16:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id A33FB2C;
	Tue, 27 Sep 2016 11:16:02 +0000 (UTC)
Date: Tue, 27 Sep 2016 13:16:08 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Anchal Jain <anchalj109@gmail.com>
Cc: Michael.Hennerich@analog.com, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: iio: cdc: add comment to mutex
Message-ID: <20160927111608.GA18326@kroah.com>
References: <20160927104504.GA13155@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160927104504.GA13155@life-desktop>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Tue, Sep 27, 2016 at 04:15:12PM +0530, Anchal Jain wrote:
> Fix the checkpatch.pl issues:
> CHECK: struct mutes definition without comment
> 
> Signed-off-by: Anchal Jain <anchalj109@gmail.com>
> ---
>  drivers/staging/iio/cdc/ad7150.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/iio/cdc/ad7150.c b/drivers/staging/iio/cdc/ad7150.c
> index f6b9a10..88c6ebe 100644
> --- a/drivers/staging/iio/cdc/ad7150.c
> +++ b/drivers/staging/iio/cdc/ad7150.c
> @@ -78,7 +78,7 @@ struct ad7150_chip_info {
>  	u8 mag_timeout[2][2];
>  	int old_state;
>  	char *conversion_mode;
> -	struct mutex state_lock;
> +	struct mutex state_lock; /*generic mutex for cdc and drivers*/

That's the best description for this?  I don't understand this, do you?

Why no ' ' after and before '*'?

thnks,

greg k-h

