X-GM-THRID: 5542512689152
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,168bd545390ca235
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.50.25.137 with SMTP id c9mr12730278igg.0.1425257622138;
        Sun, 01 Mar 2015 16:53:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.73.106 with SMTP id k10ls820108igv.19.canary; Sun, 01 Mar
 2015 16:53:41 -0800 (PST)
X-Received: by 10.68.192.10 with SMTP id hc10mr24146603pbc.4.1425257621899;
        Sun, 01 Mar 2015 16:53:41 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id pc4si1329623pac.0.2015.03.01.16.53.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 16:53:41 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id A29CF475;
	Mon,  2 Mar 2015 00:53:41 +0000 (UTC)
Date: Sun, 1 Mar 2015 16:53:41 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Dilek Uzulmez <dilekuzulmez@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: Fix line over 80
 characters.
Message-ID: <20150302005341.GA29361@kroah.com>
References: <1425240954-9148-1-git-send-email-dilekuzulmez@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1425240954-9148-1-git-send-email-dilekuzulmez@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sun, Mar 01, 2015 at 10:15:54PM +0200, Dilek Uzulmez wrote:
> Fix checkpatch.pl issues with line over 80 characters in libcfs_kernelcomm.h
> 
> Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
> ---
>  drivers/staging/lustre/include/linux/libcfs/libcfs_kernelcomm.h | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/lustre/include/linux/libcfs/libcfs_kernelcomm.h b/drivers/staging/lustre/include/linux/libcfs/libcfs_kernelcomm.h
> index a989d26..e680399 100644
> --- a/drivers/staging/lustre/include/linux/libcfs/libcfs_kernelcomm.h
> +++ b/drivers/staging/lustre/include/linux/libcfs/libcfs_kernelcomm.h
> @@ -44,7 +44,8 @@
>  #define __LIBCFS_KERNELCOMM_H__
>  
>  #ifndef __LIBCFS_LIBCFS_H__
> -#error Do not #include this file directly. #include <linux/libcfs/libcfs.h> instead
> +#error Do not #include this file directly.
> +#include <linux/libcfs/libcfs.h> instead

Hm, that doesn't do what you think it does...


