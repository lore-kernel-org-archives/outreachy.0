X-GM-THRID: 3911506198528
X-Received: by 10.66.232.133 with SMTP id to5mr9347125pac.27.1424980824364;
        Thu, 26 Feb 2015 12:00:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.25.42 with SMTP id z10ls322426igf.4.gmail; Thu, 26 Feb 2015
 12:00:24 -0800 (PST)
X-Received: by 10.66.100.198 with SMTP id fa6mr9572840pab.31.1424980824113;
        Thu, 26 Feb 2015 12:00:24 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ri9si243032pdb.1.2015.02.26.12.00.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 12:00:24 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id B6FBEB8A;
	Thu, 26 Feb 2015 20:00:23 +0000 (UTC)
Date: Thu, 26 Feb 2015 12:00:23 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: android: uapi: Fix do not
 add new typedefs
Message-ID: <20150226200023.GA24106@kroah.com>
References: <1424978919-9620-1-git-send-email-yeliztaneroglu@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1424978919-9620-1-git-send-email-yeliztaneroglu@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Thu, Feb 26, 2015 at 09:28:39PM +0200, Yeliz Taneroglu wrote:
> Fix checkpatch.pl issues with
> do not add new typedefs in ion.h
> 
> Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
> ---
>  drivers/staging/android/uapi/ion.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/android/uapi/ion.h b/drivers/staging/android/uapi/ion.h
> index 6aa4956..7e7f87e 100644
> --- a/drivers/staging/android/uapi/ion.h
> +++ b/drivers/staging/android/uapi/ion.h
> @@ -20,7 +20,7 @@
>  #include <linux/ioctl.h>
>  #include <linux/types.h>
>  
> -typedef int ion_user_handle_t;
> +int ion_user_handle_t;

I don't think the change you just made, does what you think it does :(

Care to explain what you did here, and why?

Also, did you build-test this change?

thanks,

greg k-h

