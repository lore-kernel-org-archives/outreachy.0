X-GM-THRID: 6394409513300000768
X-Received: by 10.200.33.233 with SMTP id 38mr501775qtz.87.1488913721668;
        Tue, 07 Mar 2017 11:08:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.59.194 with SMTP id k60ls1264880otc.22.gmail; Tue, 07 Mar
 2017 11:08:40 -0800 (PST)
X-Received: by 10.200.35.6 with SMTP id a6mr504847qta.72.1488913720847;
        Tue, 07 Mar 2017 11:08:40 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 2si168746pfx.8.2017.03.07.11.08.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 11:08:40 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12060-104.w90-92.abo.wanadoo.fr [90.92.122.104])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 141B5902;
	Tue,  7 Mar 2017 19:08:39 +0000 (UTC)
Date: Tue, 7 Mar 2017 20:08:34 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Aishwarya Pant <aishpant@gmail.com>
Cc: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>,
	Eric Anholt <eric@anholt.net>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 1/2] staging: bcm2835-audio: merge
 two if conditions into one
Message-ID: <20170307190834.GB6914@kroah.com>
References: <cover.1488830058.git.aishpant@gmail.com>
 <e6a2881d03ee9414c462177f5b437bc1a1733679.1488830058.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e6a2881d03ee9414c462177f5b437bc1a1733679.1488830058.git.aishpant@gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Tue, Mar 07, 2017 at 01:27:09AM +0530, Aishwarya Pant wrote:
> Patch merges two if conditions doing the same work into one.
> 
> Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
> ---
>  drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c
> index d60d702..f4ce4801dc 100644
> --- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c
> +++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c
> @@ -122,10 +122,8 @@ static int snd_bcm2835_playback_open_generic(
>  	audio_info("Alsa open (%d)\n", substream->number);
>  	idx = substream->number;
>  
> -	if (spdif && chip->opened) {
> -		err = -EBUSY;
> -		goto out;
> -	} else if (!spdif && (chip->opened & (1 << idx))) {
> +	if ((spdif && chip->opened) ||
> +	    (!spdif && (chip->opened & (1 << idx)))) {

But now it's a lot harder to read and understand, right?  Please keep
the original, it's not incorrect.

There are _so_ many real things to fix in this driver, don't make minor
tweaks for no reason.

thanks,

greg k-h

