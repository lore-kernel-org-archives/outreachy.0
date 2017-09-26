X-GM-THRID: 6469789511840694272
X-Received: by 10.28.221.138 with SMTP id u132mr229493wmg.8.1506414051587;
        Tue, 26 Sep 2017 01:20:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.47.194 with SMTP id v185ls1620595wmv.9.canary-gmail; Tue,
 26 Sep 2017 01:20:50 -0700 (PDT)
X-Received: by 10.28.215.195 with SMTP id o186mr280877wmg.9.1506414050639;
        Tue, 26 Sep 2017 01:20:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506414050; cv=none;
        d=google.com; s=arc-20160816;
        b=kGJfh8kwAZa1EUiXKqSDKkVTY3ThkFo4vkFig5tkyEiif4Q/BPdopsJRgTMakcOQ2R
         IdxxMiHYeAi3kHTEA1C21NjcJk3HgQwvULvAMlUHEGPTUSTJsHcNbEM5Lkz6CpG2TW50
         sFe7jkYCYosaOwAzxbZwCNWEdKiyXWf/k9p/dczd33Q3jJPRkQKQKBMTvuqhqbU3v7od
         j6cpcPOCTxOl701vOMuALZWzhFFxT2tTnX1S0kmh/3TtA8I5vBLHFm/v9q0Kj5oXT8/i
         Z8z0GsYVecWFwG6IDW9znrs0ZP5/F6/MnLt+EpvpM7uxkXtZ+nxql6PCOHpMxz9epQnY
         3n1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:sender:dkim-signature
         :arc-authentication-results;
        bh=GeBoPJX7BiV84QeKob2KEbs3/FGlo3LLEdTjVJwLyUk=;
        b=KTr/4PO3UzKzoUW+3F096zcqBEA9u1M2p/pksWoyOzUQ9D6sYkGKJlDy+YuVJzX67l
         dPgeA3pogCs8m6dij8wyeZe9AStd+jPPkp9wFTzRIh2uSmgUlq7h1VXJvS+7Am1Hd7Mn
         T4tOlPMEXJEM201feyw8W8EQANA6Gz4VU3whhhFUQXZ4JU+g84+zoV/XLLNFh/v9juPd
         H4EDKeiHv1VhnULYQZJHds7yaxQShemHEsrnQjn0f2TwuVEF2T+Tvwyt9oeEda5reafg
         Dp3WKs2qVKsnV8JYasx16baZPv86ym+AvmZk4M6hnCrNBSFTruKF8v9JtMre3hrAO3RN
         LQ7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=D/B6tXwg;
       spf=neutral (google.com: 2a00:1450:400c:c09::243 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Return-Path: <daniel@ffwll.ch>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id d82si105192wmd.1.2017.09.26.01.20.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 01:20:50 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:400c:c09::243 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=D/B6tXwg;
       spf=neutral (google.com: 2a00:1450:400c:c09::243 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Received: by mail-wm0-x243.google.com with SMTP id x17so8682060wmd.5
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Sep 2017 01:20:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=GeBoPJX7BiV84QeKob2KEbs3/FGlo3LLEdTjVJwLyUk=;
        b=D/B6tXwgx9o0GFejUEicKaOQGkEAaCa4Ew2lNlNTNF6dd5PUwBkI3l8TGWjrTteb1W
         VAj11ko56TqEk1ThlzwAVApcMnHS0KMsWVUpXJC+OrMf0tHANVXTwDnEvA7AcxFZAsyY
         CclHtFjZLPzzw8cRNVdiEInfj521V2Kv4DvDg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=GeBoPJX7BiV84QeKob2KEbs3/FGlo3LLEdTjVJwLyUk=;
        b=D6qxM7ZmT9dQZC9TjM2QtRlGZyLoz7aa9f0lwdqSURYeYcZrbWH2GrAKACzO2cWAId
         dY4Me8IVLiHmPY5xO4IgQzGjHTAN8zP9bJ73KTFVrwn+164CNP3lmLcvgWShSWibnzLW
         tiRy+FYpKPMbXbxlYiloUGY4Cdf0am9Bwc60zu1i68AYmJb6xCHN5WW45r7HusCqlbHs
         42OREku8TCJq9HkjwxV9y6ySBylvhbeXeI9iJxuUPYN1IA50KRjd2zdMbJLQ3WAtqz/o
         8rz6DGINigpRmh0lD6CfzdLivxnJ6O0A5OgDhgkIUaSobaQbCCCdjIRb+OwIdk6WqLWw
         0KJw==
X-Gm-Message-State: AHPjjUi90mhlZPG0Nd00t1Jh2kuC9820Wg0HeOFRraX3/Fr0D+lqwfBs
	PMhN4HIYkNv7PjeNvtHJD5VGpA==
X-Google-Smtp-Source: AOwi7QC46Myy/3OOsquZwzB5+q+Nx4BEAqF/J7DQ+dpiKqSWk5qNWcin29QLR3ek2eTG0TEIylvYAQ==
X-Received: by 10.80.169.82 with SMTP id m18mr16986560edc.249.1506414049929;
        Tue, 26 Sep 2017 01:20:49 -0700 (PDT)
Return-Path: <daniel@ffwll.ch>
Received: from phenom.ffwll.local ([2a02:168:5635:0:39d2:f87e:2033:9f6])
        by smtp.gmail.com with ESMTPSA id x29sm5479130eda.51.2017.09.26.01.20.48
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 26 Sep 2017 01:20:48 -0700 (PDT)
Sender: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Tue, 26 Sep 2017 10:20:47 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Aishwarya Pant <aishpant@gmail.com>
Cc: Daniel Vetter <daniel.vetter@intel.com>,
	Jani Nikula <jani.nikula@linux.intel.com>,
	Sean Paul <seanpaul@chromium.org>, David Airlie <airlied@linux.ie>,
	dri-devel@lists.freedesktop.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] drm/gem: use new idr deletion
 interface to cleanup drm_gem_handle_delete()
Message-ID: <20170926082047.eqsd2lslpqp4pi5f@phenom.ffwll.local>
References: <20170925184728.GA8861@aishwarya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170925184728.GA8861@aishwarya>
X-Operating-System: Linux phenom 4.12.0-1-amd64 
User-Agent: NeoMutt/20170609 (1.8.3)

On Tue, Sep 26, 2017 at 12:17:28AM +0530, Aishwarya Pant wrote:
> The IDR deletion interface now returns the deleted entry or NULL if it was not
> present. So we don't have to do the extra work of checking if we have a
> reference on the drm_gem_object, this can be handled by checking the return
> value from idr_remove() and the extra locks can be dropped.
> 
> Signed-off-by: Aishwarya Pant <aishpant@gmail.com>

Haneen is already working on this task, with the patch just merged. Please
coordinate with mentors (me or Sean Paul) before starting on something to
avoid such clashes in the future.

Note also that some todo items are just ideas, and need confirmation with
relevant maintainers first.

Thanks, Daniel
> ---
>  drivers/gpu/drm/drm_gem.c | 21 ++-------------------
>  1 file changed, 2 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_gem.c b/drivers/gpu/drm/drm_gem.c
> index c55f338..f62757a 100644
> --- a/drivers/gpu/drm/drm_gem.c
> +++ b/drivers/gpu/drm/drm_gem.c
> @@ -282,29 +282,12 @@ drm_gem_handle_delete(struct drm_file *filp, u32 handle)
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
> -
> -	/* Check if we currently have a reference on the object */
> -	obj = idr_replace(&filp->object_idr, NULL, handle);
> -	spin_unlock(&filp->table_lock);
> -	if (IS_ERR_OR_NULL(obj))
> +	obj = idr_remove(&filp->object_idr, handle);
> +	if (!obj)
>  		return -EINVAL;
> -
>  	/* Release driver's reference and decrement refcount. */
>  	drm_gem_object_release_handle(handle, obj, filp);
> -
> -	/* And finally make the handle available for future allocations. */
> -	spin_lock(&filp->table_lock);
> -	idr_remove(&filp->object_idr, handle);
>  	spin_unlock(&filp->table_lock);
>  
>  	return 0;
> -- 
> 2.7.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170925184728.GA8861%40aishwarya.
> For more options, visit https://groups.google.com/d/optout.

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

