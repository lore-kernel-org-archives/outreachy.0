X-GM-THRID: 6950250971878391808
X-Received: by 2002:a05:6512:1086:: with SMTP id j6mr15505340lfg.462.1618231441483;
        Mon, 12 Apr 2021 05:44:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:651c:507:: with SMTP id o7ls537177ljp.6.gmail; Mon, 12
 Apr 2021 05:43:59 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxXeTFmtAYHRliiruLn0FLJAywENOSM9vel6Qx1+of4wtsXOmZiU6Lx0h5romGpp+Ca2n4c
X-Received: by 2002:a2e:7505:: with SMTP id q5mr18002347ljc.322.1618231439881;
        Mon, 12 Apr 2021 05:43:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618231439; cv=none;
        d=google.com; s=arc-20160816;
        b=qi6OUMJ0QUT/tmrB2OkRqzbVH1nJ6QBI0Jyp3Naxt3W2HY7v+3NjctCujKPTMsYZzv
         0TCm3WA/yWN5rZrOLitP6cGMTzL5erJkyHuc6Ya2qMFqF142L81HgGxXUc7g6CL81+DY
         TRmurMPoNL2rL7e66+oxaJTOB6NZhClF26FWTz6xAD3t8hvMzc7cVftsCXaCu3g0jLUz
         XhJ9ezkGaslW+tfo3EM2e3zLmFL5n8g2we9fLEWhvtElnKG2uhVUSO6oR30oqGSbEK0j
         fXbANbqR3+mt3LX6I4nHk96dxBbHgnvnoFtG0hmJp6Ofta/uMZ8nbaOyYDTSxz/nbEiS
         AUVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=xrbT3X+z27jY5oY3DhIJgQi+dRZPPf+4KdDWNNrxL+Y=;
        b=BsNx/AwSKzuqW5dCQ9lHWRy9CCTag8w3TlYCA6jyVcO/FZMHRg0+Y0e1Z1/B9lmMZr
         +YtrOZAxWQtPBZLHuEwaJEYh0kKrkRAeZbusrESxy9DobtKN7S1RDIZN1eDqaLMPFM8z
         Wp7d2d6nK7PsBd6inArBr1ZFEBG2JWnVh0vT1BN2AOhnIZ0Xwfc+qy4qkFgqDxOicsUp
         I4sgIlqHO4CubUU2sTenOQt25Gxqq4SoMNpTU6w6ME3HBFljxU5No3qnQoSnrQNUnO9p
         uZRmmMGuA6CJ81QhQJ4jGmWjAwrH9f3D+xnwV7cq4erNq0+QSj1FIIkbX0wHJsTozjUR
         /mkw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kYloPyOa;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62b as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com. [2a00:1450:4864:20::62b])
        by gmr-mx.google.com with ESMTPS id l11si659486lfg.13.2021.04.12.05.43.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Apr 2021 05:43:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62b as permitted sender) client-ip=2a00:1450:4864:20::62b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kYloPyOa;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62b as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x62b.google.com with SMTP id l4so19977408ejc.10
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Apr 2021 05:43:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=xrbT3X+z27jY5oY3DhIJgQi+dRZPPf+4KdDWNNrxL+Y=;
        b=kYloPyOadd4AgvV4UDeYTxu6q2VH26mX1mvW54hkc5IEIXeHfvBUJwKYUVDPieAB47
         EZ2jDrFPfDGuV6Jp8irVyW9cryWoYjWFDWlof5t4n5SENDHQ+7ihMbugs3KYOt4kpz1g
         OFLjOUuFcsUrpKz5g1eNhZD2v7Hl6GS4rLOHbc4XPdPrybh9K/+dhb/lCYpw7SHn7kHS
         dt5g+Cu0QLwVONYzdURiOCJUwZ8tnlRbfyOkaCEOZeVgD4sGUyDN/hDA3JeswPeJwqUY
         1OUto8+/v4ijlAiSodPVEW3DxXLKqVIW2TEBCLnAkMLdP6suu/szXQor5Y4H0O0W17lz
         Jqyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=xrbT3X+z27jY5oY3DhIJgQi+dRZPPf+4KdDWNNrxL+Y=;
        b=t3Ut/qoBvPBcLTODO9JfIHXUOzYnYYc1aaUO+TLzYQ1tYLqrFLJWjiHCRZDjHY9pKR
         4KA+/JOK2UEtM/+nFcpFKdLMIlnWSUHYtf+/Nqk4tlh2ZkkQCaTPrrfwlGlUC6GM2YL8
         r54vqLKC5Aw5YrMAxpW+dXBNvs3nS4xMcKMgyGqnENwKBZSKbTp/H12I0Vw07nHF2cL0
         okgXc/S0rnYdwgeBiNbfxm0fTzs7uAPxZMiXknXbQhAvlUdoDRpn/Uv2RB5czE5wUw+/
         3nVD3znD+BbablchmnI4xGA7p59+pxgmb+KDDAWQsBQkBh9HS07VtXIifxLebwAEBcgT
         3sYQ==
X-Gm-Message-State: AOAM532TjAzct/0ZvCSyPxRWvZXGrZnguf/JTl6L5fCYT7adOAmbTOm+
	h3iICBjtCz11OTBNSuV/PkE=
X-Received: by 2002:a17:906:944c:: with SMTP id z12mr11537616ejx.398.1618231439672;
        Mon, 12 Apr 2021 05:43:59 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id m6sm5939452eds.49.2021.04.12.05.43.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Apr 2021 05:43:59 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: dri-devel@lists.freedesktop.org,
	outreachy-kernel@googlegroups.com,
	Daniel Vetter <daniel.vetter@ffwll.ch>,
	Melissa Wen <melissa.srw@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@linux.ie>
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [PATCH v2 2/2] drm: drm_atomic_helper.c: Correct comments format
Date: Mon, 12 Apr 2021 14:42:16 +0200
Message-Id: <20210412124213.4628-3-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210412124213.4628-1-fmdefrancesco@gmail.com>
References: <20210412124213.4628-1-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Corrected comments format in accordance to the Linux style guides.

Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---

Changes from v1: Rewrote the "Subject" of the patches in the series

 drivers/gpu/drm/drm_atomic_helper.c | 32 +++++++++++++++++++----------
 1 file changed, 21 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/drm_atomic_helper.c b/drivers/gpu/drm/drm_atomic_helper.c
index cd748ff61162..bc3487964fb5 100644
--- a/drivers/gpu/drm/drm_atomic_helper.c
+++ b/drivers/gpu/drm/drm_atomic_helper.c
@@ -1018,8 +1018,10 @@ disable_outputs(struct drm_device *dev, struct drm_atomic_state *old_state)
 		struct drm_encoder *encoder;
 		struct drm_bridge *bridge;
 
-		/* Shut down everything that's in the changeset and currently
-		 * still on. So need to check the old, saved state. */
+		/*
+		 * Shut down everything that's in the changeset and currently
+		 * still on. So need to check the old, saved state.
+		 */
 		if (!old_conn_state->crtc)
 			continue;
 
@@ -1409,7 +1411,7 @@ EXPORT_SYMBOL(drm_atomic_helper_commit_modeset_enables);
  * @dev: DRM device
  * @state: atomic state object with old state structures
  * @pre_swap: If true, do an interruptible wait, and @state is the new state.
- * 	Otherwise @state is the old state.
+ *	Otherwise @state is the old state.
  *
  * For implicit sync, driver should fish the exclusive fence out from the
  * incoming fb's and stash it in the drm_plane_state.  This is called after
@@ -1953,8 +1955,10 @@ static int stall_checks(struct drm_crtc *crtc, bool nonblock)
 	list_for_each_entry(commit, &crtc->commit_list, commit_entry) {
 		if (i == 0) {
 			completed = try_wait_for_completion(&commit->flip_done);
-			/* Userspace is not allowed to get ahead of the previous
-			 * commit with nonblocking ones. */
+			/*
+			 * Userspace is not allowed to get ahead of the previous
+			 * commit with nonblocking ones.
+			 */
 			if (!completed && nonblock) {
 				spin_unlock(&crtc->commit_lock);
 				DRM_DEBUG_ATOMIC("[CRTC:%d:%s] busy with a previous commit\n",
@@ -2103,9 +2107,11 @@ int drm_atomic_helper_setup_commit(struct drm_atomic_state *state,
 		if (ret)
 			return ret;
 
-		/* Drivers only send out events when at least either current or
+		/*
+		 * Drivers only send out events when at least either current or
 		 * new CRTC state is active. Complete right away if everything
-		 * stays off. */
+		 * stays off.
+		 */
 		if (!old_crtc_state->active && !new_crtc_state->active) {
 			complete_all(&commit->flip_done);
 			continue;
@@ -2137,8 +2143,10 @@ int drm_atomic_helper_setup_commit(struct drm_atomic_state *state,
 	}
 
 	for_each_oldnew_connector_in_state(state, conn, old_conn_state, new_conn_state, i) {
-		/* Userspace is not allowed to get ahead of the previous
-		 * commit with nonblocking ones. */
+		/*
+		 * Userspace is not allowed to get ahead of the previous
+		 * commit with nonblocking ones.
+		 */
 		if (nonblock && old_conn_state->commit &&
 		    !try_wait_for_completion(&old_conn_state->commit->flip_done)) {
 			DRM_DEBUG_ATOMIC("[CONNECTOR:%d:%s] busy with a previous commit\n",
@@ -2156,8 +2164,10 @@ int drm_atomic_helper_setup_commit(struct drm_atomic_state *state,
 	}
 
 	for_each_oldnew_plane_in_state(state, plane, old_plane_state, new_plane_state, i) {
-		/* Userspace is not allowed to get ahead of the previous
-		 * commit with nonblocking ones. */
+		/*
+		 * Userspace is not allowed to get ahead of the previous
+		 * commit with nonblocking ones.
+		 */
 		if (nonblock && old_plane_state->commit &&
 		    !try_wait_for_completion(&old_plane_state->commit->flip_done)) {
 			DRM_DEBUG_ATOMIC("[PLANE:%d:%s] busy with a previous commit\n",
-- 
2.31.1


