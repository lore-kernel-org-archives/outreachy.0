X-GM-THRID: 5958272024576
X-Received: by 10.42.60.132 with SMTP id q4mr28207106ich.5.1425315707187;
        Mon, 02 Mar 2015 09:01:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.34.131 with SMTP id l3ls1916885qgl.5.gmail; Mon, 02 Mar
 2015 09:01:46 -0800 (PST)
X-Received: by 10.236.11.196 with SMTP id 44mr27166704yhx.31.1425315706936;
        Mon, 02 Mar 2015 09:01:46 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id xj4si1579916pbc.2.2015.03.02.09.01.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2015 09:01:46 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 9DDE799A;
	Mon,  2 Mar 2015 17:01:46 +0000 (UTC)
Date: Mon, 2 Mar 2015 09:01:46 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Tina Johnson <tinajohnson.1234@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 1/2] staging: lustre: lustre:
 libcfs: Replaced printk() with pr_err()
Message-ID: <20150302170146.GB15211@kroah.com>
References: <1425314747-9532-1-git-send-email-tinajohnson.1234@gmail.com>
 <1425314747-9532-2-git-send-email-tinajohnson.1234@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1425314747-9532-2-git-send-email-tinajohnson.1234@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Mon, Mar 02, 2015 at 10:15:46PM +0530, Tina Johnson wrote:
> The following checkpatch warning was fixed:
> 
> Prefer [subsystem eg: netdev]_err([subsystem]dev
> 
> with the help of Coccinelle. The following semantic patch was used:
> 
> @a@
> expression e;
> @@
> 
> printk(e,...);
> 
> @script:python b@
> e << a.e;
> y;
> @@
> 
> import re
> match = re.match('KERN_ERR ', e);
> if (match == None):
>     cocci.include_match(False)
> 
> else:
>     m = re.sub('KERN_ERR ', '', e)
>     coccinelle.y = m;
> 
> @c@
> expression a.e;
> identifier b.y;
> @@
> 
> - printk(e,
> + pr_err(y,
>   ...);
> 
> Signed-off-by: Tina Johnson <tinajohnson.1234@gmail.com>
> ---
>  drivers/staging/lustre/lustre/libcfs/module.c |    4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/lustre/lustre/libcfs/module.c b/drivers/staging/lustre/lustre/libcfs/module.c
> index e35f598..97597e0 100644
> --- a/drivers/staging/lustre/lustre/libcfs/module.c
> +++ b/drivers/staging/lustre/lustre/libcfs/module.c
> @@ -347,7 +347,7 @@ static int init_libcfs_module(void)
>  
>  	rc = libcfs_debug_init(5 * 1024 * 1024);
>  	if (rc < 0) {
> -		pr_err("LustreError: libcfs_debug_init: %d\n", rc);
> +		pr_err( "LustreError: libcfs_debug_init: %d\n", rc);

Your fix just removed a space, it didn't have anything to do with
changing the function call being made.  So the above changelog doesn't
make much sense :(

thanks,

greg k-h

