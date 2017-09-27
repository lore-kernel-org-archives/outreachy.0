X-GM-THRID: 6470196947471826944
X-Received: by 10.28.150.151 with SMTP id y145mr94976wmd.22.1506501807612;
        Wed, 27 Sep 2017 01:43:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.141.225 with SMTP id o88ls257584wrb.3.gmail; Wed, 27 Sep
 2017 01:43:26 -0700 (PDT)
X-Received: by 10.223.184.104 with SMTP id u37mr57068wrf.29.1506501806857;
        Wed, 27 Sep 2017 01:43:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506501806; cv=none;
        d=google.com; s=arc-20160816;
        b=t5pNWLe44bBypR3/6wk3CqZTW3gCHLhqXWOnelgfmvKtY4YPeUVYe3pydvUxm6zGB5
         IJDUrqnKVmS9sn9NMH6qRRCS9aR+bcLwyPd5lgZIY6YdWO20UDmLuZqActCF3KD7702g
         WiJylFsoQK598OqcdtU79jon5N4+GdcjwqTKDOZ2RRwi7JwVQdsiu2QlUoRJJN7cpkfL
         gBLEF2gtVos5e5ID54Bk12jybxAkkbuckE6pBtc1AUH7N3FtxX+1K/Utpypoaew3MtJ3
         Ic4NT5durSkuGRwB3bySqRlHKO6k17UGgWQ9iy/yPvWmK84I4z+hAGAH9BlPHh0OhB0y
         ER1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:sender:dkim-signature
         :arc-authentication-results;
        bh=df2kk6+/pS5IHobUoAJxRFl5LQdE/lo4KO0R3UQCxXg=;
        b=AZDGbnJz6ZtZ7ilsv4ZR2GJIXrKuuLZpbF+NwmPLnLOXbMx5re4UPUICsOwhJWLvRi
         ETWxs8lYWqlzSDgrPyPp6ITmzv2EyCirY8U8hKpGXtm017JgILsECP/Z2Cw9wv0MYR6z
         ywCpR5aag+qDYOHHarLBgFJAqaB5GQ1XMKgF9TJiR9FN12LoQalCBUjB7R7WbKk92nqT
         r9GEr4ZoBYdksLnGoLcNfwL+HFhrUpx+DUpZ0xav6CfM4cwAZu8FaloK0L3R1gNIUIe8
         TJwQIU7dMyc6omu8WRaAvkv6wrObr/3MjKPnrfXZhn2A5aXL1Pl/efL2odWWjzX/dOFw
         mLgw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=M3BFnTi2;
       spf=neutral (google.com: 2a00:1450:400c:c09::241 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Return-Path: <daniel@ffwll.ch>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id k18si1074040wmd.1.2017.09.27.01.43.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Sep 2017 01:43:26 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:400c:c09::241 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=M3BFnTi2;
       spf=neutral (google.com: 2a00:1450:400c:c09::241 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Received: by mail-wm0-x241.google.com with SMTP id q124so604795wmb.5
        for <outreachy-kernel@googlegroups.com>; Wed, 27 Sep 2017 01:43:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=df2kk6+/pS5IHobUoAJxRFl5LQdE/lo4KO0R3UQCxXg=;
        b=M3BFnTi2ZMppLVnunFuoNKpWsKR91J/KcOukX5eZ0D6i4XQZtadJQtsBHc9xYxJDd8
         eo8tk+UNa/SQNCIDVP+V7GZZ6Pe3fc3F1gHkSUEj5t/n6HMdRVxXkZi4xMbNLKNTbGru
         Jiwnhqr1inPmX1jv6quD/WEUkzJTgVflfKQto=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=df2kk6+/pS5IHobUoAJxRFl5LQdE/lo4KO0R3UQCxXg=;
        b=DjU3mbot8W5V6KjAHxJRaF9ac6Do4C/YOnBRlTRYJK97iedqiIQZstrrVhyDaG4oQP
         vQXr4J8xxyac0KNCoG6QPJ44kK/9LqOWbhsyaSQvXF68jEpz4Ebxza+xjXF8qatZGtQX
         nZmSKH8M2Tb/1aGLhz52wmMJmCTcEz19qPupdqQIkvW2DDv9RZ33TjVS7CSYMnS9ctbR
         NZPufcUWlrCsb1+Xp27vY1vUUx13zPQPuMR6WTaommQNGeZYmX4SoxHDF8obneyHtXHo
         kK8J2LOkH6JOJJJDmhR2hU4wXYs3YIeZKXuZ3Hgci6NGvjDzHO9hg120MLr6wzC07ZN3
         UwZQ==
X-Gm-Message-State: AHPjjUh7nAIHCQd8YHQ1l1FFDDGsKvRTofQTuGT4biMk152Cwymc1d6a
	M+AdkqX+LLMj34sXSVCrySdvmA==
X-Google-Smtp-Source: AOwi7QBfzK2XhVZSYkIseT0j4P5C7BmaNyBQWt6wiE/f617ktx10m97r40Wvoye8zNJNp39eEyqeow==
X-Received: by 10.80.166.209 with SMTP id f17mr1061300edc.278.1506501806027;
        Wed, 27 Sep 2017 01:43:26 -0700 (PDT)
Return-Path: <daniel@ffwll.ch>
Received: from phenom.ffwll.local ([2a02:168:5635:0:39d2:f87e:2033:9f6])
        by smtp.gmail.com with ESMTPSA id t5sm6226133edh.32.2017.09.27.01.43.24
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 27 Sep 2017 01:43:25 -0700 (PDT)
Sender: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 27 Sep 2017 10:43:19 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Haneen Mohammed <hamohammed.sa@gmail.com>
Cc: dri-devel@lists.freedesktop.org,
	Daniel Vetter <daniel.vetter@intel.com>,
	Jani Nikula <jani.nikula@linux.intel.com>,
	Sean Paul <seanpaul@chromium.org>, David Airlie <airlied@linux.ie>,
	Jonathan Corbet <corbet@lwn.net>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>,
	gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] drm/doc: Remove todo item about "This
 is gross" comment
Message-ID: <20170927084319.s5ylhmrcyolaszj6@phenom.ffwll.local>
References: <20170926210835.GA4622@Haneen>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170926210835.GA4622@Haneen>
X-Operating-System: Linux phenom 4.12.0-1-amd64 
User-Agent: NeoMutt/20170609 (1.8.3)

On Tue, Sep 26, 2017 at 03:08:35PM -0600, Haneen Mohammed wrote:
> This patch remove the todo item "Use new IDR deletion interface to
> clean up drm_gem_handle_delete()" after it has been resolved with
> the commit "drm: Remove obsolete "This is gross" comment".
> 
> Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>

Applied, thanks.
-Daniel

> ---
>  Documentation/gpu/todo.rst | 6 ------
>  1 file changed, 6 deletions(-)
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
> -- 
> 2.7.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170926210835.GA4622%40Haneen.
> For more options, visit https://groups.google.com/d/optout.

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

