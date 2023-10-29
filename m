Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 922FCEDF
	for <outreachy@lists.linux.dev>; Sun, 29 Oct 2023 13:51:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gpz3+bnW"
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-99de884ad25so549253466b.3
        for <outreachy@lists.linux.dev>; Sun, 29 Oct 2023 06:51:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698587495; x=1699192295; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=f9Ct3zVKepQ1cf7DIbA77EEkljWWR4J/0Ng+qftrrcM=;
        b=gpz3+bnWohoWfG6KiVNgmUGCh5P1ju21F1LhXS4+MrQGlYeQB/HxRTxXtVaqiFhfLp
         VINpnvWY5gqsspSApyDZAhkZiYMkU9pRWAcoxKHkAMP1B8kH6vIxaLjv2g/G/RSNTNP8
         pIRuxtQ1ipmxhlcOeGe/62mNKv6syc/zWslNEX/rvPdV3cQS58+CXcOF2fOjAC53qN1g
         hMMXx3j9FVfj0cq3qXFETONU5eMLEtBbEY7neShmnCic2CmnzWyhd8CH78sOtSLeE1Ai
         /9Tad16hvR9H1FVNumA5+tqC1nmC80wi3N7dbTTfVDwa7bOt5z1PupKxMIzUw7wWtirb
         Zw7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698587495; x=1699192295;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=f9Ct3zVKepQ1cf7DIbA77EEkljWWR4J/0Ng+qftrrcM=;
        b=gSnRv6818FOiYjGtu0i+MSpnZs39DKcq8EV/OyIIxea4n3gkHAOnhLJZ40TImsmQo+
         bTocgGO0dikRiFxVeRMCqUKvob5ukWNPNpK466TUIBQas8M9BoLqKtM4fMAATuw+ljcz
         NWRe5JGOla+vPCngbBTQ095KEBl9qUcAa/989N43zzZBty/D7udnKhqafoGfzNvuxjs1
         SkjPMNYs7SGKgE42/hNBeWOxug4RDoeNZuH22/v1qOUMqeI8DdxaKeVASaa+2Ra2pqKV
         Z8V4H12Mv9jTYSP1XmcTmjsLfgAZeeR+xJg3QpEunwBwB2xi7nUuQPApdzAYg0Ejz5v9
         1w9A==
X-Gm-Message-State: AOJu0Yy79is1iTVl3qXe4m9PsPekeI1ieMbbKFAnTlH4+rjIg4+gHJfp
	2cy2RInRVBQxifzN3sMAkciwbPL5aKlIBfQN
X-Google-Smtp-Source: AGHT+IE0hyfb6lJ9nYcaARaZABLoaYtSFrhv2SBKYevqtJ4+2XEYf2Q7+WksMz940Iyu1a7iQoY7Uw==
X-Received: by 2002:a17:907:36cc:b0:9bd:9bfe:e40b with SMTP id bj12-20020a17090736cc00b009bd9bfee40bmr5649716ejc.75.1698587495195;
        Sun, 29 Oct 2023 06:51:35 -0700 (PDT)
Received: from ubuntu-focal.zuku.co.ke ([197.237.50.252])
        by smtp.gmail.com with ESMTPSA id q23-20020a50c357000000b00542df4a03d0sm2484658edb.16.2023.10.29.06.51.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Oct 2023 06:51:34 -0700 (PDT)
From: Dorine Tipo <dorine.a.tipo@gmail.com>
To: outreachy@lists.linux.dev,
	gregkh@linuxfoundation.org
Cc: Dorine Tipo <dorine.a.tipo@gmail.com>
Subject: [PATCH] Fix line Length
Date: Sun, 29 Oct 2023 13:51:04 +0000
Message-Id: <20231029135104.5136-1-dorine.a.tipo@gmail.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit


Fix the line lengths of lines 8 and 49

Signed-off-by: Dorine Tipo <dorine.a.tipo@gmail.com>
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

