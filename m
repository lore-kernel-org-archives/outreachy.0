X-GM-THRID: 6403259174174588928
X-Received: by 10.28.46.208 with SMTP id u199mr194198wmu.1.1490874955374;
        Thu, 30 Mar 2017 04:55:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.48.149 with SMTP id w143ls2871303wmw.11.canary-gmail; Thu,
 30 Mar 2017 04:55:54 -0700 (PDT)
X-Received: by 10.223.145.199 with SMTP id 65mr377071wri.0.1490874954401;
        Thu, 30 Mar 2017 04:55:54 -0700 (PDT)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wr0-x241.google.com (mail-wr0-x241.google.com. [2a00:1450:400c:c0c::241])
        by gmr-mx.google.com with ESMTPS id p144si196561wme.2.2017.03.30.04.55.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 30 Mar 2017 04:55:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) client-ip=2a00:1450:400c:c0c::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x241.google.com with SMTP id k6so10139530wre.3
        for <outreachy-kernel@googlegroups.com>; Thu, 30 Mar 2017 04:55:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=jqNYG3phNNhZLjfiurnhDdLjsa1fO7Vnvc2zDo8PYac=;
        b=D3gfy9mhfD/kZVn5AOOn84ByI8CXwKnlnAjI7hIvavhhKHNrkDSKeTSqRu/J+i5ABc
         W/ZPSAHPNMc0nNwDMKYHgOBW/+ZbKrArmH+0vPDI0lqXsAURXGnYV1p/W0u24ZuRT1JM
         tFAjKpaLX2aX//DNaKCSX2Be5C9UNYvZLeKubVVhstDHQwo3nhd0Of6MMcb917dBeD7X
         cWykRDbky1WjZ9VvU8GnmeWg4JSz4Y/bR7DSHYTds32dk5Dzxr/2DQc/UqQg1CkVyrYf
         nSCNMpoyg2kclMaADoqo6hIa22KCyPEP0MDw8YoivgaZFwpdq/LHWcFhP945D9GIiTHH
         AvxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=jqNYG3phNNhZLjfiurnhDdLjsa1fO7Vnvc2zDo8PYac=;
        b=AGK0Iqg7PiNc0tFBJ/wrLqd+rZf2B2SDYVWlCsKUfT24sKzv7JAa3k40NAarJizPPN
         +hd7c+D9UtmYRNOO26kF6KQdgkq++UtjQLIha0VPHOPfyJ0vTtDlwYk+0tvNn5w2RhVB
         kG4qWCd72Muaw6LkLyACWgzfoo1YDQnG1c7HoWeTYZ6Hq6i3F+GsSaaOtTvYt35hT6UL
         H7YMdILoexDEyCI29kM4RClEwzgTUzELqtMaSCJffJ0JDypeLJPmDuVfas0hdseHZmym
         +E3S8QLhBFyloQKccCrFTCFmRqWK+UCD1qju4RZ8tGQknDRVmVzAWDdCvkTia+c/hUEk
         IyYg==
X-Gm-Message-State: AFeK/H3cle4jFYIwTV1FtTxkBPp1mZ1N9W9GOSX38XAincf0xU1cDQdmJWgyHsX6yfVDYA==
X-Received: by 10.28.131.65 with SMTP id f62mr4907wmd.4.1490874954207;
        Thu, 30 Mar 2017 04:55:54 -0700 (PDT)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([2a02:2f0b:8160:a9a:c8b7:dd2d:d45b:b444])
        by smtp.gmail.com with ESMTPSA id t79sm2965052wmd.29.2017.03.30.04.55.52
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 30 Mar 2017 04:55:53 -0700 (PDT)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: daniel.vetter@intel.com,
	jani.nikula@linux.intel.com,
	airlied@linux.ie,
	intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	corbet@lwn.net
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH] drivers: gpu: drm: i915L intel_lpe_audio: Fix kerneldoc comments
Date: Thu, 30 Mar 2017 14:55:10 +0300
Message-Id: <20170330115510.14054-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Add description for existing parameter 'pipe' to fix the build
warning: ./drivers/gpu/drm/i915/intel_lpe_audio.c:342: warning: No
description found for parameter 'pipe'.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
 drivers/gpu/drm/i915/intel_lpe_audio.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/intel_lpe_audio.c b/drivers/gpu/drm/i915/intel_lpe_audio.c
index 7a5b41b..d8ca187 100644
--- a/drivers/gpu/drm/i915/intel_lpe_audio.c
+++ b/drivers/gpu/drm/i915/intel_lpe_audio.c
@@ -331,6 +331,7 @@ void intel_lpe_audio_teardown(struct drm_i915_private *dev_priv)
  * audio driver and i915
  * @dev_priv: the i915 drm device private data
  * @eld : ELD data
+ * @pipe: pipe id
  * @port: port id
  * @tmds_clk_speed: tmds clock frequency in Hz
  *
-- 
2.9.3


