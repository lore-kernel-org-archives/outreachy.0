X-GM-THRID: 6668919663112486912
X-Received: by 2002:a17:902:b947:: with SMTP id h7mr4080973pls.41.1552819730060;
        Sun, 17 Mar 2019 03:48:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:a514:: with SMTP id s20ls7178864plq.0.gmail; Sun, 17
 Mar 2019 03:48:49 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyaoYJoA1zlqEj+VXcvq3DHCAo1VK5jguVDL/KnYXEKaDoamCW0JV8JR1Yq13y3d3HGBARd
X-Received: by 2002:a17:902:1347:: with SMTP id r7mr4101404ple.133.1552819729335;
        Sun, 17 Mar 2019 03:48:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552819729; cv=none;
        d=google.com; s=arc-20160816;
        b=POCYIWU2RAiccCSW2gjhIJ8tFAAOzd/REevBARh7dHfNrswSbYYF1ZLGv8dMh8e9ve
         +k2m7vh4BZkIZ5nWKi/Hmjz0TENwzNlh6YBSKOGHij7cLKPNznkw1zyrGqsFNBnorlW0
         PvYn5ZsGsHHMF3uLsWa3VmtpM61g540szk7dsq/FblwuqUWEbJVlIBFgNFf2GgXcXWxL
         zcakiEfFz9WNa8p6auVdinBDMzYOZnbxMVVpT04OIT7Hm0FkWn0lRZXsMg4+MGCMduUW
         IQfJMob2pu5y+OmlcJE8Nv6HOfcjtXMaySrdKyeoGXHM+kCe7Qhy9Wy1b2ucS+I/kV8u
         g5aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=8VzoWa4yfnnfZTiXAl6B5ikTEEOY+4j4hf5LfOrhgk8=;
        b=DDr4ORBXz/Znpsy4GFXQ8wCWli9Ddmmeq0MpEjf3xBlkLHco3ninIR7sG4wPZSHL7S
         JefXRssoET5ZJEcFx9QZjmFttZrLWWWtDLqnCsCio0QsQNdcYzk462JM51E47+vNMscK
         nQ9dnYC3kdvM/h/eeFjM0bTaQBz8exqfL0tQ/Wt/VoiCiIH6xSFk9muYOJtoqmg7izmZ
         NyYrWUATl+/x21QjgVoNv+7MXrQYxS4cajES7pb8u/+fnki9tW791WJ72oRwdGMOWDV3
         KqChuVTrjZlxBmsHYx3Ooq4RAC/clTDXO0nENFTvWIBP+WIujHQqb/C+RYIFzdrBOWQ4
         xiTg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="JSl98G/K";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b77si314695pfj.5.2019.03.17.03.48.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 03:48:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="JSl98G/K";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 8DC662085A;
	Sun, 17 Mar 2019 10:48:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552819729;
	bh=d+6xFB+4e/iEmFjzOEK0mdfsMLuazY3vDMhbmufISVI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JSl98G/KkSF2cd3DnD82z5ai+Y6GSFu+K9Oi49wpVHJIc8hj4ztPbx/WK/BlofHRB
	 mZtFE2GFyPNvNxsmxMnC0fNE5U6+GaA5F7Mii7nFqekZL8UJNAis6m4NT4w8svWTiy
	 U0pLqXAedD8dsQ8XfqXp/4KRAUhN1nMU+908XRpU=
Date: Sun, 17 Mar 2019 11:48:46 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: vc04_services:
 bcm2835-camera: avoid multiple assignments
Message-ID: <20190317104846.GE16257@kroah.com>
References: <1552728839-7072-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1552728839-7072-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Sat, Mar 16, 2019 at 03:03:59PM +0530, Payal Kshirsagar wrote:
> To avoid style issues, avoid multiple assignments.
> Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>

You need a blank line before the signed-off-by line for this to work
properly.

> ---
>  .../staging/vc04_services/bcm2835-camera/bcm2835-camera.c    | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> index d22b928..5e5b610 100644
> --- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> +++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> @@ -1011,11 +1011,15 @@ static int mmal_setup_components(struct bm2835_mmal_dev *dev,
>  		/* Make a further decision on port based on resolution */
>  		if (f->fmt.pix.width <= max_video_width &&
>  		    f->fmt.pix.height <= max_video_height)
> -			camera_port = port =
> -			    &dev->component[MMAL_COMPONENT_CAMERA]->output[MMAL_CAMERA_PORT_VIDEO];
> +			camera_port = 

Did you run your patch through checkpatch.pl after making it?  It should
have complained about this line.

thanks,

greg k-h

