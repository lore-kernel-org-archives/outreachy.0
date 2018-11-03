X-GM-THRID: 6619753207840112640
X-Received: by 2002:a2e:9d4b:: with SMTP id y11-v6mr1450720ljj.20.1541281400583;
        Sat, 03 Nov 2018 14:43:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:2d4f:: with SMTP id t15ls1617702lft.2.gmail; Sat, 03 Nov
 2018 14:43:19 -0700 (PDT)
X-Google-Smtp-Source: AJdET5cgZbOeYTkeBj4Cd2NkqoV0GWz2jJRtKIuoXfWpIlhBr3ravsmLSnrqXL1g5XNmGRU8OrWm
X-Received: by 2002:ac2:4187:: with SMTP id z7-v6mr385202lfh.0.1541281399380;
        Sat, 03 Nov 2018 14:43:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1541281399; cv=none;
        d=google.com; s=arc-20160816;
        b=VwZyHaY7Kw+HEYHeFMKb/UbCsIcG3mV7DUEsYFKkX47796pM4w4Bg5lMB3L+49DpFi
         zusQk01tsjacjMaGLiuljiBsu7Jmk2doxiCOgwPbtWBwDjo6c5jKk/ifckT3WVKdRMuH
         yP5X8PWXMNtsBbw+JxH0GAWDdnvW7SkMLN9yqskVfw33pH7pDqvd0L1k8qMvaPtm/JAu
         fuD9acOtSXZUo3qhkjp2bDdEqJ+FrwVIfcO8A9naG7zEOR3VsusY+TUWch0ZH8JXc7rd
         nHOhVCuqtgabTWoWY6kXmbTWa1TKvFTKSfAtaKczSb88B7Mp84daXi78LH8DH+jpY/HY
         zfdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=pHrksJBGPzjmFXyjDw5MR3OEMffYoA+k6DB8LtEEN5Y=;
        b=WMw8pfMaIKreJnFYOlE34xA4TGtVd72IgEbW71eQS40rbmRP8q+XGBM4CKpuDXlYWu
         J7MCUuLXSnekP0/WlcWKmLRKG/SkqpTgzOoAqAdetGtHm6e4y8fo1RscG8rLzYCNa6O3
         l1ZUv/ICDzm0JKprXYwJe0PD4mOG0xoElpk4+9xRHeXk/S3+jQYq8Flhh0i9/9Ar3uzq
         4eRO5cnLfEwJcKhUO1hs8gPImRXxst445FzkCRC1k/qEvbrwveky/Ioj6c8Fv26wY3pM
         BPNGxYMQ3a379K2aVyYNbHgdhwYLDrgKEkgzaSaCucFCoyupWNXz3654gjKcR3BE2o77
         5ncA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kmPgFOxL;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id y12-v6si469750lfh.4.2018.11.03.14.43.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Nov 2018 14:43:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kmPgFOxL;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x441.google.com with SMTP id r10-v6so5416211wrv.6
        for <outreachy-kernel@googlegroups.com>; Sat, 03 Nov 2018 14:43:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=pHrksJBGPzjmFXyjDw5MR3OEMffYoA+k6DB8LtEEN5Y=;
        b=kmPgFOxLhtXYv8TKn4VSfJW7Qk4FlwVsU1eAFZM3l4WmnO0bCpZckn3cMSlYVYj0D3
         NT5FPWVgftwLzJJT1fr4Snki8sX5yu0DdQXdSwsjC+zz8Gz7ioAnykz4cLrEHhqLtvGQ
         NgkHqWXMKW+e4Gm+8cf2j8dctgyUuRbC4YO8CSiRQWIF5uW3tw4E1J8Q60AkKRhAgJGo
         2Mt7xKJ7sDIC+zO3KXrOi2Foo4GsJ0FJ4DAWOGdbK8nxcJsbqlrP42u+1X/ycZJyYtXd
         KftD9SM7ag4OnCFulUB12Wf9w2gbOui4Di95Qv8eJmezA61DlllCeyyG9MTaJaUYj+ue
         5mKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=pHrksJBGPzjmFXyjDw5MR3OEMffYoA+k6DB8LtEEN5Y=;
        b=PHY5A8H1A5uI0Xz8Xo1Mq25IJYdy8Z/WtHKaziO8viAvnNV9LkgD/YHmd63bd1dOF/
         tDCRgkAhdogTd5A3LSsOJbT3ri5z3ugvFyLD75bpSsZ+SEq9S05Weh2Wsq5pIuDoZWat
         PTCqJBcMjFEDboBfGJ7UJ5Abt/WzqhvYTmkVwmm6pajRpOci+bfBMZYuT+KOxlA6BekI
         WWNIfftJf8wjYPbdD1et6/8uRWYsK9pJ9jrbb6+Soujix3eRl2PG6QdJCIJ55LEmi91Q
         kJUGOWrnQZtGG5DAUtBbDZIunh8uB4skBgzeKyaB9xbahku/4vhblg6/lDXaZco5JNvd
         xnyw==
X-Gm-Message-State: AGRZ1gJcEwZB+RCw4x16F+Vvg6UT8aoz5WyY8ogqQYK9OkDZ8Feftd70
	KV65r1Susnb5g6rm5B8laGBichTMWA==
X-Received: by 2002:a5d:4012:: with SMTP id n18-v6mr14097596wrp.185.1541281398627;
        Sat, 03 Nov 2018 14:43:18 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from localhost.localdomain (cpc114784-brad22-2-0-cust310.17-1.cable.virginm.net. [92.239.7.55])
        by smtp.googlemail.com with ESMTPSA id p16-v6sm6496481wro.29.2018.11.03.14.43.17
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 03 Nov 2018 14:43:17 -0700 (PDT)
From: Irenge Jules Bashizi <jbi.octave@gmail.com>
To: mchehab@kernel.org
Cc: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com,
	jules.octave@outlook.com
Subject: [PATCH] staging: davinci_vpfe: add spdx license identifier
Date: Sat,  3 Nov 2018 21:43:10 +0000
Message-Id: <20181103214310.15930-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.17.2

add spdx license identifier to fix

checkpatch malformed missing license warnings

Signed-off-by: Irenge Jules Bashizi <jbi.octave@gmail.com>
---
 drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h | 1 +
 drivers/staging/media/davinci_vpfe/dm365_ipipe.c       | 1 +
 2 files changed, 2 insertions(+)

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
index dcfeac818451..85151113ca91 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2012 Texas Instruments Inc
  *
-- 
2.17.2


