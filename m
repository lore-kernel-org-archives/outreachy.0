X-GM-THRID: 6395563647379177472
X-Received: by 10.107.46.135 with SMTP id u7mr4393416iou.37.1489084772240;
        Thu, 09 Mar 2017 10:39:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.44.99 with SMTP id f90ls892744otb.24.gmail; Thu, 09 Mar
 2017 10:39:31 -0800 (PST)
X-Received: by 10.13.236.12 with SMTP id v12mr5438809ywe.49.1489084771896;
        Thu, 09 Mar 2017 10:39:31 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id y90si1346346pfa.6.2017.03.09.10.39.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 10:39:31 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12060-104.w90-92.abo.wanadoo.fr [90.92.122.104])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 4B038B22;
	Thu,  9 Mar 2017 18:39:31 +0000 (UTC)
Date: Thu, 9 Mar 2017 19:39:22 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Aishwarya Pant <aishpant@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 1/3] staging: bcm2835-camera: add check to avoid null
 pointer dereference
Message-ID: <20170309183922.GA15883@kroah.com>
References: <cover.1489082995.git.aishpant@gmail.com>
 <71d82d5b143c924f775a83a525cbd186d48777dd.1489082995.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <71d82d5b143c924f775a83a525cbd186d48777dd.1489082995.git.aishpant@gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Thu, Mar 09, 2017 at 11:43:28PM +0530, Aishwarya Pant wrote:
> This patch adds checks after memory allocation to avoid possible null
> pointer dereferences.
> 
> Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
> ---
>  drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
> index 6126919..a258a72 100644
> --- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
> +++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
> @@ -263,6 +263,9 @@ get_msg_context(struct vchiq_mmal_instance *instance)
>  	msg_context = kmalloc(sizeof(*msg_context), GFP_KERNEL);
>  	memset(msg_context, 0, sizeof(*msg_context));
>  
> +	if (!msg_context)
> +		return NULL;

But you just crashed one line above!

not good :(

greg k-h

