X-GM-THRID: 6209338350434779136
X-Received: by 10.129.145.71 with SMTP id i68mr19584992ywg.1.1445931029184;
        Tue, 27 Oct 2015 00:30:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.250.164 with SMTP id zd4ls1884134obc.76.gmail; Tue, 27 Oct
 2015 00:30:28 -0700 (PDT)
X-Received: by 10.182.181.3 with SMTP id ds3mr33636353obc.5.1445931028847;
        Tue, 27 Oct 2015 00:30:28 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id sm2si2608865pab.0.2015.10.27.00.30.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2015 00:30:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x231.google.com with SMTP id fv9so223753983pac.3
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Oct 2015 00:30:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=e2SrbaAR5K+cgDbyOlM93VMSeAWJibMhnq25J18dNeM=;
        b=W1h84VcYytPbfk8t/WJ+FvV3+rFc9EmiRSSLUqon/gC5hPKqVU/R7PMWEisFri7UvA
         WgO8W2JiEFJydXd+HzdXowe6sLUXOKczgbL5jlVTMKctRnKGAWAzC6COonOUplHHirIT
         dCDgmxeujqLvL23rUfb9voR9Jzjck+6ufbFY+8E+5uU14kqT9qy0xKN6XwwBVHRgdOid
         6dlZKjYpUICG7wo6Pu5TqwPi1gQRbzVhfupgB4Kd+dF4aNAEnL/QkX5p2ynuu9kXB73I
         UWX+tNopAyLcoGUukthQIEPs71onctSJUegTJ3BdVu8EH8BYtIfQ1WndmfO/IFxhPrY5
         ZEqg==
X-Received: by 10.68.129.228 with SMTP id nz4mr26574539pbb.41.1445931028681;
        Tue, 27 Oct 2015 00:30:28 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([122.169.138.117])
        by smtp.gmail.com with ESMTPSA id wq1sm3393769pbc.49.2015.10.27.00.30.26
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Tue, 27 Oct 2015 00:30:28 -0700 (PDT)
Date: Tue, 27 Oct 2015 13:00:12 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel@googlegroups.com, y2038@lists.linaro.org
Subject: Re: [Outreachy kernel] [PATCH] scsi: bfa: bfad_bsg: Use
 ktime_get_real_seconds()
Message-ID: <20151027073012.GB15572@sudip-pc>
References: <20151024220358.GA17274@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20151024220358.GA17274@amitoj-Inspiron-3542>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Sun, Oct 25, 2015 at 03:33:58AM +0530, Amitoj Kaur Chawla wrote:
> 32 bit systems using 'struct timeval' will break in the year 2038, so
> we modify the code appropriately.
> 
> This patch replaces the use of struct timeval and do_gettimeofday() with
> ktime_get_real_seconds().
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
>  drivers/scsi/bfa/bfad_bsg.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/scsi/bfa/bfad_bsg.c b/drivers/scsi/bfa/bfad_bsg.c
> index 023b9d4..ba2de73 100644
> --- a/drivers/scsi/bfa/bfad_bsg.c
> +++ b/drivers/scsi/bfa/bfad_bsg.c
> @@ -16,6 +16,7 @@
>   */
>  
>  #include <linux/uaccess.h>
> +#include <linux/ktime.h>
>  #include "bfad_drv.h"
>  #include "bfad_im.h"
>  #include "bfad_bsg.h"
> @@ -2093,13 +2094,12 @@ bfad_iocmd_fcpim_cfg_profile(struct bfad_s *bfad, void *cmd, unsigned int v_cmd)
>  {
>  	struct bfa_bsg_fcpim_profile_s *iocmd =
>  				(struct bfa_bsg_fcpim_profile_s *)cmd;
> -	struct timeval  tv;
>  	unsigned long	flags;
>  
> -	do_gettimeofday(&tv);
>  	spin_lock_irqsave(&bfad->bfad_lock, flags);
>  	if (v_cmd == IOCMD_FCPIM_PROFILE_ON)
> -		iocmd->status = bfa_fcpim_profile_on(&bfad->bfa, tv.tv_sec);
> +		iocmd->status = bfa_fcpim_profile_on(&bfad->bfa, 

trailing whitespace.

regards
sudip

