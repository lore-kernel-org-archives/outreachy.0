X-GM-THRID: 6952150809139216384
X-Received: by 2002:adf:a1cd:: with SMTP id v13mr19604588wrv.332.1618908899306;
        Tue, 20 Apr 2021 01:54:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:600c:4101:: with SMTP id j1ls1184823wmi.2.canary-gmail;
 Tue, 20 Apr 2021 01:54:58 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzQUkZaLBioGEHuPL2hdk1QLbztLtEWSddRiAWviP4Hz0YcvjhbT7wK9uVyd0C6W5QQd9lB
X-Received: by 2002:a1c:6a06:: with SMTP id f6mr3242193wmc.179.1618908897984;
        Tue, 20 Apr 2021 01:54:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618908897; cv=none;
        d=google.com; s=arc-20160816;
        b=0NslaktFwdbrm+eZNJKLwcS8uJQJVT8Hkgfy/YVySQ40hMDBvhTpxwZiWOyi0tMhuz
         E7fgV79aJitZU+8c6RUoT8MK3tSwFL+iOc00kcWoaUS0jUpvZnVcOG7+drzOkURh0GPF
         BCI3AueUzUKB8eu4+Xsa4CcDbERVZYES3IBr4/+c7BmaPUuj93RWjuGgJP+eOuUDzsEc
         j8LSDY+oB6Fgy/PK8s+99jwYVAMcRtR9zndimdo9fqSoPx/GR95D/dxIFrgH99NjWzTO
         CcJyTR1r/R+e9/t30Iwxepq2ApSpxC/nir//ZazSI/mKmLONfL/JAfHt19ljK6mBW1pM
         dnwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=OQ0bGSmF61lVuHRAxEBkn5f3XkSZTklGu+hYT4WzN9s=;
        b=plrIlwiMzod4uvwlpKmXmsloGPhy35XBZLAvhvXgYMuYmQIjt4seaHVzCGxpptTp9S
         5VLwniwfXvLW3KUJCho0VBvFhoRrqbyYCoOi1WnqAcI4DYSSWj0QudQriEs1mLe90Mak
         Zi1raCRqDvqR++FWORjEQsjPhC1Wz7KElolvU74FOTIWNJtONZyVTPfmoC4AsGUoAWUn
         x6Q0YRkjD6u1rxYdXVyy9WGKi+S7HV7aps05wowBNzQfodg9SZ78xcSUtKCycoAGroaJ
         lTcLtJGHoYvHXISpIdxCHc6ViImBodSciF5Gc1jL/756R1iJGewpr+nrFTkWi7uLdXXm
         vc0Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=RwnMxIQS;
       spf=neutral (google.com: 2a00:1450:4864:20::52b is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Return-Path: <daniel@ffwll.ch>
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com. [2a00:1450:4864:20::52b])
        by gmr-mx.google.com with ESMTPS id c6si160802wmr.2.2021.04.20.01.54.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Apr 2021 01:54:57 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:4864:20::52b is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) client-ip=2a00:1450:4864:20::52b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=RwnMxIQS;
       spf=neutral (google.com: 2a00:1450:4864:20::52b is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Received: by mail-ed1-x52b.google.com with SMTP id s15so44094600edd.4
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Apr 2021 01:54:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=OQ0bGSmF61lVuHRAxEBkn5f3XkSZTklGu+hYT4WzN9s=;
        b=RwnMxIQSK6ZsOWq1KAjkS7BHUuz+BlMaDqeW8B5MMkVrKW/wIBwhVwp3FldICE1lS9
         /qZLYQIaPVnBl9fgu0re3UK+HLDxFwhDkuccpfbjMkXUbAYArzq39UGEgH/ev1UZphvo
         /6bxIctVS07Mr9rIW70cXPWxBWvrfewSuieys=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=OQ0bGSmF61lVuHRAxEBkn5f3XkSZTklGu+hYT4WzN9s=;
        b=Jadn4SWKUcESKIGrweeCPXjB7mMUyEgl7ORdMy8EgzceDKUPKW8mloEEj6qLvF7BoE
         qahi5Y5evUdnPPJe14m3npCj9gtlXb3oF0KKD6lwPtGHaYucGvktSDY9jTZs8fqRUa2m
         00ZB35a5CDFyhgnW/JLhEhfwAD1FyUrE/JJy6YPPgMin5idLq4vhn2rgbb17T3ie0yG3
         vHVej9N/xdIaIhbYkPyXsoSEXoML787LblDMcoxnJsVDBrJpAAUpSAaCfIKmuKyuONOo
         nsb9dyAdexzod1cVusGX9DO3cCgMlxDFb3ZpPhzA+YyhTPlJN73cgAKdp9nltOQi59XK
         RrXA==
X-Gm-Message-State: AOAM53160toOi92hxScW3jF7FH6J2w/7u2i6D6L38bNUHaJfvH42Y5bN
	DoIXVeHox3a2j4S9daWQha6eCbLmsoxN+w==
X-Received: by 2002:a05:6402:46:: with SMTP id f6mr31137197edu.252.1618908897839;
        Tue, 20 Apr 2021 01:54:57 -0700 (PDT)
Return-Path: <daniel@ffwll.ch>
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id g11sm14951850edy.9.2021.04.20.01.54.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Apr 2021 01:54:57 -0700 (PDT)
Date: Tue, 20 Apr 2021 10:54:55 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: outreachy-kernel@googlegroups.com, dri-devel@lists.freedesktop.org,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [PATCH v2] drm/drm_bufs.c: In switch, add break in default case
Message-ID: <YH6W3/dex+AJT93t@phenom.ffwll.local>
References: <20210417161552.6571-1-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210417161552.6571-1-fmdefrancesco@gmail.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 

On Sat, Apr 17, 2021 at 06:15:52PM +0200, Fabio M. De Francesco wrote:
> Added a "break" in the default case of a switch select statement.
> GCC complains, although this "break" is not strictly necessary 
> for the code to work as expected.

Luckily we already have a comment stating that this is all just to make
gcc happy.
> 
> Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>

Applied to drm-misc-next, thanks for the patch.
-Daniel

> ---
> 
> Changes from v1: Added the reason why of this change in the log.
> 
>  drivers/gpu/drm/drm_bufs.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/drm_bufs.c b/drivers/gpu/drm/drm_bufs.c
> index e3d77dfefb0a..fc40aa0adf73 100644
> --- a/drivers/gpu/drm/drm_bufs.c
> +++ b/drivers/gpu/drm/drm_bufs.c
> @@ -79,7 +79,7 @@ static struct drm_map_list *drm_find_matching_map(struct drm_device *dev,
>  				return entry;
>  			break;
>  		default: /* Make gcc happy */
> -			;
> +			break;
>  		}
>  		if (entry->map->offset == map->offset)
>  			return entry;
> -- 
> 2.31.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

