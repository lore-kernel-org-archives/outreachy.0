X-GM-THRID: 6035575144448
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,44622202b52d33bf
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.140.216.150 with SMTP id m144mr17810849qhb.9.1425725754656;
        Sat, 07 Mar 2015 02:55:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.9.68 with SMTP id j65ls593841ioi.40.gmail; Sat, 07 Mar
 2015 02:55:54 -0800 (PST)
X-Received: by 10.70.94.102 with SMTP id db6mr4247104pdb.0.1425725754418;
        Sat, 07 Mar 2015 02:55:54 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id m1si1724394pdc.0.2015.03.07.02.55.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Mar 2015 02:55:54 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (gob75-2-82-67-192-59.fbx.proxad.net [82.67.192.59])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 912DA990;
	Sat,  7 Mar 2015 10:55:53 +0000 (UTC)
Date: Fri, 6 Mar 2015 15:29:51 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Haneen Mohammed <hamohammed.sa@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: emxx_udc: Clean dev_err()
 logging
Message-ID: <20150306232951.GB6279@kroah.com>
References: <1425320718-28979-1-git-send-email-hamohammed.sa@gmail.com>
 <1425460224-8110-1-git-send-email-hamohammed.sa@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1425460224-8110-1-git-send-email-hamohammed.sa@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Wed, Mar 04, 2015 at 12:10:24PM +0300, Haneen Mohammed wrote:
> This patch removes  __func__ from dev_err. dev_err includes information about:
>  (devcice, driver, specific instance of device, etc) in the log printout, so there is no need for  __func__.
> 
> Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> ---
> note: this patch separated from "Staging: emxx_udc: Fix checkpatch.pl warnings" patchset.
> 
>  drivers/staging/emxx_udc/emxx_udc.c | 18 ++++++++----------
>  1 file changed, 8 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
> index 35dc1c4..cfe55dc 100644
> --- a/drivers/staging/emxx_udc/emxx_udc.c
> +++ b/drivers/staging/emxx_udc/emxx_udc.c
> @@ -2632,7 +2632,7 @@ static int nbu2ss_ep_enable(
>  	if ((udc->driver == NULL)
>  		|| (udc->gadget.speed == USB_SPEED_UNKNOWN)) {
>  
> -		dev_err(ep->udc->dev, " *** %s, udc !!\n", __func__);
> +		dev_err(ep->udc->dev, "  udc !!\n");

Why keep the leading spaces?

And dev_err() does not have __func__ in it, so maybe this should just be
left alone, as these messages are not unique enough to determine the
exact place the error happened.

sorry for missing that last time.

greg k-h

