X-GM-THRID: 6950245199494774784
X-Received: by 2002:adf:dd48:: with SMTP id u8mr31102255wrm.139.1618230069339;
        Mon, 12 Apr 2021 05:21:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:6c6a:: with SMTP id r10ls3013211wrz.0.gmail; Mon, 12 Apr
 2021 05:21:08 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzBaJcxR2MZTv3sF5MUorV+Dxz0h/j2tmeCUjwtI5L9K4cVDppJ1oC2DZqHQRMLGuW8NYk4
X-Received: by 2002:a5d:4fc7:: with SMTP id h7mr10508355wrw.23.1618230068060;
        Mon, 12 Apr 2021 05:21:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618230068; cv=none;
        d=google.com; s=arc-20160816;
        b=jfqJw6ijVD5cYeFpcGA8/al9KP6OnnEbpvPWT6GBnIesmqnYeI51KN7wbspm2s7bSF
         QSJ7dBQB3Wp2+cQgje2DAh4GJh8E5xg9I+LlvBUUeMWdmOtCTgJL3RRVJi9J+wYtlVqy
         NqogHI+Nfiw0NJuP9+yZlO/htnfV+xcnxHJVpvEn+N933w5vlRDWjpaR22K057DtwSD/
         Cl976kTyXw9ZbkktrlYpbq9y87+YDR7JrJeDI5waOgLKF3xISc/gTHdmKGqKsYVTLXvF
         8oIYkUEWRBazlGtWgfoW0y6+ulXFdLsy1OsiSug1EW68rnVMavB30CoWXNGenbrcvD8U
         S1jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=IwBxglF+iN+OFUDTNg+emf1SfZYsVOLjYrDjF4LE0F4=;
        b=kjN49CDAbZY4wIB1bbS9RNzjcFy+U5qcY0UDL3Y4IXtjPYovNQXCKzgf8thRdmM7vu
         Voqw9l4hqeKy73N7kTQT3+MQAtjh5PtI69sRRBi/iQ1D8kQ05i75JXlse0CRhApIAD1l
         lezKLfEdjFQbrJZgmrIbQdjqpK/K8M3zGUQ5+dtbdtzHavrPAbm/M+W+1MoIliI9J/0V
         OWV4S4ndmeCX7uhA1lBQOofGM65HOy5/WgLGcwSdluQqYlr1trVs9yhi6pm0ESxGZpSz
         IKajEOQTD6QEDIMc63Qm2CYj5Qxfk2dIhaXtMN26441L1bh2NyothYQztkUX7EiUxyw9
         XZig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jCzBywVo;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52e as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com. [2a00:1450:4864:20::52e])
        by gmr-mx.google.com with ESMTPS id f8si1337143wmj.1.2021.04.12.05.21.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Apr 2021 05:21:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52e as permitted sender) client-ip=2a00:1450:4864:20::52e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jCzBywVo;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52e as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x52e.google.com with SMTP id e7so14772519edu.10
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Apr 2021 05:21:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=IwBxglF+iN+OFUDTNg+emf1SfZYsVOLjYrDjF4LE0F4=;
        b=jCzBywVopnhF1mSPdpmOzIrgIU4KUb+iWPFuobsxnANfwyyiVcoLs+NOj+e1SurkTs
         +ltUytF7W9pA0UJDDSc/mtxkR8hvTeUVZzsiqK96aoTFYHrR+ke2zvtoZLwvjLcqxyAf
         wwEwSkOUh9T7Ew9tcQtVhE8m00coPV2L2USpbQx31gaeV4QTZnla5ao7Y0ksunF9LNA3
         sPEXb1B8Vl/+9ZGst2zE74SCyjz14+PtOZ5uEXEh24J7l7n1V9q/fB1FZWODUo1pCyWY
         sQ8U1tlFwNQSDYNjpfBNdtjbMyakgRGyclpS6HP7tid/Z365EyfqD++1D5FVdg+Hpw0s
         jYJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=IwBxglF+iN+OFUDTNg+emf1SfZYsVOLjYrDjF4LE0F4=;
        b=I8rwnVN5jaItpj8MyEmy6NmGNDq/RhFJMmMDFzb/yDkGS2y+bDT9iq3kkfEy0r5kMx
         A3qI/K+KXqVzvcOX9jjsoa58IkI9S2YdIOomcpMStOsfsxCU5fXPAGJFvJv+uVAFxNGp
         LQFhLVxW/KTxgndWwMTAi3arjNfckTmSoiGedzJaNxnNczAvFfDf/eOaRKtrJYYAeGMy
         P7Qma5vNJIgplVxGsD6SGbjKu9f1ooJd9uc2iZFVnzLhA3pJlivNu64N95yTCq+OF3NH
         CrBG5SaftgtMQuJB3Mziy6HRWN+o6a3BAChiziNfIKMV40/PSAH3fYA33o8b+WhUqvRz
         bMfA==
X-Gm-Message-State: AOAM532pYPJWA0f/3bTwAv8JwBH8oACOuJAxc4lN39HsbrBxFi9w1EnM
	FehzDC/e3FkpaobTjE+q8Ho=
X-Received: by 2002:aa7:d78a:: with SMTP id s10mr28534045edq.226.1618230067832;
        Mon, 12 Apr 2021 05:21:07 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id ck29sm6408191edb.47.2021.04.12.05.21.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Apr 2021 05:21:07 -0700 (PDT)
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
Subject: [PATCH 2/2] gpu: drm: Correct comments format
Date: Mon, 12 Apr 2021 14:20:56 +0200
Message-Id: <20210412122056.28351-3-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210412122056.28351-1-fmdefrancesco@gmail.com>
References: <20210412122056.28351-1-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Corrected comments format in accordance to the Linux style guides.

Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---
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


