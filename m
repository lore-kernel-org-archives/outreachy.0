X-GM-THRID: 6952817933661765632
X-Received: by 2002:a05:6512:3a8d:: with SMTP id q13mr10755766lfu.170.1618829078643;
        Mon, 19 Apr 2021 03:44:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:6c2:: with SMTP id u2ls214266lff.3.gmail; Mon, 19
 Apr 2021 03:44:37 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyAPwNPJbwnqbBr7hEx1Oxfa0XdVwYGvn1HMXCJB2PGu2Bc0XFNdimgmKHPzFhL7LWQiRWh
X-Received: by 2002:ac2:58c9:: with SMTP id u9mr11517708lfo.103.1618829077022;
        Mon, 19 Apr 2021 03:44:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618829077; cv=none;
        d=google.com; s=arc-20160816;
        b=QhJPdk1qpjlJaPiep8wMKyuxyGjpl9ZwZ/H0pfAMHH96Lx3HOg6+oZShGLutP+J73H
         nHZqCSk/TGGVzg15S5n53dEuLHMFwYPsutTA1HIG/P4lhr2YixCg7NYqgylSjVb3ReUn
         6bM/z5voUmBEvkormQapcam97df/Fm7wsMlfwtx+3cNHh+ElZsmSnVDZp2wwaj5CrDwK
         JBjLkjpzB+54q6KUblRPBQfNpj2JHB9FQzNOgOqWaWEeLKZc5r3ftIA4s6fvyQBlYPez
         AM1acmkNEPSZMwEigAM5Bzhxq0DZdeleTJrI04+Jsx3ebb2hHKOJotrkxLGGhXbrYNXk
         4j2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=+9YyDbXYbo/3ZkbS9vnMcM6O6QITgJOco3N63Yjdcu4=;
        b=tbTa9CqOWMFPPOVzvB2dPg+IAZbdAxGM6e/cpyS9Fqp/7e9IsLFAuxUiW+yLZevU4v
         V4+fYDwIs4fKUbLAHwnmtU3dqLXz/uI7Oyv26b7jWwZ6XEuviKSsOed7W7BRIgNShMqQ
         K+J2qPrlBKeyP8ZWyIau8g0Vzap+Hm8iFC4wrBQrITKXZsjU4mTgxbVNJSWqpzD+Spnm
         GO0jJMYBZBQ6S/aVlp09A0b7k3glO0W8vkS3hKs72OvdNioq/Fzmz9gFl6J+YOlwC6N5
         MLEhIspFxVV5dhQdBDS6I7i+6PbDx0Xe/6Rjg8KnPFK7I9tX+6gLSIrPhFy8aDJ4oVTB
         rGyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 188.37.95.113 is neither permitted nor denied by best guess record for domain of bcarvalho@bcarvalho-ubuntu.lan) smtp.mailfrom=bcarvalho@bcarvalho-ubuntu.lan;
       dmarc=fail (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bcarvalho@bcarvalho-ubuntu.lan>
Received: from bcarvalho-Ubuntu.lan (113.95.37.188.rev.vodafone.pt. [188.37.95.113])
        by gmr-mx.google.com with ESMTPS id q13si225464lfm.5.2021.04.19.03.44.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Apr 2021 03:44:37 -0700 (PDT)
Received-SPF: neutral (google.com: 188.37.95.113 is neither permitted nor denied by best guess record for domain of bcarvalho@bcarvalho-ubuntu.lan) client-ip=188.37.95.113;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 188.37.95.113 is neither permitted nor denied by best guess record for domain of bcarvalho@bcarvalho-ubuntu.lan) smtp.mailfrom=bcarvalho@bcarvalho-ubuntu.lan;
       dmarc=fail (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from bcarvalho-Ubuntu.lan (localhost [127.0.0.1])
	by bcarvalho-Ubuntu.lan (8.15.2/8.15.2/Debian-18) with ESMTP id 13JAiYJp163521;
	Mon, 19 Apr 2021 11:44:34 +0100
Received: (from bcarvalho@localhost)
	by bcarvalho-Ubuntu.lan (8.15.2/8.15.2/Submit) id 13JAiYL0163520;
	Mon, 19 Apr 2021 11:44:34 +0100
From: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
To: maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
        airlied@linux.ie, daniel@ffwll.ch, melissa.srw@gmail.com,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        outreachy-kernel@googlegroups.com
Cc: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
Subject: [PATCH 3/3] drm: drm_connector.c: Use tabs for code indents
Date: Mon, 19 Apr 2021 11:44:19 +0100
Message-Id: <0200474fbdb1149856308bccb8e467415f0b3d99.1618828127.git.martinsdecarvalhobeatriz@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1618828127.git.martinsdecarvalhobeatriz@gmail.com>
References: <cover.1618828127.git.martinsdecarvalhobeatriz@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove space and use tabs for indent the code to follow the
Linux kernel coding conventions.
Problem found by checkpatch

Signed-off-by: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
---
 drivers/gpu/drm/drm_connector.c | 38 ++++++++++++++++-----------------
 1 file changed, 19 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
index 7631f76e7f34..38600c3a6ab2 100644
--- a/drivers/gpu/drm/drm_connector.c
+++ b/drivers/gpu/drm/drm_connector.c
@@ -1958,11 +1958,11 @@ int drm_connector_set_path_property(struct drm_connector *connector,
 	int ret;
 
 	ret = drm_property_replace_global_blob(dev,
-	                                       &connector->path_blob_ptr,
-	                                       strlen(path) + 1,
-	                                       path,
-	                                       &connector->base,
-	                                       dev->mode_config.path_property);
+					       &connector->path_blob_ptr,
+					       strlen(path) + 1,
+					       path,
+					       &connector->base,
+					       dev->mode_config.path_property);
 	return ret;
 }
 EXPORT_SYMBOL(drm_connector_set_path_property);
@@ -1988,11 +1988,11 @@ int drm_connector_set_tile_property(struct drm_connector *connector)
 
 	if (!connector->has_tile) {
 		ret  = drm_property_replace_global_blob(dev,
-		                                        &connector->tile_blob_ptr,
-		                                        0,
-		                                        NULL,
-		                                        &connector->base,
-		                                        dev->mode_config.tile_property);
+							&connector->tile_blob_ptr,
+							0,
+							NULL,
+							&connector->base,
+							dev->mode_config.tile_property);
 		return ret;
 	}
 
@@ -2003,11 +2003,11 @@ int drm_connector_set_tile_property(struct drm_connector *connector)
 		 connector->tile_h_size, connector->tile_v_size);
 
 	ret = drm_property_replace_global_blob(dev,
-	                                       &connector->tile_blob_ptr,
-	                                       strlen(tile) + 1,
-	                                       tile,
-	                                       &connector->base,
-	                                       dev->mode_config.tile_property);
+					       &connector->tile_blob_ptr,
+					       strlen(tile) + 1,
+					       tile,
+					       &connector->base,
+					       dev->mode_config.tile_property);
 	return ret;
 }
 EXPORT_SYMBOL(drm_connector_set_tile_property);
@@ -2076,10 +2076,10 @@ int drm_connector_update_edid_property(struct drm_connector *connector,
 
 	ret = drm_property_replace_global_blob(dev,
 					       &connector->edid_blob_ptr,
-	                                       size,
-	                                       edid,
-	                                       &connector->base,
-	                                       dev->mode_config.edid_property);
+					       size,
+					       edid,
+					       &connector->base,
+					       dev->mode_config.edid_property);
 	if (ret)
 		return ret;
 	return drm_connector_set_tile_property(connector);
-- 
2.25.1


