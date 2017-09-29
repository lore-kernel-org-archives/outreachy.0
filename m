X-GM-THRID: 6470705412124442624
X-Received: by 10.98.67.153 with SMTP id l25mr701557pfi.19.1506698941585;
        Fri, 29 Sep 2017 08:29:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.242.17 with SMTP id m17ls2037801pfh.11.gmail; Fri, 29 Sep
 2017 08:29:00 -0700 (PDT)
X-Received: by 10.84.179.65 with SMTP id a59mr683258plc.60.1506698940367;
        Fri, 29 Sep 2017 08:29:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506698940; cv=none;
        d=google.com; s=arc-20160816;
        b=D4s1I14zmqtEyV/NOAihaK6hqUCGBbusuoewDMdBLG2KzSZRh6QYciAO/E/pSUCx/b
         ZRc6K0oPUxTJwhSzLcMDx3C0sYoHCR97EZnVdu3mFwkfV9wJtjhw0MeZ645wmAsafbl1
         7e/fUtu5k9PX24pMD+8lmFxCV88X2xWwnRa+oYhWcpLNa8t8EwETMvOxTy/zi56t9uYb
         m4KFUht49Kmti1QJ9HM0UpgDSPp3XbQYPMgsBvUYILopHT7Ns1g3hwxK/x2CV4R9DJbW
         A+IG0Ftn8ylpuO+L1VKsmVycDP/NXfqxUEoSLyimkQDwMN0F+yyvv22RHDRkmABadz6g
         IAsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=bTy38tP62JhoU05jXVIujtjJ7EtyX+46hRq5pp9d25o=;
        b=XIBruR1o+ZpTFUSiORXFCEQbw4r4N4rtUAgULrTjkRUaEjQdJ02kwV5HkuOMSaXzft
         DFKnk1PMrNDTIIJSq4gWilbLQJd5eb47q5dR5EBzecAoDagbowokZjlymnbIyRaseHsP
         8JU9rsJBDveJCxFuEz9hTmpjqlJwev3zT/D9yZ2n/5JakukhLQ7Kgeo0mqXZoRu+0UKA
         dMFUgsAPqSgooHHAXNOhkrixqndt197R2nhnhyeUtHVvqd9yPGgf46CSsGUYzyMpIRhR
         a1ZdzvNvXdA8WJo/XmaupIIXpt194nu4RXxuH+T2x6qAPq39GkvzOVpgSCxdVC2w+v/0
         qfqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=d0JOgygw;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id k76si559458pfb.5.2017.09.29.08.29.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Sep 2017 08:29:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=d0JOgygw;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id a7so1556861pfj.5
        for <outreachy-kernel@googlegroups.com>; Fri, 29 Sep 2017 08:29:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=bTy38tP62JhoU05jXVIujtjJ7EtyX+46hRq5pp9d25o=;
        b=d0JOgygw0R3X7mKNb3XvG5sqfAIcTmWkJ+PtYRFuzJya5ZFc9lV1lp467Nzzg1d4xy
         w+9IlIsEhZVOOh83k0ZJYFu1Q3SenrPm+OwWVK1WSDKaOjacnguqdXowK0y87e3eeWp4
         OOLAeURGNWciiZxtsjahb+gZN0U4O8NR7a9SplIP+HuNH9O6PjlkCFCGzgLmHQKiNzyO
         Wcc70XrjgdDzUWIOp6cuNtQhzWUAHM8AjiHlGWP7vEzPX/L8im9WAAhvxmie9UvLXMSV
         Jzdq76RLaTsXPyg/t7skSz8Yl0f5y6wc+lR8QXNVbG2ny0Dv8iy41N441ZI+agw629VT
         089w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=bTy38tP62JhoU05jXVIujtjJ7EtyX+46hRq5pp9d25o=;
        b=qn2sJDK8BaE+lcsEFMhA+s0bNhPhjuPCSu0Is7dAWlUJC5H0RvlikPy0FIbga2oXSQ
         NKI8mQNZVhch/7kbOUGhhYwBkebFVR76r0fEUKmg8tFVYl+pKtdcbkQNTzAVbktGq0oO
         HrzwrsLMJIK1GOvfu6e9BrkHXk2V5IFjV4EyBdMLWt063jAL2QWGRWVeXMC5xYBX4i+k
         b6mGjKfwTNiwP30x48rR/r8jlbX73lfy4DsRuSK0VvwWFw/EwNG+EnrvVLlgI/J6yLYi
         EeC1aU3eMGce5DbB3mM0PEtB7Ru9/83VIERSBmW/PKF8ef/loYhb4eyf3SEvf4fNXEJh
         9pHw==
X-Gm-Message-State: AHPjjUjJXRLrSg6MgOYntMy4uzwYT7kz7kGoRcYZKUxQiCjWS6kvdF2x
	LTfs2uCbT0S9zl5HKWOudMk=
X-Google-Smtp-Source: AOwi7QA9CJtiLBp8LWTeGfmnO1XjJZV9JfDDZ6+BpT6ZUHS7/h2aN87FCDeBTov0utq0Yw2/P9xeOQ==
X-Received: by 10.84.224.66 with SMTP id a2mr7355003plt.207.1506698940020;
        Fri, 29 Sep 2017 08:29:00 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.171.83.22])
        by smtp.gmail.com with ESMTPSA id h66sm6360278pgc.55.2017.09.29.08.28.56
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Sep 2017 08:28:59 -0700 (PDT)
Date: Fri, 29 Sep 2017 20:58:52 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: daniel@ffwll.ch, noralf@tronnes.org, outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v4 0/3] drm/tinydrm: drm_of_find_backlight helper
Message-ID: <cover.1506698677.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patchset introduces some changes such as move
tinydrm_of_find_backlight to drm_of.c and rename it to
drm_of_find_backlight for better organizational structure.

Changes in v4:
- Remove "devices like tinydrm" from the function comments.
- Made devm_drm_of_find_backlight_release an internal function.
- Add dummy versions of drm_of_backlight functions.

Meghana Madhyastha (3):
  drm/tinydrm: Move tinydrm_of_find_backlight into drm_of.c
  drm/tinydrm: Add devres versions of drm_of_find_backlight
  drm/tinydrm: Add the dummy versions of drm_of_find_backlight functions

 drivers/gpu/drm/drm_of.c                       | 91 ++++++++++++++++++++++++++
 drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c | 40 -----------
 drivers/gpu/drm/tinydrm/mi0283qt.c             |  3 +-
 include/drm/drm_of.h                           | 15 +++++
 include/drm/tinydrm/tinydrm-helpers.h          |  1 -
 5 files changed, 108 insertions(+), 42 deletions(-)

-- 
2.7.4


