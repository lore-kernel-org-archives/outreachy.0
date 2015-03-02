X-GM-THRID: 5536407879680
X-Received: by 10.66.100.198 with SMTP id fa6mr24369884pab.31.1425257596049;
        Sun, 01 Mar 2015 16:53:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.46.163 with SMTP id u35ls1281193iou.14.gmail; Sun, 01 Mar
 2015 16:53:15 -0800 (PST)
X-Received: by 10.50.55.102 with SMTP id r6mr14529080igp.1.1425257595868;
        Sun, 01 Mar 2015 16:53:15 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id xj4si1285384pbc.2.2015.03.01.16.53.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 16:53:15 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 9177C475;
	Mon,  2 Mar 2015 00:53:15 +0000 (UTC)
Date: Sun, 1 Mar 2015 16:53:15 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Dilek Uzulmez <dilekuzulmez@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: Fix __packed is
 preferred over __attribute__((packed)) in libcfs_kernelcomm.h
Message-ID: <20150302005315.GA29313@kroah.com>
References: <1425240270-9001-1-git-send-email-dilekuzulmez@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1425240270-9001-1-git-send-email-dilekuzulmez@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sun, Mar 01, 2015 at 10:04:30PM +0200, Dilek Uzulmez wrote:
> Fix checkpatch.pl issues with  __packed is preferred over __attribute__((packed)) in libcfs_kernelcomm.h
> 
> Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
> ---
>  drivers/staging/lustre/include/linux/libcfs/libcfs_kernelcomm.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/lustre/include/linux/libcfs/libcfs_kernelcomm.h b/drivers/staging/lustre/include/linux/libcfs/libcfs_kernelcomm.h
> index 4688770..a989d26 100644
> --- a/drivers/staging/lustre/include/linux/libcfs/libcfs_kernelcomm.h
> +++ b/drivers/staging/lustre/include/linux/libcfs/libcfs_kernelcomm.h
> @@ -107,7 +107,7 @@ typedef struct lustre_kernelcomm {
>  	__u32 lk_group;
>  	__u32 lk_data;
>  	__u32 lk_flags;
> -} __attribute__((packed)) lustre_kernelcomm;
> +} __packed lustre_kernelcomm;

Can you also work to get rid of this typedef?

thanks,

greg k-h-

