X-GM-THRID: 960100302848
X-Received: by 10.236.207.230 with SMTP id n66mr8876770yho.30.1424973487272;
        Thu, 26 Feb 2015 09:58:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.89.48 with SMTP id u45ls226250qgd.58.gmail; Thu, 26 Feb
 2015 09:58:07 -0800 (PST)
X-Received: by 10.236.70.234 with SMTP id p70mr8795976yhd.56.1424973487078;
        Thu, 26 Feb 2015 09:58:07 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ri9si206059pdb.1.2015.02.26.09.58.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 09:58:07 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id C2ED5B8A;
	Thu, 26 Feb 2015 17:58:06 +0000 (UTC)
Date: Thu, 26 Feb 2015 09:58:06 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: include: linux:
 libcfs: Remove unnecessary semicolon
Message-ID: <20150226175806.GB24181@kroah.com>
References: <1424378395-23667-1-git-send-email-aysemelikeyurtoglu@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1424378395-23667-1-git-send-email-aysemelikeyurtoglu@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Thu, Feb 19, 2015 at 10:39:55PM +0200, Melike Yurtoglu wrote:
> This fixes the checkpatch.pl warning:
> WARNING: macros should not use a trailing semicolon.
> 
> Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
> ---
>  drivers/staging/lustre/include/linux/libcfs/libcfs_debug.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/lustre/include/linux/libcfs/libcfs_debug.h b/drivers/staging/lustre/include/linux/libcfs/libcfs_debug.h
> index 2e5a9e5..4461024 100644
> --- a/drivers/staging/lustre/include/linux/libcfs/libcfs_debug.h
> +++ b/drivers/staging/lustre/include/linux/libcfs/libcfs_debug.h
> @@ -195,8 +195,8 @@ do {								\
>  	       .msg_file   = __FILE__,				\
>  	       .msg_fn     = __func__,				\
>  	       .msg_line   = __LINE__,				\
> -	       .msg_cdls   = (cdls)	 };			\
> -	dataname.msg_mask   = (mask);
> +	       .msg_cdls   = (cdls)	 }			\
> +	dataname.msg_mask   = (mask)
>  
>  /**
>   * Filters out logging messages based on mask and subsystem.

This patch is not correct at all, did you try to build the driver after
making it?  Please _always_ test build your patches.

thanks,

greg k-h

