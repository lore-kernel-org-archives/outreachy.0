Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8F7D2573
	for <outreachy@lists.linux.dev>; Sun, 29 Oct 2023 15:12:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="mAUyKTGi"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=Gl9ByJUWgns5iHtJR8m4UkcXabcMEs787vW6DdJ3A4g=;
  b=mAUyKTGi5y9khBF6xSfwUgfMfAviKn4GBKGaWBOx6Sn21f9yz3gQIqE5
   EmKsYn1ziXKH9PWgB/uJD6xmRkvNhEOmYGYG1hcDOzij1StHA1J3KkCwR
   NNF3G6UuLGaBwmvMWfo21UW3VdMOQUDDlnNwFK85eIqshw6wlKc8LGufJ
   0=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.03,261,1694728800"; 
   d="scan'208";a="70052265"
Received: from 231.85.89.92.rev.sfr.net (HELO hadrien) ([92.89.85.231])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Oct 2023 16:11:02 +0100
Date: Sun, 29 Oct 2023 16:11:01 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Dorine Tipo <dorine.a.tipo@gmail.com>
cc: outreachy@lists.linux.dev, bagasdotme@gmail.com, julia.lawall@inria.fr
Subject: Re: [PATCH Resend] Fix line Length
In-Reply-To: <20231029144312.5895-1-dorine.a.tipo@gmail.com>
Message-ID: <alpine.DEB.2.22.394.2310291610030.3136@hadrien>
References: <20231029144312.5895-1-dorine.a.tipo@gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 29 Oct 2023, Dorine Tipo wrote:

> Signed-off-by: Dorine Tipo <dorine.a.tipo@gmail.com>
>
> Fix the line lengths of lines 8 and 49

The Signed off by line should be here, below the log message.  Please see
the patches sent by others.


> ---
>  drivers/gpu/drm/ci/igt_runner.sh | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/ci/igt_runner.sh b/drivers/gpu/drm/ci/igt_runner.sh
> index 2bb759165063..d7b779bb7f64 100755
> --- a/drivers/gpu/drm/ci/igt_runner.sh
> +++ b/drivers/gpu/drm/ci/igt_runner.sh
> @@ -5,7 +5,8 @@ set -ex
>
>  export IGT_FORCE_DRIVER=${DRIVER_NAME}
>  export PATH=$PATH:/igt/bin/
> -export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/igt/lib/aarch64-linux-gnu/:/igt/lib/x86_64-linux-gnu:/igt/lib:/igt/lib64
> +export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/igt/lib/aarch64-linux-gnu/:/igt/lib/x86_64-linux-gnu
> +export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/igt/lib:/igt/lib64

There was a suggestion that it was better to keep this as one line.

julia

>  # Uncomment the below to debug problems with driver probing
>  : '
> @@ -46,7 +47,8 @@ else
>      ARCH="x86_64"
>  fi
>
> -curl -L --retry 4 -f --retry-all-errors --retry-delay 60 -s ${FDO_HTTP_CACHE_URI:-}$PIPELINE_ARTIFACTS_BASE/$ARCH/igt.tar.gz | tar --zstd -v -x -C /
> +curl -L --retry 4 -f --retry-all-errors --retry-delay 60 -s \
> +	${FDO_HTTP_CACHE_URI:-}$PIPELINE_ARTIFACTS_BASE/$ARCH/igt.tar.gz | tar --zstd -v -x -C /
>
>  set +e
>  igt-runner \
> --
> 2.25.1
>
>
