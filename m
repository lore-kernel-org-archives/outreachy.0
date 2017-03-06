X-GM-THRID: 6392494565268389888
X-Received: by 10.176.91.8 with SMTP id u8mr4368325uae.33.1488804600354;
        Mon, 06 Mar 2017 04:50:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.9.185 with SMTP id q54ls11221749otd.11.gmail; Mon, 06 Mar
 2017 04:49:59 -0800 (PST)
X-Received: by 10.157.51.165 with SMTP id u37mr6828590otc.77.1488804599906;
        Mon, 06 Mar 2017 04:49:59 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id y90si8563pfa.6.2017.03.06.04.49.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 04:49:59 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [37.168.44.83])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id C2DF1412;
	Mon,  6 Mar 2017 12:49:58 +0000 (UTC)
Date: Mon, 6 Mar 2017 13:49:52 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
Cc: swarren@wwwdotorg.org, lee@kernel.org, eric@anholt.net,
	f.fainelli@gmail.com, rjui@broadcom.com, sbranden@broadcom.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v3 1/2] staging: vc04_services: bcm2835-camera: Move min
 calculation outside the loop
Message-ID: <20170306124952.GA25968@kroah.com>
References: <cover.1488381635.git.narcisaanamaria12@gmail.com>
 <e56b661d6e62e48626989f052a5e1603fb1e6913.1488381635.git.narcisaanamaria12@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e56b661d6e62e48626989f052a5e1603fb1e6913.1488381635.git.narcisaanamaria12@gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Wed, Mar 01, 2017 at 05:37:13PM +0200, Narcisa Ana Maria Vasile wrote:
> Instead of computing the minimum value in the for loop, store it in a variable.
> 
> Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
> ---
>  drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> index 53e275e..7b9d33c 100644
> --- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> +++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> @@ -1526,6 +1526,7 @@ static int get_num_cameras(struct vchiq_mmal_instance *instance,
>  	struct mmal_parameter_camera_info_t cam_info = {0};
>  	int param_size = sizeof(cam_info);
>  	int i;
> +	int min_size;
>  
>  	/* create a camera_info component */
>  	ret = vchiq_mmal_component_init(instance, "camera_info",
> @@ -1541,11 +1542,10 @@ static int get_num_cameras(struct vchiq_mmal_instance *instance,
>  					  &param_size)) {
>  		pr_info("Failed to get camera info\n");
>  	}
> -	for (i = 0;
> -	     i < (cam_info.num_cameras > num_resolutions ?
> -			num_resolutions :
> -			cam_info.num_cameras);
> -	     i++) {
> +
> +	min_size = cam_info.num_cameras > num_resolutions ?
> +		   num_resolutions : cam_info.num_cameras;

We have a min() macro, why not just use that instead?

thanks,

greg k-h

