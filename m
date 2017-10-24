X-GM-THRID: 6480148992322699264
X-Received: by 10.129.82.83 with SMTP id g80mr9567695ywb.10.1508854274179;
        Tue, 24 Oct 2017 07:11:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.129.158.79 with SMTP id v76ls26932ywg.0.gmail; Tue, 24 Oct
 2017 07:11:13 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+QCe/7HAAJsOHV15e3rOf9lM0lVnUIlehqlXn9xsqRwfJkmI6D/fe7O9C878/VX+CmZ7yoa
X-Received: by 10.37.39.7 with SMTP id n7mr9689964ybn.55.1508854273463;
        Tue, 24 Oct 2017 07:11:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508854273; cv=none;
        d=google.com; s=arc-20160816;
        b=Baav8oh0hMn3ZzUcecqL49qOfobOrr1IWomsAY+E19VXKIdUmPkDUbN9V/IaiMaRYz
         TmFXSGy7dx9A7/vns16oFqbJoPTy3uOBAS1ghvr87+U0QL7O5wbecDTvJbROnH8qocFW
         wILl6zu2SgSjfzrrWvh0GAUtP2hk+ijKe8Rfr6dlXVFfQ0ZMYaPnknEFjjAAJzMZZ2yN
         kc1Vkom3k+6FLx8WCTO550lNiHGvRiyW0mxB7YlVPkspfUGAcMSYkJiUYmvmztlrLNDt
         J6XZLES5xLUvHbi0XLoEmlWo9UqKicgJHCfs/b9Nu78H4LcCMlLXnE/S+YsEyW0NL25M
         u1Pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature:arc-authentication-results;
        bh=9Hxf93w3l6quOrIhyhOISEV+yV1WTbbXMfDERfYCAl8=;
        b=Awq/C12Mbokz3IRwEs2q8UlIRWPZEi6+ZEA+TKYZmlD0qEyfxAa2psaANoWZz3Qvua
         IBLF+exREqKahq9TP2hfKc56DmFNKwLqir5XES7DpSLyc04nBsSWHiiHjMi43xTlUxKb
         ALC39hKtFHNbpBPQZPiCFGMsi9Xm/4kFyTg2suqYVw3BIYeIwqrkll9XidPiyFulClB8
         mBHY1pqTziEruIapaKqIIBj4abQbMgqdiJCvbPwuyRDubIwwSGbCRhn4GLslyXv152s4
         hj0qAVdUj81VU4vHBnlbcpvdLtOnbftmonF4Mx3IcWEHvncx02qoBXJgSEqYFvJDZsy6
         X/4g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gubgLM1d;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::22f as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x22f.google.com (mail-pf0-x22f.google.com. [2607:f8b0:400e:c00::22f])
        by gmr-mx.google.com with ESMTPS id a13si36628ywe.0.2017.10.24.07.11.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Oct 2017 07:11:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::22f as permitted sender) client-ip=2607:f8b0:400e:c00::22f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gubgLM1d;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::22f as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22f.google.com with SMTP id b79so19785490pfk.5
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Oct 2017 07:11:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=9Hxf93w3l6quOrIhyhOISEV+yV1WTbbXMfDERfYCAl8=;
        b=gubgLM1dLhu4hbMQLKY3aA1nn/F3rZ0pkk8ZIP0z31GjtK2y55yf4v/Qom93w9QzL4
         0QdRTkVm+qInRhqBR8thRXwe0MFFbTnExCaLB+PHOwSY8+sA6yGlwhyAKXYu4LP8KDnm
         Biwl0QdlBDg8eJoOhQEsVTOD17sfGhlQkQSpEMwYUFFlBZiDhtYb7C3WJpTJ2ysEjZo5
         wYYC7ujX+MJV/W9Dp+jWzHCi0eDyuBxkYGFY8FLHR/IVb6wqRR8/UOkz6KYioXN2rd7T
         OB2wQKrDuY97+QWweIl4lYxfNHO9VGb7rMpUBuOT6yQC5GIPwPGkQ/vnGnqW3fYxQ4No
         POlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=9Hxf93w3l6quOrIhyhOISEV+yV1WTbbXMfDERfYCAl8=;
        b=G1F4e4+J8CE5RSPwlzHTtEp7uJFMSyk2mWVIPrV1Cg/clo3f7dEimR1v8dG4/c/F0G
         79+0K/x3SbL8IzCfW1aM9U1OZ/9vVCWg7e+PctRkcflYxOUmk2DzRD1lwfmRDxeDZT+7
         iuMcawWfw9iy9CD0MHHrtnm5HPU0HOB8h3nzjwmJBzOjiZLKVBT7XQ8O5bKIKSsfSNbo
         6WZshOR4nLuS+sYClMXFbNlq+sY/ea+MtlMFVogOJuaIbw+rtewhiIoYGmcpmuUFguF1
         VsQjzq5DLMzZRTrApPvqgDueMX9GL2D+yOwXvefrZ6Dqo5iMrjI3y8qKjxpTMdLBiQOA
         ybmQ==
X-Gm-Message-State: AMCzsaXtYUTMX9z9KZRfvD/+sFBwo+0K0YTj2LJENX4EOjx0HO8nhI6/
	WgCzq783CMtDknyCW22lseY=
X-Received: by 10.159.208.5 with SMTP id a5mr13287273plp.436.1508854272904;
        Tue, 24 Oct 2017 07:11:12 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([103.196.221.228])
        by smtp.gmail.com with ESMTPSA id d89sm1049865pfb.121.2017.10.24.07.11.11
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 24 Oct 2017 07:11:12 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	David Airlie <airlied@linux.ie>,
	dri-devel@lists.freedesktop.org,
	seanpaul@chromium.org
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH v2 00/12] drm: panel: replace dev_info/dev_err/dev_warn with DRM_DEV_*equivalent
Date: Tue, 24 Oct 2017 19:40:51 +0530
Message-Id: <1508854263-18881-1-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

For drivers which could have multiple instances, it is necessary to
differentiate between which is which in the logs. Since
DRM_INFO/WARN/ERROR don’t do this, drivers used dev_info/warn/err to
make this differentiation. We now have DRM_DEV_* variants of the drm
print macros, so we can start to convert those drivers back to using
drm-formwatted specific log messages.

Changes in v2:
	- split the original patch for each driver

Aastha Gupta (12):
  drm: panel: replace dev_* with DRM_DEV_* equivalent in
    panel-innolux-p079zca
  drm: panel: replace dev_* with DRM_DEV_* equivalent in 
    panel-jdi-lt070me05000
  drm: panel: replace dev_* with DRM_DEV_* equivalent in
    panel-sitronix-st7789v
  drm: panel: replace dev_* with DRM_DEV_* equivalent in panel-simple
  drm: panel: replace dev_* with DRM_DEV_* equivalent in panel-lg-lg4573
  drm: panel: replace dev_* with DRM_DEV_* equivalent in panel-lvds
  drm: panel: replace dev_* with DRM_DEV_* equivalent in
    panel-panasonic-vvx10f034n00
  drm: panel: replace dev_* with DRM_DEV_* equivalent in
    panel-samsung-ld9040
  drm: panel: replace dev_* with DRM_DEV_* equivalent in
    panel-samsung-s6e8aa0
  drm: panel: replace dev_* with DRM_DEV_* equivalent in
    panel-samsung-s6e3ha2
  drm: panel: replace dev_* with DRM_DEV_* equivalent in
    panel-sharp-ls043t1le01
  drm: panel: replace dev_* with DRM_DEV_* equivalent in
    panel-sharp-lq101r1sx01

 drivers/gpu/drm/panel/panel-innolux-p079zca.c      |  2 +-
 drivers/gpu/drm/panel/panel-jdi-lt070me05000.c     | 38 +++++++-------
 drivers/gpu/drm/panel/panel-lg-lg4573.c            | 18 +++----
 drivers/gpu/drm/panel/panel-lvds.c                 | 28 +++++-----
 .../gpu/drm/panel/panel-panasonic-vvx10f034n00.c   | 13 ++---
 drivers/gpu/drm/panel/panel-samsung-ld9040.c       | 12 ++---
 drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c      | 14 ++---
 drivers/gpu/drm/panel/panel-samsung-s6e8aa0.c      | 28 +++++-----
 drivers/gpu/drm/panel/panel-sharp-lq101r1sx01.c    | 60 +++++++++++++---------
 drivers/gpu/drm/panel/panel-sharp-ls043t1le01.c    | 21 ++++----
 drivers/gpu/drm/panel/panel-simple.c               | 15 +++---
 drivers/gpu/drm/panel/panel-sitronix-st7789v.c     |  8 +--
 12 files changed, 141 insertions(+), 116 deletions(-)

-- 
2.7.4


