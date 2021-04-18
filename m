X-GM-THRID: 6952754810830454784
X-Received: by 2002:ac8:5847:: with SMTP id h7mr10425285qth.108.1618814392280;
        Sun, 18 Apr 2021 23:39:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:f84a:: with SMTP id g10ls4314823qvo.7.gmail; Sun, 18 Apr
 2021 23:39:51 -0700 (PDT)
X-Received: by 2002:ad4:4350:: with SMTP id q16mr20196509qvs.56.1618814391592;
        Sun, 18 Apr 2021 23:39:51 -0700 (PDT)
Received: by 2002:a37:61d6:0:b029:2e0:3a6d:aeb7 with SMTP id af79cd13be357-2e09654ed8ams85a;
        Sun, 18 Apr 2021 07:48:46 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwj6uLDg8gVb5hp0KghqA4wqqEVGkkdxllNWMQyYKlfp7NZUBaqaqIeUfOKCggSYoRcpT/F
X-Received: by 2002:a17:906:314f:: with SMTP id e15mr17697681eje.30.1618757325529;
        Sun, 18 Apr 2021 07:48:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618757325; cv=none;
        d=google.com; s=arc-20160816;
        b=MMAQiv4B2O+XRMD0fw3804bcSEpVUDJTgZpWHVqRQAnVI1RZ7rF+QhqgjlGgojEyOK
         6eXjLScuHERjrSh4xL9w9oSZDlLluvWMXExhuFJw/gHua0LKKhRIUznQF6c3z7qmW83U
         tf3Qx8fGB/z82MHJ2Hpee71p441S7c9dQlsfR2hgCVsNDdWKWGN8MHAsIwSfr3HJbYhM
         IeMc7zd5StmjtcjBN8XXVoBvxf+W1DrH0UB0NKa+kFuIdNo/ODjkBZT6ttwy9VbE2eIU
         tMAyKzYn9LjOYCyfV+MTpI6dY23IKPM4stta+e8J2vRAk0MTdVcCtfRPQVkMQ+CUVOXP
         V2yQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=1KX4Ge8zZXYgCiWQwqMKqpWnsb1m5aafZmymxkmb0zo=;
        b=XFYX9NqWzkTeiEVvIsDT9a7bGlevNIQmOFrMqwytOfqIE1hM+1M3xoLxcAxDGBYy5c
         yZxhPFZ/2dRwskA6MTJe73hnIhQG+biOZZ5nBlp6ZaWqa48Aw9Mti5VrEJrNB/fXzmBZ
         EwhhBK3koveOiSxUad876LeypxSuv80JO0wtkuBDP9E/XBG1/V1aWA/QIZacfC6MKRYN
         xa7wVm8JFIBKJhIcNnAGsAifol/po62IiVL4xa5AlgwqAvk+9YT5cbIGUmH5PUrZd2il
         Iq6pTDUS+KHTrwF7cTZG8SMXFLGq0n/t/zco0yh1DCgIl0RoOCUSsTyWkN5lx1PK9nK3
         kpYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 188.37.95.113 is neither permitted nor denied by best guess record for domain of bcarvalho@bcarvalho-ubuntu.lan) smtp.mailfrom=bcarvalho@bcarvalho-ubuntu.lan;
       dmarc=fail (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bcarvalho@bcarvalho-ubuntu.lan>
Received: from bcarvalho-Ubuntu.lan (113.95.37.188.rev.vodafone.pt. [188.37.95.113])
        by gmr-mx.google.com with ESMTPS id re17si271075ejb.1.2021.04.18.07.48.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Apr 2021 07:48:45 -0700 (PDT)
Received-SPF: neutral (google.com: 188.37.95.113 is neither permitted nor denied by best guess record for domain of bcarvalho@bcarvalho-ubuntu.lan) client-ip=188.37.95.113;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 188.37.95.113 is neither permitted nor denied by best guess record for domain of bcarvalho@bcarvalho-ubuntu.lan) smtp.mailfrom=bcarvalho@bcarvalho-ubuntu.lan;
       dmarc=fail (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from bcarvalho-Ubuntu.lan (localhost [127.0.0.1])
	by bcarvalho-Ubuntu.lan (8.15.2/8.15.2/Debian-18) with ESMTP id 13IEmhcI135449;
	Sun, 18 Apr 2021 15:48:43 +0100
Received: (from bcarvalho@localhost)
	by bcarvalho-Ubuntu.lan (8.15.2/8.15.2/Submit) id 13IEmhRP135448;
	Sun, 18 Apr 2021 15:48:43 +0100
From: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
To: maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
        airlied@linux.ie, daniel@ffwll.ch, dri-devel@lists.freedesktop.org,
        outreachy-kernel@googlegroups.com
Cc: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
Subject: [PATCH 4/5] drm: drm_connector.c: Adjust end of block comment
Date: Sun, 18 Apr 2021 15:48:24 +0100
Message-Id: <59abdb2d65a643d5937e5773db684b926e8c9233.1618756333.git.martinsdecarvalhobeatriz@gmail.com>
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
 drivers/gpu/drm/drm_connector.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
index 7631f76e7f34..8714f2d021f9 100644
--- a/drivers/gpu/drm/drm_connector.c
+++ b/drivers/gpu/drm/drm_connector.c
@@ -279,7 +279,8 @@ int drm_connector_init(struct drm_device *dev,
 	drm_connector_get_cmdline_mode(connector);
 
 	/* We should add connectors at the end to avoid upsetting the connector
-	 * index too much. */
+	 * index too much.
+	 */
 	spin_lock_irq(&config->connector_list_lock);
 	list_add_tail(&connector->head, &config->connector_list);
 	config->num_connector++;
@@ -2288,7 +2289,8 @@ int drm_connector_property_set_ioctl(struct drm_device *dev,
 static struct drm_encoder *drm_connector_get_encoder(struct drm_connector *connector)
 {
 	/* For atomic drivers only state objects are synchronously updated and
-	 * protected by modeset locks, so check those first. */
+	 * protected by modeset locks, so check those first.
+	 */
 	if (connector->state)
 		return connector->state->best_encoder;
 	return connector->encoder;
@@ -2450,7 +2452,8 @@ int drm_mode_getconnector(struct drm_device *dev, void *data,
 		out_resp->encoder_id = 0;
 
 	/* Only grab properties after probing, to make sure EDID and other
-	 * properties reflect the latest status. */
+	 * properties reflect the latest status.
+	 */
 	ret = drm_mode_object_get_properties(&connector->base, file_priv->atomic,
 			(uint32_t __user *)(unsigned long)(out_resp->props_ptr),
 			(uint64_t __user *)(unsigned long)(out_resp->prop_values_ptr),
-- 
2.25.1


