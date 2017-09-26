X-GM-THRID: 6468338986973659136
X-Received: by 10.28.217.12 with SMTP id q12mr247799wmg.30.1506403655270;
        Mon, 25 Sep 2017 22:27:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.193.129 with SMTP id r123ls260617wmf.1.gmail; Mon, 25 Sep
 2017 22:27:34 -0700 (PDT)
X-Received: by 10.28.131.208 with SMTP id f199mr227838wmd.11.1506403654647;
        Mon, 25 Sep 2017 22:27:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506403654; cv=none;
        d=google.com; s=arc-20160816;
        b=HmPE5Uqw4/oTehuppsqPEIKWxpZpVKttTt59faazUsc25WJXN2+wqmPO8M3r4ZR+Gz
         pUEHTwea6YGhlxKrnfUf89ey650N1QWomNQScE/JXpOMOvDOSG7f66PlThD55hNAWq1Y
         Rl4+SJOAR31gExm8/vXaphWmDpIQmDBw/eskxu0j9NvYh62pc+oqQ1tC8b3Ds216pt3Y
         u48ghrdDTladN6xdLraNjPtfpEi9BzMoe0LJFdMwR3jI0/6+nM2mv/UUU0+j5Xx3T0U6
         dZR3d66nXUjykEiYWQZPpnH++9/jyc7T6OSpUSJGxDKrOil4dL16QOH5cWdxPEAIbhhN
         qkcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:sender:dkim-signature
         :arc-authentication-results;
        bh=BiX5eKqUO8NH6nlpe9rkiAVPOXL9gXQxhj2KtZizPUQ=;
        b=RqrMXkaCL0E5GRsMht2QJubzwkFkKn17hfdY5XBZuiyFei3U0P6GDxO4Yu5tdu5Iuq
         E3duzVeNpDdx/oiraqmBqcC/2Z+HnI9sTHDD2YJ8oyoXJeznoLI6gCvK059DBLKYe4pe
         QQeoar7wHvIKefLbpFIKlYgMi9MQek/2/pi/X14B8BINOQUoIWkZVSn++rznxBqZy188
         N647GuJbXwMElQom/C6Y2TubJaKR0e1MMjQtuuH4SEhriYQYDOCjN2IAf9BAEHmXA2tH
         PScAYdUC06wnPjMXkvQhuF8un9O/FqeyWNjJKjacvb2ZB0deeDSMC0r70shxwk4+LAXp
         JgEA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=bai/kZWw;
       spf=neutral (google.com: 2a00:1450:400c:c09::241 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Return-Path: <daniel@ffwll.ch>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id l133si77014wmb.3.2017.09.25.22.27.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Sep 2017 22:27:34 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:400c:c09::241 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=bai/kZWw;
       spf=neutral (google.com: 2a00:1450:400c:c09::241 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Received: by mail-wm0-x241.google.com with SMTP id r136so8404086wmf.3
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Sep 2017 22:27:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=BiX5eKqUO8NH6nlpe9rkiAVPOXL9gXQxhj2KtZizPUQ=;
        b=bai/kZWwiwQggZ8HxAxlc8Ubx6wmVInqBhtxOQK/t34CAJ89GndAt8YC5S6RYB8P/k
         43RIBjUAxiB1TDXAQiTo/FANjQ2K8+eMCpBjzZREt4+HC4Nd26729miX9PkVGL5VlXlz
         XDxA61fZZdIL5msAS8FctB3ioc0xZrHiLy5Tk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=BiX5eKqUO8NH6nlpe9rkiAVPOXL9gXQxhj2KtZizPUQ=;
        b=PCjiX6dLwZkeRnoVGZrcYr7khOkK9FkCH9ZuI0RVcdvStfvzig0GqFToKn8ypNREww
         yZxvhXupMe761SzeFkT945xC2BBqhbWULEWhofK8lR6zOmcpIs4oaZbJpGSENzP4Vv+i
         NK/QF2zfyL8KvW9Jby/4n5ra/juCnYDLoTrn3E9Ua5WvexJYnEf8E+B5OmPp8clyEbjV
         DcEmtad/+JKaI/FlOOa6Ct9ri2OkfHP6sc7Dlz8n04blDNa4CMckExWbzrdz0WURdHsn
         OThYESdjPilrbhq5m3J53RgLcY2NeHxVtTFi2zZfbd0f4XD0hV6w7W30DY9bvctaR1hc
         6awA==
X-Gm-Message-State: AHPjjUixMoL3z+beTBDJY5PCXeZwfvNlgZxCOkXUbwSTUH7ixZb+8fVS
	unlWh3+q6N5j1cxAH3Ce2TXlgw==
X-Google-Smtp-Source: AOwi7QBjjP3VPuNd0sZARD1iR0XMXLt1wYrxCe410Y6Cd/nx4G5lrv20oPjosSKnINQU9mF7tg3SCA==
X-Received: by 10.80.170.217 with SMTP id r25mr16942474edc.220.1506403654256;
        Mon, 25 Sep 2017 22:27:34 -0700 (PDT)
Return-Path: <daniel@ffwll.ch>
Received: from phenom.ffwll.local ([2a02:168:5635:0:39d2:f87e:2033:9f6])
        by smtp.gmail.com with ESMTPSA id w51sm4238881edd.60.2017.09.25.22.27.33
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 25 Sep 2017 22:27:33 -0700 (PDT)
Sender: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Tue, 26 Sep 2017 07:27:31 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Haneen Mohammed <hamohammed.sa@gmail.com>
Cc: dri-devel@lists.freedesktop.org,
	Daniel Vetter <daniel.vetter@intel.com>,
	Jani Nikula <jani.nikula@linux.intel.com>,
	Sean Paul <seanpaul@chromium.org>, David Airlie <airlied@linux.ie>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>,
	gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v2] drm: Remove obsolete "This is
 gross" comment
Message-ID: <20170926052731.q5arc4znvjjakf5g@phenom.ffwll.local>
References: <20170922013409.GA2741@Haneen>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170922013409.GA2741@Haneen>
X-Operating-System: Linux phenom 4.12.0-1-amd64 
User-Agent: NeoMutt/20170609 (1.8.3)

On Thu, Sep 21, 2017 at 07:34:09PM -0600, Haneen Mohammed wrote:
> Remove obsolete comment which was initially added in 2008 to annotate
> that idr_find() was used before idr_remove() since idr_remove() didn't
> use to return feedback. The comment now is irrelevant with
> commit f6cd7daecff5 ("drm: Release driver references to handle before
> making it available again").
> In addition, remove the todo item about this issue.
> 
> Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> ---
> Changes in v2:
> - remove todo item regarding this comment

Oh drat, I applied v1. Let's blame this on my bad case of a jetlag :-/

Can you pls send a new patch which just removes the todo entry? Sorry
about the confusion.
-Daniel

> 
>  Documentation/gpu/todo.rst | 6 ------
>  drivers/gpu/drm/drm_gem.c  | 9 ---------
>  2 files changed, 15 deletions(-)
> 
> diff --git a/Documentation/gpu/todo.rst b/Documentation/gpu/todo.rst
> index 22af55d..5e96dc7 100644
> --- a/Documentation/gpu/todo.rst
> +++ b/Documentation/gpu/todo.rst
> @@ -180,12 +180,6 @@ Contact: Daniel Vetter, respective driver maintainers
>  Core refactorings
>  =================
>  
> -Use new IDR deletion interface to clean up drm_gem_handle_delete()
> -------------------------------------------------------------------
> -
> -See the "This is gross" comment -- apparently the IDR system now can return an
> -error code instead of oopsing.
> -
>  Clean up the DRM header mess
>  ----------------------------
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170922013409.GA2741%40Haneen.
> For more options, visit https://groups.google.com/d/optout.

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

