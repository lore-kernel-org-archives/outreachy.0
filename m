X-GM-THRID: 6208527977579282432
X-Received: by 10.66.254.104 with SMTP id ah8mr26260383pad.16.1454909404978;
        Sun, 07 Feb 2016 21:30:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.97.225 with SMTP id ed1ls1476910obb.76.gmail; Sun, 07 Feb
 2016 21:30:04 -0800 (PST)
X-Received: by 10.182.135.169 with SMTP id pt9mr24447411obb.17.1454909403868;
        Sun, 07 Feb 2016 21:30:03 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 12si3737121pfb.1.2016.02.07.21.30.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 07 Feb 2016 21:30:03 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id D8B1F1028;
	Mon,  8 Feb 2016 05:30:02 +0000 (UTC)
Date: Sun, 7 Feb 2016 21:30:02 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel@googlegroups.com, arnd@arndb.de,
	y2038@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3] misc: ibmasm: Replace timeval with timespec64
Message-ID: <20160208053002.GA26394@kroah.com>
References: <20151023150749.GA13762@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20151023150749.GA13762@amitoj-Inspiron-3542>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Fri, Oct 23, 2015 at 08:37:49PM +0530, Amitoj Kaur Chawla wrote:
> This patch replaces timeval with timespec64 as 32 bit 'struct timeval'
> will not give current time beyond 2038.
> 
> The patch changes the code to use ktime_get_real_ts64() which returns
> a 'struct timespec64' instead of do_gettimeofday() which returns a
> 'struct timeval'
> 
> This patch also alters the format strings in sprintf() for now.tv_sec
> and now.tv_nsec to incorporate 'long long' on 32 bit architectures and
> leading zeroes respectively.
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> Reviewed-by: Arnd Bergmann <arnd@arndb.de>
> ---
> Changes in v2:
>         -change format string of now.tv_sec to '%llu'
>         -change format string of now.tv_nsec to '%.08lu'
> Changes in v3:
>         -Replace tv_usec with tv_nsec, error made in v2
>         -Build tested
> 
>  drivers/misc/ibmasm/ibmasm.h | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/misc/ibmasm/ibmasm.h b/drivers/misc/ibmasm/ibmasm.h
> index 9b08344..82380ae 100644
> --- a/drivers/misc/ibmasm/ibmasm.h
> +++ b/drivers/misc/ibmasm/ibmasm.h
> @@ -34,6 +34,7 @@
>  #include <linux/kref.h>
>  #include <linux/device.h>
>  #include <linux/input.h>
> +#include <linux/time64.h>
>  
>  /* Driver identification */
>  #define DRIVER_NAME	"ibmasm"
> @@ -53,9 +54,10 @@ extern int ibmasm_debug;
>  
>  static inline char *get_timestamp(char *buf)
>  {
> -	struct timeval now;
> -	do_gettimeofday(&now);
> -	sprintf(buf, "%lu.%lu", now.tv_sec, now.tv_usec);
> +	struct timespec64 now;
> +	ktime_get_real_ts64(&now);
> +	sprintf(buf, "%llu.%.08lu", (long long)now.tv_sec, 
> +					now.tv_nsec / NSEC_PER_USEC);
>  	return buf;
>  }
>  

Always run your patches through checkpatch so that a maintainer doesn't
have to be grumpy and tell you to fix up the obvious checkpatch issues
in it...

thanks,

greg k-h

