X-GM-THRID: 6952754810830454784
X-Received: by 2002:a37:bbc4:: with SMTP id l187mr10303943qkf.153.1618814377722;
        Sun, 18 Apr 2021 23:39:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:5a88:: with SMTP id c8ls6395560qtc.1.gmail; Sun, 18 Apr
 2021 23:39:36 -0700 (PDT)
X-Received: by 2002:ac8:7f14:: with SMTP id f20mr10076523qtk.339.1618814376921;
        Sun, 18 Apr 2021 23:39:36 -0700 (PDT)
Received: by 2002:a05:620a:2446:b029:281:145d:e270 with SMTP id af79cd13be357-2e0960daf04ms85a;
        Sun, 18 Apr 2021 07:48:33 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxDwY5LXrUv7rF4WSWDFWv7mThvp3cXH6uLI46ZivXyYIQPRU81VN5ArT2yPVj1vD2NKw/5
X-Received: by 2002:a1c:804d:: with SMTP id b74mr16688769wmd.15.1618757312909;
        Sun, 18 Apr 2021 07:48:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618757312; cv=none;
        d=google.com; s=arc-20160816;
        b=Ru913ORMz2wsd39dm91DDUfHE/l226DrcpzGXXpjCC/N2e7oy2FHp5dWXhdKf9vZ0T
         wKTzOtWwW42vxE1KMFuxd64jyX3fqHnFLTIKx4IwNFtoiaX5yIF6VD+NglSHJctEhg4h
         zBycjudpuO2cEU/FczmAiRZSM6ZXUHiZEhcp23Sg3/ub5SIJyiYrqO/vYroP0stPwndB
         xXO33skYvn2oMh17Fo0ZQQ6Db+I1qcAKUuTTtsODpPJpveidu4/3mk9ro/dZvCeDmq/H
         rH2o9no+Jx9/pvZzI3yyaOw6KHTSzuSG0q/WDfEPsSgk3n2TFjKQJu8tFtxUHyvWkDuX
         5ucg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=/kZqRjhE3R5JUG9kHiYQ4hDaNWVduuH/NPkt3x6nfsA=;
        b=abuO9RiWotT8M8DAcccVNtm8v5uF/3l6jUlwn8F58lowSrr1/oLSghU/Sel3GsCmtY
         13JUaBaeub1C1WrLmGRu5ZYLVa7QS5JYGAEFCjV3vC+l2/+RJQULRLeHnA3wBoSASwAq
         LphQkGe/2GDRQxea/oYxguvBln5ca5kafUkpJF9ekHcHKMpdgFIhJ/uB37rY39jsWYYf
         9yQmSn4qBqKqAAF8zpvwzwb10dQxudldF9N1pedI6PcpYZ49Cgiki88GU6LaI5mweNgZ
         Tp2Wqm1jb+DXSjm7JR+is3CDKxl8aiYN1X4Lt8J7OwkzvHFDJDijDLBodtI66e3fHGEU
         5L/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 188.37.95.113 is neither permitted nor denied by best guess record for domain of bcarvalho@bcarvalho-ubuntu.lan) smtp.mailfrom=bcarvalho@bcarvalho-ubuntu.lan;
       dmarc=fail (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bcarvalho@bcarvalho-ubuntu.lan>
Received: from bcarvalho-Ubuntu.lan (113.95.37.188.rev.vodafone.pt. [188.37.95.113])
        by gmr-mx.google.com with ESMTPS id c6si666380wmr.2.2021.04.18.07.48.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Apr 2021 07:48:32 -0700 (PDT)
Received-SPF: neutral (google.com: 188.37.95.113 is neither permitted nor denied by best guess record for domain of bcarvalho@bcarvalho-ubuntu.lan) client-ip=188.37.95.113;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 188.37.95.113 is neither permitted nor denied by best guess record for domain of bcarvalho@bcarvalho-ubuntu.lan) smtp.mailfrom=bcarvalho@bcarvalho-ubuntu.lan;
       dmarc=fail (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from bcarvalho-Ubuntu.lan (localhost [127.0.0.1])
	by bcarvalho-Ubuntu.lan (8.15.2/8.15.2/Debian-18) with ESMTP id 13IEmTTj135423;
	Sun, 18 Apr 2021 15:48:29 +0100
Received: (from bcarvalho@localhost)
	by bcarvalho-Ubuntu.lan (8.15.2/8.15.2/Submit) id 13IEmS7q135422;
	Sun, 18 Apr 2021 15:48:28 +0100
From: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
To: maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
        airlied@linux.ie, daniel@ffwll.ch, dri-devel@lists.freedesktop.org,
        outreachy-kernel@googlegroups.com
Cc: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
Subject: [PATCH 0/5] drm: Adjust end of block comment
Date: Sun, 18 Apr 2021 15:48:20 +0100
Message-Id: <cover.1618756333.git.martinsdecarvalhobeatriz@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add a new line with */ on the last line of a block comment to follow 
the Linux kernel coding conventions. 
Problem found by checkpatch.
in tree dpu/drm

Beatriz Martins de Carvalho (5):
  drm: drm_atomic.c: Adjust end of block comment
  drm: drm_auth.c: Adjust end of block comment
  drm: drm_bufs.c: Adjust end of block comment
  drm: drm_connector.c: Adjust end of block comment
  drm: drm_context.c: Adjust end of block comment

 drivers/gpu/drm/drm_atomic.c    | 3 ++-
 drivers/gpu/drm/drm_auth.c      | 3 ++-
 drivers/gpu/drm/drm_bufs.c      | 3 ++-
 drivers/gpu/drm/drm_connector.c | 9 ++++++---
 drivers/gpu/drm/drm_context.c   | 3 ++-
 5 files changed, 14 insertions(+), 7 deletions(-)

-- 
2.25.1


