X-GM-THRID: 6954041305879019520
X-Received: by 2002:adf:df01:: with SMTP id y1mr1946543wrl.247.1619453786337;
        Mon, 26 Apr 2021 09:16:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6000:1287:: with SMTP id f7ls2410502wrx.3.gmail; Mon, 26
 Apr 2021 09:16:25 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyu4WFPzIqeLKKrfpQEKOYhsMO4MkCN+wCh8we6CGt9z6SgKouAch11VdJFEs3ENITHPOTm
X-Received: by 2002:a5d:4ccc:: with SMTP id c12mr24685962wrt.268.1619453785036;
        Mon, 26 Apr 2021 09:16:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619453785; cv=none;
        d=google.com; s=arc-20160816;
        b=R8X6ohQLFCRPm9k83sIn2nTUgHKvrFL6hQXF65dONImlbegzpEef10Ea8PhN1cQWJv
         WzXMbTBc9bFcnkr3VKEb9u2rEB2SVrl1ytYbhpjlpSL4Gpo30fk5QvC4R21XwZ/R4m6r
         /FshcNptobc8XgHc7GBpESedBBCLjrw1WSCSv228XbXn2EP59K7SekGbKe1GTc4XxZ0V
         EoNQ6Vs9jzWf3scG9n3I/1PZ2DLnwSsufIAXSh1BtDa1U/NzvrsJug90rZx4eFS3GFvg
         OShFpnnTlPUGr/QjxJ8Z8NwGe3htJ3p4ypi5KOiQmFLtNok76JKVG7nuEAdOnPD7p0JS
         I0RA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=6YeXSR08Kz6QNybZkKw6GZ+ruRsXau9J7ptkqp4Tb+w=;
        b=w5+FBos44jfCVGhyXph2W1GSvcUFWiErEQcTQH+5jWnd9j//+lHM2JlTd2lniQ2rqR
         FQbd7GwFTknAr5r9Oop+V+nNDrdm7bR2Pa568g8W/wlbDhQ4NTkfS6ytgtoQbr2WQAIP
         IgUw5EUX+DbU1rlnKuLSXZQNhcyyfmU9nXHDZmVQD1Ft+b0cM+hMhZouZ7YI42ZzaBZu
         OY8prgBWFg0zDrBDy4C1/xMd44kbhjbZoqfzeZ0HQM5QOo+q81Sj+YMW0+LXT++yA1JZ
         ZR5q4qaeoXREvVg2vdfGkm2YhR9b7ZonocELSle+bgKjttO34hYV0dnz4Y9KkvFHFLCt
         xqGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=fNJYzcQk;
       spf=neutral (google.com: 2a00:1450:4864:20::434 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Return-Path: <daniel@ffwll.ch>
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com. [2a00:1450:4864:20::434])
        by gmr-mx.google.com with ESMTPS id a14si155851wrm.2.2021.04.26.09.16.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Apr 2021 09:16:25 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:4864:20::434 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) client-ip=2a00:1450:4864:20::434;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=fNJYzcQk;
       spf=neutral (google.com: 2a00:1450:4864:20::434 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Received: by mail-wr1-x434.google.com with SMTP id e5so27842317wrg.7
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Apr 2021 09:16:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=6YeXSR08Kz6QNybZkKw6GZ+ruRsXau9J7ptkqp4Tb+w=;
        b=fNJYzcQkbTIjt2Q74OnHXm9C06S68bkF/fjApyVfL2GFH3nygGxiTxnYLK7kX9sZ9k
         aSNWD/CUUVGB08ZV4PpFJPnATQAzOal/leF4x1hYtBiJ1Y2my+ln+LaH7co6IFHEe7IZ
         J8SMKyUPsbQqgTibM8kd6mYrj9jr1ca+zNkkA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=6YeXSR08Kz6QNybZkKw6GZ+ruRsXau9J7ptkqp4Tb+w=;
        b=pawNhM2SwRl11VXCuAikJCjHr6HRcEzL8BTuFPHLNizvRTSqQGoFBA4YuLnYnKnF4l
         UBYEHZHaGMlXYb5rNAsunFwP3PUY5wXSlz0akz0FHhpBMHwCsHvxsL8AvshrSHPzWZ94
         yIswo1PO97JQ4JkX3h/BWt4wDIwKcvsSimnJpAjl5fiGlO+SuU8uMPoeuRlAzEqLWjtM
         3PvCHUtM73v7AKssU9tAKOMU2hMJDMITZxq4flpiTCjaoZ3ur9wijYzwQAihISbTO4ek
         WukUz9whYOKZ99iA9sqC0szJZpeV+0iQy1QfBnhPNgAcf1HTsalcFEvU8HZ93VwN4GIZ
         /BHQ==
X-Gm-Message-State: AOAM531ofAsa8/dW+E8YBXrSas4alcivug5NW+iz632H14grvPMJ5zSw
	cGQrLoil6dMzuzpQqWpKTfYetQ==
X-Received: by 2002:a5d:4584:: with SMTP id p4mr23631772wrq.383.1619453784818;
        Mon, 26 Apr 2021 09:16:24 -0700 (PDT)
Return-Path: <daniel@ffwll.ch>
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id r19sm19178286wmq.33.2021.04.26.09.16.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Apr 2021 09:16:24 -0700 (PDT)
Date: Mon, 26 Apr 2021 18:16:22 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: outreachy-kernel@googlegroups.com, dri-devel@lists.freedesktop.org,
	Christian Koenig <christian.koenig@amd.com>,
	Huang Rui <ray.huang@amd.com>, David Airlie <airlied@linux.ie>,
	Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [PATCH] drm/drm_file.c: Define drm_send_event_helper() as
 'static'
Message-ID: <YIbnVgM8Cb2AA+kh@phenom.ffwll.local>
References: <20210422175146.29840-1-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210422175146.29840-1-fmdefrancesco@gmail.com>
X-Operating-System: Linux phenom 5.10.32scarlett+ 

On Thu, Apr 22, 2021 at 07:51:46PM +0200, Fabio M. De Francesco wrote:
> drm_send_event_helper() has not prototype, it has internal linkage and
> therefore it should be defined with storage class 'static'.
> 
> Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> ---
>  drivers/gpu/drm/drm_file.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/drm_file.c b/drivers/gpu/drm/drm_file.c
> index 7efbccffc2ea..17f38d873972 100644
> --- a/drivers/gpu/drm/drm_file.c
> +++ b/drivers/gpu/drm/drm_file.c
> @@ -786,7 +786,7 @@ EXPORT_SYMBOL(drm_event_cancel_free);
>   * The timestamp variant of dma_fence_signal is used when the caller
>   * sends a valid timestamp.
>   */

Right above is the kerneldoc comment for documented the driver api that
teh subsystem exposes. Generally we remove those when there's nothing
interesting in there when making a function static, which is the case
here. Can you pls do that too in v2?

Thanks, Daniel

> -void drm_send_event_helper(struct drm_device *dev,
> +static void drm_send_event_helper(struct drm_device *dev,
>  			   struct drm_pending_event *e, ktime_t timestamp)
>  {
>  	assert_spin_locked(&dev->event_lock);
> -- 
> 2.31.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

