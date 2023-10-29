Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95B6C53A4
	for <outreachy@lists.linux.dev>; Sun, 29 Oct 2023 07:33:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CbsY1K+R"
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-9becde9ea7bso959095666b.0
        for <outreachy@lists.linux.dev>; Sun, 29 Oct 2023 00:33:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698564779; x=1699169579; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=eMPCTK4+SUgV2BRz82rzZ0SvaoXHKMxhYULMEyiOEhY=;
        b=CbsY1K+RUMU8ep9I/joFMNHKMPdMCrT6nFvP1TPJISWbdWphq3Z2E8OlQ7U7QvOcDw
         q1yIkYv6YfN7LX5WAsdBGny+O8U5DRrn0DP1BvveVnS5bdBEpNGpwI93Ou51ksihIqKH
         /0iCSBsqOPuqURSV4+BkZCrFwNgqq8X3Mn5AS8IC0YqcrCKm4b1Vmt37q+mjHIcvRzwg
         aq0rardcCbbRKRJAr304ix+en0IidPClO2mbXo7/xDEeY+6vUuakoadcCZBUvmozdQgk
         Rbdy86Yaiyr+HpBzX7SOFO9SPsvvr+DS4c1jFlU2juMbZ8TebwSGyTF87pzvuytxroOv
         MFNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698564779; x=1699169579;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eMPCTK4+SUgV2BRz82rzZ0SvaoXHKMxhYULMEyiOEhY=;
        b=O1VosLzjox/Ihtq+wT58dxFEC2fITedYHI81EmdsPxWYipP1gB6sg5TgMpgMG2lJhA
         oaXCbXcU4ZV7FUmaUKV++wSxJlw0yq9Hx8aknKVltCRQZyGvTpvg6jMC7jeSYOCfEnw/
         AE+spreOaG/eNJ7U/fIANDbUuu4ZQiepRE8ePyTCm557VtNRxab5El23TqoX9bqInyLf
         orlSY6znnLgci8juOpYQHMGNvMZjHHavBHDCgRDklKpfhLwsy19zRXQyKcBCHlvc7T2l
         RMBbb1n8Ud05oMbwBUGdN7tsSkgTLb1Uess6Q+nnrx0C9PvaMn6FqI4wlmdlhwIHLgKz
         e8vQ==
X-Gm-Message-State: AOJu0YzPcWjiZWseoJulIGcwmxwQ5VPX573ioQauoiDH5T6PSYsaOt9t
	RthAMvEwYHcJXIeoxIaKftJsWNL7GTGAnA==
X-Google-Smtp-Source: AGHT+IGGc/3k2JSaWB0lBTEMljAk+WiQJCj8PQxhTLD6YNQi0wX90HS5TbDAmb9C3hVZVyVQq1yVtQ==
X-Received: by 2002:a17:907:961f:b0:9ae:614f:b159 with SMTP id gb31-20020a170907961f00b009ae614fb159mr9838773ejc.36.1698564778465;
        Sun, 29 Oct 2023 00:32:58 -0700 (PDT)
Received: from ubuntu-focal.zuku.co.ke ([197.237.50.252])
        by smtp.gmail.com with ESMTPSA id l22-20020a1709061c5600b009b27d4153cfsm3913726ejg.176.2023.10.29.00.32.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Oct 2023 00:32:58 -0700 (PDT)
From: Dorine Tipo <dorine.a.tipo@gmail.com>
To: gagallo7+outreachy@gmail.com,
	outreachy@lists.linux.dev
Cc: Dorine Tipo <dorine.a.tipo@gmail.com>
Subject: [PATCH] Fix Long Lines in lava-submit.sh
Date: Sun, 29 Oct 2023 06:31:47 +0000
Message-Id: <20231029063148.13081-1-dorine.a.tipo@gmail.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patch addresses an issue where line 38 in the 'lava-submit.sh' script exceeds 100 columns,
which can make the code less readable. The problem is resolved by reformatting and breaking down
the line to improve code readability and maintain compliance with coding style guidelines.

Signed-off-by: Dorine Tipo <dorine.a.tipo@gmail.com>
---
 drivers/gpu/drm/ci/clean-lava-submit.sh | 58 +++++++++++++++++++++++++
 1 file changed, 58 insertions(+)
 create mode 100755 drivers/gpu/drm/ci/clean-lava-submit.sh

diff --git a/drivers/gpu/drm/ci/clean-lava-submit.sh b/drivers/gpu/drm/ci/clean-lava-submit.sh
new file mode 100755
index 000000000000..d4362f47fc14
--- /dev/null
+++ b/drivers/gpu/drm/ci/clean-lava-submit.sh
@@ -0,0 +1,58 @@
+#!/bin/bash
+# SPDX-License-Identifier: MIT
+
+set -e
+set -x
+
+# Try to use the kernel and rootfs built in mainline first, so we're more
+# likely to hit cache
+if curl -L --retry 4 -f --retry-all-errors --retry-delay 60 -s "https://${BASE_SYSTEM_MAINLINE_HOST_PATH}/done"; then
+	BASE_SYSTEM_HOST_PATH="${BASE_SYSTEM_MAINLINE_HOST_PATH}"
+else
+	BASE_SYSTEM_HOST_PATH="${BASE_SYSTEM_FORK_HOST_PATH}"
+fi
+
+rm -rf results
+mkdir -p results/job-rootfs-overlay/
+
+cp artifacts/ci-common/capture-devcoredump.sh results/job-rootfs-overlay/
+cp artifacts/ci-common/init-*.sh results/job-rootfs-overlay/
+cp artifacts/ci-common/intel-gpu-freq.sh results/job-rootfs-overlay/
+cp "$SCRIPTS_DIR"/setup-test-env.sh results/job-rootfs-overlay/
+
+# Prepare env vars for upload.
+section_start variables "Variables passed through:"
+KERNEL_IMAGE_BASE="https://${BASE_SYSTEM_HOST_PATH}" \
+	artifacts/ci-common/generate-env.sh | tee results/job-rootfs-overlay/set-job-env-vars.sh
+section_end variables
+
+tar zcf job-rootfs-overlay.tar.gz -C results/job-rootfs-overlay/ .
+ci-fairy s3cp --token-file "${CI_JOB_JWT_FILE}" job-rootfs-overlay.tar.gz "https://${JOB_ROOTFS_OVERLAY_PATH}"
+
+touch results/lava.log
+tail -f results/lava.log &
+
+PYTHONPATH=artifacts/ artifacts/lava/lava_job_submitter.py \
+	submit \
+	--dump-yaml \
+	--pipeline-info "$CI_JOB_NAME: $CI_PIPELINE_URL on
+	$CI_COMMIT_REF_NAME ${CI_NODE_INDEX}/${CI_NODE_TOTAL}" \
+	--rootfs-url-prefix "https://${BASE_SYSTEM_HOST_PATH}" \
+	--kernel-url-prefix "https://${PIPELINE_ARTIFACTS_BASE}/${DEBIAN_ARCH}" \
+	--build-url "${FDO_HTTP_CACHE_URI:-}https://${PIPELINE_ARTIFACTS_BASE}/${DEBIAN_ARCH}/kernel-files.tar.zst" \
+	--job-rootfs-overlay-url "${FDO_HTTP_CACHE_URI:-}https://${JOB_ROOTFS_OVERLAY_PATH}" \
+	--job-timeout-min ${JOB_TIMEOUT:-80} \
+	--first-stage-init artifacts/ci-common/init-stage1.sh \
+	--ci-project-dir "${CI_PROJECT_DIR}" \
+	--device-type "${DEVICE_TYPE}" \
+	--dtb-filename "${DTB}" \
+	--jwt-file "${CI_JOB_JWT_FILE}" \
+	--kernel-image-name "${KERNEL_IMAGE_NAME}" \
+	--kernel-image-type "${KERNEL_IMAGE_TYPE}" \
+	--boot-method "${BOOT_METHOD}" \
+	--visibility-group "${VISIBILITY_GROUP}" \
+	--lava-tags "${LAVA_TAGS}" \
+	--mesa-job-name "$CI_JOB_NAME" \
+	--structured-log-file "results/lava_job_detail.json" \
+	--ssh-client-image "${LAVA_SSH_CLIENT_IMAGE}" \
+	>> results/lava.log
-- 
2.25.1

