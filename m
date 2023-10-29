Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05B401870
	for <outreachy@lists.linux.dev>; Sun, 29 Oct 2023 07:42:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="TZ7TLW5u"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=UiwVisbiXyUkEe5oGGz8DZzszF/FTygd8Qg6grrOSLY=;
  b=TZ7TLW5ufIbchuPkxXqG2ab8J5A4E2xvnLgGOsS2uqvn86lXpWYbXJBj
   dN8brU3GJcdTjbSbTppDW3vXv9MJYE33eP+9ubldB5rZrS4KhYjCbdd2Y
   QyZuo2HE/ZET/CZVYUYjzKfBp/NH4Zy5v3eABXLAU5O1SYv4WqwH5KF2o
   E=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.03,260,1694728800"; 
   d="scan'208";a="70038706"
Received: from 231.85.89.92.rev.sfr.net (HELO hadrien) ([92.89.85.231])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Oct 2023 08:42:23 +0100
Date: Sun, 29 Oct 2023 08:42:22 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Dorine Tipo <dorine.a.tipo@gmail.com>
cc: gagallo7+outreachy@gmail.com, outreachy@lists.linux.dev
Subject: Re: [PATCH] Fix Long Lines in build.sh
In-Reply-To: <20231029040420.8077-1-dorine.a.tipo@gmail.com>
Message-ID: <alpine.DEB.2.22.394.2310290840210.3136@hadrien>
References: <20231029040420.8077-1-dorine.a.tipo@gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 29 Oct 2023, Dorine Tipo wrote:

> This patch addresses an issue where lines in the 'build.sh' script exceed 100 columns,
> which can make the code less readable. The problem is resolved by reformatting and
> breaking down long lines to improve code readability and maintain compliance with coding style guideline

This has the same problem as the other one.  The log message is not in the
right style and you have submitted a competely new file rther than a
modification on an existing one.

I guess that you are doing the small tasks of some project.  But it seems
that you have not first submitted the required ~10 cleanup patches on
drivers/staging.

julia

>
> Signed-off-by: Dorine Tipo <dorine.a.tipo@gmail.com>
> ---
>  drivers/gpu/drm/ci/clean-build.sh | 165 ++++++++++++++++++++++++++++++
>  1 file changed, 165 insertions(+)
>  create mode 100644 drivers/gpu/drm/ci/clean-build.sh
>
> diff --git a/drivers/gpu/drm/ci/clean-build.sh b/drivers/gpu/drm/ci/clean-build.sh
> new file mode 100644
> index 000000000000..e8d813db51ef
> --- /dev/null
> +++ b/drivers/gpu/drm/ci/clean-build.sh
> @@ -0,0 +1,165 @@
> +#!/bin/bash
> +# SPDX-License-Identifier: MIT
> +
> +set -ex
> +
> +# Clean up stale rebases that GitLab might not have removed when reusing a checkout dir
> +rm -rf .git/rebase-apply
> +
> +. .gitlab-ci/container/container_pre_build.sh
> +
> +# libssl-dev was uninstalled because it was considered an ephemeral package
> +apt-get update
> +apt-get install -y libssl-dev
> +
> +if [[ "$KERNEL_ARCH" = "arm64" ]]; then
> +    GCC_ARCH="aarch64-linux-gnu"
> +    DEBIAN_ARCH="arm64"
> +    DEVICE_TREES="arch/arm64/boot/dts/rockchip/rk3399-gru-kevin.dtb"
> +    DEVICE_TREES+=" arch/arm64/boot/dts/amlogic/meson-gxl-s805x-libretech-ac.dtb"
> +    DEVICE_TREES+=" arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dtb"
> +    DEVICE_TREES+=" arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dtb"
> +    DEVICE_TREES+=" arch/arm64/boot/dts/qcom/apq8016-sbc.dtb"
> +    DEVICE_TREES+=" arch/arm64/boot/dts/qcom/apq8096-db820c.dtb"
> +    DEVICE_TREES+=" arch/arm64/boot/dts/amlogic/meson-g12b-a311d-khadas-vim3.dtb"
> +    DEVICE_TREES+=" arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dtb"
> +    DEVICE_TREES+=" arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-juniper-sku16.dtb"
> +    DEVICE_TREES+=" arch/arm64/boot/dts/mediatek/mt8192-asurada-spherion-r0.dtb"
> +    DEVICE_TREES+=" arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-limozeen-nots-r5.dtb"
> +elif [[ "$KERNEL_ARCH" = "arm" ]]; then
> +    GCC_ARCH="arm-linux-gnueabihf"
> +    DEBIAN_ARCH="armhf"
> +    DEVICE_TREES="arch/arm/boot/dts/rockchip/rk3288-veyron-jaq.dtb"
> +    DEVICE_TREES+=" arch/arm/boot/dts/allwinner/sun8i-h3-libretech-all-h3-cc.dtb"
> +    DEVICE_TREES+=" arch/arm/boot/dts/nxp/imx/imx6q-cubox-i.dtb"
> +    apt-get install -y libssl-dev:armhf
> +else
> +    GCC_ARCH="x86_64-linux-gnu"
> +    DEBIAN_ARCH="amd64"
> +    DEVICE_TREES=""
> +fi
> +
> +export ARCH=${KERNEL_ARCH}
> +export CROSS_COMPILE="${GCC_ARCH}-"
> +
> +# The kernel doesn't like the gold linker (or the old lld in our debians).
> +# Sneak in some override symlinks during kernel build until we can update
> +# debian.
> +mkdir -p ld-links
> +for i in /usr/bin/*-ld /usr/bin/ld; do
> +    i=$(basename $i)
> +    ln -sf /usr/bin/$i.bfd ld-links/$i
> +done
> +
> +NEWPATH=$(pwd)/ld-links
> +export PATH=$NEWPATH:$PATH
> +
> +git config --global user.email "fdo@example.com"
> +git config --global user.name "freedesktop.org CI"
> +git config --global pull.rebase true
> +
> +# Try to merge fixes from target repo
> +if [ "$(git ls-remote --exit-code --heads ${UPSTREAM_REPO} ${TARGET_BRANCH}-external-fixes)" ]; then
> +    git pull ${UPSTREAM_REPO} ${TARGET_BRANCH}-external-fixes
> +fi
> +
> +# Try to merge fixes from local repo if this isn't a merge request
> +# otherwise try merging the fixes from the merge target
> +if [ -z "$CI_MERGE_REQUEST_PROJECT_PATH" ]; then
> +    if [ "$(git ls-remote --exit-code --heads origin ${TARGET_BRANCH}-external-fixes)" ]; then
> +        git pull origin ${TARGET_BRANCH}-external-fixes
> +    fi
> +else
> +    if [ "$(git ls-remote --exit-code --heads ${CI_MERGE_REQUEST_PROJECT_URL}
> +	    ${CI_MERGE_REQUEST_TARGET_BRANCH_NAME}-external-fixes)" ]; then
> +        git pull ${CI_MERGE_REQUEST_PROJECT_URL}
> +	${CI_MERGE_REQUEST_TARGET_BRANCH_NAME}-external-fixes
> +    fi
> +fi
> +
> +for opt in $ENABLE_KCONFIGS; do
> +  echo CONFIG_$opt=y >> drivers/gpu/drm/ci/${KERNEL_ARCH}.config
> +done
> +for opt in $DISABLE_KCONFIGS; do
> +  echo CONFIG_$opt=n >> drivers/gpu/drm/ci/${KERNEL_ARCH}.config
> +done
> +
> +if [[ -n "${MERGE_FRAGMENT}" ]]; then
> +    ./scripts/kconfig/merge_config.sh ${DEFCONFIG} drivers/gpu/drm/ci/${MERGE_FRAGMENT}
> +else
> +    make `basename ${DEFCONFIG}`
> +fi
> +
> +make ${KERNEL_IMAGE_NAME}
> +
> +mkdir -p /lava-files/
> +for image in ${KERNEL_IMAGE_NAME}; do
> +    cp arch/${KERNEL_ARCH}/boot/${image} /lava-files/.
> +done
> +
> +if [[ -n ${DEVICE_TREES} ]]; then
> +    make dtbs
> +    cp ${DEVICE_TREES} /lava-files/.
> +fi
> +
> +make modules
> +mkdir -p install/modules/
> +INSTALL_MOD_PATH=install/modules/ make modules_install
> +
> +if [[ ${DEBIAN_ARCH} = "arm64" ]]; then
> +    make Image.lzma
> +    mkimage \
> +        -f auto \
> +        -A arm \
> +        -O linux \
> +        -d arch/arm64/boot/Image.lzma \
> +        -C lzma\
> +        -b arch/arm64/boot/dts/qcom/sdm845-cheza-r3.dtb \
> +        /lava-files/cheza-kernel
> +    KERNEL_IMAGE_NAME+=" cheza-kernel"
> +
> +    # Make a gzipped copy of the Image for db410c.
> +    gzip -k /lava-files/Image
> +    KERNEL_IMAGE_NAME+=" Image.gz"
> +fi
> +
> +# Pass needed files to the test stage
> +mkdir -p install
> +cp -rfv .gitlab-ci/* install/.
> +cp -rfv install/common install/ci-common
> +cp -rfv drivers/gpu/drm/ci/* install/.
> +
> +. .gitlab-ci/container/container_post_build.sh
> +
> +if [[ "$UPLOAD_TO_MINIO" = "1" ]]; then
> +    xz -7 -c -T${FDO_CI_CONCURRENT:-4} vmlinux > /lava-files/vmlinux.xz
> +    FILES_TO_UPLOAD="$KERNEL_IMAGE_NAME vmlinux.xz"
> +
> +    if [[ -n $DEVICE_TREES ]]; then
> +        FILES_TO_UPLOAD="$FILES_TO_UPLOAD $(basename -a $DEVICE_TREES)"
> +    fi
> +
> +    for f in $FILES_TO_UPLOAD; do
> +        ci-fairy s3cp --token-file "${CI_JOB_JWT_FILE}" /lava-files/$f \
> +                https://${PIPELINE_ARTIFACTS_BASE}/${DEBIAN_ARCH}/$f
> +    done
> +
> +    S3_ARTIFACT_NAME="kernel-files.tar.zst"
> +    tar --zstd -cf $S3_ARTIFACT_NAME install
> +    ci-fairy s3cp --token-file "${CI_JOB_JWT_FILE}" ${S3_ARTIFACT_NAME} https://${PIPELINE_ARTIFACTS_BASE}/${DEBIAN_ARCH}/${S3_ARTIFACT_NAME}
> +
> +    echo "Download vmlinux.xz from https://${PIPELINE_ARTIFACTS_BASE}/${DEBIAN_ARCH}/vmlinux.xz"
> +fi
> +
> +mkdir -p artifacts/install/lib
> +mv install/* artifacts/install/.
> +rm -rf artifacts/install/modules
> +ln -s common artifacts/install/ci-common
> +cp .config artifacts/${CI_JOB_NAME}_config
> +
> +for image in ${KERNEL_IMAGE_NAME}; do
> +    cp /lava-files/$image artifacts/install/.
> +done
> +
> +tar -C artifacts -cf artifacts/install.tar install
> +rm -rf artifacts/install
> --
> 2.25.1
>
>
>
