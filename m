X-GM-THRID: 6403259174174588928
X-Received: by 10.129.92.69 with SMTP id q66mr1512260ywb.164.1490944511102;
        Fri, 31 Mar 2017 00:15:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.1.7 with SMTP id 7ls4404994itk.11.canary-gmail; Fri, 31 Mar
 2017 00:15:10 -0700 (PDT)
X-Received: by 10.99.66.193 with SMTP id p184mr1343252pga.141.1490944510267;
        Fri, 31 Mar 2017 00:15:10 -0700 (PDT)
Received: by 10.55.104.130 with SMTP id d124msqkc;
        Thu, 30 Mar 2017 23:31:05 -0700 (PDT)
X-Received: by 10.46.77.69 with SMTP id a66mr435957ljb.11.1490941865315;
        Thu, 30 Mar 2017 23:31:05 -0700 (PDT)
Return-Path: <daniel@ffwll.ch>
Received: from mail-wr0-x241.google.com (mail-wr0-x241.google.com. [2a00:1450:400c:c0c::241])
        by gmr-mx.google.com with ESMTPS id 82si113857wmg.3.2017.03.30.23.31.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 30 Mar 2017 23:31:05 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:400c:c0c::241 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) client-ip=2a00:1450:400c:c0c::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch;
       spf=neutral (google.com: 2a00:1450:400c:c0c::241 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Received: by mail-wr0-x241.google.com with SMTP id w43so17701551wrb.1
        for <outreachy-kernel@googlegroups.com>; Thu, 30 Mar 2017 23:31:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=sender:date:from:to:cc:subject:message-id:mail-followup-to
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=fpWpqryfltWQ1l0U7aqTdYCgocZVGBEMRF/BTTB68XY=;
        b=RhWLGXeGfnrmf3f2qU8unuitMXcu1WExGji7UUFky7U8yjUVPYo1XMXlJy+sXl5BQi
         l+CZUBivmNF/BTKeo49nI7Ho+eKzmBzXmlNrPa4dErfUkPhNHvBMckZilwcveP3fNbRx
         OXl3G1TQNPufzAQfvwpDu3ruUXeGUGgacHxKg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent;
        bh=fpWpqryfltWQ1l0U7aqTdYCgocZVGBEMRF/BTTB68XY=;
        b=RtTHoMu8ATf1vRwkWJgLAEdotA4SP8bcHY9Pa7yE9stk6fens9JctZ7B3uloyH9ujN
         2zhv4//G9voFiHQ2HRG+5aONYxkJMXUw/p+I/K05He6/tQ1Pk7u2YR9M0xHVDXKv+f9E
         eedLy4EiqqUdM1Mrwx8Tp+8Qm3b5/Z/q6Me4btrzf2cEN9bH1TZs6MrYYGgdv+51glt9
         HJN8BEJZlnOi0mh7kCAJz9wZe6KuTiuXfaeWntSDqPT4ao40wCxhFYpfTURvI/67Tv1X
         Uvr8UQDNALdz4BLNxwko4E+L4/M1hMN6420uzf+A4UoJBQ1PFbbXzBAgt5Iq0FF4b7/W
         5RqA==
X-Gm-Message-State: AFeK/H32M4gHc9d3LdZeKazJ5bw/SP1lL/7c3gI+WwCTba3rUbYmYVYD/g7cEpT2qPtg8w==
X-Received: by 10.223.142.23 with SMTP id n23mr1135146wrb.145.1490941865033;
        Thu, 30 Mar 2017 23:31:05 -0700 (PDT)
Return-Path: <daniel@ffwll.ch>
Received: from phenom.ffwll.local ([2a02:168:563a:0:c2b5:dd51:f7b6:65bb])
        by smtp.gmail.com with ESMTPSA id m29sm5464154wrm.4.2017.03.30.23.31.03
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 30 Mar 2017 23:31:04 -0700 (PDT)
Sender: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Fri, 31 Mar 2017 08:31:01 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Tamara Diaconita <diaconitatamara@gmail.com>
Cc: daniel.vetter@intel.com, jani.nikula@linux.intel.com, airlied@linux.ie,
	intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	corbet@lwn.net, Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: Re: [PATCH] drivers: gpu: drm: i915L intel_lpe_audio: Fix kerneldoc
 comments
Message-ID: <20170331063101.zjj5ltjh5gyigsa7@phenom.ffwll.local>
Mail-Followup-To: Tamara Diaconita <diaconitatamara@gmail.com>,
	daniel.vetter@intel.com, jani.nikula@linux.intel.com,
	airlied@linux.ie, intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, corbet@lwn.net,
	Tamara Diaconita <diaconita.tamara@gmail.com>
References: <20170330115510.14054-1-diaconita.tamara@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170330115510.14054-1-diaconita.tamara@gmail.com>
X-Operating-System: Linux phenom 4.9.0-2-amd64 
User-Agent: NeoMutt/20170306 (1.8.0)

On Thu, Mar 30, 2017 at 02:55:10PM +0300, Tamara Diaconita wrote:
> Add description for existing parameter 'pipe' to fix the build
> warning: ./drivers/gpu/drm/i915/intel_lpe_audio.c:342: warning: No
> description found for parameter 'pipe'.
> 
> Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>

Applied, thanks.
-Daniel

> ---
>  drivers/gpu/drm/i915/intel_lpe_audio.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/gpu/drm/i915/intel_lpe_audio.c b/drivers/gpu/drm/i915/intel_lpe_audio.c
> index 7a5b41b..d8ca187 100644
> --- a/drivers/gpu/drm/i915/intel_lpe_audio.c
> +++ b/drivers/gpu/drm/i915/intel_lpe_audio.c
> @@ -331,6 +331,7 @@ void intel_lpe_audio_teardown(struct drm_i915_private *dev_priv)
>   * audio driver and i915
>   * @dev_priv: the i915 drm device private data
>   * @eld : ELD data
> + * @pipe: pipe id
>   * @port: port id
>   * @tmds_clk_speed: tmds clock frequency in Hz
>   *
> -- 
> 2.9.3
> 
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

