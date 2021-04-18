X-GM-THRID: 6952754810830454784
X-Received: by 2002:a05:620a:1427:: with SMTP id k7mr4289693qkj.91.1618814396148;
        Sun, 18 Apr 2021 23:39:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:7a82:: with SMTP id v124ls8720040qkc.3.gmail; Sun, 18
 Apr 2021 23:39:55 -0700 (PDT)
X-Received: by 2002:a37:8a01:: with SMTP id m1mr10787774qkd.85.1618814395507;
        Sun, 18 Apr 2021 23:39:55 -0700 (PDT)
Received: by 2002:a05:620a:cc5:b029:27a:5057:67cd with SMTP id af79cd13be357-2e23b2588cfms85a;
        Sun, 18 Apr 2021 07:48:47 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxFnA6JE6qVJDSRHrcLBKQzkQtqldc1MjJqLr6eSt1roqtkaGHukUIvtsozDmecUptxT7MB
X-Received: by 2002:a05:651c:482:: with SMTP id s2mr5178936ljc.397.1618757326835;
        Sun, 18 Apr 2021 07:48:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618757326; cv=none;
        d=google.com; s=arc-20160816;
        b=P2Rm+14zvvMpojVQ/xde7T/47mzvt7qsutGX716wUstQ2GqSCuyDBQ7J5BbP0FXEgz
         VIJ19KutDcG66DwInLUm7jPXrHrEmEtOvYaDVtZMZ+Q/n2T5ZkSsyH1BWmA/xrZ8ONug
         3W+doZQ0CP3wf68i3MICz7uVtBX+VHNaswEK+xcd7cW7WhY6PiGhLhlB+5D4hWmDacD3
         93AjHe77pcDRRBeI4mwoq8OaHZrw7ujhs/1AyffJlPyZ6lDCzf6V7a8q7HrIyMs3kfLI
         9Eo91IxeotHMRPF8W+TVXduZCteIvtcYG4GX6EhuKO0m8JVVg5vhIOAgUVsiUYT5LA/t
         Q++g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=Yfid5mt4o5SnHIBGrtPwH6oVDyBU8btfMOQ75Gb0/cY=;
        b=q+ICDv8USvVSDQlaNgsaSg4clpWMQ951nsYqeRSWZzLmQwyn5w2Z8VzK+YBBHs2QUL
         u7FywTQqByQZEg8ocP8my4Bn2rp2SI2On85l5djCsg/InG03xziZZlaK+eiAZVEDrnt7
         v3sBQzt//9rjTcBa4eYWMAKGqODEYV4vGOiZZOO+GeS1wQSvZTM5vUSihraW8NR4ur8M
         15pkYUJ8TUa480DKUF9uBWx7Tdx1dVojSc1jDnVXeahA5MUE07z2v3I7dMh/8BfkqF/w
         Ea88obSHueMwnIZTzoYzDdi1DEoVNtxc2IZuUwKMsYP3DgeviFYpBJP860grn8iSI7A4
         97EA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 188.37.95.113 is neither permitted nor denied by best guess record for domain of bcarvalho@bcarvalho-ubuntu.lan) smtp.mailfrom=bcarvalho@bcarvalho-ubuntu.lan;
       dmarc=fail (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bcarvalho@bcarvalho-ubuntu.lan>
Received: from bcarvalho-Ubuntu.lan (113.95.37.188.rev.vodafone.pt. [188.37.95.113])
        by gmr-mx.google.com with ESMTPS id a10si629144lfs.11.2021.04.18.07.48.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Apr 2021 07:48:46 -0700 (PDT)
Received-SPF: neutral (google.com: 188.37.95.113 is neither permitted nor denied by best guess record for domain of bcarvalho@bcarvalho-ubuntu.lan) client-ip=188.37.95.113;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 188.37.95.113 is neither permitted nor denied by best guess record for domain of bcarvalho@bcarvalho-ubuntu.lan) smtp.mailfrom=bcarvalho@bcarvalho-ubuntu.lan;
       dmarc=fail (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from bcarvalho-Ubuntu.lan (localhost [127.0.0.1])
	by bcarvalho-Ubuntu.lan (8.15.2/8.15.2/Debian-18) with ESMTP id 13IEmir1135453;
	Sun, 18 Apr 2021 15:48:44 +0100
Received: (from bcarvalho@localhost)
	by bcarvalho-Ubuntu.lan (8.15.2/8.15.2/Submit) id 13IEmiKc135452;
	Sun, 18 Apr 2021 15:48:44 +0100
From: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
To: maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
        airlied@linux.ie, daniel@ffwll.ch, dri-devel@lists.freedesktop.org,
        outreachy-kernel@googlegroups.com
Cc: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
Subject: [PATCH 5/5] drm: drm_context.c: Adjust end of block comment
Date: Sun, 18 Apr 2021 15:48:25 +0100
Message-Id: <341b1ae1475fad22035cf3ff11df73cd49063d4c.1618756333.git.martinsdecarvalhobeatriz@gmail.com>
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
 drivers/gpu/drm/drm_context.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/drm_context.c b/drivers/gpu/drm/drm_context.c
index c99be950bf17..54e3c513d6a5 100644
--- a/drivers/gpu/drm/drm_context.c
+++ b/drivers/gpu/drm/drm_context.c
@@ -312,7 +312,8 @@ static int drm_context_switch_complete(struct drm_device *dev,
 
 	/* If a context switch is ever initiated
 	   when the kernel holds the lock, release
-	   that lock here. */
+	   that lock here.
+	 */
 	clear_bit(0, &dev->context_flag);
 
 	return 0;
-- 
2.25.1


