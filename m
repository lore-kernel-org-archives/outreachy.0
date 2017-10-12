X-GM-THRID: 6475592721521180672
X-Received: by 10.101.77.145 with SMTP id p17mr628935pgq.34.1507822020065;
        Thu, 12 Oct 2017 08:27:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.119.132 with SMTP id s126ls577358pgc.0.gmail; Thu, 12 Oct
 2017 08:26:58 -0700 (PDT)
X-Received: by 10.99.171.67 with SMTP id k3mr624284pgp.169.1507822018872;
        Thu, 12 Oct 2017 08:26:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507822018; cv=none;
        d=google.com; s=arc-20160816;
        b=rPCF5mbYsYyDZsAgCq7Z7AtdizOHEkDsJlFno7LIe2gU9b2G+jPTVukAjWTjw6kNri
         UMvgRg/yYUj37NyzdgeWnkhKiWmiTZsc8dMBnG1Xc9jUJwpD3LsRcK8N/QlTUzGd6oes
         8mPjH9xLF0r8hblYMTetqjkvC4SaFqV3EwO4CyWVs0GfkE50UK3Nc4bgzBUv5S3Zy0Iy
         h0XPKDs4vU4enn5FtaxqMf/8BzDpJERsVCPAFVFiBrXF+Oagx+r1NIykSrKIQ/kkQkS/
         fp3Ckl/B/7McktGYiR9y5aBmIwG3LxFGJL/DuToc+WU3+LRgi5KLUUmhMcvhkuWvhy2r
         u2kA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=64A/tkwaYOt7SC3j3rMvkpZLLndwghhcE01N1vbZ2Ds=;
        b=Yx+7iVlQREJpVHwkWWfF8lfXCeMBPEUmm+AsXLqOI3qeYNl601KZUHlLsrI+pF/C9w
         OHPhnVOr53Vs9BkqNYAYm1u5gPFRGVukx6dNvl/4uuT/MDtMMF1BnwFRN8EUmwjBSaQv
         Jr9dhgfRM2aoXdO9oU7F66kNcxqkS8GK7ZqHr3d1FRtjMPzk8M+KK3EmJoIwm6FL5dFU
         e4t1XycMs2bQprDZST9vVV9YrsPPmvZpsRZxqrWxyGveblTyW34LWEVax5ge71rDwvNd
         89iwJ2zn2zjUwcv+Ccj/w0ljnUetdZz3G7degaFJ08vvbfBjMq4CJPybFKBnxE/LspJk
         ICtg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IWtCdibC;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id l10si96294pgp.3.2017.10.12.08.26.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Oct 2017 08:26:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IWtCdibC;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id t188so2798468pfd.10
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Oct 2017 08:26:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=64A/tkwaYOt7SC3j3rMvkpZLLndwghhcE01N1vbZ2Ds=;
        b=IWtCdibCy2+N6I8e0WROwBxFQHit0HNFBmKhkhkRzGaRndt2kzrJ5WU3Y2CGIUcIxw
         yhiQJbe+d9crX9xpoIB1f0/whvSei0Dvv1lnTdBMWbgAHORqsybGYeV61vpOGV20RgfM
         bnX1M/h9LAlmjuSHOSbnRcd3aqxAd+99fAToqjJjPf0uXWqkQ9+G/SvldfseET5KebE/
         ysliXSEdKDhUGe1z5gd3WFrXng7zUoO1hIJVgy15I+rKjBBOxEpuJ4kBtQKboZnptqfa
         DO0kC8HkDdeMrj16mYCgj0WXMWFz63z3P/VxiOTamuIknXr+MVrmR2wMh+LqT4Yvlkb2
         +F/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=64A/tkwaYOt7SC3j3rMvkpZLLndwghhcE01N1vbZ2Ds=;
        b=hI9oG54ENM0WiTKz0QXHtdwbfAFI1zTnDcNJCwAiyf9JDQa/fC+U5PJgSOOoNrpjm9
         kB/Qf2GwO5+ROh9fyss+KN5LjGj83irQPdyvp46ud6IuzDvXxoTRNcR3eGVoJ5E9otwr
         Igx2OCYzBBFDtusTeaqfpjwszrlmXwpLMuWwopvGPEoBgk8J6AL3oqCPh4WMfVS4PchC
         mmTsuw2eUoDyrAOJTTV138rl1cPK1fxWk9sEYfm0hUeRaxTO7ZImaYVjE+BI5wYqfz9b
         gvh+jFQrFlXeca6BRDz8goT35tqbnFUmMsotyRlYA3kumRvYtD2tAAovO5q2IDEINL3s
         QwZA==
X-Gm-Message-State: AMCzsaUvX7joR4rdlp4nO/bkS1nimjOLCIPvlKiRTiTpKDn7dd9jhbwP
	hZSBmTgQN9MZ1/sWErF70fPXH6Ne
X-Google-Smtp-Source: AOwi7QDrU+ZWyYld3Z7PEBzdbqbndTIEBfEVn5weqoYmhQTE83cTziCJTY5mTaonh7umnTZmqdWajA==
X-Received: by 10.159.208.69 with SMTP id w5mr516679plz.381.1507822018588;
        Thu, 12 Oct 2017 08:26:58 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.172.84.136])
        by smtp.gmail.com with ESMTPSA id z126sm30333304pfz.70.2017.10.12.08.26.54
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Oct 2017 08:26:57 -0700 (PDT)
Date: Thu, 12 Oct 2017 20:56:50 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: daniel@ffwll.ch, noralf@tronnes.org, outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org, daniel.thompson@linaro.org,
	jani.nikula@linux.intel.com
Subject: [PATCH v12 0/3] Move backlight helper functions from tinydrm-helpers
 to linux/backlight
Message-ID: <cover.1507821742.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Move drm helper functions from tinydrm-helpers to linux/backlight for
ease of use by callers in other drivers. 

Changes in v12:
 -Move backlight_put() to the patch 2/3 from patch 3/3.
 -Remove #if IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE)..#endif
  because the file is not built if it isn't enabled

Meghana Madhyastha (3):
  drm/tinydrm: Move helper functions from tinydrm-helpers to backlight.h
  drm/tinydrm: Move tinydrm_of_find_backlight to backlight.c
  drm/tinydrm: Add devres versions of backlight_get

 drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c | 95 --------------------------
 drivers/gpu/drm/tinydrm/mi0283qt.c             |  3 +-
 drivers/gpu/drm/tinydrm/mipi-dbi.c             |  5 +-
 drivers/video/backlight/backlight.c            | 68 ++++++++++++++++++
 include/drm/tinydrm/tinydrm-helpers.h          |  5 --
 include/linux/backlight.h                      | 55 +++++++++++++++
 6 files changed, 128 insertions(+), 103 deletions(-)

-- 
2.7.4


