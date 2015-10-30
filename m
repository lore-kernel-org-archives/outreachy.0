X-GM-THRID: 6211564621691617280
X-Received: by 10.67.4.135 with SMTP id ce7mr8561776pad.20.1446245414472;
        Fri, 30 Oct 2015 15:50:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.81.243 with SMTP id f106ls1366183qgd.89.gmail; Fri, 30 Oct
 2015 15:50:13 -0700 (PDT)
X-Received: by 10.129.85.80 with SMTP id j77mr8518507ywb.31.1446245413750;
        Fri, 30 Oct 2015 15:50:13 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id iz5si839940pbc.2.2015.10.30.15.50.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2015 15:50:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 5FCE7323;
	Fri, 30 Oct 2015 22:50:12 +0000 (UTC)
Date: Fri, 30 Oct 2015 15:50:11 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: llite: dir: Add
 __user annotations to remove sparse warnings
Message-ID: <20151030225011.GA2400@kroah.com>
References: <20151030220302.GA3803@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20151030220302.GA3803@amitoj-Inspiron-3542>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sat, Oct 31, 2015 at 03:33:03AM +0530, Amitoj Kaur Chawla wrote:
> This patch fixes the following multiple sparse warnings by adding
> __user annotations:
> 
> warning: incorrect type in argument 1 (different address spaces)
> expected void [noderef] <asn:1>*to got char *<noident>
> warning: incorrect type in argument 1 (different address spaces)
> expected void [noderef] <asn:1>*to got int *<noident>
> warning: incorrect type in argument 1 (different address spaces)
> expected void [noderef] <asn:1>*to got void *<noident>
> warning: incorrect type in argument 2 (different address spaces)
> expected void const [noderef] <asn:1>*from got struct lov_user_md_v3
> warning: incorrect type in argument 2 (different address spaces)
> expected void const [noderef] <asn:1>*from got struct lov_user_md_v1
> warning: incorrect type in argument 1 (different address spaces)
> expected void const [noderef] <asn:1>*from got const char
> 
> After this patch, there are no more sparse warnings for this file.
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
>  drivers/staging/lustre/lustre/llite/dir.c | 71 ++++++++++++++++---------------
>  1 file changed, 36 insertions(+), 35 deletions(-)
> 
> diff --git a/drivers/staging/lustre/lustre/llite/dir.c b/drivers/staging/lustre/lustre/llite/dir.c
> index cc6f0f5..da91226 100644
> --- a/drivers/staging/lustre/lustre/llite/dir.c
> +++ b/drivers/staging/lustre/lustre/llite/dir.c
> @@ -1244,6 +1244,9 @@ static long ll_dir_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
>  	struct ll_sb_info *sbi = ll_i2sbi(inode);
>  	struct obd_ioctl_data *data;
>  	int rc = 0;
> +	int __user *argi = (int __user *)arg;
> +	void __user *argv = (void __user *)arg;
> +	char __user *argc = (char __user *)arg;

It's impossible to fix up lustre with the correct __user markings,
sorry.  The code is horribly designed and probably wrong in places
(kernel semaphore structures in userspace!), so I would just ignore
these warnings, we can't fix them up until the developers of the code do
the work, it's very non-trivial.

sorry.

greg k-h

