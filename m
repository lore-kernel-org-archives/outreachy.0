X-GM-THRID: 5348584849408
X-Received: by 10.182.66.40 with SMTP id c8mr23383758obt.36.1425257353468;
        Sun, 01 Mar 2015 16:49:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.38.39 with SMTP id s36ls1429954qgs.19.gmail; Sun, 01 Mar
 2015 16:49:13 -0800 (PST)
X-Received: by 10.140.151.75 with SMTP id 72mr24190498qhx.3.1425257353314;
        Sun, 01 Mar 2015 16:49:13 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id pc4si1328691pac.0.2015.03.01.16.49.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 16:49:13 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id F2E18475;
	Mon,  2 Mar 2015 00:49:12 +0000 (UTC)
Date: Sun, 1 Mar 2015 16:49:12 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Navya Sri Nizamkari <navyasri.tech@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/4] staging: lustre: Use kstrtol
 instead of sscanf.
Message-ID: <20150302004912.GA12719@kroah.com>
References: <cover.1425200447.git.navyasri.tech@gmail.com>
 <053f80bb1c0f723a2a9586070e6fbe48ff9511fb.1425200447.git.navyasri.tech@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <053f80bb1c0f723a2a9586070e6fbe48ff9511fb.1425200447.git.navyasri.tech@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sun, Mar 01, 2015 at 02:37:26PM +0530, Navya Sri Nizamkari wrote:
> Parsing error in sscanf returns a zero, while kstrtol returns
> non-zero.This patch changes sscanf into kstrtol by making
> appropriate changes in the case of parsing error conditional
> check to fix the following checkpatch.pl warning:
> 
> WARNING: Prefer kstrto<type> to single variable sscanf
> 
> Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
> ---
>  drivers/staging/lustre/lustre/llite/llite_lib.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/lustre/lustre/llite/llite_lib.c b/drivers/staging/lustre/lustre/llite/llite_lib.c
> index 26e8626..44d41dd 100644
> --- a/drivers/staging/lustre/lustre/llite/llite_lib.c
> +++ b/drivers/staging/lustre/lustre/llite/llite_lib.c
> @@ -2150,7 +2150,7 @@ int ll_process_config(struct lustre_cfg *lcfg)
>  	ptr = strrchr(lustre_cfg_string(lcfg, 0), '-');
>  	if (!ptr || !*(++ptr))
>  		return -EINVAL;
> -	if (sscanf(ptr, "%lx", &x) != 1)
> +	if (kstrtol(ptr, 0, &x))
>  		return -EINVAL;
>  	sb = (void *)x;
>  	/* This better be a real Lustre superblock! */
> -- 
> 1.9.1

This doesn't apply to my tree :(

