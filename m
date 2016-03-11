X-GM-THRID: 6255948564490354688
X-Received: by 10.140.152.148 with SMTP id 142mr8314712qhy.10.1457721324171;
        Fri, 11 Mar 2016 10:35:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.38.133 with SMTP id g5ls1041643obk.43.gmail; Fri, 11 Mar
 2016 10:35:23 -0800 (PST)
X-Received: by 10.182.148.71 with SMTP id tq7mr7906440obb.21.1457721323781;
        Fri, 11 Mar 2016 10:35:23 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id sf5si1566695pac.1.2016.03.11.10.35.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Mar 2016 10:35:23 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 5B844C7C;
	Fri, 11 Mar 2016 18:35:22 +0000 (UTC)
Date: Fri, 11 Mar 2016 10:35:22 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Rakhi Sharma <rakhish1994@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: android: Remove unused
 variable ret for immediate return result.
Message-ID: <20160311183522.GA2731@kroah.com>
References: <1456576505-22229-1-git-send-email-rakhish1994@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1456576505-22229-1-git-send-email-rakhish1994@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sat, Feb 27, 2016 at 06:05:05PM +0530, Rakhi Sharma wrote:
> This patch remove unused ret variable and merge two line for immediate
> result.
> This is done using Coccinelle.Semantic patch used is:
> 
> @@
> expression ret;
> identifier f;
> @@
> 
> -ret =
> +return
>      f(...);
> -return ret;
> 
> Signed-off-by: Rakhi Sharma <rakhish1994@gmail.com>
> ---
>  drivers/staging/android/ion/hisilicon/hi6220_ion.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/android/ion/hisilicon/hi6220_ion.c b/drivers/staging/android/ion/hisilicon/hi6220_ion.c
> index e3c07b2..9922710 100644
> --- a/drivers/staging/android/ion/hisilicon/hi6220_ion.c
> +++ b/drivers/staging/android/ion/hisilicon/hi6220_ion.c
> @@ -216,8 +216,7 @@ static int __init hi6220_ion_init(void)
>  {
>  	int ret;
>  
> -	ret = platform_driver_register(&hi6220_ion_driver);
> -	return ret;
> +	return platform_driver_register(&hi6220_ion_driver);

And now you have a build warning :(

Please always test-build your patches...


