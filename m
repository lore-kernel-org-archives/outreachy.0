X-GM-THRID: 6952817933661765632
X-Received: by 2002:a5d:66cd:: with SMTP id k13mr13928246wrw.387.1618829074344;
        Mon, 19 Apr 2021 03:44:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:d1e5:: with SMTP id g5ls7133929wrd.1.gmail; Mon, 19 Apr
 2021 03:44:32 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz4+2Hpq7u75y41Bx3c26zMjRtweYf3unS6i45fG+HNE4ykdbld5gmYfp75IzrzDylQjMCc
X-Received: by 2002:adf:f410:: with SMTP id g16mr13927411wro.345.1618829072964;
        Mon, 19 Apr 2021 03:44:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618829072; cv=none;
        d=google.com; s=arc-20160816;
        b=xjktBlqiEpVgKh02sg8x91dCARb4RUYpvQ906rffx2ybh32hK2dBpdbEaoI5ug80kU
         Suh/lkKB+EL84RjLjllFsNU09JpUCl7SlUSnS0tt3QWGJ2yqtGMik1dhLpipK739MjSF
         3Pdj6dAwoGJ1S85j63y/z3gAwlq9C6lFdT3I3ku80kvana6e4KHTMhVc4nf6eNMm/tYh
         4aEajAENgAFg6S51Ug+Y3G3GeoydrCKkGb8MZLmwH+Feb1hBwIOaw9Kkq4lYlNKeyZCq
         l1ZGqW6W4bwzAvI8t1vkPclwxq6U4ENfDELmHqUi655cIqCpWDyMK73y9OuH7nMCL1+D
         4gqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=JU6/Qfl9n+QXWwBGt0462NZzcBDiybmlQ03LCPVjDcM=;
        b=yeG4WoNtSo7RkCHRaNEGcSjPSXoMBM7NBmNyp++1hCkcmTf3C/xLzcoVqQxcrhENT4
         ruTmprj3yoJDl3uPQHJLuPOYRek8UQ/2Gfya37BV8qAI5LzUFJKJsmX6WB/uZWfb3wT5
         tPA7dPJ9q4A0hLyz3+LywEvoKSPIB955LGbIk5CU+zU0SS7y20NmCTg+/6bBLyaEH7lj
         fMfACYNnXzb3NlV4NqPjQRlPz+kg0ikkEQ4oziAwwDES+GwUq7hIlUEciCYIn7X+Vp8M
         QYs/UkNfKLMvWKURAJWeW62c8jJ1KKcwVvk07O+8Eu601CQACnP3/plNRoLt39kz6SyK
         YCZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 188.37.95.113 is neither permitted nor denied by best guess record for domain of bcarvalho@bcarvalho-ubuntu.lan) smtp.mailfrom=bcarvalho@bcarvalho-ubuntu.lan;
       dmarc=fail (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bcarvalho@bcarvalho-ubuntu.lan>
Received: from bcarvalho-Ubuntu.lan (113.95.37.188.rev.vodafone.pt. [188.37.95.113])
        by gmr-mx.google.com with ESMTPS id a4si1023371wrc.0.2021.04.19.03.44.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Apr 2021 03:44:32 -0700 (PDT)
Received-SPF: neutral (google.com: 188.37.95.113 is neither permitted nor denied by best guess record for domain of bcarvalho@bcarvalho-ubuntu.lan) client-ip=188.37.95.113;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 188.37.95.113 is neither permitted nor denied by best guess record for domain of bcarvalho@bcarvalho-ubuntu.lan) smtp.mailfrom=bcarvalho@bcarvalho-ubuntu.lan;
       dmarc=fail (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from bcarvalho-Ubuntu.lan (localhost [127.0.0.1])
	by bcarvalho-Ubuntu.lan (8.15.2/8.15.2/Debian-18) with ESMTP id 13JAiUdD163506;
	Mon, 19 Apr 2021 11:44:30 +0100
Received: (from bcarvalho@localhost)
	by bcarvalho-Ubuntu.lan (8.15.2/8.15.2/Submit) id 13JAiTh8163505;
	Mon, 19 Apr 2021 11:44:29 +0100
From: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
To: maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
        airlied@linux.ie, daniel@ffwll.ch, melissa.srw@gmail.com,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        outreachy-kernel@googlegroups.com
Cc: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
Subject: [PATCH 0/3] drm: Use tabs for code indents 
Date: Mon, 19 Apr 2021 11:44:16 +0100
Message-Id: <cover.1618828127.git.martinsdecarvalhobeatriz@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove space and use tabs for indent the code to follow the
Linux kernel coding conventions.
Problem found by checkpatch

Beatriz Martins de Carvalho (3):
  drm: drm_atomic_uapi.c: Use tabs for code indents
  drm: drm_blend.c: Use tabs for code indents
  drm: drm_connector.c: Use tabs for code indents

 drivers/gpu/drm/drm_atomic_uapi.c |  6 ++---
 drivers/gpu/drm/drm_blend.c       |  4 ++--
 drivers/gpu/drm/drm_connector.c   | 38 +++++++++++++++----------------
 3 files changed, 24 insertions(+), 24 deletions(-)

-- 
2.25.1


