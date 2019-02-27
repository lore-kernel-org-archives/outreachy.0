X-GM-THRID: 6662466650239926272
X-Received: by 2002:aa7:c151:: with SMTP id r17mr3169438edp.9.1551226398505;
        Tue, 26 Feb 2019 16:13:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:9257:: with SMTP id c23ls21996ejx.2.gmail; Tue, 26
 Feb 2019 16:13:17 -0800 (PST)
X-Google-Smtp-Source: AHgI3IYGnaWHntZ2LPLRQa36Wy+udxcLnFUtZqXYcbcwXI2AOjg0wsCgMPDYlPqftEEBqGtDsYLE
X-Received: by 2002:a17:906:2346:: with SMTP id m6mr14711eja.15.1551226397656;
        Tue, 26 Feb 2019 16:13:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551226397; cv=none;
        d=google.com; s=arc-20160816;
        b=Q/21BwgjtP2pH6QxeJIL/hiPN9ReIQQYwu1j1A9nQNkTyIDAiJdUwM3sq6CDclP4De
         esFQxO+U8lCvjsuhNLVIx9tLdxJxSM3AOpz7596IhnUzRextfZoiJqefFr5aGhOVXgYi
         yXJPtFIvC6NiyuWdqFJVpivG8F1SvZHC+6/4MEbVAQo1Fql7UZBfTG9hEonjCWAg0MlL
         i9Y9fTer08NvKK/7VKi+JPefY+hwffb+DneXKemVkGdhV5iJC3r/ze+e5Ie+MuHH9S0S
         u1sCZWKek5cWbLJINwDjnWzH0BYt1ct8IJGYsCogjyXVaroZM322wP1NnN6IGLWL8EL+
         CidA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=FCqS9VUSZ2j3QOIMGh7tXxTpFc30P0ODPozcFGdl07E=;
        b=Td4wks4BpAxOJa+zJ04wFAc6psuftI/ukXeiBGFrN3rwa9Meio6zw387h5Z5ClLlXH
         l0OhAlacsoRg3MJa7W4YDzMtAzX3XmuUW/Tykcjtnnng1pOrj7mHL21Zx5URc/Nh2SXp
         lGAKSTsFc0l6d9OoUjq48GIMQQmXNKO43DOcAEZYewKRp2oW9FyN8iS0qV0fYpSu0M/C
         4iB+8bjOt+EOn1YSiJvmbHeBL+mHDmkAErO+Fj8MTrWJGET1fB4B+aPsfMtgWERgicFC
         v1GO6EYqu1MJj9SbDBnJoDwRcf6YhkIy3nLl+DpRNZHuZ2E/CRIdpdeiDz3vqtqSM+wd
         WHzA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hsqEcP69;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id q1si712984edd.5.2019.02.26.16.13.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Feb 2019 16:13:17 -0800 (PST)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hsqEcP69;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x342.google.com with SMTP id x10so3894347wmg.2
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Feb 2019 16:13:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=FCqS9VUSZ2j3QOIMGh7tXxTpFc30P0ODPozcFGdl07E=;
        b=hsqEcP692WF3rGGlCbf/hfGAxOigpAiau+nWY0JF8I4ec6e+uRLjPfoCmtkdRt46ja
         /aA2Rrv3qCWBwlkO/bIxWAgarLhjX1V3jq2xCYRsOCPnrQvBe5o+Xu8IwO0SI1/zhPA4
         XMgR4l36NDCZBScah2f8nZsEuopIgWnVe3pvS+8ngxW7EAMHvdXnh7aKXDmsyGQnvRlM
         tRKDfpU5azkB9pFfPWEdcwqIe00Wh+KJeziF7+DnVzyxVMEJoCDWlD5iyoeO0UQf5GEn
         HA87KQPTNyQ5QZqyNQZQk00oe1q/iGNEC8TjnHvuSpBEZu5q9hEhED/NL7P10uFfudNw
         vLvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=FCqS9VUSZ2j3QOIMGh7tXxTpFc30P0ODPozcFGdl07E=;
        b=hGG13QkkfWg1L10f/s6F/P+GN4d1n/iQeZBkmWKJQ7kZIms8N7Jp/B4tosfpCRXOIh
         kdi8U9clgzLbv3oZrQJA/huIURimwego9uH1LxZfxjxTA/6y7GbIoZ39yYwlFtEuecDc
         0U8ztq473wodvc5JUeTB1Aimvj2cBOAZUHGj2fvC4BHaq7AutoZQYMf1B2R2YLk+HszJ
         92u0VdX0hvPHkHjFwG6JfAdJ51jFiiR0RUXZeun3+/r8nK0dhozWEh5HUOu1cqIhBlIK
         5+2kWMfAn/iK2eBocVr00tKGL/ckWYxMIvK9O+oF2b44KOIhCLM7VNlX+QGFqil4gAwt
         Py7g==
X-Gm-Message-State: AHQUAuY8aG5a6kGfoHvbd02AkLN6niyGzdcXcvnXzED2WlYkAcrcdfIV
	azkl+YkF9j7rI4ReFib2+sbYPb0=
X-Received: by 2002:a1c:6788:: with SMTP id b130mr413798wmc.102.1551226397136;
        Tue, 26 Feb 2019 16:13:17 -0800 (PST)
Return-Path: <jbi.octave@gmail.com>
Received: from localhost.localdomain (cpc102034-bagu16-2-0-cust471.1-3.cable.virginm.net. [81.97.71.216])
        by smtp.gmail.com with ESMTPSA id g202sm409549wme.26.2019.02.26.16.13.16
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 26 Feb 2019 16:13:16 -0800 (PST)
From: Jules Irenge <jbi.octave@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v3] staging: mt7621-eth: add SPDX identifier
Date: Wed, 27 Feb 2019 00:10:47 +0000
Message-Id: <20190227001047.6298-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add required SPDX license identifier to fix missing SPDX warning
 reported by checkpatch.pl.

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
Changes since v3:
 * Made commit message clearer
 * Added punctuation
 

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


