X-GM-THRID: 6952754810830454784
X-Received: by 2002:a37:9644:: with SMTP id y65mr10724268qkd.494.1618814385048;
        Sun, 18 Apr 2021 23:39:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:620a:2209:: with SMTP id m9ls4916227qkh.5.gmail; Sun, 18
 Apr 2021 23:39:44 -0700 (PDT)
X-Received: by 2002:a37:8181:: with SMTP id c123mr10639782qkd.287.1618814384419;
        Sun, 18 Apr 2021 23:39:44 -0700 (PDT)
Received: by 2002:a05:620a:1236:b029:2e0:3cec:c35 with SMTP id af79cd13be357-2e095df8f9cms85a;
        Sun, 18 Apr 2021 07:48:42 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxPRRYKDne4HTUlDzBjTqHjkj3aRVjRUCAiSYMkfgoa3cKWbTwGnsUdYeT8UtSGpQJRM1Wa
X-Received: by 2002:a7b:cb42:: with SMTP id v2mr17047579wmj.120.1618757322228;
        Sun, 18 Apr 2021 07:48:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618757322; cv=none;
        d=google.com; s=arc-20160816;
        b=Zs71SrUew+gbQDMZtODaAr90Jwq1PWr7a921ieYtI/WrK2+DqNbTgn2L8LNUvLxk5E
         440FnNVox/Pd04xMAVE4/gYu34j2yXcZtGEnGzyd8OoclGEXcuty65IK/DDlb/J0OHzJ
         5NndtaKEWWg/DH7T2Z1Y+Gsr88RFYWjLseMxHYdgtbrjGNUnvf+xlWh4Gj4IhDUcZ/I3
         KW/GSdAw7bzGBbn9ZyzW3ji1SCNztFuqr3mJqGYregrrLF5WK+MpFqDkPV2nR8q7EuuT
         m/9ZBiAbsj6sgBCq996PTdylCMNWqbqlSmph2EBTMJLFxJosefZTlRw+5jqlpxv1ZgBG
         HMjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=fG85dbebKoSteYYPivVE8kWXsCAyDtNNlGMTLX6zqlw=;
        b=S9HQeBSYhwTsWa/d/k5DHq/U6G6waBEwEs3L4GCPFybWRqBvX+on/t8Teb93fbZgzT
         KqaJSMt1Sog6pLSMGrE6Tjb/NGsB1Q5PNPmqqee9PfJAoSJiN24gaQGaVrFl+MfxbRg7
         VVo1lnyadcVJ1vaG7+j4uMy/E5CV7pF/XTZgK7c+kFpnD4G//0zcP1WfIFXTFXOPUy3/
         AytotcrscoXNBnDJIiGNDgqBldn23+e/R6lz4sux/1t3ApHYoyILDtVJZ3kpLdhTtAld
         wXmBM6aAdVjikAYKcjRvI3lH+vCpR+xWHPCpuKJ1yfNyDUobwuPqYrtDdyx34BpMUvfd
         F7GA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 188.37.95.113 is neither permitted nor denied by best guess record for domain of bcarvalho@bcarvalho-ubuntu.lan) smtp.mailfrom=bcarvalho@bcarvalho-ubuntu.lan;
       dmarc=fail (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bcarvalho@bcarvalho-ubuntu.lan>
Received: from bcarvalho-Ubuntu.lan (113.95.37.188.rev.vodafone.pt. [188.37.95.113])
        by gmr-mx.google.com with ESMTPS id r4si666697wma.1.2021.04.18.07.48.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Apr 2021 07:48:42 -0700 (PDT)
Received-SPF: neutral (google.com: 188.37.95.113 is neither permitted nor denied by best guess record for domain of bcarvalho@bcarvalho-ubuntu.lan) client-ip=188.37.95.113;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 188.37.95.113 is neither permitted nor denied by best guess record for domain of bcarvalho@bcarvalho-ubuntu.lan) smtp.mailfrom=bcarvalho@bcarvalho-ubuntu.lan;
       dmarc=fail (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from bcarvalho-Ubuntu.lan (localhost [127.0.0.1])
	by bcarvalho-Ubuntu.lan (8.15.2/8.15.2/Debian-18) with ESMTP id 13IEmena135435;
	Sun, 18 Apr 2021 15:48:40 +0100
Received: (from bcarvalho@localhost)
	by bcarvalho-Ubuntu.lan (8.15.2/8.15.2/Submit) id 13IEmesh135434;
	Sun, 18 Apr 2021 15:48:40 +0100
From: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
To: maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
        airlied@linux.ie, daniel@ffwll.ch, dri-devel@lists.freedesktop.org,
        outreachy-kernel@googlegroups.com
Cc: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
Subject: [PATCH 1/5] drm: drm_atomic.c: Adjust end of block comment
Date: Sun, 18 Apr 2021 15:48:21 +0100
Message-Id: <387b6b852a72d6a98133cead5e4d0e3c39dd5094.1618756333.git.martinsdecarvalhobeatriz@gmail.com>
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
 drivers/gpu/drm/drm_atomic.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/drm_atomic.c b/drivers/gpu/drm/drm_atomic.c
index 46dceb51c90f..e42d9fc5d9ff 100644
--- a/drivers/gpu/drm/drm_atomic.c
+++ b/drivers/gpu/drm/drm_atomic.c
@@ -385,7 +385,8 @@ static int drm_atomic_crtc_check(const struct drm_crtc_state *old_crtc_state,
 
 	/* The state->enable vs. state->mode_blob checks can be WARN_ON,
 	 * as this is a kernel-internal detail that userspace should never
-	 * be able to trigger. */
+	 * be able to trigger.
+	 */
 	if (drm_core_check_feature(crtc->dev, DRIVER_ATOMIC) &&
 	    WARN_ON(new_crtc_state->enable && !new_crtc_state->mode_blob)) {
 		DRM_DEBUG_ATOMIC("[CRTC:%d:%s] enabled without mode blob\n",
-- 
2.25.1


