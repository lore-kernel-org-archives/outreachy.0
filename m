X-GM-THRID: 6470705412124442624
X-Received: by 10.99.95.131 with SMTP id t125mr509651pgb.157.1506578505067;
        Wed, 27 Sep 2017 23:01:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.0.12 with SMTP id 12ls910925pga.29.gmail; Wed, 27 Sep 2017
 23:01:44 -0700 (PDT)
X-Received: by 10.99.149.16 with SMTP id p16mr523242pgd.111.1506578504069;
        Wed, 27 Sep 2017 23:01:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506578504; cv=none;
        d=google.com; s=arc-20160816;
        b=HKOpU+aNiQTDqoYQ4BAqN50WeuHUvLZvDkJjmnS+MwkRAmhVhtUKq680hlKaDbxvb+
         wPN3WQAqlNj5sq71NYhTFvFSwmUZ8T+znU0OZS1uvE1285RwUW0g1Q7AoMtH9PtTpEXQ
         gcg1fpcltoYzuXJZgQNE/s2OVSJbQjsy+NuCTXSqabPaL/3zcwiKJaCrinVtbdBU9OeY
         eqZduk+J2COQzvVDervGOhirTnOnz+gRTV7JTdM8V2yi2A6+S0gdORailTr5g5qhk5Dr
         wps6A10e4E1O22BWGgZbhj1l1ZCf0TC3Oepec3iGslwuyIE317QYKmWQ+vSuMykWizVr
         vrMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=wCc5WqG+sF8W5fvZrV1TbtkDNagggHs/evVuK3Mra08=;
        b=MsuI/i1wB3C184HTrRA7shcDeEl3Fp66tDA1Bpp0uzzVvMdzb/5+jcDORE/NBxB/EL
         rUPQ/OHGvgPrb5qer4ATg9G0vz8p3WSZJUpCyOT5CQmcNYWrPGOOcU7j5/3YXtgRvpLp
         NkWVtDgx+yu0U1f9HxBSedRDl8rb6m0PIQpgPvLxDa21KgcbX8ehsTsiiTkAbAMEGmhV
         IgNQbPbRsEmDMKJYDTGNLcUSdWZHiMyJ7oROQWoEaJPWWR2adiyyyhMR4NGxTnorPNqF
         I050oLAYyXNHx6EqZktkAzOEVh/pUwZ0nxXZLJuh5jGB1qw+mqlth/Et4+BqHFIHvDNp
         gRnw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=u65hpVHR;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id d207si92837pfd.16.2017.09.27.23.01.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Sep 2017 23:01:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=u65hpVHR;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id f84so575789pfj.3
        for <outreachy-kernel@googlegroups.com>; Wed, 27 Sep 2017 23:01:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=wCc5WqG+sF8W5fvZrV1TbtkDNagggHs/evVuK3Mra08=;
        b=u65hpVHRLrLNqqkBf2Ie0Y7pjALxrxIyklOZWxeFTiJO18IsKgzy8nUFae9nFKJqi9
         mD/izxNt38oyD0shbtiu/8dBo/VMdWwSf9ViwlgaIdXhlUHN9eg4fnVp2uxVYITepSIM
         R1+0x2ww8OuG+WVbEj6cIvIdvVRRWUfKXRxqxNRnh28MtdoyKX84RT0qDThenughv68O
         os+GhntuX6/iyS9TruIaaSrljPVnczW7YWYfw0eOxB31LVpd/BJYmT1n5Rc/dIEj/9nN
         Jc+Ykc8XeHwtONFp3l3W0CkKoH532NrILQq24Lb4n+Xoua95F4ehLvX41z1/1TuuvYq9
         7J2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=wCc5WqG+sF8W5fvZrV1TbtkDNagggHs/evVuK3Mra08=;
        b=VKEfQnCVabR5F1Ut517C2tXJuzDQtTrviY+wddgTm6XcSXRX84NMJhSs/5IB6R4BsE
         DEP+G6AG8O1AFb+ZViFMOVz0y0PDEX4ahHgkQcOgL3pjyI8nLfEtZPP1Qpj5DJGEacob
         SdaLPo8earaujrsd2IoYQWHSQw2Zuf3/XjpV29k1RGLEddFmyU6UZWEx36bDFg1KPDcu
         29xJlivWqnEQqr9CTGstDPKjHZR+stWAdneUiKwlf862ntyNp/OcyTOMIofkzThW9LyL
         ve4m2uTbnBFkWgg688QFC1vgLf2fibPK/jO9msZ644y5sFTwEb7HOAOHfMwFDKKrJeJA
         KOEA==
X-Gm-Message-State: AHPjjUjeCbuEYKF7PeP8YiJFc0f4MWocBcInznxh8BmAjCYXRjE6QZOC
	eUW+oNKCyQf4sjvr1tdZMO8LvUXX
X-Google-Smtp-Source: AOwi7QAdSc/WkuWAz3VQlRr/j4eyS2uTQIVDlGUlQsXOtK0LXtQxp322RvpXZGnNU579owO6RxrF4A==
X-Received: by 10.99.191.75 with SMTP id i11mr3278827pgo.136.1506578503822;
        Wed, 27 Sep 2017 23:01:43 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.171.83.22])
        by smtp.gmail.com with ESMTPSA id i10sm1034512pgo.71.2017.09.27.23.01.40
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Sep 2017 23:01:42 -0700 (PDT)
Date: Thu, 28 Sep 2017 11:31:37 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: daniel@ffwll.ch, noralf@tronnes.org, outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v2 0/3] drm/tinydrm: drm_of_find_backlight helper
Message-ID: <cover.1506578051.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patchset introduces some changes such as move
tinydrm_of_find_backlight to drm_of.c and rename it to
drm_of_find_backlight for better organizational structure.

Changes in v2:
-Broke the patch into a patchset of 3 patches
-Added devres versions of drm_of_find_backlight
-Added a note about caller having to call put_device

Meghana Madhyastha (3):
  drm/tinydrm: Move tinydrm_of_find_backlight into drm_of.c
  drm/tinydrm: Call drm_of_find_backlight instead of
    tinydrm_of_find_backlight
  drm/tinydrm: Add devres versions of drm_of_find_backlight

 drivers/gpu/drm/drm_of.c                       | 44 ++++++++++++++++++++++++++
 drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c | 40 -----------------------
 drivers/gpu/drm/tinydrm/mi0283qt.c             |  3 +-
 include/drm/drm_of.h                           |  3 ++
 include/drm/tinydrm/tinydrm-helpers.h          |  1 -
 5 files changed, 49 insertions(+), 42 deletions(-)

-- 
2.7.4


