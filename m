X-GM-THRID: 6952754810830454784
X-Received: by 2002:a05:620a:12ac:: with SMTP id x12mr3353441qki.196.1618814388710;
        Sun, 18 Apr 2021 23:39:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:622a:1447:: with SMTP id v7ls6389663qtx.4.gmail; Sun, 18
 Apr 2021 23:39:48 -0700 (PDT)
X-Received: by 2002:a05:622a:10f:: with SMTP id u15mr9827458qtw.285.1618814388086;
        Sun, 18 Apr 2021 23:39:48 -0700 (PDT)
Received: by 2002:a37:9882:0:b029:2de:7443:c762 with SMTP id af79cd13be357-2e096541154ms85a;
        Sun, 18 Apr 2021 07:48:45 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzlguWLZuNp4uQHJNf/Np3cO6DlQ4qvQFEwwG5XBlpvKA0vpgo72HIJ3BmiButjaiCG+RcD
X-Received: by 2002:a2e:88c6:: with SMTP id a6mr8644968ljk.87.1618757324831;
        Sun, 18 Apr 2021 07:48:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618757324; cv=none;
        d=google.com; s=arc-20160816;
        b=p0VrLbKPAjusL1mTifvPyXGBn40DwLp9twBJ1qpDHfJRoQHFw4LPIZ6zXH7oA1DfuO
         /MoynNGUxCxK1w3PEb3qKwyCkTEgsNG6kG4hcA+tVR9IggV5ln5Ao1OCcF+Q6+tETR4I
         bIB2+i3HhkbGK2YinDrCu7FECalWoESjyXQGzaju22tgQ0aka4E9Ys+tZmHDkVDZS7zL
         AALCvyehnaf3V6Mr4+1skc0mD+XnZ/G46PWdfeTVtSHevpGZ25X+/XH1CmBrdIP6TDp+
         POKdVHMARXwJw6l5KawrjbU9xeNtyXa/KSHyHV1KhRKvU8WQbBLXMLHCnGOLbpUUgqDK
         14mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=/b4PlwxeP2QN4jZJPRCUuw530f+oAMFiERG4rj/EFOU=;
        b=iasEshcPJaewc6YlYxFbNqwoRo/OfAZAR5M31JPILXTZIHzO7751CtJ1WQ5lueL4tQ
         Tu/nJ7Kv60fYK+vbEespdGeWEDK+9CylRT7nEbWLSooWs02AY01B3106YKSu2DjR6+xN
         7jfhAkRCMxHfVRx3onp2Ddbvx6Dnp5hvlHj9Ni85+fgju8nALyjfLOvLdSC5Mn1kYF23
         /N02hIZdZWLHzqIJ8htuJv86CvRDacPyLCYYy09p1A0dgNGwm11bQBo1sxoRlqQLyeJ9
         SJU5Da/f8AdaiSs1X9bV1AchXb9YGWhx1ELt/lo5/TlraTcSUx0xg/UMp/pxWcElNQH3
         FXWw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 188.37.95.113 is neither permitted nor denied by best guess record for domain of bcarvalho@bcarvalho-ubuntu.lan) smtp.mailfrom=bcarvalho@bcarvalho-ubuntu.lan;
       dmarc=fail (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bcarvalho@bcarvalho-ubuntu.lan>
Received: from bcarvalho-Ubuntu.lan (113.95.37.188.rev.vodafone.pt. [188.37.95.113])
        by gmr-mx.google.com with ESMTPS id w19si509488ljm.3.2021.04.18.07.48.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Apr 2021 07:48:44 -0700 (PDT)
Received-SPF: neutral (google.com: 188.37.95.113 is neither permitted nor denied by best guess record for domain of bcarvalho@bcarvalho-ubuntu.lan) client-ip=188.37.95.113;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 188.37.95.113 is neither permitted nor denied by best guess record for domain of bcarvalho@bcarvalho-ubuntu.lan) smtp.mailfrom=bcarvalho@bcarvalho-ubuntu.lan;
       dmarc=fail (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from bcarvalho-Ubuntu.lan (localhost [127.0.0.1])
	by bcarvalho-Ubuntu.lan (8.15.2/8.15.2/Debian-18) with ESMTP id 13IEmgIq135445;
	Sun, 18 Apr 2021 15:48:42 +0100
Received: (from bcarvalho@localhost)
	by bcarvalho-Ubuntu.lan (8.15.2/8.15.2/Submit) id 13IEmgA4135443;
	Sun, 18 Apr 2021 15:48:42 +0100
From: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
To: maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
        airlied@linux.ie, daniel@ffwll.ch, dri-devel@lists.freedesktop.org,
        outreachy-kernel@googlegroups.com
Cc: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
Subject: [PATCH 3/5] drm: drm_bufs.c: Adjust end of block comment
Date: Sun, 18 Apr 2021 15:48:23 +0100
Message-Id: <c3a261994b88f6fc39f69ee8c1af8ab115d76a87.1618756333.git.martinsdecarvalhobeatriz@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1618756333.git.martinsdecarvalhobeatriz@gmail.com>
References: <cover.1618756333.git.martinsdecarvalhobeatriz@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add a new line with */ on the last line of a block comment to follow the
Linux kernel coding conventions.
Problem found by checkpatch.

Signed-off-by: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
---
 drivers/gpu/drm/drm_bufs.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/drm_bufs.c b/drivers/gpu/drm/drm_bufs.c
index e3d77dfefb0a..731a42a31c44 100644
--- a/drivers/gpu/drm/drm_bufs.c
+++ b/drivers/gpu/drm/drm_bufs.c
@@ -325,7 +325,8 @@ static int drm_addmap_core(struct drm_device *dev, resource_size_t offset,
 		/* dma_addr_t is 64bit on i386 with CONFIG_HIGHMEM64G,
 		 * As we're limiting the address to 2^32-1 (or less),
 		 * casting it down to 32 bits is no problem, but we
-		 * need to point to a 64bit variable first. */
+		 * need to point to a 64bit variable first.
+		 */
 		map->handle = dma_alloc_coherent(dev->dev,
 						 map->size,
 						 &map->offset,
-- 
2.25.1


