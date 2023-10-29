Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B44C92115
	for <outreachy@lists.linux.dev>; Sun, 29 Oct 2023 07:39:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="oZok7z9A"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=lJW8YyLUZeQ5O8rZRKET+13DNTQz8wYR8Rc1+F2Ko30=;
  b=oZok7z9A/TwaE5XxevvcRrEIYmuRKiAr+OKsD7/aYNN0sJcy62j9m4hD
   5eS1kL+OUO2Sn3HHnALhGfdy1SrO6g5UcsgJK5p/Xm+rM2refGNiVWPqe
   t2GQgEzhdXnpA7lC7g8KhzXTKKscuQlA5NFNJXX11fTdlV05p2DU0lQsn
   0=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.03,260,1694728800"; 
   d="scan'208";a="70038654"
Received: from 231.85.89.92.rev.sfr.net (HELO hadrien) ([92.89.85.231])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Oct 2023 08:39:47 +0100
Date: Sun, 29 Oct 2023 08:39:46 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Dorine Tipo <dorine.a.tipo@gmail.com>
cc: gagallo7+outreachy@gmail.com, outreachy@lists.linux.dev
Subject: Re: [PATCH] Fix Long Lines in lava-submit.sh
In-Reply-To: <20231029063148.13081-1-dorine.a.tipo@gmail.com>
Message-ID: <alpine.DEB.2.22.394.2310290835300.3136@hadrien>
References: <20231029063148.13081-1-dorine.a.tipo@gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 29 Oct 2023, Dorine Tipo wrote:

> This patch addresses an issue where line 38 in the 'lava-submit.sh' script exceeds 100 columns,
> which can make the code less readable. The problem is resolved by reformatting and breaking down
> the line to improve code readability and maintain compliance with coding style guidelines.

This log message is verbose.  Please reread the Outreachy first patch
tutorial, particularly https://kernelnewbies.org/PatchPhilosophy

>
> Signed-off-by: Dorine Tipo <dorine.a.tipo@gmail.com>
> ---
>  drivers/gpu/drm/ci/clean-lava-submit.sh | 58 +++++++++++++++++++++++++
>  1 file changed, 58 insertions(+)
>  create mode 100755 drivers/gpu/drm/ci/clean-lava-submit.sh
>
> diff --git a/drivers/gpu/drm/ci/clean-lava-submit.sh b/drivers/gpu/drm/ci/clean-lava-submit.sh
> new file mode 100755
> index 000000000000..d4362f47fc14
> --- /dev/null
> +++ b/drivers/gpu/drm/ci/clean-lava-submit.sh

Why are you providing a completely new file?  Please read the first patch
tutorial on how to create a patch from a changed file, particulary
starting from Committing your changes.

julia

> @@ -0,0 +1,58 @@
> +#!/bin/bash
> +# SPDX-License-Identifier: MIT
> +
> +set -e
> +set -x
> +
> +# Try to use the kernel and rootfs built in mainline first, so we're more
> +# likely to hit cache
> +if curl -L --retry 4 -f --retry-all-errors --retry-delay 60 -s "https://${BASE_SYSTEM_MAINLINE_HOST_PATH}/done"; then
> +	BASE_SYSTEM_HOST_PATH="${BASE_SYSTEM_MAINLINE_HOST_PATH}"
> +else
> +	BASE_SYSTEM_HOST_PATH="${BASE_SYSTEM_FORK_HOST_PATH}"
> +fi
> +
> +rm -rf results
> +mkdir -p results/job-rootfs-overlay/
> +
> +cp artifacts/ci-common/capture-devcoredump.sh results/job-rootfs-overlay/
> +cp artifacts/ci-common/init-*.sh results/job-rootfs-overlay/
> +cp artifacts/ci-common/intel-gpu-freq.sh results/job-rootfs-overlay/
> +cp "$SCRIPTS_DIR"/setup-test-env.sh results/job-rootfs-overlay/
> +
> +# Prepare env vars for upload.
> +section_start variables "Variables passed through:"
> +KERNEL_IMAGE_BASE="https://${BASE_SYSTEM_HOST_PATH}" \
> +	artifacts/ci-common/generate-env.sh | tee results/job-rootfs-overlay/set-job-env-vars.sh
> +section_end variables
> +
> +tar zcf job-rootfs-overlay.tar.gz -C results/job-rootfs-overlay/ .
> +ci-fairy s3cp --token-file "${CI_JOB_JWT_FILE}" job-rootfs-overlay.tar.gz "https://${JOB_ROOTFS_OVERLAY_PATH}"
> +
> +touch results/lava.log
> +tail -f results/lava.log &
> +
> +PYTHONPATH=artifacts/ artifacts/lava/lava_job_submitter.py \
> +	submit \
> +	--dump-yaml \
> +	--pipeline-info "$CI_JOB_NAME: $CI_PIPELINE_URL on
> +	$CI_COMMIT_REF_NAME ${CI_NODE_INDEX}/${CI_NODE_TOTAL}" \
> +	--rootfs-url-prefix "https://${BASE_SYSTEM_HOST_PATH}" \
> +	--kernel-url-prefix "https://${PIPELINE_ARTIFACTS_BASE}/${DEBIAN_ARCH}" \
> +	--build-url "${FDO_HTTP_CACHE_URI:-}https://${PIPELINE_ARTIFACTS_BASE}/${DEBIAN_ARCH}/kernel-files.tar.zst" \
> +	--job-rootfs-overlay-url "${FDO_HTTP_CACHE_URI:-}https://${JOB_ROOTFS_OVERLAY_PATH}" \
> +	--job-timeout-min ${JOB_TIMEOUT:-80} \
> +	--first-stage-init artifacts/ci-common/init-stage1.sh \
> +	--ci-project-dir "${CI_PROJECT_DIR}" \
> +	--device-type "${DEVICE_TYPE}" \
> +	--dtb-filename "${DTB}" \
> +	--jwt-file "${CI_JOB_JWT_FILE}" \
> +	--kernel-image-name "${KERNEL_IMAGE_NAME}" \
> +	--kernel-image-type "${KERNEL_IMAGE_TYPE}" \
> +	--boot-method "${BOOT_METHOD}" \
> +	--visibility-group "${VISIBILITY_GROUP}" \
> +	--lava-tags "${LAVA_TAGS}" \
> +	--mesa-job-name "$CI_JOB_NAME" \
> +	--structured-log-file "results/lava_job_detail.json" \
> +	--ssh-client-image "${LAVA_SSH_CLIENT_IMAGE}" \
> +	>> results/lava.log
> --
> 2.25.1
>
>
>
