X-GM-THRID: 6953573775310848000
X-Received: by 2002:a17:906:4cc5:: with SMTP id q5mr32425645ejt.302.1619005057651;
        Wed, 21 Apr 2021 04:37:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6402:50cd:: with SMTP id h13ls650883edb.3.gmail; Wed, 21
 Apr 2021 04:37:36 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx2BtCy7RlCLwpSKjbklsr/ENFohXxDtmql3QK62GedihMG9fgxy+JxQQNngPD4wJYrvOqy
X-Received: by 2002:a05:6402:204e:: with SMTP id bc14mr38373073edb.312.1619005056182;
        Wed, 21 Apr 2021 04:37:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619005056; cv=none;
        d=google.com; s=arc-20160816;
        b=OV66WsckgVEzsZLZbS3xp3LSbUcGJOL0Q1k2mxKF/RE9Rj1aiiZ55BLJbF8dRoeX9u
         vCbvKBrb1FvuLcDteuri7bdiMOPfoRY1gX/eGypW1L+TXH8KErD23Mqsx5+HTcd3WWr6
         oIAKyJsnzBbNb0hCdOUFgglTiy3K3ny28/WtUC8dnx/5Nz6SOel75v5SlK0hKp6nfjBM
         5ZM+b4aKcH1UeWcTFWawHzzjvQPcgBs+mf4Xu5gZjTrsXsIPWfn7GBHeRWIq2pleKMy0
         uoxNFUu04BMFNdpaKZfi6PzGz+JATGbenNw6mKiLE4YkTAjye50lmsY/K37pyLtDybGU
         fJEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=XHPBRNcf/mIFQvI2veEoaTkCy/iKf9n28pbccYjYXzA=;
        b=iOVuh2yTSKVm/hdO29o5aXrdfJ/KYYnCTXsW1G8yAZ1YXwsp9cn/+UcRFOxWlS5JOI
         mJvNroaRrylq4NeXvpF5kt3C1thjL3EsI01H1t4ejI/koWCIFZQ7ZHWZJDhCMemY9Jg3
         HzeaInCFsM2+TiRWeIfWZVNGot23t9OcL6rZuHe+0XzvE8V3HKWgj6b0/IZFLawZlbBm
         i+hzlgGe7pHST2gdC4UOKjJslrFBBG11xE7lTDinNmURvjSIoSikg4OwmGUH9xU7Gabm
         QowF45s5xX87ZsrFjtxnnKFMszLHCLxC2C9MWTzNT5g9HMtJ2McbFPlEV5FbkJoIqwt5
         rRVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=unu4VSdp;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::636 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com. [2a00:1450:4864:20::636])
        by gmr-mx.google.com with ESMTPS id re17si75456ejb.1.2021.04.21.04.37.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Apr 2021 04:37:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::636 as permitted sender) client-ip=2a00:1450:4864:20::636;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=unu4VSdp;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::636 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x636.google.com with SMTP id g5so56299700ejx.0
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Apr 2021 04:37:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=XHPBRNcf/mIFQvI2veEoaTkCy/iKf9n28pbccYjYXzA=;
        b=unu4VSdpOU99/2qbQWFLR3P0Xi4bGJBJuYm6CbgBX7gpHnzdR86dp5Ik0Nu0lVpHJ7
         UPXdYzMERza/jsW/FJGMKnXeAtjckCO+9osHhhscZqymqO9hRECzGBPaMBiXgxMlRpbw
         zMFSWTsX0drpSyCA/Qgmt99JQNpiMqzBFPh+NPPDQYWX5m/FGzqy2zapBacKTUMsYrTz
         i+Xa4KWsdmVV9Hl8H8ThngYmknVKAjKU+xqVKg7yLmUt+8YFxyAEGvFkDvwlmA75iHLN
         fw35NxeARSlN+IBa/cvnQFEqE0kgHAC7Wx8xEIEXzgDR7g1hX4WGtP3bHJhpK8/Q7O+u
         WlRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=XHPBRNcf/mIFQvI2veEoaTkCy/iKf9n28pbccYjYXzA=;
        b=tIVpNndDA3d3YqeDWmdHKg6aLgSZKWaH61jx4lGh+j6y5R90BItVJz/W8xEI09acrG
         10y6hBvYjI+S71to5ywEdAZIjwwYIgWf+QTC3XTmuWPxBs3ibwGbprTtaiHFOnhWWvn+
         1LMqCo/TDPvJN4iEtSzHxsTwD3G/1VaLA4hfW1D6JC5Jy9dibovfyQW42JLSRH+i2oOW
         C7gCwXxd1JlDmHLZJyjXIXejWk7N9G3MeWPKQT0unDLEBmD1IRtTs61tcE3y1CBgStMK
         TLq6jlDhIJySEeXlpkT3TrJSfJ/kpid+xLDnbAodH9KzQ7MnxcUX0EtasZgR+gTLR9a6
         MYhw==
X-Gm-Message-State: AOAM530qjYMLPUBytxwIecI0tqzhy4sZOsam5ijjjwIuiQ7MudCZEao/
	BvttmljI5o5e4XQQEdy524KianmQlxMLjQy0
X-Received: by 2002:a17:906:d8cb:: with SMTP id re11mr31497632ejb.204.1619005055719;
        Wed, 21 Apr 2021 04:37:35 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-79-52-107-152.retail.telecomitalia.it. [79.52.107.152])
        by smtp.gmail.com with ESMTPSA id i1sm2735928edt.33.2021.04.21.04.37.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Apr 2021 04:37:35 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org,
	Alex Deucher <alexander.deucher@amd.com>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	David Airlie <airlied@linux.ie>,
	Daniel Vetter <daniel@ffwll.ch>,
	Melissa Wen <melissa.srw@gmail.com>
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [PATCH v3 0/2] drm/amd/amdgpu/amdgpu_drv.c: Replace drm_modeset_*_all() with DRM_MODESET_LOCK_ALL_*()
Date: Wed, 21 Apr 2021 13:37:14 +0200
Message-Id: <20210421113716.15472-1-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Replace the deprecated API with new helpers, according to the TODO list
of the DRM subsystem. The new API has been introduced with commit 
b7ea04d299c7: DRM_MODESET_LOCK_ALL_BEGIN() simplifies grabbing all modeset 
locks using a local context. This has the advantage of reducing boilerplate.

The work is carried out in two consecutive logical steps: the first patch 
converts the code to use drm_modeset_lock_all(), then the second does the 
final replace with DRM_MODESET_LOCK_ALL_*().

Changes from v2: The work is split in two consecutive logical steps.
Changes from v1: Added further information to the commit message.

Fabio M. De Francesco (2):
  drm/amd/amdgpu/amdgpu_drv.c: Replace drm_modeset_lock_all() with
    drm_modeset_lock_all_ctx()
  drm/amd/amdgpu/amdgpu_drv.c: Replace drm_modeset_*_all_ctx() with
    DRM_MODESET_LOCK_ALL_*()

 drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

-- 
2.31.1


