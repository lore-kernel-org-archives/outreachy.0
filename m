X-GM-THRID: 6752781300622426112
X-Received: by 2002:a5d:404d:: with SMTP id w13mr14796654wrp.185.1572254421241;
        Mon, 28 Oct 2019 02:20:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:106:: with SMTP id 6ls11011900wmb.1.gmail; Mon, 28 Oct
 2019 02:20:20 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwdtz97Z++E2hlFJJnbK6HK1KD9utMlpDeY1gUmil4mVjWL32aqBaFeta1Ayz9MObGJWSYo
X-Received: by 2002:a1c:f303:: with SMTP id q3mr14927069wmq.63.1572254420023;
        Mon, 28 Oct 2019 02:20:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572254420; cv=none;
        d=google.com; s=arc-20160816;
        b=uSvkG9hJeoE30+4rfL/IurqrUD2RKUrgnEb0IxztwY4TXCgq8GKTeNvuFIvQdmsoJQ
         NWG7vxVRS4dZrp8A6yHALVqb1nixKMAQRcZ8j8+lP/hhWaooc2xXIXyNZaDV37NnMbE1
         uoKjYUhIjaivteBUbna2Jvr9LTXti98uHn+8OyKNG8SZExsswpDsjCW4p8odX8gCr6NR
         6oU71AbUBLOLQ9Wg9Ka+aer7l0BvVSegip/vOfrWYaTzph/t9stctqq0405hatoQxAY5
         cd9wlopRmZK+FeME2RB6GgS1XaBlOdQcx+iAghdfJfZGYjjw8tL8NnQq2LqClaruBAyQ
         J72Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=GQTK6QpjvNTdkkg2NeYSTEMRpVNQAutWzeXrakegZZQ=;
        b=AQaYkX2LfmQ6jBPvHFsVU90b/55eGTzWmtCeAdcwOfAoTd1kL5HroCfp/rHE3k6Bqk
         zaEQ9TbgTrfSR7gie+8/wfwNBfQPk7I7kGHLS35m7Ho1BUWBnCtPWnAkQECWls4QWBf4
         /4DjqvG7myF+dGb2IPTaVqXceSD2IjWqSe9OveJjhhsD+nPPU83IsFiqmjRv1rRagtwV
         yRhnqNZGCucFyQs0mh/fMgSC6TZymgZRK3uoWBbd/FR7ZjxuArWHDmR0IvBm7U6okdIw
         OvtcVgCV77Ad1Niw7nmTJ3ULrlAYDcVgJD+BQsATQR7pNUlhddlsME/NhivRtg3CzOsH
         xUBw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uFCEi25z;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <wambui.karugax@gmail.com>
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id q3si515779wrp.5.2019.10.28.02.20.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Oct 2019 02:20:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of wambui.karugax@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uFCEi25z;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x343.google.com with SMTP id x5so1022985wmi.0
        for <outreachy-kernel@googlegroups.com>; Mon, 28 Oct 2019 02:20:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=GQTK6QpjvNTdkkg2NeYSTEMRpVNQAutWzeXrakegZZQ=;
        b=uFCEi25z78vO8pPx6uy4YXZTY67190GV4H/4YC/RV7/sY+NngnG7S883JdfxH/qOwD
         t09XGp4SjLb9SZVQSqP3/LiONdAwAooJVFxfnwEUkUig2HPGwmwZCOufWLPYVdOgHsCH
         cHbaP7P9RHfbFnbKko1mZiWNVTyXvA+vjALFF7LWvJw62n3BJrxCuuLFH34Ic4wlp9It
         udGh2SW5WZp93jauFy8ghOPtN05wVZxg0uGILj/bkvcUgTyw1N0+XZ4YoPCgBIw919qr
         cUk6VDna7bOqkRHmcY6cwzZTIK/kZdE20pPW+l5uc0bC1NBmTOKT2IKXLnoULRmGL8xi
         byAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=GQTK6QpjvNTdkkg2NeYSTEMRpVNQAutWzeXrakegZZQ=;
        b=mUpmbzyp+nmjvYUWDJNaWaJ1YiIsxQuh+xs7Cn+EVnHk1tK5pJdqSY6ZCJ+wxj2xjF
         0tfICggS5iJZXYUBxmANKCsFkH8gn/XcHZhU+XX3q8B1CcXtqvxEE1jeIZ1BswHDhoUb
         BIuir18Z9HWvzAt7yV4g/E4UqDiffTrVFjLps0b0I/zO4O4Pk0wRHHkbyToIMLmTUXmH
         sef8TMXpoHOk8OJj1QWv5xgvj1zoBA4hnFreLnLYWZxYgSNhObLgh0KyJHeqeXyou1YC
         EvCnuL3oCXv7K7QemfUE/UQi/c4r8wg7YIztd+QQT8AJRFAi9uh/o70FbX1YwF7NZ4ef
         UWOQ==
X-Gm-Message-State: APjAAAX/eTr8ZmJS39WY555WHqQ+7ivOZgGQBmWrBfv3Jued6Z3i2AFm
	EIXkTKllhQ6ZDpKB7rJKf/0=
X-Received: by 2002:a05:600c:2908:: with SMTP id i8mr15527215wmd.142.1572254419663;
        Mon, 28 Oct 2019 02:20:19 -0700 (PDT)
Return-Path: <wambui.karugax@gmail.com>
Received: from localhost.localdomain ([197.254.95.38])
        by smtp.googlemail.com with ESMTPSA id z9sm11427513wrv.1.2019.10.28.02.20.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Oct 2019 02:20:19 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: amd-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org
Cc: alexander.deucher@amd.com,
	christian.koenig@amd.com,
	David1.Zhou@amd.com,
	airlied@linux.ie,
	daniel@ffwll.ch,
	outreachy-kernel@googlegroups.com
Subject: [Outreachy][PATCH 2/2] drm/amd: correct "_LENTH" mispelling in constant
Date: Mon, 28 Oct 2019 12:20:05 +0300
Message-Id: <20191028092005.31121-3-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191028092005.31121-1-wambui.karugax@gmail.com>
References: <20191028092005.31121-1-wambui.karugax@gmail.com>

Correct the "_LENTH" mispelling in the AMDGPU_MAX_TIMEOUT_PARAM_LENGTH
constant.

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/gpu/drm/amd/amdgpu/amdgpu.h        | 4 ++--
 drivers/gpu/drm/amd/amdgpu/amdgpu_device.c | 4 ++--
 drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c    | 2 +-
 3 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu.h b/drivers/gpu/drm/amd/amdgpu/amdgpu.h
index 3610defdfae1..7d1e528cc783 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu.h
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu.h
@@ -108,7 +108,7 @@ struct amdgpu_mgpu_info
 	uint32_t			num_apu;
 };
 
-#define AMDGPU_MAX_TIMEOUT_PARAM_LENTH	256
+#define AMDGPU_MAX_TIMEOUT_PARAM_LENGTH	256
 
 /*
  * Modules parameters.
@@ -126,7 +126,7 @@ extern int amdgpu_disp_priority;
 extern int amdgpu_hw_i2c;
 extern int amdgpu_pcie_gen2;
 extern int amdgpu_msi;
-extern char amdgpu_lockup_timeout[AMDGPU_MAX_TIMEOUT_PARAM_LENTH];
+extern char amdgpu_lockup_timeout[AMDGPU_MAX_TIMEOUT_PARAM_LENGTH];
 extern int amdgpu_dpm;
 extern int amdgpu_fw_load_type;
 extern int amdgpu_aspm;
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c
index 676cad15239f..4eee40b9d0b0 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c
@@ -2631,9 +2631,9 @@ static int amdgpu_device_get_job_timeout_settings(struct amdgpu_device *adev)
 	else
 		adev->compute_timeout = MAX_SCHEDULE_TIMEOUT;
 
-	if (strnlen(input, AMDGPU_MAX_TIMEOUT_PARAM_LENTH)) {
+	if (strnlen(input, AMDGPU_MAX_TIMEOUT_PARAM_LENGTH)) {
 		while ((timeout_setting = strsep(&input, ",")) &&
-				strnlen(timeout_setting, AMDGPU_MAX_TIMEOUT_PARAM_LENTH)) {
+				strnlen(timeout_setting, AMDGPU_MAX_TIMEOUT_PARAM_LENGTH)) {
 			ret = kstrtol(timeout_setting, 0, &timeout);
 			if (ret)
 				return ret;
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c
index c685400febe2..16147ca9b851 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c
@@ -101,7 +101,7 @@ int amdgpu_disp_priority = 0;
 int amdgpu_hw_i2c = 0;
 int amdgpu_pcie_gen2 = -1;
 int amdgpu_msi = -1;
-char amdgpu_lockup_timeout[AMDGPU_MAX_TIMEOUT_PARAM_LENTH];
+char amdgpu_lockup_timeout[AMDGPU_MAX_TIMEOUT_PARAM_LENGTH];
 int amdgpu_dpm = -1;
 int amdgpu_fw_load_type = -1;
 int amdgpu_aspm = -1;
-- 
2.17.1


