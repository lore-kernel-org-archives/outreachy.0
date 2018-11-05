X-GM-THRID: 6619753207840112640
X-Received: by 2002:a19:9652:: with SMTP id y79mr1761012lfd.8.1541456801334;
        Mon, 05 Nov 2018 14:26:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:5914:: with SMTP id n20-v6ls1913839lfb.25.gmail; Mon, 05
 Nov 2018 14:26:39 -0800 (PST)
X-Google-Smtp-Source: AJdET5e5HmbfKH5chImB8BFEddvewCIkut+LL9lKFSib1DLFFjHFd/nIPUY3Efz1uBU4b6kVmCbM
X-Received: by 2002:a19:5619:: with SMTP id k25-v6mr1854017lfb.12.1541456799900;
        Mon, 05 Nov 2018 14:26:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541456799; cv=none;
        d=google.com; s=arc-20160816;
        b=vTDUmIclS6CP6aqfVaI8CfBcdsjfU0OBLdpk3u6IjBdpi5VEJHAnDm7LvGQbNOx2II
         C6K0TA/y72w8cUlzgFMVtGma6g6kdW6R7IPQ/FHxFTWOlomUxmxWGoH4runMK9cLPUfk
         u1NXiHpJPxaoGkEL/wC4IxgdPZzCzwtX/oHCLXhZscatWY7zFclwCFysuWwr9q8iDeYN
         sESpx9/rHXB5w7U8NKF+MqE1vfKtH7eHkI1cEKq/nxz+s/rl/ZimfwvzTxjZHqm7VI44
         oNy0YCrvZRvX/z8E2bvtQ/7Wnpj2s6Vb1e7Tf5NKlOkC/dngthcCnegUD9N77ZoZQl39
         IM+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=BBc+B2lDuRhWuPohvyeUldze/HCLEjvb9yT+8Cnylws=;
        b=j259HElPLqKv7+fBOflVxVA7WqkfnMI9EYYWCpqg1o4oDZyqAVbVpcRFSNaAuNFtYF
         iZZPaDhFys/JYyoiq+xr3SZ7JQqelW00v5tdnOPLrBMV7+0SM9zUAjp7EBASbiUNCpJY
         /Kn+/EDZ5pjuE6PCtUjrUi5F5BK0bboKwaBJB5i+IfdM9rLQ3d3fLKrIvrKcQ9tncNnw
         W0UVRq40sVif4VKxMjWLarSDFlNPjJb653t2+tS4eQqhELehsHdGd2VBzFE85apliRZ7
         MI3wcELdl9XpkHUcnMMneWNNdLI0mSCdL3L0YjwWzzgWzCYkz1ZChJDr8wzbrwg9SgVH
         8nzw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NJSgOTkt;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id y27si61806lfb.0.2018.11.05.14.26.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 14:26:39 -0800 (PST)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NJSgOTkt;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x443.google.com with SMTP id z13-v6so8918142wrs.3
        for <outreachy-kernel@googlegroups.com>; Mon, 05 Nov 2018 14:26:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=BBc+B2lDuRhWuPohvyeUldze/HCLEjvb9yT+8Cnylws=;
        b=NJSgOTktVCArbQUyo7ZVNArMOEGsSatvkb4y/9AuRcjTBAFhc/yLqE5JMPdREPhOGM
         ET3maNu0ZfalUyPArkzDmx1odfd6Gctc0s/SB8xFHzLdQtzVacIvnRONHBewZ8wIBbND
         /KXGBy8sPC9SqIKGWBQtHh+/TzUiGy7yY2Ebnl641x/d+3s0t/+NM1PvmgMRxUBWQX2S
         3s4mBOjbxonSyqLTVsqc7IOgR6+xgHzAhGZO/R0K9fkF39/VMQxHQLKLzTQXTQAmzy9a
         WAlHokbt4D66jQvrMnhKk5ZVPKt2ByqdVbIBllEVwW7DjIvST3dPcA2hrDi7VLaIQ+49
         Bh9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=BBc+B2lDuRhWuPohvyeUldze/HCLEjvb9yT+8Cnylws=;
        b=IrCbAOqk/7N3oTdspk12gIIL6ny3Aix5awUeKBbTPhX2VOE2GEu0xySSTCY26CIlob
         2fKZfcqxvjQonrUggxu01+qMK0YB2h8AVpuA8QhFHY2KQaTgn9c+4P0NyXEN90NaByko
         vonxFRMlsGQ6C1GoiL9suKgw/XisPMFrinQff69pga3eWeSqXN+xvMsxxd4MT/hEWz/Y
         68PInIQ0+uZnf7+Bk8Kf7a2O3gYc6DYS7NENZfQmRTzPULQtr6crqhaHNHk4I5qf6tJT
         Zxt5E5ZjDngbKqzoGaZTi+7Ix5gRXpsHnA+txelAixgwqc/O5EvMCJBRWsRey/V0+pUu
         04xA==
X-Gm-Message-State: AGRZ1gL3R7B1de2FXYT1MnKbrjp3xJQCBUuEkIOtvJwxro5/WMrrkWje
	SXAkZQJrCYP1II1qMMvy+Q==
X-Received: by 2002:adf:9b84:: with SMTP id d4-v6mr19818510wrc.240.1541456799003;
        Mon, 05 Nov 2018 14:26:39 -0800 (PST)
Return-Path: <jbi.octave@gmail.com>
Received: from localhost.localdomain (cpc114784-brad22-2-0-cust310.17-1.cable.virginm.net. [92.239.7.55])
        by smtp.gmail.com with ESMTPSA id o18-v6sm6636344wrp.31.2018.11.05.14.26.38
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 05 Nov 2018 14:26:38 -0800 (PST)
From: Irenge Jules Bashizi <jbi.octave@gmail.com>
To: mchehab@kernel.org
Cc: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com,
	Irenge Jules Bashizi <jbi.octave@gmail.com>
Subject: [PATCH] staging: davinci_vpfe: add spdx license identifier
Date: Mon,  5 Nov 2018 22:26:27 +0000
Message-Id: <20181105222627.15162-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.17.2

add spdx license to fix  all warnings of missing or malformed license

Signed-off-by: Irenge Jules Bashizi <jbi.octave@gmail.com>
---
 drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h  | 1 +
 drivers/staging/media/davinci_vpfe/dm365_ipipe.c        | 1 +
 drivers/staging/media/davinci_vpfe/dm365_ipipe.h        | 1 +
 drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.c     | 1 +
 drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.h     | 1 +
 drivers/staging/media/davinci_vpfe/dm365_ipipeif.c      | 1 +
 drivers/staging/media/davinci_vpfe/dm365_ipipeif.h      | 1 +
 drivers/staging/media/davinci_vpfe/dm365_ipipeif_user.h | 1 +
 drivers/staging/media/davinci_vpfe/dm365_isif.c         | 1 +
 drivers/staging/media/davinci_vpfe/dm365_isif.h         | 1 +
 drivers/staging/media/davinci_vpfe/dm365_isif_regs.h    | 1 +
 drivers/staging/media/davinci_vpfe/dm365_resizer.c      | 1 +
 drivers/staging/media/davinci_vpfe/dm365_resizer.h      | 1 +
 drivers/staging/media/davinci_vpfe/vpfe.h               | 1 +
 drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c    | 1 +
 drivers/staging/media/davinci_vpfe/vpfe_mc_capture.h    | 1 +
 drivers/staging/media/davinci_vpfe/vpfe_video.c         | 1 +
 drivers/staging/media/davinci_vpfe/vpfe_video.h         | 1 +
 18 files changed, 18 insertions(+)

diff --git a/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h b/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h
index 7cc115c9ebe6..69594bb70a2b 100644
--- a/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h
+++ b/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2012 Texas Instruments Inc
  *
diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
index 30cb98d48565..1419c6b9a270 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2012 Texas Instruments Inc
  *
diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.h b/drivers/staging/media/davinci_vpfe/dm365_ipipe.h
index d81b29e19309..39bd29a3aa89 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.h
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2012 Texas Instruments Inc
  *
diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.c b/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.c
index dbb7ddc70bef..76d1d0fe982c 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
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
index cea3d61335af..a27b76fb593c 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2012 Texas Instruments Inc
  *
diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipeif_user.h b/drivers/staging/media/davinci_vpfe/dm365_ipipeif_user.h
index e2a69b59554a..0296ef5a1116 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipeif_user.h
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipeif_user.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0*/
 /*
  * Copyright (C) 2012 Texas Instruments Inc
  *
diff --git a/drivers/staging/media/davinci_vpfe/dm365_isif.c b/drivers/staging/media/davinci_vpfe/dm365_isif.c
index 39eb0819ab4e..728a443ea60d 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_isif.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_isif.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
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
index 5e9769ea8a50..204bc238d67b 100644
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


