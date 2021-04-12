X-GM-THRID: 6950245199494774784
X-Received: by 2002:ac2:5e30:: with SMTP id o16mr12606538lfg.35.1618230067004;
        Mon, 12 Apr 2021 05:21:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:651c:2106:: with SMTP id a6ls859988ljq.3.gmail; Mon, 12
 Apr 2021 05:21:05 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyDE55AdlfoGaXRpbqF5itF13+ZZ5y7zg1XTBEp5lxWNcuby5OWjXKCeLy7aNiACnlLyXy0
X-Received: by 2002:a2e:8117:: with SMTP id d23mr17775821ljg.395.1618230065393;
        Mon, 12 Apr 2021 05:21:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618230065; cv=none;
        d=google.com; s=arc-20160816;
        b=hP3TcNMubvA3m9M2YxCfa+F1ksGsXCdUcaGIvIgyicwcQLtlwq4J2byo1Z+g1eDKGi
         W9W/oQV1AGvHD9WIGeDVM90DlV7Ajr+vj4qnbj6TakRk3+JCUR2ZHB3sigptXRbTC6kM
         FteOLSvoMbDg8bXRDuxGUXZyOwKcwonBvhJCHsHOHDa7rcXqVjp8HKKUO7/0Pz+/+Lih
         MjNWSbzyfvGLv4xTigdABtATcyEVz+4Pa2A9nEIBsn2G5FAi/iR4yldG6gtWlpR9U+7w
         y+qJSbkU6YPaXtqL/m91ct/d8wgjlwjF6VuZ4W/htOT7+pfaOcVQl+bqNllWrTr/mbGZ
         Dlbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=BLtncd095+xL9sAk7UPWULzqDy/TXj9RcbNvIRcWzHc=;
        b=jI6U+BKaBAqLuKBTlLehS5KuX/B/s3pJaJVtaGNa2CeS+H/onXM3g6Yj0T5j0/+Zap
         qG62l96JWIJnlahrYFrn6b7JXYR6OxkGgQpOUwophtRK3EieeGNQhz0PuKzStL/jxlKN
         n9p8i/3Y5+ewxEalgh2qa3Eeu6O+qYNvJdZD0nlyMz6J6TnxHFfzZxBVqqgELzQxUoDo
         6VaX7W5puzl8E+FU99f9hi/WbDqeFl5GmAXupN90dVcud1OZG26zBY313UamgTorvaJs
         y+9YziMupJ7C40t5hllNZbQEK2k+HYRoCZkW3LN0rM75OM8jQJqHu45GF5fgI7PhJJ/J
         v0/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hZFBeBls;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::534 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com. [2a00:1450:4864:20::534])
        by gmr-mx.google.com with ESMTPS id j7si311225ljc.6.2021.04.12.05.21.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Apr 2021 05:21:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::534 as permitted sender) client-ip=2a00:1450:4864:20::534;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hZFBeBls;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::534 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x534.google.com with SMTP id m3so14806232edv.5
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Apr 2021 05:21:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=BLtncd095+xL9sAk7UPWULzqDy/TXj9RcbNvIRcWzHc=;
        b=hZFBeBlsVcnAz5gmSpzAAzuixg0Npw5UtotY8EMvQPN6LB1ee9yCdndvVUJK/rYmKd
         szDrQ8MtopXOTG8JHm77rQerKRDPi6Apyr+ZYbTx9g449C5MFKaKKeW+gjTvfSPQ9ADh
         tdT66kqM0Uo4rY6VBqBWL+vHAqIyrsQdpVgqF2enK+QGeI0zl+ucf0rayXbDGns8zC+f
         RV4Ou7d1G4XVno/gslpZwnLTrXlrwpeEUctZ6b7tRem23GfC5DRyr3jyfcJQ/PWeUQIz
         tvFVFJYQozJWGsD/czOqwR8QgmCJvtDl39avZQs5EPuXYN0WzEu5V0KZAYiuIDzkixxy
         GGFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=BLtncd095+xL9sAk7UPWULzqDy/TXj9RcbNvIRcWzHc=;
        b=tjNVz6cd30i8+WYURHBHt7AN2Lwh16p7Z4rq+ayWB0osXKD9eKaTDhramhFSxUTKBY
         RmjNxUxmMRNSIllTs/UWiIi2Ip3kj/Ram/3mzUFmQI8pk8STAXzUew4600IJ+DbppWpA
         0MNYeReD0nCKCezA3gIJrLn8qDtArpbdzpv+jOwROqpi0p5rPySphvAxGIrQtfXxNqEB
         4xEP4dnO0DhE1ocKPoRnH3S7oo/0rqqUKpVysGb/FcXKz29eb1KPfvlDnWyP5XhipUHK
         DTLZ85beavxJz1avJYPzxN5TuyT1HmMlduZWi+kuJ/YM7V6GfhJ4j7i4umZGkY6nG/ne
         ypUQ==
X-Gm-Message-State: AOAM531szYfI4JosEQhxzJ2tpVNTzqVCCnNAwOqiLeEBxQmRoShaAuIe
	FnSDpNC9loS+i5enPS+qP1w=
X-Received: by 2002:a05:6402:10c9:: with SMTP id p9mr29493182edu.268.1618230065164;
        Mon, 12 Apr 2021 05:21:05 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id ck29sm6408191edb.47.2021.04.12.05.21.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Apr 2021 05:21:04 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: dri-devel@lists.freedesktop.org,
	outreachy-kernel@googlegroups.com,
	"Daniel Vetter" <daniel.vetter@ffwll.ch>,
	"Melissa Wen" <melissa.srw@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@linux.ie>
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [PATCH 1/2] gpu: drm: Replace "unsigned" with "unsigned int"
Date: Mon, 12 Apr 2021 14:20:55 +0200
Message-Id: <20210412122056.28351-2-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210412122056.28351-1-fmdefrancesco@gmail.com>
References: <20210412122056.28351-1-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Replaced "unsigned with "unsigned int" since the latter is preferred.

Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---
 drivers/gpu/drm/drm_atomic_helper.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/drm_atomic_helper.c b/drivers/gpu/drm/drm_atomic_helper.c
index f2b3e28d938b..cd748ff61162 100644
--- a/drivers/gpu/drm/drm_atomic_helper.c
+++ b/drivers/gpu/drm/drm_atomic_helper.c
@@ -106,7 +106,7 @@ static int handle_conflicting_encoders(struct drm_atomic_state *state,
 	struct drm_connector *connector;
 	struct drm_connector_list_iter conn_iter;
 	struct drm_encoder *encoder;
-	unsigned encoder_mask = 0;
+	unsigned int encoder_mask = 0;
 	int i, ret = 0;
 
 	/*
@@ -609,7 +609,7 @@ drm_atomic_helper_check_modeset(struct drm_device *dev,
 	struct drm_connector *connector;
 	struct drm_connector_state *old_connector_state, *new_connector_state;
 	int i, ret;
-	unsigned connectors_mask = 0;
+	unsigned int connectors_mask = 0;
 
 	for_each_oldnew_crtc_in_state(state, crtc, old_crtc_state, new_crtc_state, i) {
 		bool has_connectors =
@@ -1478,7 +1478,7 @@ drm_atomic_helper_wait_for_vblanks(struct drm_device *dev,
 	struct drm_crtc *crtc;
 	struct drm_crtc_state *old_crtc_state, *new_crtc_state;
 	int i, ret;
-	unsigned crtc_mask = 0;
+	unsigned int crtc_mask = 0;
 
 	 /*
 	  * Legacy cursor ioctls are completely unsynced, and userspace
@@ -2575,7 +2575,7 @@ drm_atomic_helper_commit_planes_on_crtc(struct drm_crtc_state *old_crtc_state)
 	struct drm_crtc_state *new_crtc_state =
 		drm_atomic_get_new_crtc_state(old_state, crtc);
 	struct drm_plane *plane;
-	unsigned plane_mask;
+	unsigned int plane_mask;
 
 	plane_mask = old_crtc_state->plane_mask;
 	plane_mask |= new_crtc_state->plane_mask;
-- 
2.31.1


