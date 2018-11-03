X-GM-THRID: 6619753207840112640
X-Received: by 2002:adf:8b56:: with SMTP id v22-v6mr1643356wra.6.1541284869553;
        Sat, 03 Nov 2018 15:41:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:d3:: with SMTP id 202-v6ls613351wma.15.gmail; Sat, 03
 Nov 2018 15:41:08 -0700 (PDT)
X-Google-Smtp-Source: AJdET5cyt1vCGycBCd+hGfubs6yif7ZSnWcM3aecNEuI+2cxqWUu1DmdL0efkyr2ppz6q7A16rkI
X-Received: by 2002:a1c:84cd:: with SMTP id g196-v6mr240594wmd.3.1541284868454;
        Sat, 03 Nov 2018 15:41:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1541284868; cv=none;
        d=google.com; s=arc-20160816;
        b=TqVPNubhbnuwYGjXbMxj99WoiQU0v1gbjY346EKM6oGPJ6GSulZJVsvzf72t46PFB1
         m4RV1VPAgygGUxRJLnPXOibsBQn8AAwchA3uq2H3MiVi0THvp29/ZFwq20MNIKUee770
         oRy4G5cRkqgkUDkDlrTz4eykFkv7lwWh867wu6B4AODn2KoZgyFpQ6I+wItdnDTJ8VJd
         lGZ3t+Mf5MwJrTqlj732ZVfPJtAtOSwo/EM+ozYwnXgOvMYcTovJdS8t1XYKB+/OrnG1
         JouwWiCULQm0PXwCk9M9zjPPX6XiVdei2h3taXVK+2Mbj5nXIbKybn8oIKBOabynuIyX
         62Uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=WZWc/gthIzlooiY6c3f0/GloSACWEnzvuYp6zeQ8r+4=;
        b=UDSr3mY6ES8J5610YDjqMBgbbB0+KLE7kV+DT3VPLfYGLvFQAscvLijXLd30tlWKcT
         J3UH/11FEqZcyMzSpqybrRp8PfIsuQgrIOY6aPwwrK6juU+QtveuFbqBf56TKePmqSi4
         Nr08ZTTrLY+LS9C66kafRhdM8rPm78IvqW62ShgXytgbSil1/S7hEtpn+plsu2uENrLH
         y7c5jyOqL9iJHK70o5FMkE9R5fGcO2JcUY5oCJzyfv4fk/3I/rEJqwfbFHV32lf0C6yw
         5LSUGltOjp9RPaed/0w4I0rxj3KWL/L0qzn1oWliYzDdrYkzsUpg0nq9delGNfJzsvuX
         p6Qw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=d2AsNw+X;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id z139-v6si599666wmc.0.2018.11.03.15.41.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Nov 2018 15:41:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=d2AsNw+X;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x342.google.com with SMTP id q19-v6so4880824wmc.2
        for <outreachy-kernel@googlegroups.com>; Sat, 03 Nov 2018 15:41:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=WZWc/gthIzlooiY6c3f0/GloSACWEnzvuYp6zeQ8r+4=;
        b=d2AsNw+XGbswbkgZq48wSKyuDjvDE/elFde+R0WiJTuQ2I2X8BXXcywt8wk+Ziai1g
         aY2A1MxKS/Ugh2aUjP7qrzAC7pblCJJE1IhflD+nR1mIsPLkINzEllMJiDbr9a4hcpZu
         9diDqbq0HvDv6NqYFyeirIqt9Zd81gdA7ab8JU1+j3SLHER2ZEdKM31AKRRg23xbiwHy
         DzDE0NHUT/ZS+3tCqZyeTiaFWU+cPEs9U6Dh8GzUDhPI22rFeioZsEWSPdGVMKdQ/PfI
         QHl059oLEzcEYEqAS+VLp2hsAgWqkKugFsKf67qWdWRi28M6c26Ns0qmjKLtwLcNQHpn
         wxPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=WZWc/gthIzlooiY6c3f0/GloSACWEnzvuYp6zeQ8r+4=;
        b=sfSSu6nRiLgAc2M4HReIFhqG7d1+/c5/SPB/7+3dXPAKNnWHw0NwO3V7dO98SVL4Bz
         dmqWt67hQMbSwmmEo7CQSkOdj4VvJLMRF4NRvvznmWiDLLlTosSwngYFoJ+yJMWf03Hw
         7h7LFq3SoR454y0OsPTbO+/e4molMVlnT56pPiUbiiK39lPaM5wi94OvlAs+a6PET8tm
         en42rjtCTKFIp1PzQW3ck4MNt86m8B0IU9DLV1OoYLZY6eGLHXBXk2vdkBWoWpUPT5mU
         mIAxbrCBKCMvfF/9M6HaUc0h7uo40s4kZ1BczvwTifCd4AM/SErK+au+BPf9Burr+iY/
         afXw==
X-Gm-Message-State: AGRZ1gLcti1dLjgOi9lCiLESThFVavWZrcYFbsk2opHL8vetcb4xLVqP
	sGDlCmTqVvycA3DY6CcJFigBXDn+YA==
X-Received: by 2002:a1c:60c2:: with SMTP id u185-v6mr1854247wmb.80.1541284867726;
        Sat, 03 Nov 2018 15:41:07 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from localhost.localdomain (cpc114784-brad22-2-0-cust310.17-1.cable.virginm.net. [92.239.7.55])
        by smtp.googlemail.com with ESMTPSA id h16-v6sm7507330wrb.73.2018.11.03.15.41.06
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 03 Nov 2018 15:41:06 -0700 (PDT)
From: Irenge Jules Bashizi <jbi.octave@gmail.com>
To: mchehab@kernel.org
Cc: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com,
	jules.octave@outlook.com,
	julia.lawall@lip6.fr
Subject: [PATCH] staging: davinci_vpfe: add spdx license identifier
Date: Sat,  3 Nov 2018 22:40:58 +0000
Message-Id: <20181103224058.19568-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.17.2

 add spdx license identifier to fix

all multiple warnings of missing or malformed license

Signed-off-by: Irenge Jules Bashizi <jbi.octave@gmail.com>
---
 drivers/staging/media/davinci_vpfe/dm365_ipipe.h     | 1 +
 drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.h  | 1 +
 drivers/staging/media/davinci_vpfe/dm365_ipipeif.c   | 1 +
 drivers/staging/media/davinci_vpfe/dm365_ipipeif.h   | 1 +
 drivers/staging/media/davinci_vpfe/dm365_isif.h      | 1 +
 drivers/staging/media/davinci_vpfe/dm365_isif_regs.h | 1 +
 drivers/staging/media/davinci_vpfe/dm365_resizer.c   | 1 +
 drivers/staging/media/davinci_vpfe/dm365_resizer.h   | 1 +
 drivers/staging/media/davinci_vpfe/vpfe.h            | 1 +
 drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c | 1 +
 drivers/staging/media/davinci_vpfe/vpfe_mc_capture.h | 1 +
 drivers/staging/media/davinci_vpfe/vpfe_video.c      | 1 +
 drivers/staging/media/davinci_vpfe/vpfe_video.h      | 1 +
 13 files changed, 13 insertions(+)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.h b/drivers/staging/media/davinci_vpfe/dm365_ipipe.h
index d81b29e19309..4bacac9b5be8 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.h
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0*/
 /*
  * Copyright (C) 2012 Texas Instruments Inc
  *
diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.h b/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.h
index 7ee157233047..4728aff84480 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.h
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0*/
 /*
  * Copyright (C) 2012 Texas Instruments Inc
  *
diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
index a53231b08d30..24bb1e93af23 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2012 Texas Instruments Inc
  *
diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h
index cea3d61335af..3754a32957c2 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0*/
 /*
  * Copyright (C) 2012 Texas Instruments Inc
  *
diff --git a/drivers/staging/media/davinci_vpfe/dm365_isif.h b/drivers/staging/media/davinci_vpfe/dm365_isif.h
index 89e814e9c0d7..732da81a1552 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_isif.h
+++ b/drivers/staging/media/davinci_vpfe/dm365_isif.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0*/
 /*
  * Copyright (C) 2012 Texas Instruments Inc
  *
diff --git a/drivers/staging/media/davinci_vpfe/dm365_isif_regs.h b/drivers/staging/media/davinci_vpfe/dm365_isif_regs.h
index 64fbb459baa2..915a05baa7ab 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_isif_regs.h
+++ b/drivers/staging/media/davinci_vpfe/dm365_isif_regs.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0*/
 /*
  * Copyright (C) 2012 Texas Instruments Inc
  *
diff --git a/drivers/staging/media/davinci_vpfe/dm365_resizer.c b/drivers/staging/media/davinci_vpfe/dm365_resizer.c
index 72bbbc34d18c..ca1ddae50c22 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_resizer.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_resizer.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2012 Texas Instruments Inc
  *
diff --git a/drivers/staging/media/davinci_vpfe/dm365_resizer.h b/drivers/staging/media/davinci_vpfe/dm365_resizer.h
index cf560a33d862..17eba2e35f23 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_resizer.h
+++ b/drivers/staging/media/davinci_vpfe/dm365_resizer.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0*/
 /*
  * Copyright (C) 2012 Texas Instruments Inc
  *
diff --git a/drivers/staging/media/davinci_vpfe/vpfe.h b/drivers/staging/media/davinci_vpfe/vpfe.h
index 0587bc52a840..2e03b95b937f 100644
--- a/drivers/staging/media/davinci_vpfe/vpfe.h
+++ b/drivers/staging/media/davinci_vpfe/vpfe.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0*/
 /*
  * Copyright (C) 2012 Texas Instruments Inc
  *
diff --git a/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c b/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c
index bdf6ee5ad96c..da2b5dcbd269 100644
--- a/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c
+++ b/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2012 Texas Instruments Inc
  *
diff --git a/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.h b/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.h
index 8ad8d743f4e0..f232acc3e238 100644
--- a/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.h
+++ b/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0*/
 /*
  * Copyright (C) 2012 Texas Instruments Inc
  *
diff --git a/drivers/staging/media/davinci_vpfe/vpfe_video.c b/drivers/staging/media/davinci_vpfe/vpfe_video.c
index 5e42490331b7..fc73b8f8dd9d 100644
--- a/drivers/staging/media/davinci_vpfe/vpfe_video.c
+++ b/drivers/staging/media/davinci_vpfe/vpfe_video.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2012 Texas Instruments Inc
  *
diff --git a/drivers/staging/media/davinci_vpfe/vpfe_video.h b/drivers/staging/media/davinci_vpfe/vpfe_video.h
index 4bbd219e8329..2be00e782505 100644
--- a/drivers/staging/media/davinci_vpfe/vpfe_video.h
+++ b/drivers/staging/media/davinci_vpfe/vpfe_video.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0*/
 /*
  * Copyright (C) 2012 Texas Instruments Inc
  *
-- 
2.17.2


