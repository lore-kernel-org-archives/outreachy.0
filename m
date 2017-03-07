X-GM-THRID: 6394405934540521472
X-Received: by 10.99.163.92 with SMTP id v28mr979945pgn.147.1488913869716;
        Tue, 07 Mar 2017 11:11:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.24.83 with SMTP id t19ls1203145ott.28.gmail; Tue, 07 Mar
 2017 11:11:09 -0800 (PST)
X-Received: by 10.200.48.218 with SMTP id w26mr537955qta.42.1488913869359;
        Tue, 07 Mar 2017 11:11:09 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id s64si187172pfk.0.2017.03.07.11.11.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 11:11:09 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12060-104.w90-92.abo.wanadoo.fr [90.92.122.104])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id BF608B9B;
	Tue,  7 Mar 2017 19:11:08 +0000 (UTC)
Date: Tue, 7 Mar 2017 20:11:03 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Aishwarya Pant <aishpant@gmail.com>
Cc: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>,
	Eric Anholt <eric@anholt.net>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 1/2] staging: bcm2835-camera: replace kmalloc and memset
 with kzalloc
Message-ID: <20170307191103.GD6914@kroah.com>
References: <cover.1488813479.git.aishpant@gmail.com>
 <1df03618ee2857c159255ead5e5a6b06b53d7290.1488813479.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1df03618ee2857c159255ead5e5a6b06b53d7290.1488813479.git.aishpant@gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Mon, Mar 06, 2017 at 08:50:55PM +0530, Aishwarya Pant wrote:
> This patch replaces kmalloc and memset with kzalloc
> 
> Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
> ---
>  drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
> index ca6e9eb..ded9a99 100644
> --- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
> +++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
> @@ -168,9 +168,8 @@ static struct mmal_msg_context *get_msg_context(struct vchiq_mmal_instance
>  {
>  	struct mmal_msg_context *msg_context;
>  
> -	/* todo: should this be allocated from a pool to avoid kmalloc */
> -	msg_context = kmalloc(sizeof(*msg_context), GFP_KERNEL);
> -	memset(msg_context, 0, sizeof(*msg_context));
> +	/* todo: should this be allocated from a pool to avoid kzalloc */
> +	msg_context = kzalloc(sizeof(*msg_context), GFP_KERNEL);

This patch isn't needed in this series anymore, right?  Please resend
just the needed patch, don't change code that is going to be deleted on
the next one for no reason.

thanks,

greg k-h

