X-GM-THRID: 6250228823501045760
X-Received: by 10.107.130.28 with SMTP id e28mr340241iod.34.1455246616347;
        Thu, 11 Feb 2016 19:10:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.6.164 with SMTP id f36ls684841ioi.28.gmail; Thu, 11 Feb
 2016 19:10:15 -0800 (PST)
X-Received: by 10.50.56.19 with SMTP id w19mr1354987igp.13.1455246615920;
        Thu, 11 Feb 2016 19:10:15 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id u66si1379571pfa.2.2016.02.11.19.10.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 19:10:15 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 8B136FE0;
	Fri, 12 Feb 2016 03:10:15 +0000 (UTC)
Date: Thu, 11 Feb 2016 19:10:15 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Rakhi Sharma <rakhish1994@gmail.com>
Cc: outreachy-kernel@googlegroups.com, julia.lawall@lip6.fr,
	daniel.baluta@gmail.com
Subject: Re: [Outreachy kernel] [PATCH 3/3] staging: rtl8712: Replace kmalloc
 by kzalloc.
Message-ID: <20160212031015.GA9936@kroah.com>
References: <1455244786-6824-1-git-send-email-rakhish1994@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1455244786-6824-1-git-send-email-rakhish1994@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Fri, Feb 12, 2016 at 08:09:46AM +0530, Rakhi Sharma wrote:
> Mainly the issue is that bool variables can have invalid values.
> So as memory allocated with kmalloc() is essentially random, any struct
> that contains bools, is allocated with kmalloc() and doesn't have the
> bools explicitly set might have invalid values.
> This is easily fixed by allocating it with kzalloc().
> 
> Signed-off-by: Rakhi Sharma <rakhish1994@gmail.com>
> ---
>  drivers/staging/rtl8712/rtl871x_io.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/rtl8712/rtl871x_io.c b/drivers/staging/rtl8712/rtl871x_io.c
> index fbbc635..2891b82 100644
> --- a/drivers/staging/rtl8712/rtl871x_io.c
> +++ b/drivers/staging/rtl8712/rtl871x_io.c
> @@ -60,7 +60,7 @@ static uint _init_intf_hdl(struct _adapter *padapter,
>  	set_intf_funs = &(r8712_usb_set_intf_funs);
>  	set_intf_ops = &r8712_usb_set_intf_ops;
>  	init_intf_priv = &r8712_usb_init_intf_priv;
> -	pintf_priv = pintf_hdl->pintfpriv = kmalloc(sizeof(struct intf_priv),
> +	pintf_priv = pintf_hdl->pintfpriv = kzalloc(sizeof(struct intf_priv),
>  						    GFP_ATOMIC);

Why is this needed?  Don't do a zero-fill unless the code is
expecting/wanting it.  Are you sure that the fields don't already get
set properly?  Is this a waste of time?

We need a lot more information, you can't just blindly convert these
calls, especially on "fast paths", like I think this might be.

sorry,

greg k-h

