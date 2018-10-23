X-GM-THRID: 6614497774807285760
X-Received: by 2002:a63:784d:: with SMTP id t74-v6mr2015832pgc.39.1540312885664;
        Tue, 23 Oct 2018 09:41:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:85c4:: with SMTP id m65-v6ls1801308pfk.10.gmail; Tue, 23
 Oct 2018 09:41:24 -0700 (PDT)
X-Google-Smtp-Source: ACcGV63JQvrfmFNSIQib/7NSo4y6P405rjqXPM5Zn7IMn+Tk7TLb7S/0C5VIEyzCAVxkQOAvRnCf
X-Received: by 2002:a62:ea07:: with SMTP id t7-v6mr15343692pfh.44.1540312884813;
        Tue, 23 Oct 2018 09:41:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540312884; cv=none;
        d=google.com; s=arc-20160816;
        b=YsU5nUn/UhDX6bu9kt1P5VE3NupEhg7Lv6pVTUbPeWyUiGwJ3acKpXqw7b3GNzFacH
         MJ/HvTnaKRXjzt6YFtj29Vg0oqzJbjojhZf6omIiHt1W+yHGAmTddB57wk2iKQ9DSryQ
         Qt11Eyl25UM7BsMvuYi6hovtpThJbnd+UBlYkm1wD2eF27ITWvyFSMVtngDpSDyg5srC
         ahs9tXOYF0oEbNMnsbcM/8OPo5wvCER3eTwc/RaZZScM21t2F2XgEsjy7oXs4Buo1zN8
         dMFqMTMUkzuNBStpkSyyh1/zCCEUrJHHUSMnaW8y3RJlajFRKxR61KS9yOsaQXB5iEcP
         OqfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=WnwZ+so91CP1PhcFGaV4y0ut8tDfKZGzw007y+Z+XfU=;
        b=cr+pDZy3SKomVSWMXQvTonfaYzNoUYuLiOrPb9Ajj/KjarS6v/eG3DFT6B6t/Q9BDS
         2aNmDlbvPLF8cY44ZbeuBTQH54iMslCCye3AijDuNqezBbqYiEsxWnUDHDNwCzs7tCoy
         GMmY8iKxpFPywzeNLHkbn1LN2LLfzxCP1zxyKV4IflifVodp3ATVg9JR+83VG+5XYl/5
         SYGMEfGJA7jx0WkL5wCsdowcG/mECBGzvUmU2uUBT+QotYlEN3lfnmiJui2OlnKVhaGk
         7XT6rPNWH62UF0dynMNAawLHXiEgqsMqQsdEZfd7C66uHfabkPrWoowHyyDMIuLvmAgQ
         wMeg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@poorly.run header.s=google header.b=ZGcs8r6X;
       spf=pass (google.com: domain of sean@poorly.run designates 2607:f8b0:4864:20::c41 as permitted sender) smtp.mailfrom=sean@poorly.run
Return-Path: <sean@poorly.run>
Received: from mail-yw1-xc41.google.com (mail-yw1-xc41.google.com. [2607:f8b0:4864:20::c41])
        by gmr-mx.google.com with ESMTPS id h13-v6si76396pfd.2.2018.10.23.09.41.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Oct 2018 09:41:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of sean@poorly.run designates 2607:f8b0:4864:20::c41 as permitted sender) client-ip=2607:f8b0:4864:20::c41;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@poorly.run header.s=google header.b=ZGcs8r6X;
       spf=pass (google.com: domain of sean@poorly.run designates 2607:f8b0:4864:20::c41 as permitted sender) smtp.mailfrom=sean@poorly.run
Received: by mail-yw1-xc41.google.com with SMTP id j75-v6so811152ywj.10
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Oct 2018 09:41:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=poorly.run; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=WnwZ+so91CP1PhcFGaV4y0ut8tDfKZGzw007y+Z+XfU=;
        b=ZGcs8r6X67o5gDp/G9I1FT+wCkStfJcxSgd4tKxIWCQ7jeJRl+j25VRuo1cZC8/b1w
         y03GomtGz0zWvvfytW+Vq5w7xDHR/BTY/1kyZc0kfUZ8xQxNdNlQ8jT5p3hhzscy39Es
         N7pLljm//ShgiBlGn76M5N/eoMcvDwHuDUGEIlUCogrtma70jYl7w5RORTOUZTs3PDnw
         KHPQTMuX+2yJV+Zvs9jnlSpzm7I/vlTQCHzsvqhpV8GOsjPxKJFx8T6KpdmQf0J5cRPH
         osbrMiWpa8r9+yI8pdtN6zURKI1TA6yIZXbCpb61u00kE16KjV07KbB/+PDdR+u7uNTz
         k8yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=WnwZ+so91CP1PhcFGaV4y0ut8tDfKZGzw007y+Z+XfU=;
        b=CCTZ3dke4bPoomHX0EHvjaxXpE5D34Ne+hqrRIH2CNZ/wcxiGei+8/UE7FijwsCwlU
         74ulrFwQZyflTvxN1NMo/r1+wTUEsSmjmdy0HxvY/S+X1unQdJr/ejt334zT7I1vYcmC
         MIWpr1lD9xmSoLo1Zswgo0bV7Ubm8kgm52RsJ9WmtoJbWEW0CWRPVY/qSIxgruTruE/T
         TX/l0R6QWPAWeE8158KRZSLR97Nlr1nC3BCIDVlht8Nw27YHHCDEBu1k9kC0yr/XBhp4
         qpaokRLedrGWWyaVpfAYy6AeBW/PsgnWZL+QCDmBSmDb+gaI99ur/hWcfgWrt7UvIOZj
         A7BQ==
X-Gm-Message-State: ABuFfogUpMUiUgrBwmRLdeACDyIlcHqRmNq32TyqpuY/dNwKLxmBVHVr
	KyVy2dLJ+cau2dvlPrJERy0p3A==
X-Received: by 2002:a0d:c786:: with SMTP id j128-v6mr35285952ywd.432.1540312883868;
        Tue, 23 Oct 2018 09:41:23 -0700 (PDT)
Return-Path: <sean@poorly.run>
Received: from localhost ([2620:0:1013:11:ad55:b1db:adfe:3b9f])
        by smtp.gmail.com with ESMTPSA id e194-v6sm90670ywe.106.2018.10.23.09.41.23
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 23 Oct 2018 09:41:23 -0700 (PDT)
Date: Tue, 23 Oct 2018 12:41:22 -0400
From: Sean Paul <sean@poorly.run>
To: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mamta Shukla <mamtashukla555@gmail.com>,
	outreachy-kernel@googlegroups.com, airlied@linux.ie,
	daniel.vetter@ffwll.ch, sean@poorly.run,
	dri-devel@lists.freedesktop.org
Subject: Re: [PATCH DRM] drm: msm: Use DRM_DEV_* instead of dev_*
Message-ID: <20181023164122.GF154160@art_vandelay>
References: <20181020174926.GA32333@armorer>
 <154023617749.9962.9645598871319141504@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <154023617749.9962.9645598871319141504@skylake-alporthouse-com>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Mon, Oct 22, 2018 at 08:22:57PM +0100, Chris Wilson wrote:
> Quoting Mamta Shukla (2018-10-20 18:49:26)
> > Use DRM_DEV_INFO/ERROR/WARN instead of dev_info/err/debug to generate
> > drm-formatted specific log messages so that it will be easy to
> > differentiate in case of multiple instances of driver.
> 
> Do you not think this is a bit backwards? Both dev_* and DRM_DEV_*
> include the device id so that multiple instances can be distinguished.
> What DRM_DEV_* adds is the function name, which for user facing messages
> should not be required given a self-encapsulating informative message.

"given a self-encapsulating informative message." being the key here. I'm not
sure about i915, but most other drivers have vague/duplicated log messages which
rely on the function name for differentiation.

Sean

> -Chris

-- 
Sean Paul, Software Engineer, Google / Chromium OS

