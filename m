X-GM-THRID: 3439324037120
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,80159bc5318acee5
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.52.57.169 with SMTP id j9mr9199028vdq.5.1424976708198;
        Thu, 26 Feb 2015 10:51:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.85.85 with SMTP id m79ls268798qgd.44.gmail; Thu, 26 Feb
 2015 10:51:47 -0800 (PST)
X-Received: by 10.236.61.197 with SMTP id w45mr9092746yhc.54.1424976707919;
        Thu, 26 Feb 2015 10:51:47 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ks4si222848pbc.1.2015.02.26.10.51.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 10:51:47 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 9651BBE7;
	Thu, 26 Feb 2015 18:51:47 +0000 (UTC)
Date: Thu, 26 Feb 2015 10:51:47 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: aybuke ozdemir <aybuke.147@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: media: Replaced library
 asm/uaccess.h with
Message-ID: <20150226185147.GA16811@kroah.com>
References: <1424898540-7853-1-git-send-email-aybuke.147@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1424898540-7853-1-git-send-email-aybuke.147@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Wed, Feb 25, 2015 at 11:09:00PM +0200, aybuke ozdemir wrote:
> This patch is to replace library asm/uaccess.h with linux/uaccess.h
> as per checkpatch warning.
> 
> Signed-off-by: aybuke ozdemir <aybuke.147@gmail.com>
> ---
>  drivers/staging/media/parport/c-qcam.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/parport/c-qcam.c b/drivers/staging/media/parport/c-qcam.c
> index b9010bd..740a661 100644
> --- a/drivers/staging/media/parport/c-qcam.c
> +++ b/drivers/staging/media/parport/c-qcam.c
> @@ -36,7 +36,7 @@
>  #include <linux/mutex.h>
>  #include <linux/jiffies.h>
>  #include <linux/videodev2.h>
> -#include <asm/uaccess.h>
> +#include <linux/uaccess.h>
>  #include <media/v4l2-device.h>
>  #include <media/v4l2-common.h>
>  #include <media/v4l2-ioctl.h>

This file is no longer in Linus's tree :(

