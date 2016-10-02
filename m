X-GM-THRID: 6336886336201424896
X-Received: by 10.157.29.171 with SMTP id y40mr4492527otd.12.1475422696243;
        Sun, 02 Oct 2016 08:38:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.10.75 with SMTP id 69ls5627039otg.14.gmail; Sun, 02 Oct
 2016 08:38:15 -0700 (PDT)
X-Received: by 10.129.132.131 with SMTP id u125mr2503615ywf.71.1475422695938;
        Sun, 02 Oct 2016 08:38:15 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id z73si932331pfa.1.2016.10.02.08.38.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Oct 2016 08:38:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [62.214.2.210])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 34C6B71;
	Sun,  2 Oct 2016 15:38:14 +0000 (UTC)
Date: Sun, 2 Oct 2016 17:38:16 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Anchal Jain <anchalj109@gmail.com>
Cc: arve@android.com, outreachy-kernel@googlegroups.com, knaack.h@gmx.de
Subject: Re: [PATCH 1/2] staging: android: ion: add comment to mutex
Message-ID: <20161002153816.GB20900@kroah.com>
References: <20161002151505.GA4095@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161002151505.GA4095@life-desktop>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Sun, Oct 02, 2016 at 08:45:14PM +0530, Anchal Jain wrote:
> Fix the checkpatch.pl issues:
> CHECK: struct mutes definition without comment
> 
> Signed-off-by: Anchal Jain <anchalj109@gmail.com>
> ---
>  drivers/staging/android/ion/ion.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/android/ion/ion.c b/drivers/staging/android/ion/ion.c
> index 5f94aee..0941b63 100644
> --- a/drivers/staging/android/ion/ion.c
> +++ b/drivers/staging/android/ion/ion.c
> @@ -53,7 +53,7 @@
>  struct ion_device {
>  	struct miscdevice dev;
>  	struct rb_root buffers;
> -	struct mutex buffer_lock;
> +	struct mutex buffer_lock; /* protect from buffer */

Again, this isn't a good comment :(

