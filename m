X-GM-THRID: 6661965770833002496
X-Received: by 2002:a1c:9c93:: with SMTP id f141mr1084504wme.10.1551109778449;
        Mon, 25 Feb 2019 07:49:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:4c47:: with SMTP id n7ls1195052wrt.11.gmail; Mon, 25 Feb
 2019 07:49:37 -0800 (PST)
X-Google-Smtp-Source: AHgI3IZCKM7Q5zkUAfIJr3lesZbJPKX02UBAGN5A1clG3tnA4J1CnwrWcSKulg4sQbEfXNuTkL17
X-Received: by 2002:a05:6000:1ce:: with SMTP id t14mr953093wrx.29.1551109777491;
        Mon, 25 Feb 2019 07:49:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551109777; cv=none;
        d=google.com; s=arc-20160816;
        b=nLSNZODc+bvumsL6HOMmeFxBmmunWKCKkTMPfMZ2Y7pzgDYbK/XdEJBkBUCSKb9wWE
         1x8FhavL8JyvegdGZIqqbpDONuMbFN/NjCa5ndhTvEK/q+aTpeplcZZXxJG/kZksvqFU
         582GUF/x9410Tv0zTBNaVixf7D7pc2KNYAk2+mwE9PrrIzzZaxyLA+o7T1l75x+E7I0O
         00SCIrAjcdim5zILBH/AvOQoucCNoSz+LqBu0hVjSdk7nKfuKzNhB6hOxAelCTv2gWS+
         FzbKDvlApslg9LzKYLLvSRbmGdbb80D6sTFylyV4Pgc30DAHPLiwBcmyxfxS36t3O4gL
         cthg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=VqIAv1RQeaZBWfQdb6JrxBG7jzghpAkP77DqQpz4xNk=;
        b=tGAQLOQhWKS6xCBhhIwzqY13JmTOloBc3uF8s+9FwtK1dbGNIWNdzrCeQWd/f00AoY
         mAVOdC1TKpvVHqQHCXqtY9/ygyP9wyRzyGlhJMXhI/u432El2QPIjSgtobAl18c7T9tL
         Ucknh4Fkae2crVUr9kQJiIo3LMTF4L++s0cR8PabkY7/D79R3+b0JohrHZ2bwV9EH5Uk
         7U20a1SOyfGfzk/wIZ+ue6nr5Vzv6iqvJEcbsOUiOqW2gQpGR7KBGmpLEhQh6FsNSb1p
         NKsjFUqwDoEmYBKFuupuDitl/2JFkWLB9tT9gL/PoR1baeVh+tSKMwZNQ/9uqnKNhgnr
         qpAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jeXcwtEL;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::32d as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com. [2a00:1450:4864:20::32d])
        by gmr-mx.google.com with ESMTPS id t22si459800wmj.2.2019.02.25.07.49.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 07:49:37 -0800 (PST)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::32d as permitted sender) client-ip=2a00:1450:4864:20::32d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jeXcwtEL;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::32d as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x32d.google.com with SMTP id v26so8547970wmh.3
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Feb 2019 07:49:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=VqIAv1RQeaZBWfQdb6JrxBG7jzghpAkP77DqQpz4xNk=;
        b=jeXcwtELxku5B2D4XgcIVmJQKrCjBdF10XrYrZWu2fJ1UaU4YJbaIy4rHErkI9yOPs
         O05Ee31l5hphFe2uLvEqMaV5cB4Hl6LzgiW0Hn9mVeCfAJ2EMSDlx2rrpksp7gr05+Dv
         GFyrNuIChZJuQENTY0AWcMGUu+qVKTj7aid8LRgDUFkdgMxGo9VWY1I2hN22bo3SaB3p
         7roJLoka6MARSgyHimBQ3cLCgliAOuJu/tnQ0EGiv7Ih+zsRXZoWz4N3pcVsqtLXmWYJ
         v+mQGQBxHR9ycY3JPfMWzeiHmDyD1kVvPonsP6Oa7SRTncqjbazJtRXn8F/PNGKN/JSM
         YFLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=VqIAv1RQeaZBWfQdb6JrxBG7jzghpAkP77DqQpz4xNk=;
        b=gx4OPrw4lAX1Bpmn0PP+neHCa3pu6FPbzvGr6vQBuUdeomEDy+KkoEJT1NByuOO8CN
         QwoaFEuNVrAou8rA3N+c2t7L2QHIND/ek5aGPexZqYuMvEKy3PWOMpoCI1R3QOnys3xI
         tbwJaX28JrwMRpqkOBGhPQGJeUYDSVytqbeISHor6Cw6dFLsRhZc43NyAa1Ls+jlrdMS
         H5Y9jN+DxHX5/hoLLM8EMaiXM5Af3IAV3hSFJeMWXfQCGWhiQpuXP2WPnRp4IodJuIxI
         o8UVz8k8SIQexyTPhArAUr4gqgIuNVR5/gJddmPlN720LSPZKujx1lntrRjXIXPlX68U
         zz/w==
X-Gm-Message-State: AHQUAuaa1+PI95PSCpVJgedABERJ5ZMPE8aFjsd52MQC7GbE1J/lxVSA
	rJrvwTWxyuCkmZ3a25HRgw==
X-Received: by 2002:a1c:7809:: with SMTP id t9mr10701608wmc.78.1551109777015;
        Mon, 25 Feb 2019 07:49:37 -0800 (PST)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjatsu.public.libraries.mcc ([91.235.65.22])
        by smtp.gmail.com with ESMTPSA id t2sm8326954wmi.37.2019.02.25.07.49.36
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 25 Feb 2019 07:49:36 -0800 (PST)
From: Jules Irenge <jbi.octave@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Jules Irenge <jbi.octave@gmail.com>
Subject: [PATCH] staging: mt7621-eth: add SPDX GPL-2.0 license identifier
Date: Mon, 25 Feb 2019 15:48:57 +0000
Message-Id: <20190225154857.13368-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

adds SPDX GPL-2.0 license to clear missing or malformed SPDX warning

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/mt7621-eth/ethtool.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/mt7621-eth/ethtool.h b/drivers/staging/mt7621-eth/ethtool.h
index 40b4cf011660..d0e97ae0d82e 100644
--- a/drivers/staging/mt7621-eth/ethtool.h
+++ b/drivers/staging/mt7621-eth/ethtool.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*   This program is free software; you can redistribute it and/or modify
  *   it under the terms of the GNU General Public License as published by
  *   the Free Software Foundation; version 2 of the License
-- 
2.20.1


