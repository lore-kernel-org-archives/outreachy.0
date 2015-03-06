X-GM-THRID: 6153646899200
X-Received: by 10.236.227.162 with SMTP id d32mr16772705yhq.7.1425665437251;
        Fri, 06 Mar 2015 10:10:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.68.47 with SMTP id s15ls174947obt.35.gmail; Fri, 06 Mar
 2015 10:10:36 -0800 (PST)
X-Received: by 10.182.78.69 with SMTP id z5mr15314913obw.4.1425665436189;
        Fri, 06 Mar 2015 10:10:36 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id pc4si1445644pac.0.2015.03.06.10.10.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Mar 2015 10:10:36 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (75-104-69-130.mobility.exede.net [75.104.69.130])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id E9538AE7;
	Fri,  6 Mar 2015 18:10:34 +0000 (UTC)
Date: Fri, 6 Mar 2015 10:10:26 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Vatika Harlalka <vatikaharlalka@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8712: Remove unnecessary
 type cast.
Message-ID: <20150306181026.GA7323@kroah.com>
References: <20150303060621.GA5148@akanksha>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150303060621.GA5148@akanksha>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Tue, Mar 03, 2015 at 11:36:21AM +0530, Vatika Harlalka wrote:
> Using addressof and then casting to the original type is unneeded.
> So these casts can be removed.
> Issue detected via Coccinelle script.
> 
> Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
> ---
>  drivers/staging/rtl8712/hal_init.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/rtl8712/hal_init.c b/drivers/staging/rtl8712/hal_init.c
> index 324da34..0a1c631 100644
> --- a/drivers/staging/rtl8712/hal_init.c
> +++ b/drivers/staging/rtl8711/hal_init.c

This patch is malformed, with the directory name different.  This
"breaks" git, but not patch, and I've now notified the git developers
about it.  How did you create a patch like this?

Can you fix it up and resend it?

thanks,

greg k-h

