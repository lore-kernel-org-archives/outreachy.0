X-GM-THRID: 6950250971878391808
X-Received: by 2002:a05:6000:181b:: with SMTP id m27mr8329463wrh.11.1618231427095;
        Mon, 12 Apr 2021 05:43:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:c205:: with SMTP id s5ls1815254wmf.3.canary-gmail; Mon,
 12 Apr 2021 05:43:45 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyriPxEbcmFR6GHCUz8obzHEM+bsG08x65qYJ3m4ajuhtDwS45Shh4f6JDjZyyTUOEBL0d4
X-Received: by 2002:a7b:c14a:: with SMTP id z10mr3721786wmi.75.1618231425805;
        Mon, 12 Apr 2021 05:43:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618231425; cv=none;
        d=google.com; s=arc-20160816;
        b=FCdB2FG7j9ViKs1WDivg9c0y/BR2QOPvigxfre5L0rShMWbHf8TjHwerRCDD68LS+G
         eiCIjm6ve0S9v6k4y7UV2cpRiq77qthd4qZzo3IxivfJIBu5IVVa8u144g0HMhkjIo5T
         3UZMDgc6YxmkiK0QDOGoRQ0qG5SsgSANZrPI8uzbgkEH4RfGOY0Zxz/KIRqof5fUYLqc
         LUbJSG3CU9lPz/HTKtRT0/Tcg78zEpr1qxAR+HLT8/wPadqrjY4T8RM93LAoOlwFNgSf
         fWkYuheF7EFZ6HD1xaQ4w2NqIu8lIzGqVFb1yQYmrGUwKJhPS/5xUQiyJTa45FcKFK9c
         RB8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=eRH1ZfbEvRBoK5SPSjf6X7NL13GHB5xpKAzHGHnUqz0=;
        b=ytcY9d8xKMxwzvoxbAXIKygGqowdtHxgwNfCy0H/2Ss+8nQWaceasyHvc2RluZXufR
         RdA24znidfUWdFYuLUVOZagq+S0YdUYVkNZf9XjuzcDBACJp0b3985hhC2IeTt+Pd3lk
         kZymlEK9OQ+dZ2ITABuZ5v804KHK9pws/GmB53LQHBjLa2mKvDPqCYKoQbelgRhH4QTT
         YogZdicDa+XS6JZC6OA29L0HlXkEgs+Cj8Fc98EIkkX9qM2fF0E8RwfgCzM6y3ohWBlJ
         Fs1LooPm78DNdDoiZjMJ5zrYM8W0YbeD4kGR3PuqGQY8BkLfnsE7EjhLySKxu/UI9rnH
         nzSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rXB8ZnyZ;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52d as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com. [2a00:1450:4864:20::52d])
        by gmr-mx.google.com with ESMTPS id c6si264995wmr.2.2021.04.12.05.43.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Apr 2021 05:43:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52d as permitted sender) client-ip=2a00:1450:4864:20::52d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rXB8ZnyZ;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52d as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x52d.google.com with SMTP id 18so14904714edx.3
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Apr 2021 05:43:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=eRH1ZfbEvRBoK5SPSjf6X7NL13GHB5xpKAzHGHnUqz0=;
        b=rXB8ZnyZviGJam15eHpyZf5Oo2gGqeAckKc/sjZsjj9YpoPrHWGSHJnXcu5h8EwIxQ
         YD4FYqVuhlf7Z9ywbyn4+bSi385XYKJxGpqNkK18uyBvWAL6wL2CfpbaFANsmXRi4H/x
         Ctvw6mOgn0+FpJbhlMzzCVYwNDPItuFiemKV41J0VEgZnGir0yZfMk11qcEZt/OVYP89
         f8qKfYF6uQjb3VoMAEUuC1OcHg0tOiFoCa+zs2dtLmAzXukIiMACPsdelLnLbknM06Ht
         rdQf9hNGaVCsQo99lIU6sqX3LQea6Q9sPM74JtTjA3UhFIuDW+nhrtds7duw08zcJNws
         t/QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=eRH1ZfbEvRBoK5SPSjf6X7NL13GHB5xpKAzHGHnUqz0=;
        b=eo3QxixPrDNGTEa5n0lAzKCCaUCshYIsMDUsVeJHxMjEyrsfIzqQj5k1hRN3kWC4kv
         634VXHoigp9vSa8XzIt6JdJhSmmS2OwpqtPtHW0GBPAEqGgomAWDC5Zad/YYYxLwsfU6
         I/aGFhTwmvAutQgXPI/N/DM/7fkFjLPPIZHPqGyaC5I+hmHfss2PWwlkKmffFkn985ER
         /aZTB2VdrOqg4KH5U0m7OPouR/qwMDF0ju1nBSk1N59miJA6rvYfEWK4uIA5E+laET5T
         DW86dGrWbBGhDcEiNB9WSf1sENwNNlTblmzQzTxtMWyEShXS1QHwpZMwW5Q8X3Jt8Ci6
         mkQA==
X-Gm-Message-State: AOAM53199Ana7MovFkbZC//5m59/29vnn3ASk7a1ao9IdOo49OBlDl5W
	ZXYrJg0frA3xrV6/MDVm03E5eStd5AWkSQ+2
X-Received: by 2002:a05:6402:1109:: with SMTP id u9mr29593383edv.174.1618231425565;
        Mon, 12 Apr 2021 05:43:45 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id m6sm5939452eds.49.2021.04.12.05.43.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Apr 2021 05:43:45 -0700 (PDT)
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
Subject: [PATCH v2 1/2] drm: drm_atomic_helper.c: Replace "unsigned" with "unsigned int"
Date: Mon, 12 Apr 2021 14:42:14 +0200
Message-Id: <20210412124213.4628-2-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210412124213.4628-1-fmdefrancesco@gmail.com>
References: <20210412124213.4628-1-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Replaced "unsigned with "unsigned int" since the latter is preferred.

Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---

Changes from v1: Rewrote the "Subject" of the patches in the series

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


