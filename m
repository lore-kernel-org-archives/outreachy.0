X-GM-THRID: 2050684354560
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,5ceba8a0d878a238
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.148.164 with SMTP id tt4mr14971128obb.30.1424763757781;
        Mon, 23 Feb 2015 23:42:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.101.203 with SMTP id u69ls2641410qge.13.gmail; Mon, 23 Feb
 2015 23:42:37 -0800 (PST)
X-Received: by 10.52.246.135 with SMTP id xw7mr15890167vdc.8.1424763757593;
        Mon, 23 Feb 2015 23:42:37 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id xj4si4085397pbc.2.2015.02.23.23.42.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 23:42:37 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 42C1213;
	Tue, 24 Feb 2015 07:42:37 +0000 (UTC)
Date: Mon, 23 Feb 2015 23:42:37 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: bcm: Remove space before tab
Message-ID: <20150224074237.GD11701@kroah.com>
References: <1424547956-3686-1-git-send-email-yeliztaneroglu@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1424547956-3686-1-git-send-email-yeliztaneroglu@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sat, Feb 21, 2015 at 09:45:56PM +0200, Yeliz Taneroglu wrote:
> This patch fixes the checkpatch.pl warning:
> WARNING: "please, no space before tabs"
> 
> Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
> ---
>  drivers/staging/bcm/headers.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/bcm/headers.h b/drivers/staging/bcm/headers.h
> index 6f3270c..a7d4af5 100644
> --- a/drivers/staging/bcm/headers.h
> +++ b/drivers/staging/bcm/headers.h
> @@ -1,6 +1,6 @@
>  
>  /*******************************************************************
> -* 		Headers.h
> +*		Headers.h
>  *******************************************************************/
>  #ifndef __HEADERS_H__
>  #define __HEADERS_H__

This driver is not in the tree at all, so I have to just delete all of
the patches you made against it, sorry.

Please work off of linux-next, or my staging-next branch.

thanks,

greg k-h

