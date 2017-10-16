X-GM-THRID: 6475500386308325376
X-Received: by 10.46.48.7 with SMTP id w7mr291619ljw.28.1508144615273;
        Mon, 16 Oct 2017 02:03:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.93.79 with SMTP id r76ls1743550ljb.7.gmail; Mon, 16 Oct
 2017 02:03:33 -0700 (PDT)
X-Received: by 10.46.18.17 with SMTP id t17mr284881lje.33.1508144613811;
        Mon, 16 Oct 2017 02:03:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508144613; cv=none;
        d=google.com; s=arc-20160816;
        b=YasVrb1oQ9OsuKZ1sw2tC6H0G3MoCcIjogGnCYSoyvTEPB7whn/HXZ+nCKdXQf5rC2
         cK4E7sUntwpm+bSaOkxL7MD0DuUihzOxbOTkCNN/UTnzJFL8cli8tsaqqhdDLq49VQe+
         R524PkNGC6KCnA3etPNzB5oMftSnT0joivONmZW40x7TmAHPX7qWKEQvULeqeb4r/icW
         Y6adYXLrhIaxx61kPrDT10tPjdroFDRX0rtn6FCGSht0RoCLQ94tSb36TVvEnyTw6FOF
         AildBD6PdtbbaXv0YUsMx9pVDTmfBCyBpt+YxlM6vDyJnfoGjWpMwX9PH7fsYz9SE9Za
         rlrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:sender:dkim-signature
         :arc-authentication-results;
        bh=N/pDmJcZTDcMh9T/CnO6S6sQR/grIt7skcn0o/S/hWc=;
        b=Kmf1Tj+db8GCR/0nBYu5G0Wv3XwXZfTfIxH+Kbqo4UnH8k1+DsOzBx0xML+mDBjXpz
         pBo/MuNx7BoPZ3CBv9k4ip9HNzDBW6ytvKy1S9iSJq68v5oAnLfOL/WzpfuT/jZ2PePe
         EqKeakEiUm1/rjjRpGwFVFtHcG6V39Lfcpy22sn0fzl7VWKJWQ5hY2MQANjGElruAdHd
         pNg3R6uAOknBjTvMPGGYj3i2ryHMrO5po9J5Kh3oqPz4wAx/PXYOSKO1zrA/E347i4qf
         GfMWtjfT3ZUDOM/gWky0z5pU6qL8mCx+taKab8/74NSmvyNazIN2OICYhATndXdIWj8g
         8ySQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=VBLjrQOK;
       spf=neutral (google.com: 2a00:1450:400c:c09::229 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Return-Path: <daniel@ffwll.ch>
Received: from mail-wm0-x229.google.com (mail-wm0-x229.google.com. [2a00:1450:400c:c09::229])
        by gmr-mx.google.com with ESMTPS id g84si245026lfl.3.2017.10.16.02.03.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Oct 2017 02:03:33 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:400c:c09::229 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) client-ip=2a00:1450:400c:c09::229;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=VBLjrQOK;
       spf=neutral (google.com: 2a00:1450:400c:c09::229 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Received: by mail-wm0-x229.google.com with SMTP id b189so820995wmd.4
        for <outreachy-kernel@googlegroups.com>; Mon, 16 Oct 2017 02:03:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=N/pDmJcZTDcMh9T/CnO6S6sQR/grIt7skcn0o/S/hWc=;
        b=VBLjrQOK2Hgf1RxfNEUe4oUEwkCBBVT98H8Z42RNyYklpnc60JkstNTNeRTgh55E6Z
         ECdqzfWIgXB+6ri5c3QsrM43U4G9RPBRSrLt4ptO7JKX1u53dsg6QY9Uj1PVktgX3SR+
         G7jZKQn2Z1fzfdUaPkWlZdygS0YwTsJmdCe48=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=N/pDmJcZTDcMh9T/CnO6S6sQR/grIt7skcn0o/S/hWc=;
        b=JDGCiE5VFSkLeCfXCMurHCr06fSM5pqMmSbYG0LcZbpuDVizU0bkO/DMAzQt689IHz
         1enmltgOz2ixwzvxU4fWk+jtyUlrEi1ozj5blaRbQwUm9Blqrpk3ZPEReFMRV7sTARPw
         WDcK4+FcszZfTuqLJS2Ob4OkcgWa8HvIpjuF99wfyWsy91+MY0H49hotbLapuYzH/ikG
         yLOqIFedkIN6upKkMu5Bd8VdRaiu/EDBY1XHITtZEB7Au18jy3Cyi2xX90RIbAkrmmM2
         azphnvK1kwzVGcH7RuFiCIXh1knwB18eV4/JvGmn4LE5olnTRuSaMhEg4mSBUEg6S8/a
         bYrA==
X-Gm-Message-State: AMCzsaW2rdntJXvYmViPuNujtX+hHLZTms50KnHE6mQPVpN90LaPitJ6
	31jqS35VuqV190Z4lARsFkZLHw==
X-Google-Smtp-Source: AOwi7QDSGN5Ikf5o7oLegbiGEtH2IpDsG1po5JOxTxXwMkcsPjOb93j+rs1CeM/vHaP57stYX6j6VA==
X-Received: by 10.80.175.66 with SMTP id g60mr12472561edd.283.1508144613033;
        Mon, 16 Oct 2017 02:03:33 -0700 (PDT)
Return-Path: <daniel@ffwll.ch>
Received: from phenom.ffwll.local ([2a02:168:5635:0:39d2:f87e:2033:9f6])
        by smtp.gmail.com with ESMTPSA id k51sm5559242ede.42.2017.10.16.02.03.31
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 16 Oct 2017 02:03:32 -0700 (PDT)
Sender: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Mon, 16 Oct 2017 11:03:30 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Haneen Mohammed <hamohammed.sa@gmail.com>
Cc: dri-devel@lists.freedesktop.org,
	Daniel Vetter <daniel.vetter@intel.com>,
	Jani Nikula <jani.nikula@linux.intel.com>,
	Sean Paul <seanpaul@chromium.org>, David Airlie <airlied@linux.ie>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>,
	gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v2 3/3] drm/debug: Add missing
 kerneldoc comments to exported functions
Message-ID: <20171016090330.tzmq36qwmar7znks@phenom.ffwll.local>
References: <cover.1507773977.git.hamohammed.sa@gmail.com>
 <7fc383433d651ee4e81e2c132afdad57ad04b9dd.1507773977.git.hamohammed.sa@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7fc383433d651ee4e81e2c132afdad57ad04b9dd.1507773977.git.hamohammed.sa@gmail.com>
X-Operating-System: Linux phenom 4.12.0-1-amd64 
User-Agent: NeoMutt/20170609 (1.8.3)

On Wed, Oct 11, 2017 at 08:39:15PM -0600, Haneen Mohammed wrote:
> Add missing documentation for exported functions to avoid kerneldoc
> warning.
> 
> Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> ---
> Changes in v2: 
> - Include this patch to avoid kerneldoc warning
> 
>  drivers/gpu/drm/drm_debug.c | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
> 
> diff --git a/drivers/gpu/drm/drm_debug.c b/drivers/gpu/drm/drm_debug.c
> index a79593f..6e66b05 100644
> --- a/drivers/gpu/drm/drm_debug.c
> +++ b/drivers/gpu/drm/drm_debug.c
> @@ -29,6 +29,16 @@
>  
>  #define DRM_PRINTK_FMT "[" DRM_NAME ":%s]%s %pV"
>  
> +/**
> + * drm_dev_printk
> + *
> + * @dev: device pointer
> + * @level: logging level
> + * @category: debug category
> + * @function_name: function name
> + * @prefix: prefix string
> + * @format: printf() like format string

This shuts up kernel-doc complaining about missing doc entries, but not
sure how useful this is. A sentence to what it does, and that drivers
should use it through the provided DRM_DEV_* macros would be more
informative. Similarly for the one below.

Thanks, Daniel

> + */
>  void drm_dev_printk(const struct device *dev, const char *level,
>  		    unsigned int category, const char *function_name,
>  		    const char *prefix, const char *format, ...)
> @@ -53,6 +63,13 @@ void drm_dev_printk(const struct device *dev, const char *level,
>  }
>  EXPORT_SYMBOL(drm_dev_printk);
>  
> +/**
> + * drm_printk
> + *
> + * @level: logging level
> + * @category: debug category
> + * @format: printf() like format string
> + */
>  void drm_printk(const char *level, unsigned int category,
>  		const char *format, ...)
>  {
> -- 
> 2.7.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/7fc383433d651ee4e81e2c132afdad57ad04b9dd.1507773977.git.hamohammed.sa%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

