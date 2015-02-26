X-GM-THRID: 2273030701056
X-Received: by 10.236.96.234 with SMTP id r70mr10061062yhf.39.1424992436776;
        Thu, 26 Feb 2015 15:13:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.43.197 with SMTP id y5ls15512igl.26.canary; Thu, 26 Feb
 2015 15:13:56 -0800 (PST)
X-Received: by 10.66.140.66 with SMTP id re2mr10353447pab.29.1424992436557;
        Thu, 26 Feb 2015 15:13:56 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id m1si306297pdc.0.2015.02.26.15.13.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 15:13:56 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 4DDB5B1B;
	Thu, 26 Feb 2015 23:13:56 +0000 (UTC)
Date: Thu, 26 Feb 2015 15:13:56 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Gulsah Kose <gulsah.1004@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/7] staging: ft1000: ft1000-pcmcia:
 Used "linux" instead of "asm".
Message-ID: <20150226231356.GB402@kroah.com>
References: <cover.1424569663.git.gulsah.1004@gmail.com>
 <05bf8f78a414fb666c44db4620fac95a1e1e925b.1424569663.git.gulsah.1004@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <05bf8f78a414fb666c44db4620fac95a1e1e925b.1424569663.git.gulsah.1004@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sun, Feb 22, 2015 at 03:51:58AM +0200, Gulsah Kose wrote:
> Used "linux" instead of "asm" and removed following checkpatch.pl warning:
> WARNING: Use #include <linux/io.h> instead of <asm/io.h>
> 
> Signed-off-by: Gulsah Kose <gulsah.1004@gmail.com>
> ---
>  drivers/staging/ft1000/ft1000-pcmcia/ft1000_hw.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/ft1000/ft1000-pcmcia/ft1000_hw.c b/drivers/staging/ft1000/ft1000-pcmcia/ft1000_hw.c
> index 017c3b9..5358dac 100644
> --- a/drivers/staging/ft1000/ft1000-pcmcia/ft1000_hw.c
> +++ b/drivers/staging/ft1000/ft1000-pcmcia/ft1000_hw.c
> @@ -28,7 +28,7 @@
>  #include <linux/timer.h>
>  #include <linux/interrupt.h>
>  #include <linux/in.h>
> -#include <asm/io.h>
> +#include <linux/io.h>
>  #include <asm/bitops.h>
>  
>  #include <linux/netdevice.h>


Please just fix both asm/ include file issues in the same patch, not in
2 different patches.

thanks,

greg k-h

