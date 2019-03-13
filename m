X-GM-THRID: 6667838029140328448
X-Received: by 2002:a2e:81ce:: with SMTP id s14mr171110ljg.3.1552477020541;
        Wed, 13 Mar 2019 04:37:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:85c6:: with SMTP id h6ls178646ljj.0.gmail; Wed, 13 Mar
 2019 04:36:59 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw4CnTKOtz73jEzxHy6EuHKQHyKChrySyhhzwws14WpyIGuxW7xflqM8b7vnnIybAOs7F4o
X-Received: by 2002:a2e:253:: with SMTP id 80mr2438158ljc.27.1552477019338;
        Wed, 13 Mar 2019 04:36:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552477019; cv=none;
        d=google.com; s=arc-20160816;
        b=vlfIYjXsCXlOxoAy3voJxL/y+1/+StoCb9aKR3E4N6KetyDz9IY4jCICJYSRMAojdB
         rgJ0oICYTmxWwu5Wki4/3JQ3OwdoHSlKB50RU3BPR4aswcM7vMxVqqqmuReM8Hub3AyF
         88wdxVMaw+YsI9nxItNg/XyoR2dqnZrkGx76vrUVt+j5mRf8l9uQ0x1Oi4eDW/sIa2AZ
         cHAshF7KcAKMpn8kaRFl5ujUfUkP59OVBPNelF9QeaNLU9caSQ6qMVZhxqDPTD6OUyDR
         TARseKySZXXD/DC+D8SDWlD5Zw1j4+PXMdzmVHPjxwS13Y2NMiXLvg7zrmMcWkkw4yUG
         g+ZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=GBA6VvfF+Du0ehvzgVMRdAkktTaOAX3Y0CkEAW+/cY0=;
        b=B3sAJ7Zehhjf4Zqi/RgHbvj0ODJzkkDQ/7Yn3McCK0NjmIxIEN/AKM8VCao6Ibka3q
         VkSVyT9yLIArsVd2G8sFppQ6wx0BJ/ekWg401nFyWVDpKS7sZ/+20uJE/T+ZXODfo7zB
         wveHHDC8b2eWeqiMozhHBdGmvRduE5lmiE64iurvqPEdok3D7wT46wusX835Fv12cM7O
         PB/TjsO+k9yX+gb42Sb8tSHXOdyfocciLArrVSmKZGq3RuR5AqiK8cK2YsRdtVUnGgW/
         16Ea6jxLgY4kCeCbIDg0f74XVW1ne7LwnFtODIX6yMLgvOthT+vhcP4TmvHEoZmRcJMG
         XN1Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QoBf72Ke;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::432 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com. [2a00:1450:4864:20::432])
        by gmr-mx.google.com with ESMTPS id s66si245261lje.3.2019.03.13.04.36.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Mar 2019 04:36:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::432 as permitted sender) client-ip=2a00:1450:4864:20::432;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QoBf72Ke;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::432 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x432.google.com with SMTP id 33so1578340wrb.13
        for <outreachy-kernel@googlegroups.com>; Wed, 13 Mar 2019 04:36:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=GBA6VvfF+Du0ehvzgVMRdAkktTaOAX3Y0CkEAW+/cY0=;
        b=QoBf72KeUSTa5wq80q3HEUl5mBc6QiL9gTSDOmXvR/qoUgKD4T0UqdGapzEtV8UkuZ
         2VjuaWquZdDn6ScoypyWRbSyErZB1ZF/KqAMmJTS+EnIW7jea4eCX782PylN2461nkVp
         AP+UhfmUCkcLOP3IoqVHmyGBj3/xciBrTqAus1icm6W+VngSJy4HNhuzmQ9za3OPQoUi
         kHVyqhxShd/ZEqcJxne3SazdeO6bGzv0KtqoF2X5jg/S2TrvW2HIQQJsw6E3vAwL7q3A
         ZOau4wUlub92M9OB9MdJW+d0cymH7Zv9Jti9vpGq9BBGclAHI2RBBlk42N5C+xZCvgC2
         5WXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=GBA6VvfF+Du0ehvzgVMRdAkktTaOAX3Y0CkEAW+/cY0=;
        b=Y4yrKDT3ztpmSZ4uVRMmjiyP4qi4Sg/2BYbjwkVaGKQkck2quVN3goEDl+nBgTBCil
         sYLSPSwHOLvTMErVOnhobltp0dE6TjKQOHoZThr53LWd6zS28OZ7n/4iDs15UcAL0X0q
         LTDDjKa+FOWMXiCyt7gRwj3+0lymaa0hFxH63ZWEzoLpLgBV1nudjmYSYbgaTvR8ZQu1
         u2FgtMuJyH+VNly49abHBqUBZUOy8gUcVHxtV1UN4LruJc4W2kPEr0BTFrBgNCBV10o3
         TZjTNIF2y6GJBk4SFEa+ifcmhhTft8tmeBwGoLQc3tUnBwk6TbEGXJC9D0ACrk1nabW0
         gq7Q==
X-Gm-Message-State: APjAAAW93lcdKfShYlklg2eH1KtB9U9WbHZU/8sAMLxWuPG22hNouIoJ
	5v2RB5Xz7nTu0bBPmHPxMCaumBI=
X-Received: by 2002:a05:6000:92:: with SMTP id m18mr26837913wrx.258.1552477018810;
        Wed, 13 Mar 2019 04:36:58 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from localhost.localdomain (cpc102034-bagu16-2-0-cust471.1-3.cable.virginm.net. [81.97.71.216])
        by smtp.gmail.com with ESMTPSA id n1sm11010375wrw.24.2019.03.13.04.36.58
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 13 Mar 2019 04:36:58 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] staging: rtl8192e: add SPDX GPL-2.0 license identifier
Date: Wed, 13 Mar 2019 11:33:52 +0000
Message-Id: <20190313113353.13024-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the SPDX GPL-2.0 license identifier to fix checkpatch.pl warning
Issue found by checkpatch.pl warning:
"WARNING: Missing or malformed SPDX-License-Identifier tag in line 1"

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/rtl8192e/dot11d.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/rtl8192e/dot11d.c b/drivers/staging/rtl8192e/dot11d.c
index 68f53013cb95..6d57abedaa34 100644
--- a/drivers/staging/rtl8192e/dot11d.c
+++ b/drivers/staging/rtl8192e/dot11d.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /******************************************************************************
  * Copyright(c) 2008 - 2010 Realtek Corporation. All rights reserved.
  *
-- 
2.20.1


