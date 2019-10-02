X-GM-THRID: 6743162884292870144
X-Received: by 2002:a5d:66ce:: with SMTP id k14mr4137640wrw.258.1570043849403;
        Wed, 02 Oct 2019 12:17:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a7b:cf01:: with SMTP id l1ls1302228wmg.0.gmail; Wed, 02 Oct
 2019 12:17:27 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyT2or7sOW98xhYqn73+ILnup/Q9lC8iwFjiJOj1GyRsltfB/YUt72Q/SCxg4FFU1QNZysR
X-Received: by 2002:a7b:c403:: with SMTP id k3mr4282250wmi.89.1570043847858;
        Wed, 02 Oct 2019 12:17:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570043847; cv=none;
        d=google.com; s=arc-20160816;
        b=oBfwPDVw7j+J2DNwM0IstexQPMhYI6+UpwlpCX2hBbFFQh0EsTsn0C1v34Fe46IAqy
         wSkNGUCkOJ3DAwDn4chEpZUKsvX1gau4sAM0k8qXvs2kOlKiwsSHt4R+YZieN0piTuB4
         rTyfe+iEgaE2PvNv4nlXzfFDMIIeTomRAbTTaAx75ZN1u51jxUVhd+MCbVm2ftrHzbCW
         hk3N/wvPbHYVCfB/Z0pu9FLpUK9QSNO2y6ukyoWgmnPulpuoI5ogMq+ctmscpfA/skHG
         mW9ldDnPYcFdPsSrugLtJjFI6QuuKVlbDXvdeJ8u2y0HGYoeMncmaD7lhXMsn7ppC4U3
         4vrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=euk+Fn/owYBdF7eqO6bZQlIaedGYqjEu5/YCa/ijwNk=;
        b=t3RNQ1hAYFbdYa9+z0KS2/62JR1e17z4u1gkvizJLgzXq+RVBA2xtcra/QdDN0yQIj
         etGsQmG9l1OniKyDMq8u51EifS/dAoQuxGbClfrhtY7uNSIIWDOIfeIpi4MR1JniGVDE
         P4/4i9IwW6KsAOuTePZrFqVC9mZ83vpvHnbd4Do8EhLRlU5hNClis4Yem4EFRdFSZl5W
         zayiL1Ayr7EGGeC0xHKdRYdAwH4bfDw3/toJcuXM4+Ln5Wtp6r7q7/us056G/bUxNKlj
         1/zFNxaCEnPh53lJ1wXsXcJewrsjY+xw/NzY69QkD5lLwv/gBd0cAS7pPrSgh7rhLXZN
         bkKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@ideasonboard.com header.s=mail header.b=cHahcmvr;
       spf=pass (google.com: domain of laurent.pinchart@ideasonboard.com designates 213.167.242.64 as permitted sender) smtp.mailfrom=laurent.pinchart@ideasonboard.com
Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com. [213.167.242.64])
        by gmr-mx.google.com with ESMTPS id s194si380710wme.2.2019.10.02.12.17.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 02 Oct 2019 12:17:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of laurent.pinchart@ideasonboard.com designates 213.167.242.64 as permitted sender) client-ip=213.167.242.64;
Authentication-Results: gmr-mx.google.com;
       dkim=pass (test mode) header.i=@ideasonboard.com header.s=mail header.b=cHahcmvr;
       spf=pass (google.com: domain of laurent.pinchart@ideasonboard.com designates 213.167.242.64 as permitted sender) smtp.mailfrom=laurent.pinchart@ideasonboard.com
Received: from pendragon.ideasonboard.com (unknown [132.205.229.212])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id A41C72BB;
	Wed,  2 Oct 2019 21:17:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1570043847;
	bh=L25UUE99r83aQxApU93dU/Lv/5UjZ8wL5TeWIq26tCs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cHahcmvr5tMFd4a4xWA5GbE10Dn2f7QLt7tjtbXAVgmY63IkraqW4ueIYJKA9i9rQ
	 Uhvt0Ddu6NzuqpXZ2nkt7TugfmtpMTiQujPNKnyGCPXZ8FbgCDG51DRG728N5q33+w
	 HHbYI/OLlxLLud7oB2yEtDfEyuAYlQMWg3bJaPP4=
Date: Wed, 2 Oct 2019 22:17:14 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Nachammai Karuppiah <nachukannan@gmail.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: media: omap4iss: Replace NULL comparison.
Message-ID: <20191002191714.GH5262@pendragon.ideasonboard.com>
References: <1570014155-41266-1-git-send-email-nachukannan@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1570014155-41266-1-git-send-email-nachukannan@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)

Hello Nachammai,

Thank you for the patch.

On Wed, Oct 02, 2019 at 04:02:35AM -0700, Nachammai Karuppiah wrote:
> This patch modifies NULL comparison to fix checkpatch.pl warning.
> 
> Signed-off-by: Nachammai Karuppiah <nachukannan@gmail.com>

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

and applied to my tree for v5.5.

> ---
>  drivers/staging/media/omap4iss/iss_video.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/media/omap4iss/iss_video.c b/drivers/staging/media/omap4iss/iss_video.c
> index 54144dc..673aa3a 100644
> --- a/drivers/staging/media/omap4iss/iss_video.c
> +++ b/drivers/staging/media/omap4iss/iss_video.c
> @@ -671,7 +671,7 @@ iss_video_get_selection(struct file *file, void *fh, struct v4l2_selection *sel)
>  		return -EINVAL;
>  	}
>  	subdev = iss_video_remote_subdev(video, &pad);
> -	if (subdev == NULL)
> +	if (!subdev)
>  		return -EINVAL;
>  
>  	/*
> @@ -726,7 +726,7 @@ iss_video_set_selection(struct file *file, void *fh, struct v4l2_selection *sel)
>  		return -EINVAL;
>  	}
>  	subdev = iss_video_remote_subdev(video, &pad);
> -	if (subdev == NULL)
> +	if (!subdev)
>  		return -EINVAL;
>  
>  	sdsel.pad = pad;
> -- 
> 2.7.4
> 

-- 
Regards,

Laurent Pinchart

