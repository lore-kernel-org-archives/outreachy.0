X-GM-THRID: 6952754810830454784
X-Received: by 2002:ac8:6b52:: with SMTP id x18mr10294678qts.100.1618814381865;
        Sun, 18 Apr 2021 23:39:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:5781:: with SMTP id v1ls6391388qta.3.gmail; Sun, 18 Apr
 2021 23:39:41 -0700 (PDT)
X-Received: by 2002:ac8:1009:: with SMTP id z9mr10185176qti.128.1618814381275;
        Sun, 18 Apr 2021 23:39:41 -0700 (PDT)
Received: by 2002:a05:620a:4402:b029:2df:fe2e:8653 with SMTP id af79cd13be357-2e23d2385c2ms85a;
        Sun, 18 Apr 2021 07:48:44 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxjvZici1qdBDBVrB5G0Gl2Hb7oaUOCC2sSx30Vy9VhaCyfoXIPhCEFhNH40humXiWpQusC
X-Received: by 2002:a17:907:770d:: with SMTP id kw13mr17277464ejc.339.1618757323524;
        Sun, 18 Apr 2021 07:48:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618757323; cv=none;
        d=google.com; s=arc-20160816;
        b=iVF+dRoeyz0JdrQL6OC/EAu6AeFa9BYS5zAe9mVAiQHE+0600bpjeC8Q+xFVRzJbg3
         bD4Otb1Tf+nvy+Tp0r3mxJjp1JdD9OSwVNXvhr12IjRPrWRqDoj+4w8uYB/iY6SQDRtI
         ObUnWNB+tAcnAOSiRYiKe7fWrhbu8QNhjkdQ3+XZJdzDkQ9Hl0SYlwii4Nx/8YFQEEjb
         5TvY2YVzhYbAlxFIcD4zFYUMxNaFAslmJ9fAlrvsy4LFq/oCZgHUtDW0OtVY0PMo/cC/
         hucL8RgIab+V53pam0bTvgkKHgmQKX+oRMxCgO9mdavw5GdKq4Gn/7jr4h0Kwtbyu4Rh
         kPrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=wbsSVt7sDZG21p+Jtcnqvu0ncqhD0atmQImaH5s0bwk=;
        b=RXoiU/g0mRhKT5aDgQLecSybP/hdKejxvWnaVEbE2pjpno3tGtmFKb5AFHEBssaPuD
         COSDMUYh0NWufqucIoon+eotw13K4gReZPvzB0VlDvifMn2dYxLyZBgz97mSfFnswHL8
         sus0NmiyHqxt5MVsDzRd9Ccm0RCWEBxBcdjsOpj3w+E4RsnTdqj4TOC5h2l2EA719dcw
         9H6UfYUs4dIMqWx5V646cdmCGO7uc8kMBOgf37fAPXMMKXQ7ALT8Txc6fFRGaZpU6TkH
         boFX04xDyc6ll3HP0HFxgsP6xMSHdMMletq5jzl5QiCq9jdsUWTg0hPXrkYsi3EqTozz
         W5oA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 188.37.95.113 is neither permitted nor denied by best guess record for domain of bcarvalho@bcarvalho-ubuntu.lan) smtp.mailfrom=bcarvalho@bcarvalho-ubuntu.lan;
       dmarc=fail (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bcarvalho@bcarvalho-ubuntu.lan>
Received: from bcarvalho-Ubuntu.lan (113.95.37.188.rev.vodafone.pt. [188.37.95.113])
        by gmr-mx.google.com with ESMTPS id m18si429874edd.5.2021.04.18.07.48.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Apr 2021 07:48:43 -0700 (PDT)
Received-SPF: neutral (google.com: 188.37.95.113 is neither permitted nor denied by best guess record for domain of bcarvalho@bcarvalho-ubuntu.lan) client-ip=188.37.95.113;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 188.37.95.113 is neither permitted nor denied by best guess record for domain of bcarvalho@bcarvalho-ubuntu.lan) smtp.mailfrom=bcarvalho@bcarvalho-ubuntu.lan;
       dmarc=fail (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from bcarvalho-Ubuntu.lan (localhost [127.0.0.1])
	by bcarvalho-Ubuntu.lan (8.15.2/8.15.2/Debian-18) with ESMTP id 13IEmfV6135439;
	Sun, 18 Apr 2021 15:48:41 +0100
Received: (from bcarvalho@localhost)
	by bcarvalho-Ubuntu.lan (8.15.2/8.15.2/Submit) id 13IEmfl4135438;
	Sun, 18 Apr 2021 15:48:41 +0100
From: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
To: maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
        airlied@linux.ie, daniel@ffwll.ch, dri-devel@lists.freedesktop.org,
        outreachy-kernel@googlegroups.com
Cc: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
Subject: [PATCH 2/5] drm: drm_auth.c: Adjust end of block comment
Date: Sun, 18 Apr 2021 15:48:22 +0100
Message-Id: <cd1e8f6637b914825ee4b9643a4e9d9eba49f276.1618756333.git.martinsdecarvalhobeatriz@gmail.com>
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
 drivers/gpu/drm/drm_auth.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/drm_auth.c b/drivers/gpu/drm/drm_auth.c
index f2d46b7ac6f9..f00e5abdbbf4 100644
--- a/drivers/gpu/drm/drm_auth.c
+++ b/drivers/gpu/drm/drm_auth.c
@@ -300,7 +300,8 @@ int drm_master_open(struct drm_file *file_priv)
 	int ret = 0;
 
 	/* if there is no current master make this fd it, but do not create
-	 * any master object for render clients */
+	 * any master object for render clients
+	 */
 	mutex_lock(&dev->master_mutex);
 	if (!dev->master)
 		ret = drm_new_set_master(dev, file_priv);
-- 
2.25.1


