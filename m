X-GM-THRID: 6394267453866639360
X-Received: by 10.129.87.3 with SMTP id l3mr6486125ywb.0.1488804794461;
        Mon, 06 Mar 2017 04:53:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.2.76 with SMTP id 73ls2451115itu.13.gmail; Mon, 06 Mar 2017
 04:53:13 -0800 (PST)
X-Received: by 10.107.133.36 with SMTP id h36mr5600151iod.92.1488804793507;
        Mon, 06 Mar 2017 04:53:13 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id y90si9611pfa.6.2017.03.06.04.53.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 04:53:13 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [37.168.44.83])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id B293A8CC;
	Mon,  6 Mar 2017 12:53:12 +0000 (UTC)
Date: Mon, 6 Mar 2017 13:53:07 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Aishwarya Pant <aishpant@gmail.com>
Cc: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>,
	Eric Anholt <eric@anholt.net>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: bcm2835-camera: replace
 kmalloc with kzalloc
Message-ID: <20170306125307.GB26115@kroah.com>
References: <20170306072136.GA19014@aishwarya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170306072136.GA19014@aishwarya>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Mon, Mar 06, 2017 at 12:51:36PM +0530, Aishwarya Pant wrote:
> This patch replaces two instances of kmalloc and memset with kzalloc
> and refactors function get_msg_context(..)

What did you refactor?  Why do two things at once?

> 
> Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
> 
> ---
> Changes in v2:
> 	- Return out of memory error number when kzalloc fails
> 	- Refactor get_msg_context
> 
>  drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c | 13 +++++--------
>  1 file changed, 5 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
> index 0f96ac8..87d7681 100644
> --- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
> +++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
> @@ -166,13 +166,9 @@ struct vchiq_mmal_instance {
>  static struct mmal_msg_context *get_msg_context(struct vchiq_mmal_instance
>  						*instance)
>  {
> -	struct mmal_msg_context *msg_context;
> -
> -	/* todo: should this be allocated from a pool to avoid kmalloc */
> -	msg_context = kmalloc(sizeof(*msg_context), GFP_KERNEL);
> -	memset(msg_context, 0, sizeof(*msg_context));
> +	/* todo: should this be allocated from a pool to avoid kzalloc */
> +	return kzalloc(sizeof(*msg_context), GFP_KERNEL);

Why is this function even needed anymore?  Why not just call kzalloc()
instead of this one?

thanks,

greg k-h

