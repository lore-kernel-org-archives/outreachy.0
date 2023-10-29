Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C796910EA
	for <outreachy@lists.linux.dev>; Sun, 29 Oct 2023 04:04:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RvSr3K3B"
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-9ae2cc4d17eso514747866b.1
        for <outreachy@lists.linux.dev>; Sat, 28 Oct 2023 21:04:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698552294; x=1699157094; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=G3hk1e/Al1zypCgQckIrb/cdFUUgr1XMGnzgeUu+fdk=;
        b=RvSr3K3Bipu9x6pr4RkC3h7zIt/7Oqd7lGgnAeDwC2C9GZwjfZzd4cFflxyp/S9IKS
         33MAG1wCYwkc3g4rHfBBRVf8a6DMnTMpIrKPdwueGA2VqTVZS3NfycUTwj+GXQuZjznp
         0PaAo1I1gPtHVOYTaeUCY1+vTEH4dj6ZL5nPLGiterxHMUy/6WrBp7TvQF7E2+iBlxRr
         QQci35ysZV4VhwxJm9CLwT/8EEiHHEVrgUzc7lmhIvqBjrTGQVfMkDkCt39hoak9fDGq
         xYKsqC2M43Hcmzca/302MNGs5md7bM/ODmEfhJvIWbjwRsEOOxzSlwfiu+bxJ2JB6Twu
         rqbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698552294; x=1699157094;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=G3hk1e/Al1zypCgQckIrb/cdFUUgr1XMGnzgeUu+fdk=;
        b=w5XL+/PfOo8Xom2074ctnjsB5uFwT4eUz7vCEodw4TFhd3QEW/1Tq79e+i6TnTqAwy
         JZNn1Meule7zTO7aF/yqflLEHHFGcZyHrcBQJnKHPvR6JbkfmOe6uF34MJRKqAegv03l
         ofxbkywhWIxUwfKlWtoWgPtkwpzsXjEPXMSE6gdOuEVh9btzlempQHqN3d2vmVHcQ9Xx
         caeGO8dz8ZooOxu871YccGjf1CRdshI+CZnicgsV5GSHs/U7FQbfrZt/czWp/7tgWozO
         eMURcI95PSNqARTnR6Qas/iXCKNw1SxDrzT0d8wnXCy/IxlPXsh4bPghVgwfU7Mz+b8k
         GC6Q==
X-Gm-Message-State: AOJu0Yx9+gitROO0IeWtR16LoSYJnZ443aeW+lO1XEzuus1hbzrbyYsN
	GVx4Mx2zg9//HjoWVJexaUYhYq88zwhnFQ==
X-Google-Smtp-Source: AGHT+IGtkKVgU01ehd7CyJXLPSWXn4073daNNndOhgXv3JjArpGrN/eczrXGRM6Z5yv2jMptOFOs9g==
X-Received: by 2002:a17:907:7254:b0:9c7:5a01:ffec with SMTP id ds20-20020a170907725400b009c75a01ffecmr6048249ejc.0.1698552293603;
        Sat, 28 Oct 2023 21:04:53 -0700 (PDT)
Received: from ubuntu-focal.zuku.co.ke ([197.237.50.252])
        by smtp.gmail.com with ESMTPSA id op12-20020a170906bcec00b00997cce73cc7sm3678705ejb.29.2023.10.28.21.04.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Oct 2023 21:04:53 -0700 (PDT)
From: Dorine Tipo <dorine.a.tipo@gmail.com>
To: gagallo7+outreachy@gmail.com,
	outreachy@lists.linux.dev
Cc: Dorine Tipo <dorine.a.tipo@gmail.com>
Subject: [PATCH] Fix Long Lines in build.sh
Date: Sun, 29 Oct 2023 04:04:20 +0000
Message-Id: <20231029040420.8077-1-dorine.a.tipo@gmail.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patch addresses an issue where lines in the 'build.sh' script exceed 100 columns,
which can make the code less readable. The problem is resolved by reformatting and
breaking down long lines to improve code readability and maintain compliance with coding style guideline

Signed-off-by: Dorine Tipo <dorine.a.tipo@gmail.com>
---
 drivers/gpu/drm/ci/clean-build.sh | 165 ++++++++++++++++++++++++++++++
 1 file changed, 165 insertions(+)
 create mode 100644 drivers/gpu/drm/ci/clean-build.sh

diff --git a/drivers/gpu/drm/ci/clean-build.sh b/drivers/gpu/drm/ci/clean-build.sh
new file mode 100644
index 000000000000..e8d813db51ef
--- /dev/null
+++ b/drivers/gpu/drm/ci/clean-build.sh
@@ -0,0 +1,165 @@
+#!/bin/bash
+# SPDX-License-Identifier: MIT
+
+set -ex
+
+# Clean up stale rebases that GitLab might not have removed when reusing a checkout dir
+rm -rf .git/rebase-apply
+
+. .gitlab-ci/container/container_pre_build.sh
+
+# libssl-dev was uninstalled because it was considered an ephemeral package
+apt-get update
+apt-get install -y libssl-dev
+
+if [[ "$KERNEL_ARCH" = "arm64" ]]; then
+    GCC_ARCH="aarch64-linux-gnu"
+    DEBIAN_ARCH="arm64"
+    DEVICE_TREES="arch/arm64/boot/dts/rockchip/rk3399-gru-kevin.dtb"
+    DEVICE_TREES+=" arch/arm64/boot/dts/amlogic/meson-gxl-s805x-libretech-ac.dtb"
+    DEVICE_TREES+=" arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dtb"
+    DEVICE_TREES+=" arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dtb"
+    DEVICE_TREES+=" arch/arm64/boot/dts/qcom/apq8016-sbc.dtb"
+    DEVICE_TREES+=" arch/arm64/boot/dts/qcom/apq8096-db820c.dtb"
+    DEVICE_TREES+=" arch/arm64/boot/dts/amlogic/meson-g12b-a311d-khadas-vim3.dtb"
+    DEVICE_TREES+=" arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dtb"
+    DEVICE_TREES+=" arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-juniper-sku16.dtb"
+    DEVICE_TREES+=" arch/arm64/boot/dts/mediatek/mt8192-asurada-spherion-r0.dtb"
+    DEVICE_TREES+=" arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-limozeen-nots-r5.dtb"
+elif [[ "$KERNEL_ARCH" = "arm" ]]; then
+    GCC_ARCH="arm-linux-gnueabihf"
+    DEBIAN_ARCH="armhf"
+    DEVICE_TREES="arch/arm/boot/dts/rockchip/rk3288-veyron-jaq.dtb"
+    DEVICE_TREES+=" arch/arm/boot/dts/allwinner/sun8i-h3-libretech-all-h3-cc.dtb"
+    DEVICE_TREES+=" arch/arm/boot/dts/nxp/imx/imx6q-cubox-i.dtb"
+    apt-get install -y libssl-dev:armhf
+else
+    GCC_ARCH="x86_64-linux-gnu"
+    DEBIAN_ARCH="amd64"
+    DEVICE_TREES=""
+fi
+
+export ARCH=${KERNEL_ARCH}
+export CROSS_COMPILE="${GCC_ARCH}-"
+
+# The kernel doesn't like the gold linker (or the old lld in our debians).
+# Sneak in some override symlinks during kernel build until we can update
+# debian.
+mkdir -p ld-links
+for i in /usr/bin/*-ld /usr/bin/ld; do
+    i=$(basename $i)
+    ln -sf /usr/bin/$i.bfd ld-links/$i
+done
+
+NEWPATH=$(pwd)/ld-links
+export PATH=$NEWPATH:$PATH
+
+git config --global user.email "fdo@example.com"
+git config --global user.name "freedesktop.org CI"
+git config --global pull.rebase true
+
+# Try to merge fixes from target repo
+if [ "$(git ls-remote --exit-code --heads ${UPSTREAM_REPO} ${TARGET_BRANCH}-external-fixes)" ]; then
+    git pull ${UPSTREAM_REPO} ${TARGET_BRANCH}-external-fixes
+fi
+
+# Try to merge fixes from local repo if this isn't a merge request
+# otherwise try merging the fixes from the merge target
+if [ -z "$CI_MERGE_REQUEST_PROJECT_PATH" ]; then
+    if [ "$(git ls-remote --exit-code --heads origin ${TARGET_BRANCH}-external-fixes)" ]; then
+        git pull origin ${TARGET_BRANCH}-external-fixes
+    fi
+else
+    if [ "$(git ls-remote --exit-code --heads ${CI_MERGE_REQUEST_PROJECT_URL}
+	    ${CI_MERGE_REQUEST_TARGET_BRANCH_NAME}-external-fixes)" ]; then
+        git pull ${CI_MERGE_REQUEST_PROJECT_URL}
+	${CI_MERGE_REQUEST_TARGET_BRANCH_NAME}-external-fixes
+    fi
+fi
+
+for opt in $ENABLE_KCONFIGS; do
+  echo CONFIG_$opt=y >> drivers/gpu/drm/ci/${KERNEL_ARCH}.config
+done
+for opt in $DISABLE_KCONFIGS; do
+  echo CONFIG_$opt=n >> drivers/gpu/drm/ci/${KERNEL_ARCH}.config
+done
+
+if [[ -n "${MERGE_FRAGMENT}" ]]; then
+    ./scripts/kconfig/merge_config.sh ${DEFCONFIG} drivers/gpu/drm/ci/${MERGE_FRAGMENT}
+else
+    make `basename ${DEFCONFIG}`
+fi
+
+make ${KERNEL_IMAGE_NAME}
+
+mkdir -p /lava-files/
+for image in ${KERNEL_IMAGE_NAME}; do
+    cp arch/${KERNEL_ARCH}/boot/${image} /lava-files/.
+done
+
+if [[ -n ${DEVICE_TREES} ]]; then
+    make dtbs
+    cp ${DEVICE_TREES} /lava-files/.
+fi
+
+make modules
+mkdir -p install/modules/
+INSTALL_MOD_PATH=install/modules/ make modules_install
+
+if [[ ${DEBIAN_ARCH} = "arm64" ]]; then
+    make Image.lzma
+    mkimage \
+        -f auto \
+        -A arm \
+        -O linux \
+        -d arch/arm64/boot/Image.lzma \
+        -C lzma\
+        -b arch/arm64/boot/dts/qcom/sdm845-cheza-r3.dtb \
+        /lava-files/cheza-kernel
+    KERNEL_IMAGE_NAME+=" cheza-kernel"
+
+    # Make a gzipped copy of the Image for db410c.
+    gzip -k /lava-files/Image
+    KERNEL_IMAGE_NAME+=" Image.gz"
+fi
+
+# Pass needed files to the test stage
+mkdir -p install
+cp -rfv .gitlab-ci/* install/.
+cp -rfv install/common install/ci-common
+cp -rfv drivers/gpu/drm/ci/* install/.
+
+. .gitlab-ci/container/container_post_build.sh
+
+if [[ "$UPLOAD_TO_MINIO" = "1" ]]; then
+    xz -7 -c -T${FDO_CI_CONCURRENT:-4} vmlinux > /lava-files/vmlinux.xz
+    FILES_TO_UPLOAD="$KERNEL_IMAGE_NAME vmlinux.xz"
+
+    if [[ -n $DEVICE_TREES ]]; then
+        FILES_TO_UPLOAD="$FILES_TO_UPLOAD $(basename -a $DEVICE_TREES)"
+    fi
+
+    for f in $FILES_TO_UPLOAD; do
+        ci-fairy s3cp --token-file "${CI_JOB_JWT_FILE}" /lava-files/$f \
+                https://${PIPELINE_ARTIFACTS_BASE}/${DEBIAN_ARCH}/$f
+    done
+
+    S3_ARTIFACT_NAME="kernel-files.tar.zst"
+    tar --zstd -cf $S3_ARTIFACT_NAME install
+    ci-fairy s3cp --token-file "${CI_JOB_JWT_FILE}" ${S3_ARTIFACT_NAME} https://${PIPELINE_ARTIFACTS_BASE}/${DEBIAN_ARCH}/${S3_ARTIFACT_NAME}
+
+    echo "Download vmlinux.xz from https://${PIPELINE_ARTIFACTS_BASE}/${DEBIAN_ARCH}/vmlinux.xz"
+fi
+
+mkdir -p artifacts/install/lib
+mv install/* artifacts/install/.
+rm -rf artifacts/install/modules
+ln -s common artifacts/install/ci-common
+cp .config artifacts/${CI_JOB_NAME}_config
+
+for image in ${KERNEL_IMAGE_NAME}; do
+    cp /lava-files/$image artifacts/install/.
+done
+
+tar -C artifacts -cf artifacts/install.tar install
+rm -rf artifacts/install
-- 
2.25.1

