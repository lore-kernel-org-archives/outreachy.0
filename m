X-GM-THRID: 658290769920
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,cde2f34219a6c029
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.31.97 with SMTP id l61mr9086297yha.10.1424976645841;
        Thu, 26 Feb 2015 10:50:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.48.203 with SMTP id o69ls253515qga.82.gmail; Thu, 26 Feb
 2015 10:50:45 -0800 (PST)
X-Received: by 10.236.111.4 with SMTP id v4mr9679282yhg.55.1424976645683;
        Thu, 26 Feb 2015 10:50:45 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id m1si235013pdc.0.2015.02.26.10.50.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 10:50:45 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 5BB55BE7;
	Thu, 26 Feb 2015 18:50:45 +0000 (UTC)
Date: Thu, 26 Feb 2015 10:50:45 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Vatika Harlalka <vatikaharlalka@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: media: Replaced library
 asm/uaccess.h with linux/uaccess.h
Message-ID: <20150226185045.GA11537@kroah.com>
References: <20150219093817.GA28101@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150219093817.GA28101@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Thu, Feb 19, 2015 at 03:08:17PM +0530, Vatika Harlalka wrote:
> This patch is to replace library asm/uaccess.h with linux/uaccess.h
> as per checkpatch warning.
> 
> Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
> ---
>  drivers/staging/media/parport/bw-qcam.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/parport/bw-qcam.c b/drivers/staging/media/parport/bw-qcam.c
> index 67b9da1..27f9e4a 100644
> --- a/drivers/staging/media/parport/bw-qcam.c
> +++ b/drivers/staging/media/parport/bw-qcam.c
> @@ -73,7 +73,7 @@ OTHER DEALINGS IN THE SOFTWARE.
>  #include <linux/sched.h>
>  #include <linux/videodev2.h>
>  #include <linux/mutex.h>
> -#include <asm/uaccess.h>
> +#include <linux/uaccess.h>
>  #include <media/v4l2-common.h>
>  #include <media/v4l2-ioctl.h>
>  #include <media/v4l2-device.h>
> -- 
> 1.9.1

This file is no longer in Linus's tree :(

