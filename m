X-GM-THRID: 6395563647379177472
X-Received: by 10.107.153.140 with SMTP id b134mr4155498ioe.32.1489084804839;
        Thu, 09 Mar 2017 10:40:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.60.6 with SMTP id q6ls7329192otc.10.gmail; Thu, 09 Mar
 2017 10:40:04 -0800 (PST)
X-Received: by 10.157.22.211 with SMTP id s19mr5748260ots.37.1489084804421;
        Thu, 09 Mar 2017 10:40:04 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id g82si1351327pfb.5.2017.03.09.10.40.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 10:40:04 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12060-104.w90-92.abo.wanadoo.fr [90.92.122.104])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id CCBDEB4C;
	Thu,  9 Mar 2017 18:40:03 +0000 (UTC)
Date: Thu, 9 Mar 2017 19:39:55 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Aishwarya Pant <aishpant@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 2/3] staging: bcm2835-camera: replace kmalloc with kzalloc
Message-ID: <20170309183955.GA15957@kroah.com>
References: <cover.1489082995.git.aishpant@gmail.com>
 <56b08acb54e6fa814f201c7813255fb3926631b6.1489082995.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <56b08acb54e6fa814f201c7813255fb3926631b6.1489082995.git.aishpant@gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Thu, Mar 09, 2017 at 11:43:48PM +0530, Aishwarya Pant wrote:
> This patch replaces kmalloc and memset with kzalloc
> 
> Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
> ---
>  drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c | 8 +++-----
>  1 file changed, 3 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
> index a258a72..f795137 100644
> --- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
> +++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
> @@ -259,9 +259,8 @@ get_msg_context(struct vchiq_mmal_instance *instance)
>  {
>  	struct mmal_msg_context *msg_context;
>  
> -	/* todo: should this be allocated from a pool to avoid kmalloc */
> -	msg_context = kmalloc(sizeof(*msg_context), GFP_KERNEL);
> -	memset(msg_context, 0, sizeof(*msg_context));
> +	/* todo: should this be allocated from a pool to avoid kzalloc */
> +	msg_context = kzalloc(sizeof(*msg_context), GFP_KERNEL);
>  
>  	if (!msg_context)
>  		return NULL;
> @@ -2008,8 +2007,7 @@ int vchiq_mmal_init(struct vchiq_mmal_instance **out_instance)
>  		return -EIO;
>  	}
>  
> -	instance = kmalloc(sizeof(*instance), GFP_KERNEL);
> -	memset(instance, 0, sizeof(*instance));
> +	instance = kzalloc(sizeof(*instance), GFP_KERNEL);
>  
>  	if (!instance)
>  		return -ENOMEM;

Does not apply to my tree :(

Please rebase and resend.

thanks,

greg k-h

