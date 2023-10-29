Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2CB0389
	for <outreachy@lists.linux.dev>; Sun, 29 Oct 2023 14:57:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NdL0YKJ9"
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2c509d5ab43so53330071fa.0
        for <outreachy@lists.linux.dev>; Sun, 29 Oct 2023 07:57:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698591438; x=1699196238; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=AIwzQwg7sKx/uWJXA9qhSoscJVvcNhkhKQ9ekdB8L5A=;
        b=NdL0YKJ9JD4HnQGkGIMIY6QMUoiEyzLW3IDU4NVKP2Ro4GV5fLlMzsPnnc/KgQ2g0s
         +fkSe0L97bw+YFo+I5c/LLktxbcWebEciH0+xww8Aet+ck2qDSrzsuEQ3wGvMmSbtwGv
         cZy13X2u9TWwUeQMFPysu3C6YmGgo9YU+GoJGLdl650Bsap/zlogkyFzvnd3WbFLDNBO
         Od98qPVC9PSuSEWHSlUcTjWfbXprkpzPZ/1juVfLa48XZ6qmR9PTqJWBfhB42AZaZyR5
         U09E3AQMKTh7/k4p1F9N97vqMT76XF0e9Y9Ktn97O3qMNWfy/XzA7zimkQOVBeeJRylW
         f0SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698591438; x=1699196238;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AIwzQwg7sKx/uWJXA9qhSoscJVvcNhkhKQ9ekdB8L5A=;
        b=p2YMi9Lq6/ME7s6LJFC/wEX+nhzub1cCHJi/gbyxoKugomxnvVsYZKtq1BAkxId4Kf
         NphspQbIx2o9Sn1XTWd1pttB4nF5H+G/IW/ZoWpFSTD4q+cXpi0d8+y0xafobOr6OziV
         MWFR01AazYtu9RYoqU4V0wxWTZsUWbxA6dyphNQ5RWJB1ttBgBmVPNxCDWGmpVZbDkVL
         xqsxtwTIgZu+cZ78wFy0/M1jkicflq/8D/mktJT2OBzT6WpjuGWmqR8jrcATuXpWvCPD
         KUnQvAoWZ3pSOfer1hNsZQ+zdOy1GiSCczL9GTl+9H2WVR1zva5lKJhDdVxBK+7kRomi
         XPCA==
X-Gm-Message-State: AOJu0Yzjewhl5PD0C7TJZj6vnrPkyuk5RsLla2v/Ng0CDNkZUTfQ/54d
	MYrHgzp/azWmfZYozed63E/L12cCv48xqwBN
X-Google-Smtp-Source: AGHT+IFM/LV8OlPBHN9i8B8iIsEOyOaoRkWdl217GXBP5NsCNRZRylgnrXZJfWKujWmnvBv7n7t1Gw==
X-Received: by 2002:ac2:4850:0:b0:507:a1e0:22f4 with SMTP id 16-20020ac24850000000b00507a1e022f4mr5245915lfy.29.1698591438067;
        Sun, 29 Oct 2023 07:57:18 -0700 (PDT)
Received: from ubuntu-focal.zuku.co.ke ([197.237.50.252])
        by smtp.gmail.com with ESMTPSA id w26-20020a50fa9a000000b0053e799314d7sm4535994edr.73.2023.10.29.07.57.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Oct 2023 07:57:17 -0700 (PDT)
From: Dorine Tipo <dorine.a.tipo@gmail.com>
To: outreachy@lists.linux.dev,
	bagasdotme@gmail.com,
	julia.lawall@inria.fr
Cc: Dorine Tipo <dorine.a.tipo@gmail.com>
Subject: [PATCH Resend] Fix line Length
Date: Sun, 29 Oct 2023 14:43:12 +0000
Message-Id: <20231029144312.5895-1-dorine.a.tipo@gmail.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Dorine Tipo <dorine.a.tipo@gmail.com>

Fix the line lengths of lines 8 and 49
---
 drivers/gpu/drm/ci/igt_runner.sh | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/ci/igt_runner.sh b/drivers/gpu/drm/ci/igt_runner.sh
index 2bb759165063..d7b779bb7f64 100755
--- a/drivers/gpu/drm/ci/igt_runner.sh
+++ b/drivers/gpu/drm/ci/igt_runner.sh
@@ -5,7 +5,8 @@ set -ex
 
 export IGT_FORCE_DRIVER=${DRIVER_NAME}
 export PATH=$PATH:/igt/bin/
-export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/igt/lib/aarch64-linux-gnu/:/igt/lib/x86_64-linux-gnu:/igt/lib:/igt/lib64
+export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/igt/lib/aarch64-linux-gnu/:/igt/lib/x86_64-linux-gnu
+export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/igt/lib:/igt/lib64
 
 # Uncomment the below to debug problems with driver probing
 : '
@@ -46,7 +47,8 @@ else
     ARCH="x86_64"
 fi
 
-curl -L --retry 4 -f --retry-all-errors --retry-delay 60 -s ${FDO_HTTP_CACHE_URI:-}$PIPELINE_ARTIFACTS_BASE/$ARCH/igt.tar.gz | tar --zstd -v -x -C /
+curl -L --retry 4 -f --retry-all-errors --retry-delay 60 -s \
+	${FDO_HTTP_CACHE_URI:-}$PIPELINE_ARTIFACTS_BASE/$ARCH/igt.tar.gz | tar --zstd -v -x -C /
 
 set +e
 igt-runner \
-- 
2.25.1

