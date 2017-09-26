X-GM-THRID: 6468338986973659136
X-Received: by 10.28.55.209 with SMTP id e200mr242151wma.0.1506403482878;
        Mon, 25 Sep 2017 22:24:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.32.214 with SMTP id g83ls1453551lji.15.gmail; Mon, 25 Sep
 2017 22:24:41 -0700 (PDT)
X-Received: by 10.46.43.216 with SMTP id r85mr654259ljr.4.1506403481330;
        Mon, 25 Sep 2017 22:24:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506403481; cv=none;
        d=google.com; s=arc-20160816;
        b=DPe47dkrZPwjGb9z1DHD+7OO7s5DjJym6fOgFck42WGITaysANaA3qWoE4Xq34gQZB
         TCTe4IlEwcA/VPuW7uCE07s3A02OnJCSl9Inb8a4j4jvNkqgr7UrGLcfnD8gbz4Pfekn
         /MOrDMwqssb7yeRS6Wpm1r0eKASW05HHAQTgWNySkjnYHPtJ8G5W4S1+w1d+06Gyasyj
         Li5EGavAJj78g7XZcIvPUaQE7K4UohVvp6d1EDhaqIvJ+AbKjnhsyhBx2g23Xotfr6uK
         kGapyv47CYfcC3M14xDmnk4PZPH+iwNdD5SnryoWnf1t9I/5CkDSpFPn/BwnFvx+E19c
         VHTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:sender:dkim-signature
         :arc-authentication-results;
        bh=Xq6wvgEzY3yGU9QOpVesMurXBWW4WJkXuttb3FxsOko=;
        b=Hzh4o6QWU3GM0RFxRzlaDusrDNfndezoP59jv1Hj+lV1+2N+2x6Lzc14vwdRiGg9/U
         s9rBg++kglPOZMpqRCIt8zWhLzrCjK19IhdygyajOW+ketBxZbbExTP4Do6w2awNNrd+
         tzZiQTyEsqvqg186l42eiijd95QROnRzc853z5C7OWW0pBBYK2BoEFD43yYp5Y1OwjQ8
         LkF4t39GRTQQw2SAqLcMqwFk18JsaxBGKgsBknMyXd9xojjEawGa6mR9E29vg/2R+Ddw
         pchV4foA2mSa663cE7Q35pjOr+uLGZDbGWoLofQO+gshi3UChbgLFCVOWJa76Ez2nANW
         Pbaw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=eiE0ZJUu;
       spf=neutral (google.com: 2a00:1450:400c:c09::22b is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Return-Path: <daniel@ffwll.ch>
Received: from mail-wm0-x22b.google.com (mail-wm0-x22b.google.com. [2a00:1450:400c:c09::22b])
        by gmr-mx.google.com with ESMTPS id c142si1152796wmh.3.2017.09.25.22.24.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Sep 2017 22:24:41 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:400c:c09::22b is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) client-ip=2a00:1450:400c:c09::22b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=eiE0ZJUu;
       spf=neutral (google.com: 2a00:1450:400c:c09::22b is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Received: by mail-wm0-x22b.google.com with SMTP id m127so3633689wmm.3
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Sep 2017 22:24:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Xq6wvgEzY3yGU9QOpVesMurXBWW4WJkXuttb3FxsOko=;
        b=eiE0ZJUuXIvqWT5gNNkMLyBnPYJMHwxoZaNyI/yZULhp2QCXIn/8GYkLwIOtk4mAlB
         uSoZ6QLHXqU1O1ikUfinNIFfHcxmIFRUCdj22vRZPt6c+A47TEMTMW55zAj+ntTuxhd5
         gR/4o7s+xOO2sxvDmdpaECAme3vPstLkxPogg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=Xq6wvgEzY3yGU9QOpVesMurXBWW4WJkXuttb3FxsOko=;
        b=s1OKnTh0Y11URjzmqJRYyGawb/ifQQpt7kXcLZ3CyvbA35ncgbrJ6s78M4MDnrhSPa
         6UnXLDr14nRuBGFKks/veL/LYKxH0fUCE397Mv26JOJUnWiYDiEztz5IKZhrWHHcKV01
         ikuGCuCpgC9C4g8LW+5JIJTlxLlJAB5GzB1Wq+GwO8rqH88/idkA8lJkag9zZaM0P+EO
         /ANtRlZVBCa6m+Lw/kDzTKg4r81/LqqbYtB+jhu3i2QA3RAjb1lAlvAybUeWpCr5VkE/
         V1FC8qWoCfZi8LSGbQ+UZYth9VA6HUQM2d2bWPq4emCwRqusaeIAgXP6TERMre+KR4q5
         I3vQ==
X-Gm-Message-State: AHPjjUgDKcDVjLf1CYig/6C9U8FIR/qzvqmrkRqL/UStsVyOVeT01I+O
	M26V0CuqWzbqHSirCo+LAzP3NQ==
X-Google-Smtp-Source: AOwi7QCGTX0Ppw/wv+4XMxM7Hx5rnyxZfQ9t/v24b73xVXhEd0eD916na1KYdANFMy70/Y6vZlBIFQ==
X-Received: by 10.80.164.171 with SMTP id w40mr16102431edb.168.1506403480894;
        Mon, 25 Sep 2017 22:24:40 -0700 (PDT)
Return-Path: <daniel@ffwll.ch>
Received: from phenom.ffwll.local ([2a02:168:5635:0:39d2:f87e:2033:9f6])
        by smtp.gmail.com with ESMTPSA id h45sm5426863eda.92.2017.09.25.22.24.39
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 25 Sep 2017 22:24:40 -0700 (PDT)
Sender: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Tue, 26 Sep 2017 07:24:38 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Haneen Mohammed <hamohammed.sa@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>,
	dri-devel@lists.freedesktop.org,
	Daniel Vetter <daniel.vetter@intel.com>,
	Jani Nikula <jani.nikula@linux.intel.com>,
	Sean Paul <seanpaul@chromium.org>, David Airlie <airlied@linux.ie>,
	gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [RESEND PATCH] drm: Remove obsolete "This is
 gross" comment
Message-ID: <20170926052438.mql37gqx2i6sdmwo@phenom.ffwll.local>
References: <20170921210424.GA21951@Haneen>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170921210424.GA21951@Haneen>
X-Operating-System: Linux phenom 4.12.0-1-amd64 
User-Agent: NeoMutt/20170609 (1.8.3)

On Thu, Sep 21, 2017 at 03:04:24PM -0600, Haneen Mohammed wrote:
> Remove obsolete comment which was initially added in 2008 to annotate
> that idr_find() was used before idr_remove() since idr_remove() didn't
> use to return feedback. The comment now is irrelevant with
> commit f6cd7daecff5 ("drm: Release driver references to handle before
> making it available again").

Personally I'd have added a lot more of the research story you've detailed
in the private mails, just to show the work you've done. But the terse
version is ok too ofc.

> Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>

Applied to drm-misc-next, thanks.
-Daniel

> ---
>  drivers/gpu/drm/drm_gem.c | 9 ---------
>  1 file changed, 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_gem.c b/drivers/gpu/drm/drm_gem.c
> index c55f338..b9bddaa 100644
> --- a/drivers/gpu/drm/drm_gem.c
> +++ b/drivers/gpu/drm/drm_gem.c
> @@ -282,15 +282,6 @@ drm_gem_handle_delete(struct drm_file *filp, u32 handle)
>  {
>  	struct drm_gem_object *obj;
>  
> -	/* This is gross. The idr system doesn't let us try a delete and
> -	 * return an error code.  It just spews if you fail at deleting.
> -	 * So, we have to grab a lock around finding the object and then
> -	 * doing the delete on it and dropping the refcount, or the user
> -	 * could race us to double-decrement the refcount and cause a
> -	 * use-after-free later.  Given the frequency of our handle lookups,
> -	 * we may want to use ida for number allocation and a hash table
> -	 * for the pointers, anyway.
> -	 */
>  	spin_lock(&filp->table_lock);
>  
>  	/* Check if we currently have a reference on the object */
> -- 
> 2.7.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170921210424.GA21951%40Haneen.
> For more options, visit https://groups.google.com/d/optout.

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

