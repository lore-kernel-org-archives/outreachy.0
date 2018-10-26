X-GM-THRID: 6616747745212366848
X-Received: by 2002:a1f:ae4d:: with SMTP id x74-v6mr4447823vke.8.1540581636050;
        Fri, 26 Oct 2018 12:20:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:628:: with SMTP id f37ls512505uaf.4.gmail; Fri, 26 Oct
 2018 12:20:35 -0700 (PDT)
X-Google-Smtp-Source: AJdET5fuI3WWrGdue0fQSxgRLNNKB4uwTzvwAobFTN1Ydygi1huW0sdxI+g1pwFzfB58oBlUjkAl
X-Received: by 2002:ab0:9d8:: with SMTP id e24mr4366498uah.12.1540581635270;
        Fri, 26 Oct 2018 12:20:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540581635; cv=none;
        d=google.com; s=arc-20160816;
        b=zjxNBS6oPT4jHZieeFlvl0hcnGgf2L4uTldGP6MQ2d6HAqFqftMAvHF0+XJSPn6Qdw
         +mgY5Tk++CGFB4H4oe9ADw2Agl3HE0udF/NvT2zIZh0i2uyQvIuKaqoeCkVkQ624lPkr
         s7LcgnQUCyz4lfWHRGRFRrX7D8OtkpEvbQZQeTwSq5+rKeUOSxxK6UZ/R2eMEE/APyZa
         ROSMzBgMXPRJVOHttBX0N9l7GqMRg61fuuCbq7K3gTB2wnjrEPpiCWaJIAaBO9U4BYJf
         6a+8aAFcmHvp7G1ZQWdit0AMSuHKiVSwktKvpjLpieqtt6icoLUstXIsu3nKEJbZxpwb
         6mFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=O4meVGNYs8kZqYVa8CCngOivEK22E/2Sn1LUryZ1aM4=;
        b=0yVrnwCrE4Edyv4GBmyYQaYP36TYvQVKZOluF6B05FA0LOzmjdIDW9yXdKYNy/xLw6
         mH0/PztXnYMzZtsHxJqtptLmx3bNV0Qu6Aa8Xe+SDKTjPJQmbjN4l35txkXGTQQFu0g4
         tc/Uk4TZXGJLaYwTzC5zGOzRGU2ZGlRRYEaqBpSIHTJyciNkR99+Jz7n4c+Xe/4fNCk9
         NOgNWxZNY8Xg+4y9BtjbYrwcci4Lv7QV9bmYnvJ6uB+r2tvf+U9Jj4E+j6AVJapdVOit
         QG0buUo4k7s66d6XDct1PlW0ZOhwKc0wkRfVXkIp4f76PXFZE28g0h5Tany8ufFpyBPZ
         b+8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aA2Bj1zv;
       spf=pass (google.com: domain of shayenneluzmoura@gmail.com designates 2607:f8b0:4864:20::734 as permitted sender) smtp.mailfrom=shayenneluzmoura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shayenneluzmoura@gmail.com>
Received: from mail-qk1-x734.google.com (mail-qk1-x734.google.com. [2607:f8b0:4864:20::734])
        by gmr-mx.google.com with ESMTPS id a71si775143vsb.1.2018.10.26.12.20.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Oct 2018 12:20:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of shayenneluzmoura@gmail.com designates 2607:f8b0:4864:20::734 as permitted sender) client-ip=2607:f8b0:4864:20::734;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aA2Bj1zv;
       spf=pass (google.com: domain of shayenneluzmoura@gmail.com designates 2607:f8b0:4864:20::734 as permitted sender) smtp.mailfrom=shayenneluzmoura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x734.google.com with SMTP id q184-v6so1362109qkd.3
        for <outreachy-kernel@googlegroups.com>; Fri, 26 Oct 2018 12:20:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=O4meVGNYs8kZqYVa8CCngOivEK22E/2Sn1LUryZ1aM4=;
        b=aA2Bj1zvovtqU6sC3yaZmgXx71DbwdaG+hqdNUsyCGm/pLR1HOKq0qH3fvpXbmGPCq
         wdTCteQsDB8Z94NxxOsQNTy6NVL2TIs+PYxK3DCsJ5IWYlTuM/0hL3JG1OH5+eCZQtfd
         LVcd4wp/g1yXXfDLOEixukjkx2X2uHBYtTe/8d9L0jEBGSd3BY54txDyG4oiX3+Ga1sU
         F7PyXP59zuz5XaOQ8kFLYE5fIL2ATxWkYIH8W438prw2xFKYy6DvW0O21WY7nEdzo0vm
         YQq84MSA43FV8vTc5LzCTa26vt0ECZQ2t4fliS2z78r7IvL3wYxKQEp7hAXTs7KPsNPf
         44dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=O4meVGNYs8kZqYVa8CCngOivEK22E/2Sn1LUryZ1aM4=;
        b=QHdfiOCj+P9CcJpCGS4rAwTeBOaywlYrPrw4unpeomE+PqVSzbzryU8X2GRhyr13iX
         wWrQ884o+b4DygDsGAEdX9YrPIsgwzBpvgFpQFwz6ts7O/9nRPJNWkoVx/RPhXVzoVoW
         auNt49SLsjJ300w0II230zyJuz2V2M1aP045HCkU2AzAPy3cTER24woA+BWc69rV48Mb
         g3YAF4QjFE5v3qw0Ypg4PJ2/GtYX5XznvBKeshaE7jawP3pgjRAsfESOBNU7cGbJDekZ
         xwaDFXcyPWXjIB84NsvNi+VcQZA2J3uI6ZsNadOtpmffRMLoT4QiRyRlQbV+RtTtMd3c
         yrcQ==
X-Gm-Message-State: AGRZ1gLN6l+eHfVKUykKIPnE8QclvmCrCuh4WTNlnIVWHHd7u89/aMvJ
	kA2aAk/wSr0Euq9XTEhYNXI0GjQEtI8=
X-Received: by 2002:ae9:e012:: with SMTP id m18-v6mr4325860qkk.25.1540581634839;
        Fri, 26 Oct 2018 12:20:34 -0700 (PDT)
Return-Path: <shayenneluzmoura@gmail.com>
Received: from smtp.gmail.com ([143.107.45.1])
        by smtp.gmail.com with ESMTPSA id u74-v6sm5928214qka.37.2018.10.26.12.20.32
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 26 Oct 2018 12:20:34 -0700 (PDT)
Date: Fri, 26 Oct 2018 16:20:30 -0300
From: Shayenne da Luz Moura <shayenneluzmoura@gmail.com>
To: Dave Airlie <airlied@redhat.com>, Gerd Hoffmann <kraxel@redhat.com>,
	David Airlie <airlied@linux.ie>
Cc: virtualization@lists.linux-foundation.org,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 0/6] drm/qxl: Remove checkpatch issues 
Message-ID: <cover.1540579956.git.shayenneluzmoura@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20171215

This series cleans the following checkpatch.pl issues:

ERROR: trailing whitespace
WARNING: Missing a blank line after declarations
CHECK: Please don't use multiple blank lines
WARNING: Prefer 'unsigned int' to bare use of 'unsigned'
ERROR: space required before the open parenthesis '('
CHECK: Avoid using bool structure members because of possible alignment issues

Shayenne da Luz Moura (6):
  drm/qxl: Remove trailing whitespace
  drm/qxl: Add line after variable declarations
  drm/qxl: Remove exceding whiteline
  drm/qxl: Use 'unsigned int' instead of 'usigned'
  drm/qxl: Add space before open parentheses
  drm/qxl: Use 'unsigned int' instead of bool

 drivers/gpu/drm/qxl/qxl_cmd.c     |  7 +++++--
 drivers/gpu/drm/qxl/qxl_debugfs.c |  5 ++---
 drivers/gpu/drm/qxl/qxl_dev.h     |  1 -
 drivers/gpu/drm/qxl/qxl_display.c | 19 ++++++++++---------
 drivers/gpu/drm/qxl/qxl_draw.c    | 11 ++++++-----
 drivers/gpu/drm/qxl/qxl_drv.h     | 31 ++++++++++++++-----------------
 drivers/gpu/drm/qxl/qxl_dumb.c    |  3 ++-
 drivers/gpu/drm/qxl/qxl_fb.c      |  4 ++--
 drivers/gpu/drm/qxl/qxl_image.c   |  4 +++-
 drivers/gpu/drm/qxl/qxl_ioctl.c   |  2 ++
 drivers/gpu/drm/qxl/qxl_kms.c     |  2 +-
 drivers/gpu/drm/qxl/qxl_object.c  |  5 ++---
 drivers/gpu/drm/qxl/qxl_object.h  |  2 ++
 drivers/gpu/drm/qxl/qxl_prime.c   |  1 -
 drivers/gpu/drm/qxl/qxl_release.c |  1 -
 drivers/gpu/drm/qxl/qxl_ttm.c     | 12 +++++-------
 16 files changed, 56 insertions(+), 54 deletions(-)

-- 
2.19.1


