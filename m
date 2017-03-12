X-GM-THRID: 6395446243166781440
X-Received: by 10.107.138.87 with SMTP id m84mr8125502iod.88.1489327913828;
        Sun, 12 Mar 2017 07:11:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.43.103 with SMTP id f36ls906560otd.0.gmail; Sun, 12 Mar
 2017 07:11:53 -0700 (PDT)
X-Received: by 10.129.179.136 with SMTP id r130mr14089083ywh.162.1489327913489;
        Sun, 12 Mar 2017 07:11:53 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id y203si2272209pfb.0.2017.03.12.07.11.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 07:11:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [88.128.80.189])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 171BD904;
	Sun, 12 Mar 2017 14:11:51 +0000 (UTC)
Date: Sun, 12 Mar 2017 15:11:32 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Aishwarya Pant <aishpant@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v6 6/7] staging: bcm2835-audio: fix
 memory leak in bcm2835_audio_open_connection()
Message-ID: <20170312141132.GA29303@kroah.com>
References: <cover.1489160830.git.aishpant@gmail.com>
 <97c79973a44f4695f3d0161b4300fd185363f7f1.1489160830.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <97c79973a44f4695f3d0161b4300fd185363f7f1.1489160830.git.aishpant@gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Fri, Mar 10, 2017 at 09:31:05PM +0530, Aishwarya Pant wrote:
> In bcm2835_audio_open_connection(), if VCHI connection fails or
> initialisation of VCHI audio instance fails vchi_instance needs to be
> deallocated otherwise it will cause a memory leak.
> 
> Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
> 
> ---
> Changes in v6:
> 	- Remove redundant debug logs
> ---
>  .../staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c  | 16 ++++++----------
>  1 file changed, 6 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
> index 449799f..fa06bfd 100644
> --- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
> +++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
> @@ -396,8 +396,6 @@ static int bcm2835_audio_open_connection(struct bcm2835_alsa_stream *alsa_stream
>  		(struct bcm2835_audio_instance *)alsa_stream->instance;
>  	int ret;
>  
> -	LOG_DBG(" .. IN\n");
> -

It's nice to remove these, but don't do so in the same patch you are
doing something else in!

Remember, only one logical thing per patch please.

thanks,

greg k-h

