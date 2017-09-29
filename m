X-GM-THRID: 6468561252741283840
X-Received: by 10.98.29.74 with SMTP id d71mr651103pfd.31.1506692189250;
        Fri, 29 Sep 2017 06:36:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.84.241.72 with SMTP id u8ls2033936plm.6.gmail; Fri, 29 Sep
 2017 06:36:28 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QAc0gEYa4KQOoA0IhJpl7caTz+v7eoLoKIq/+WgN4Px36Qiwr9kkpkqqQJsMoqM3lejBCAh
X-Received: by 10.159.252.11 with SMTP id n11mr692400pls.11.1506692188154;
        Fri, 29 Sep 2017 06:36:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506692188; cv=none;
        d=google.com; s=arc-20160816;
        b=curbKV1FG0Kul+dpRVwj+WxIFn1UCC1NnEcTdRfyh79R9EE5G5kRNqt0btJlWo4bNd
         oOM5AtfqdawkAJXdnzWsuV+iTyzmt97hn4mQKfrlxqMFDMZy9tsBTJqcITJat9KIi9to
         U9OHb2f5YGAV7onCCny1b5Scs//3FonTrWQ9uhZg/LkuTps+KgS6sV4FIZIYudEWw1MC
         L87SSxzuZ2u/PRSXcGBmTfM/lHcJrCLRFttly9ymqRaz2MTlpSoBj9nzig1yYjSpNZ6O
         4K9A3g9dPTO1Ur26md7huTJj3tSp5ISGVX7H2a65fC2E/2bhM5TVV7H0YW+M6Zv13FIY
         CMbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=uWJbM7YqSYAzl8cEKZXE0NGusjFdCJ1zOU/CTQSfkUo=;
        b=XSn9oXUjCRk3P8vZzrfUGdtGJxjIuD+MCF49YWlG9mT9JbwVV5Il1+JNRPpDACOrSh
         WDjPF0DbKo4f4Zbfe9Glb4zBU5Hnl71++ieJ4G0irdvAourr4/FCvvyKuf0y34Oo0kFG
         bNicDCfHURkJHuN5aqFP8qVf04LkEpX92Daklp3fkuj4L4VyzGX8q25bJ+SbJZQ0qQVQ
         Lyo0Lb9KKEx+TY3uWg0W3FzX+58HCsWhl1s1LmUw7jPAP1blN5ysXbMGV9GbRloUy8ox
         Z6qmGLAZGTvH0Ax7CzmEj/mpLcnAAinrFgXeS+FA7j0Y1bMMsHHvfC61suVINbJGmrXM
         Xa6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 88si516107pfm.20.2017.09.29.06.36.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Sep 2017 06:36:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [195.81.232.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 86BF3AAE;
	Fri, 29 Sep 2017 13:36:27 +0000 (UTC)
Date: Fri, 29 Sep 2017 15:36:24 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Georgiana Chelu <georgiana.chelu93@gmail.com>
Cc: outreachy-kernel@googlegroups.com,
	Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: Re: [PATCH] Staging: media: atomisp: Remove duplicated argument to ||
Message-ID: <20170929133624.GA12135@kroah.com>
References: <1506079255-127380-1-git-send-email-georgiana.chelu93@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1506079255-127380-1-git-send-email-georgiana.chelu93@gmail.com>
User-Agent: Mutt/1.9.1 (2017-09-22)

On Fri, Sep 22, 2017 at 04:20:55AM -0700, Georgiana Chelu wrote:
> get_user() copies a variable from user space to kernel space
> put_user() copies a variable from kenel space to user space.
> 
> Remove duplicated argument to || because consecutive calls
> of these functions with the same arguments will have the same
> result.
> 
> Issue found by coccinelle script.
> 
> Signed-off-by: Georgiana Chelu <georgiana.chelu93@gmail.com>
> ---
>  drivers/staging/media/atomisp/pci/atomisp2/atomisp_compat_ioctl32.c | 4 ----
>  1 file changed, 4 deletions(-)
> 
> diff --git a/drivers/staging/media/atomisp/pci/atomisp2/atomisp_compat_ioctl32.c b/drivers/staging/media/atomisp/pci/atomisp2/atomisp_compat_ioctl32.c
> index 0592ac1..a27ecbe 100644
> --- a/drivers/staging/media/atomisp/pci/atomisp2/atomisp_compat_ioctl32.c
> +++ b/drivers/staging/media/atomisp/pci/atomisp2/atomisp_compat_ioctl32.c
> @@ -432,8 +432,6 @@ static int get_atomisp_overlay32(struct atomisp_overlay *kp,
>  				&up->blend_overlay_perc_u) ||
>  		get_user(kp->blend_overlay_perc_v,
>  				&up->blend_overlay_perc_v) ||
> -		get_user(kp->blend_overlay_perc_u,
> -				&up->blend_overlay_perc_u) ||
>  		get_user(kp->overlay_start_x, &up->overlay_start_y))
>  			return -EFAULT;
>  

I don't understand, you are changing the output of the code here, right?
Why is this patch ok?

confused,

greg k-h

