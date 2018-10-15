X-GM-THRID: 6612898342094503936
X-Received: by 2002:a37:a887:: with SMTP id r129-v6mr16638754qke.45.1539685377529;
        Tue, 16 Oct 2018 03:22:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:99ca:: with SMTP id y10ls370930qve.9.gmail; Tue, 16 Oct
 2018 03:22:56 -0700 (PDT)
X-Google-Smtp-Source: ACcGV60iAyPJbY7qlrsChWoJ0ZSlNrnbdHB9r7KKpiFjGcHvmUoWJu6R7CeGb9Ox4qwmkRFzQUdL
X-Received: by 2002:a0c:943c:: with SMTP id h57mr17061160qvh.61.1539685376862;
        Tue, 16 Oct 2018 03:22:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539685376; cv=none;
        d=google.com; s=arc-20160816;
        b=MHLDHoVxvCvFWuzFvHiTjGmzKJK8o5M5qxM7U1YfRhet01PEiDhVl4BOpydWW4PEbE
         qBNIT3COHs24ld+fKQWbL0BvqZTt3yqoIwDIvxEetktj4ORGQGY5oov4MrOKJjN95AmT
         bg05eDSJZ+VH1r+vE5XNLVh6V5Q4UwOzP26xEkDe5z1thyMgMX3t5zb8FVVBoLSI9c5s
         CFz/AHvx3hMX+ppom1Dd/zM2tSqKQYvpL1KU7Y+tq2cAtFFL6b01D0XU+nhe0U9X0si7
         wOADNYwtgoPbnz4+4N7IYSr8xQATPCGaecTvbXR8YyL/qtrRNXFJFazc/rtFHgL6GKuc
         1JnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=ZIv86pWrDGETknjTIkSWZS7wrG8hZu8ipPaB5pCoeZI=;
        b=qE9e2i15tYwAJ9qEMmHVXoBCFLIb0B457vHB+PvQWJ/PhT6QOntKvP4MOQoVjEs639
         x8h1VSb3uVXtcHviR4e8CEJD+c8NWbse3CErF8mKA8HzmHIt/S/EX+edvyrHTsE8npm8
         dfFe0X2dVSfrcH6bklyzWvcsj8OfHiNqHS/WZFrS21vncGR6h5bABWo76JyESWMc8adm
         16mPD0qW+VzOQSJ4n1ak34gxZjLZFdndHKkRTM32/LqkQW2jB91G4mz3upzwLNBADch/
         OCrmIXol4smT4wUatVuctMz638PajFVHm/0a6YJB6tws/Y5EaN/zpc1DQxs/BWTwBwPr
         wlOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="CHi/KYq+";
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mamtashukla555@gmail.com>
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id o2-v6si565460qtc.5.2018.10.16.03.22.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Oct 2018 03:22:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="CHi/KYq+";
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x643.google.com with SMTP id u6-v6so8064240plz.4
        for <outreachy-kernel@googlegroups.com>; Tue, 16 Oct 2018 03:22:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=ZIv86pWrDGETknjTIkSWZS7wrG8hZu8ipPaB5pCoeZI=;
        b=CHi/KYq+ITy1tDRfTLZRLRYiASqTwny9v1iR2z4keHj8LvLhlDplCpNkWowptXhDU/
         vcHsfeo3R3OY8oo/wgMEk+Bw5h3QJiujFH7dB9/QxeAUIIn9Oqe2D/fkRGde5FifTpSa
         R7VQwffKv+qDrhqBz3P0k1TtQsVTlBAAa5Fpo8MEAr/Xq8h534b/+iG+eylNmx8dokLF
         1wsSbSCrNs22fM2jRRsAeaodgnqqumHRRbTNMbDGEWyEGHocUWL3/CnkJDT1EDF1QLrQ
         TU/39C8/xtYkh3RGX7hbN37Ev3aKSF6erZX1KHDyjnmXIGb5C/FeNr8liel9VjmME8DD
         bRzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=ZIv86pWrDGETknjTIkSWZS7wrG8hZu8ipPaB5pCoeZI=;
        b=SOdmv8cZaIaEvZMlJ36Qai85RL7JQM4DNHNKR8ngeEd2SkNQmjmrrjqUk/rtGpOiZ7
         ntIOeey6prTog2kBg2EdrNC4aAruG5mLciq/dunJccIVzPS9G6QkWo08K9wFRyhGBgGY
         Nv0QeZl4dMJVKMJkmF2wyYK3s2J5QOowqq29zpC6xqFbkWvCkyC8uEoaAVj7w+iYB5X+
         9mKMvcxBkKZjjwndiTUwkNNnKFtEY1UzNfIoVbv0xp0kjQUa1fQwqbfW4FmZZrYJ0f+r
         axkTW2kmH5XvYIi2nQ+2otE/suf84l8xWhAGQ3wRBobZpMmM6jH3NwQaGgzQkCcthT7r
         Zg2w==
X-Gm-Message-State: ABuFfog/gCJLB5JBSzf/mL7F3MHM0Ca0dd6x0Ozq7H1W/XRMxYL+lmeY
	zRt/P9opUHLa9NdUcc7zctQ=
X-Received: by 2002:a17:902:a9c5:: with SMTP id b5-v6mr17147139plr.340.1539685375896;
        Tue, 16 Oct 2018 03:22:55 -0700 (PDT)
Return-Path: <mamtashukla555@gmail.com>
Received: from armorer ([117.208.15.95])
        by smtp.gmail.com with ESMTPSA id z11-v6sm28832791pfg.85.2018.10.16.03.22.54
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 16 Oct 2018 03:22:55 -0700 (PDT)
Date: Tue, 16 Oct 2018 02:56:44 +0530
From: Mamta Shukla <mamtashukla555@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: dri-devel@lists.freedesktop.org, daniel.vetter@ffwll.ch,
	gustavo@padovan.org, maarten.lankhorst@linux.intel.com,
	sean@poorly.run, airlied@linux.ie
Subject: [PATCH DRM] drm: Shift * to be adjacent to pointer name
Message-ID: <20181015212644.GA28579@armorer>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Shift * to be adjacent to pointer name to follow Linux coding style.
Issue found with checkpatch.pl
ERROR: "foo * bar" should be "foo *bar"

Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>
---
 drivers/gpu/drm/drm_memory.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/drm_memory.c b/drivers/gpu/drm/drm_memory.c
index d69e4fc..40c4349 100644
--- a/drivers/gpu/drm/drm_memory.c
+++ b/drivers/gpu/drm/drm_memory.c
@@ -51,7 +51,7 @@
 #endif
 
 static void *agp_remap(unsigned long offset, unsigned long size,
-		       struct drm_device * dev)
+		       struct drm_device *dev)
 {
 	unsigned long i, num_pages =
 	    PAGE_ALIGN(size) / PAGE_SIZE;
@@ -94,26 +94,26 @@ static void *agp_remap(unsigned long offset, unsigned long size,
 }
 
 /** Wrapper around agp_free_memory() */
-void drm_free_agp(struct agp_memory * handle, int pages)
+void drm_free_agp(struct agp_memory *handle, int pages)
 {
 	agp_free_memory(handle);
 }
 
 /** Wrapper around agp_bind_memory() */
-int drm_bind_agp(struct agp_memory * handle, unsigned int start)
+int drm_bind_agp(struct agp_memory *handle, unsigned int start)
 {
 	return agp_bind_memory(handle, start);
 }
 
 /** Wrapper around agp_unbind_memory() */
-int drm_unbind_agp(struct agp_memory * handle)
+int drm_unbind_agp(struct agp_memory *handle)
 {
 	return agp_unbind_memory(handle);
 }
 
 #else /*  CONFIG_AGP  */
 static inline void *agp_remap(unsigned long offset, unsigned long size,
-			      struct drm_device * dev)
+			      struct drm_device *dev)
 {
 	return NULL;
 }
-- 
1.9.1


