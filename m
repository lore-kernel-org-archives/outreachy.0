X-GM-THRID: 6470705412124442624
X-Received: by 10.28.212.14 with SMTP id l14mr15656wmg.11.1506583193875;
        Thu, 28 Sep 2017 00:19:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.11.143 with SMTP id 137ls21956wml.0.canary-gmail; Thu, 28
 Sep 2017 00:19:53 -0700 (PDT)
X-Received: by 10.28.212.73 with SMTP id l70mr16413wmg.14.1506583193104;
        Thu, 28 Sep 2017 00:19:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506583193; cv=none;
        d=google.com; s=arc-20160816;
        b=WOBi9JkYIIPmHUWbne/wI/Rc6PVP4p0Gi9jh26xvXgCHekgPwk2YrH+6Tb2Q4WFL+k
         xZ/WPNtkD2Sivkc+COvwIMSamSN1qbJJEHKFRUhqd2h6XD0cWTufiRwK6NS5FMbGPwwg
         zIh1ax/tEyOpME9GDLNRYDav/I17YbFhmeWF3VXRUw7UXS3zesF6UEedjIGsDikdda5p
         vsWnNcOlLJJvHT7jU+R7xby+4mu2aPbzVpX1qf3sNrH42yx+J3h7hJBq2IUSxyQV44hr
         eDnm+9YMtfVfRNkxn3M5IqtE5i/nu3NjEI7/SOfkX8JV4dHoMFk+QPoFi0x6lL7RaW8Q
         JuYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:sender:dkim-signature
         :arc-authentication-results;
        bh=1qHE8NFU0EcTY/GSK0FBlV9i+o3NnPh/Kn0mzlSRG3A=;
        b=D5aaOKHWzFGALeCid7Tdteas5Dq6fUrPvcpLQt+TdHid1UOp54H79z9ktaEBe78s3i
         tZ/FXeXRNxLh5jz2WLJTvdoGzIUNW6De3ZH/VHKci59TBQvBNs0YBipV5JzVlqHcvseL
         JZDyQGxwa0howIk0oOVF04RPlLqx2T1cGLDF3Loly5tblJpZJ2Z4gKoj39pOZYI9mf/V
         NvJ8qmQbG0vhtW3pDPepGovbP09Iohu0OVBrPGqb869ldMcHAfT2bP9RcUXANSzKk6Ug
         pRgX2Tn4Wp3EOiLtks0LODby82AVV3dizZlcq+9HnRV0s7cxUjNmxj70qw6j4j9LA40y
         UpDA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=NnBtKFwv;
       spf=neutral (google.com: 2a00:1450:400c:c09::242 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Return-Path: <daniel@ffwll.ch>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id p70si11743wma.1.2017.09.28.00.19.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Sep 2017 00:19:53 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:400c:c09::242 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=NnBtKFwv;
       spf=neutral (google.com: 2a00:1450:400c:c09::242 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Received: by mail-wm0-x242.google.com with SMTP id e64so644176wmi.2
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Sep 2017 00:19:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=1qHE8NFU0EcTY/GSK0FBlV9i+o3NnPh/Kn0mzlSRG3A=;
        b=NnBtKFwvpLtb0opeD1thuQ26OmIxTXQ+SSR4UFXgwDmpOYmWRLL/SUjXrys4EYNdyJ
         ys+KxBjj3hgMcM5LxTK2lXnKXvk4V3oHOO4/jpdUu10X465A690vLpkMCWiWLCjavCnX
         bz2kDXd0FYs7WQ3XEaZxP9+eiCyIsqWk77+F0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=1qHE8NFU0EcTY/GSK0FBlV9i+o3NnPh/Kn0mzlSRG3A=;
        b=Le2tQG/hDxUsvDodjK019Vm3WSlcJ0e9FcETarWqHnZhiYVlloFwA4x9xdr/WRIw6j
         M/wowD4eTdZPNufQgHTEFyBHDeHFJAxdMUy6cnpcMDb/p2aRnw33MY1+eoR01KAxmX4a
         JTUQflU5ICte5mV5FhMKiRJDkU9alwxKVm0MgZPG5/IJyQXHjcjh1+w2qy493JxNBKys
         Y0THKVCxA5fgSbdXfhn/05cxlocSo9QiFQxTCSmAuQ43lGtTcpi3zGl9WOTAxU2IR02r
         0hB97YQWKHjlnC/P1phLjJYcOzAaw+yaYxuQIw11BxwYEgmZKVthUmpfWuqQIy/gnb/H
         kzzg==
X-Gm-Message-State: AHPjjUjUcMk+rbBw1YI+KKM4TmqAvzF2TFmNVPx3DLIPkRerwENuZFg+
	0+fhJ4yGFeiUI5TqZY5YHqH2YCca
X-Google-Smtp-Source: AOwi7QCN2subuSMWBUksOxFVAYuWW1H3HqAyBGCFKi4c/LzBJxS/P1Ty4uGcv3UcccxaQHy8HvqiIg==
X-Received: by 10.80.147.91 with SMTP id n27mr4862573eda.36.1506583192749;
        Thu, 28 Sep 2017 00:19:52 -0700 (PDT)
Return-Path: <daniel@ffwll.ch>
Received: from phenom.ffwll.local ([2a02:168:5635:0:39d2:f87e:2033:9f6])
        by smtp.gmail.com with ESMTPSA id k10sm687957edi.27.2017.09.28.00.19.51
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 28 Sep 2017 00:19:51 -0700 (PDT)
Sender: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Thu, 28 Sep 2017 09:19:50 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>
Cc: daniel@ffwll.ch, noralf@tronnes.org, outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v2 0/3] drm/tinydrm: drm_of_find_backlight helper
Message-ID: <20170928071950.ckqkf47e2oblwisq@phenom.ffwll.local>
References: <cover.1506578051.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1506578051.git.meghana.madhyastha@gmail.com>
X-Operating-System: Linux phenom 4.12.0-1-amd64 
User-Agent: NeoMutt/20170609 (1.8.3)

On Thu, Sep 28, 2017 at 11:31:37AM +0530, Meghana Madhyastha wrote:
> This patchset introduces some changes such as move
> tinydrm_of_find_backlight to drm_of.c and rename it to
> drm_of_find_backlight for better organizational structure.
> 
> Changes in v2:
> -Broke the patch into a patchset of 3 patches
> -Added devres versions of drm_of_find_backlight
> -Added a note about caller having to call put_device

Sorry for making you respin this once more, but the split-up here doesn't
make sense. After patch 1 tinydrm doesn't compile anymore (since it still
uses tinydrm_of_find_backlight, but that's removed already). I've also
made a few other comments on v1 of your series.
-Daniel

> 
> Meghana Madhyastha (3):
>   drm/tinydrm: Move tinydrm_of_find_backlight into drm_of.c
>   drm/tinydrm: Call drm_of_find_backlight instead of
>     tinydrm_of_find_backlight
>   drm/tinydrm: Add devres versions of drm_of_find_backlight
> 
>  drivers/gpu/drm/drm_of.c                       | 44 ++++++++++++++++++++++++++
>  drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c | 40 -----------------------
>  drivers/gpu/drm/tinydrm/mi0283qt.c             |  3 +-
>  include/drm/drm_of.h                           |  3 ++
>  include/drm/tinydrm/tinydrm-helpers.h          |  1 -
>  5 files changed, 49 insertions(+), 42 deletions(-)
> 
> -- 
> 2.7.4
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

