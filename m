X-GM-THRID: 6211494140664872960
X-Received: by 10.129.4.203 with SMTP id 194mr8408031ywe.33.1446246020315;
        Fri, 30 Oct 2015 16:00:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.105.244 with SMTP id c107ls1181313qgf.39.gmail; Fri, 30
 Oct 2015 16:00:19 -0700 (PDT)
X-Received: by 10.129.82.193 with SMTP id g184mr8572691ywb.44.1446246019775;
        Fri, 30 Oct 2015 16:00:19 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id pe1si961495pac.2.2015.10.30.16.00.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2015 16:00:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 62400323;
	Fri, 30 Oct 2015 23:00:19 +0000 (UTC)
Date: Fri, 30 Oct 2015 16:00:19 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: lustre: llite: dir: Add
 __user annotations
Message-ID: <20151030230019.GA2920@kroah.com>
References: <20151030182555.GA27970@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20151030182555.GA27970@amitoj-Inspiron-3542>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Fri, Oct 30, 2015 at 11:55:55PM +0530, Amitoj Kaur Chawla wrote:
> This patch fixes the following multiple sparse warnings by adding
> __user annotations:
> 
> warning: incorrect type in argument 1 (different address spaces)
> expected void [noderef] <asn:1>*to got char *<noident>
> 
> warning: incorrect type in argument 1 (different address spaces)
> expected void [noderef] <asn:1>*to got int *<noident>
> 
> warning: incorrect type in argument 1 (different address spaces)
> expected void [noderef] <asn:1>*to got void *<noident>
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
> Note:
> This patch does not fix all sparse warnings of these kind for this
> file but eliminates most of them.
> 
> Changes in v2:
>         -Added Note
> 
>  drivers/staging/lustre/lustre/llite/dir.c | 38 +++++++++++++++----------------
>  1 file changed, 19 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/staging/lustre/lustre/llite/dir.c b/drivers/staging/lustre/lustre/llite/dir.c
> index cc6f0f5..6a20e61 100644
> --- a/drivers/staging/lustre/lustre/llite/dir.c
> +++ b/drivers/staging/lustre/lustre/llite/dir.c
> @@ -1259,7 +1259,7 @@ static long ll_dir_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
>  		return ll_iocontrol(inode, file, cmd, arg);
>  	case FSFILT_IOC_GETVERSION_OLD:
>  	case FSFILT_IOC_GETVERSION:
> -		return put_user(inode->i_generation, (int *)arg);
> +		return put_user(inode->i_generation, (int __user *)arg);

Again, lustre is impossible to fix when it comes to __user markings,
sorry, I'm going to drop this patch from my queue.

greg k-h

