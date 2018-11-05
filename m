X-GM-THRID: 6620513084586852352
X-Received: by 2002:a50:cb87:: with SMTP id k7-v6mr3867276edi.1.1541458322083;
        Mon, 05 Nov 2018 14:52:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:66c1:: with SMTP id k1-v6ls811574ejp.7.gmail; Mon,
 05 Nov 2018 14:52:01 -0800 (PST)
X-Google-Smtp-Source: AJdET5ctgYTI9AG6gnnR6kxUW+bxMkYo3/UpFXzilm52fLbTsIW82XCbQm9EJ6J8IXdhE+f8dkG5
X-Received: by 2002:a17:906:328b:: with SMTP id 11-v6mr2800874ejw.14.1541458321120;
        Mon, 05 Nov 2018 14:52:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541458321; cv=none;
        d=google.com; s=arc-20160816;
        b=Fj7q/kEoA/q2Kcb2zJBA2QnmU7Tx5HCUoqtu8Mu3TUqj2t70TyMm2c07G3KlstIUu6
         F3jJGXuXr/xxKpcLj5lUhJd/XCOFJP2zZaeg86QClvwJP2+U9XhwUcOyjIZXvGn3CDGg
         zF/tQQuVG6lFnVXDFV/lqBSVNGunut3UqYW9mDY/nApwai4jnDrDB7rt/J2AE4YUEttB
         dHUR+hO2ce+ht27PVVIboi+lZJFTBZmEDTdohS6QkcVHXVEEvk31gjZosvVxNB9tC+0f
         sOV13dlsSRXgno20sCROGew8jfkPLP8YVK9qB/1yVyRw4sr2u9p7RUM/Si8TBq8eU/Xm
         6fIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=4UfQMuXz12XAEfPyxCrxXrCVZ5PYIyhMf7TdXah5gkw=;
        b=FFLgW4yMCTrxQzrirCkTO/AX2YZVM4yRycnv0vOmr04puSVB14FxG3sysbUhTxhzsS
         DwLR69cGfYESnS3yVnFobee2hGTrQnT7HBiFzpUFu5U6XYTEj8uFTM/cLaGvqm4hk0RS
         yB6CqsR/FVWJZtarELh5580jQ6LpBgRlINoQFZl9wT3KMiewKs9CtHzpcSOY3MSpyVpe
         tpugJaUxhBac0ZvdMi6qY6soMCqViPK0Na7k75bzs1hdFapZM/PyJgiuDd5kPxYn4Hu9
         T3i5EToYbGMV+5fYfmC0q5v2tJzCvW9I+hSD9VWKsVTS252XmKUSR1CetepZKHM4UcNZ
         naIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CthBM1bj;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id a35-v6si353340edd.1.2018.11.05.14.52.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 14:52:01 -0800 (PST)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CthBM1bj;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x343.google.com with SMTP id b203-v6so9679437wme.5
        for <outreachy-kernel@googlegroups.com>; Mon, 05 Nov 2018 14:52:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=4UfQMuXz12XAEfPyxCrxXrCVZ5PYIyhMf7TdXah5gkw=;
        b=CthBM1bjXInxpoWCMS7yrtUbzqhEMq2dh9sjuCegei++iA9IutPIWI1QJEcoyccfBW
         JyLbrxPtueyP9R7Sfq3wi1FPq9+dAbG0CSwo6N//HlM61fR8dOF3JGUNBTX+6OKZasS0
         kuk5nypNC/hXl3visBRG4sjYconuzaxSBZ63b72WMwbRthbp76YBlcVPV+tmAknUJItx
         E/yqm0uErP+IEGLPd3RtV5OG5B5MbUfkHZanDeNKwb6HH/bbljSlGtK/w6mAK2R2OHus
         Rt7Ezs9JJ5mFhafLZ191ahhKn1vzFqYaDUQeuP4gtcT+ftXHHeKOi93LClwGc5K62Soq
         WF9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=4UfQMuXz12XAEfPyxCrxXrCVZ5PYIyhMf7TdXah5gkw=;
        b=tRNPcKCzKkba9k8IZ2O19nu6W2aJZpPK+VzTDE98AfnoRlvJqe9azfI0eN5AYafIbw
         rcOap2mmAxPtw4aui3CQxKTsR3EUovyjofv0xIi5/JgCAiXAqL5UaLj5xgCaUOemHUKS
         qa80AwAehrZtFRcnZdjO9uVmfBMfHWcCZUb5zUrp/J6e/3/Tyh7WfxiLqTmCtmXFdHy2
         oFnbBcXaxrEng2YmXerqgQLf/qiLTG22quoa7jFZCpUR7Yss/IPof95M25ZqQikRCi3a
         drzlvroXa9oCacJBu9+WWAdOuHVmaeK6eRXBnkgyXcQ/MyiFjD09qFBE5tO9iBqvVmXT
         Tl8g==
X-Gm-Message-State: AGRZ1gL2zzax1sYMXep+rCOIAKhdJ7/B8RBdY5tdBgTUAgxkmD75RuJG
	U1/3AJmuXW9XUOwXZugB4g==
X-Received: by 2002:a1c:9ed2:: with SMTP id h201-v6mr43538wme.31.1541458320321;
        Mon, 05 Nov 2018 14:52:00 -0800 (PST)
Return-Path: <jbi.octave@gmail.com>
Received: from localhost.localdomain (cpc114784-brad22-2-0-cust310.17-1.cable.virginm.net. [92.239.7.55])
        by smtp.gmail.com with ESMTPSA id x8-v6sm106139903wrd.54.2018.11.05.14.51.59
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 05 Nov 2018 14:51:59 -0800 (PST)
From: Irenge Jules Bashizi <jbi.octave@gmail.com>
To: mchehab@kernel.org
Cc: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com,
	Irenge Jules Bashizi <jbi.octave@gmail.com>
Subject: [PATCH] staging: davinci_vpfe: Add spdx license identifier
Date: Mon,  5 Nov 2018 22:51:46 +0000
Message-Id: <20181105225146.27284-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.17.2

Add spdx license identifier to fix all warnings of malformed license.

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


