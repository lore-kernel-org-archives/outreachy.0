X-GM-THRID: 6662028123027013632
X-Received: by 2002:a17:906:6dce:: with SMTP id j14mr2097492ejt.4.1551124295367;
        Mon, 25 Feb 2019 11:51:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:e2ca:: with SMTP id gr10ls2780006ejb.6.gmail; Mon,
 25 Feb 2019 11:51:34 -0800 (PST)
X-Google-Smtp-Source: AHgI3IY/nneekeYXmpPyyyI7o5gPbeV27ihf112YwR3xLSgta04EdgZRIkAiTNKDVIOS73z++VnI
X-Received: by 2002:a17:906:6dce:: with SMTP id j14mr2097481ejt.4.1551124294535;
        Mon, 25 Feb 2019 11:51:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551124294; cv=none;
        d=google.com; s=arc-20160816;
        b=s6zmWF0ZgtOhv1tKo4WFP5EZMo/Oicn1MIyzchZyfRWIrYAJJ2QJ90hHnbBnFpL81c
         wCzubQR4WemQbtgNuFglzDCRHBS8C7CVMipA4tSgEOvm80iQv4wPEezghCYLfSp6JNNg
         Nvtp/jb6bxQlfl6kS+vn0806wCQPt4pjBJRsrfuktjS1exCzoS+PXsU0p8b0OAeNaHCt
         jQAoxho08N2BL+UQfX0RXC6Xqz1GYLA7D4fmiLwIWNMSht4yiTNZuF5MjY5JBRxuqitU
         jHhfAE4t+cTd0R4xb/XMJMxG7LljlgjABD7i0ClhtBWrKl8zWpbXpSmKV8prnbOgx92D
         RVMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=I8jhrOAgQYQHbxRMkOpmin2GJLxbGR4aU0mrGaUw0J4=;
        b=RncQWnjXt1AUyzSpCArCuBc0yloD4JX1vfsWBLHx7hYNVUnWUDdbijeccpTcd+oSWY
         Vv3F88ZTjt3b0+DAnTUQjK0lAHk2orRAErJn/mLSIsiX5CeUG2rQcjfuqAI4yPfPy3IR
         +YDoW2NBwkL4/CXRuqHQcG8/GvLZ56CsmnvWa081rmmDEOgNYGeY88gMsgXzsA9GGNp7
         ZJlO4ZXrUdRvN0HdUTjbJ6yd+byk3z5xPQOMJ+9WEF7bgtEdwlrZb+hwIXOt55wfwrTi
         pbfVHmtYX2qayPb0icQ08Hm1LkWaIGroxr3lxIKfYoA5ZiXVs0vBlXBjVLwHegY4AElK
         elHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BhPe9goj;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::330 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com. [2a00:1450:4864:20::330])
        by gmr-mx.google.com with ESMTPS id r37si113477edd.2.2019.02.25.11.51.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 11:51:34 -0800 (PST)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::330 as permitted sender) client-ip=2a00:1450:4864:20::330;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BhPe9goj;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::330 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x330.google.com with SMTP id x10so158323wmg.2
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Feb 2019 11:51:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=I8jhrOAgQYQHbxRMkOpmin2GJLxbGR4aU0mrGaUw0J4=;
        b=BhPe9gojHGMkrnnuvO6Y82IptEj2DdJPmbaHeD+ThKS5gOyvAffyMrqoWqkBF9LbNB
         BzjKhpOkvfSkLBW91aN78X3cXIUroQiPUfeoPberoN/KDCDXhaBkP0Hne837gBjHekrB
         4wLs47kgG33u5PE648hjKjdLfflAIgp9OufyKosVlhhSS9+MQvBa+9htzA7+sdu1doS5
         PtUzX2z0ZFC/hm/5BAdbAE+7J9ovhI+Z3Mb4QeaPJSMwj8hAxpK4/VemoaIitaU0PuCL
         KO009GtRpBnGW6gkLQFPPs8rLSEVhiBB7Ec/YGRfGoIJnGynf9toBWZUHwKBzpqQS5Et
         U4PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=I8jhrOAgQYQHbxRMkOpmin2GJLxbGR4aU0mrGaUw0J4=;
        b=UaioT/Ptf92/kcd98g9Xz5GcvEv8wbHv+SGxq1YYK98SqNBhNZ9sW5upmSWO7M4Vmg
         s7EHD36HrX7qPr/ohX7LXsCFKJX256soxxm//eALwN1qtDUIr86qT+87WPtu4g224+zd
         W7yzIDByTQnlfZLMC4Qcb76WbIJ69/lflogldi11x+Bqj/idNjyJjCPwzKwWoAhsKJyi
         Nvtid5Ak6GmOkSsWKomoIg+ntCq2AYhSbm1klBaGVbWSS1plZxFhJrjqrlNMpamHtXPa
         h1pTOMthr+RzMq2LIwITdcVwQmHd1pG1rHBD8jDp6yBkHCSgCIgLQkJ/MkL5uusZ+qsv
         AMgQ==
X-Gm-Message-State: AHQUAuaqTRvYhhoaNmr18pTTgEcFHwV4BARTrNYtOn3CHggwmYIHgo+o
	VMRb+guY90Z7wCu3n35UfA==
X-Received: by 2002:a7b:c348:: with SMTP id l8mr261443wmj.135.1551124294109;
        Mon, 25 Feb 2019 11:51:34 -0800 (PST)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjatsu.Home ([2a02:c7f:bc2f:a00:12f8:b413:984a:b45b])
        by smtp.gmail.com with ESMTPSA id z14sm8974356wrv.91.2019.02.25.11.51.33
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 25 Feb 2019 11:51:33 -0800 (PST)
From: Jules Irenge <jbi.octave@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Jules Irenge <jbi.octave@gmail.com>
Subject: [PATCH] staging: mt7621-eth: add SPDX GPL-2.0 license identifier --improved version
Date: Mon, 25 Feb 2019 19:50:44 +0000
Message-Id: <20190225195044.6013-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add SPDX GPL-2.0 license to fix missing SPDX warning
 reported by checkpatch.pl.

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


