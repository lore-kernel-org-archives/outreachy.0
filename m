X-GM-THRID: 6809352032264126464
X-Received: by 2002:a9f:21aa:: with SMTP id 39mr3193062uac.138.1585425816684;
        Sat, 28 Mar 2020 13:03:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:5589:: with SMTP id v9ls999306uaa.11.gmail; Sat, 28 Mar
 2020 13:03:35 -0700 (PDT)
X-Google-Smtp-Source: APiQypI3wRSMTcyv5l48R3yIzonhvmvfKCBrqpemC+NlKAwLwwqstl40fk54X3jCtTReuu+4KRLA
X-Received: by 2002:a9f:35c3:: with SMTP id u3mr3359442uad.140.1585425815410;
        Sat, 28 Mar 2020 13:03:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585425815; cv=none;
        d=google.com; s=arc-20160816;
        b=BVvpFCm04JfdH8SLlvcaQUnvMe8EQNfqcEPWTWBD1lNXeGKy22wA1igkQZdedSAkkx
         t6yD5kroRcf9zlyL814GC3qWtNJ3pZCgQVxN3kKPedxp4OMrXlsIQAeURsq7/IMBfP74
         DSPTsj+9YpwfVoG4S8uYoa580/cstgsA8vY87eGA1fbOrSYZvvahGj4Mlj3rj0eLTIDq
         M/jkJQrXXrKbMFB4VdzRAANxZt4BpYoUNXVvMCHjyZBb7W0dhPa0FCkeZ98021kchjP7
         P0u3siajrdt+X7cFtY6A/ejSKYbf9AyVD4sK0Xd9sT2F+8lFvBHkpUf/smI161n0NT40
         L7vA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=AV2+yNnRBWX1/wtW0x5hHdjEUVkiXTznOl0AQzYyyfI=;
        b=kJQFznSmSLYxeuqllWXe6xrzZ1xebRmrz2H0yK+dj9YDO3yuDT1IIrKiNU4oyGW03U
         Y2Gd8hdnpHDmuETeOd9JCWzF+6PfJp8oSR4nQNV3l0Ij7vbWumWxXyPETEoQ0zHY7PME
         hVv89NFWegNMlbf1n0SFQwFBm40HnWUyk0PKtlfnPhvTZDcYgBAI6P9uX1RU6Ztmmpod
         Cs8UCOMFCz1erNTtPYl9R9R6Cqzg89uGO9OBKhcQxYTnxi/UERspoBaU2Iu+qAMRHk5c
         mv2jY66vZoEu4Gh04T9OkBiV9+B0J4tF4RzYYnl4XtNM5uJ00InYZ8TMx1lePPPqD+f4
         zMgA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ev0vKqSk;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <briana.oursler@gmail.com>
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id v5si426960vsl.0.2020.03.28.13.03.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 28 Mar 2020 13:03:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ev0vKqSk;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x641.google.com with SMTP id c12so2114903plz.2
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Mar 2020 13:03:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=AV2+yNnRBWX1/wtW0x5hHdjEUVkiXTznOl0AQzYyyfI=;
        b=Ev0vKqSk6mlEmZUcjOfSqLe2QjZsOFGQcrCVzk0ChiCQct80CXNAx+xAkJlnJQj6Df
         QWrNgN41BJJtZQL+hQg14SOpalqeK3y09oFs5tZ+eTCdK8sM9FkfHDMk9jex9V0iYIw8
         xI4KVtrOf++PbqLfYXBy3M53ub7R1nGCYj+5lRm8/Xcr+kYM5xODUGiSysLCg752Y0kE
         9ZJuePW0k/tHLpMiCs9SCwTZDAlt+Zjf+xTnrFnGXNgSr9H68ZZMjwrmyZ63V+Bvsckd
         VIkidW6eoYI075IwNdkoMYHfmxjZwj1PTDylmRwJFgYWaM+/ojL1PR2tNFtkdKB1kQ5D
         oaCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=AV2+yNnRBWX1/wtW0x5hHdjEUVkiXTznOl0AQzYyyfI=;
        b=gbN5NLoX0bjB5oUzTsGam0vJQmizjyNTqXmrIemqc/mxTqtLABZ4VfYs9WV5MN3AAn
         2RPUMJbk4xZPJjV34tBrSj28WcGT/nD5lV/uMFcqxZrKW3XYqCmDqxnNWHI+NpHMKNK/
         1P6vVjD/aT+Kv6d1k7icLlELrgn0/Lm02naGYe/vjvQYWjVfW+doxWD/h8Y3WM/1br4k
         iLdu3hbz4ZgBb9gAALjTXPMnUQj4BsSXqxYhOEZGHQLsBy7Wj30lNmdng+mQSeab4phW
         LOUXyy9otepFA1mjG09L30mmVunKxGCH0GYQl8OeiWYoVujHbIdTQRzDU9WDaKca9rI8
         Ferg==
X-Gm-Message-State: ANhLgQ3JZ5DIefetCj8tO6Rm7YlgpTCbFw+mrdHSpKselfWcU4yLH56v
	TkXqBxmBRkHq19gXUyJRJF2iNxrqxQK0fw==
X-Received: by 2002:a17:902:6bc1:: with SMTP id m1mr5150529plt.90.1585425814293;
        Sat, 28 Mar 2020 13:03:34 -0700 (PDT)
Return-Path: <briana.oursler@gmail.com>
Received: from nebula.hsd1.or.comcast.net ([2601:1c0:5400:122:2697:be21:1d90:fb7a])
        by smtp.gmail.com with ESMTPSA id nh14sm1327280pjb.17.2020.03.28.13.03.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Mar 2020 13:03:33 -0700 (PDT)
From: Briana Oursler <briana.oursler@gmail.com>
To: gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	outreachy-kernel@googlegroups.com
Cc: Briana Oursler <briana.oursler@gmail.com>
Subject: [PATCH] Staging: vt6655: Remove BBvCalculateParameter comment.
Date: Sat, 28 Mar 2020 13:03:31 -0700
Message-Id: <20200328200331.136265-1-briana.oursler@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove comment that refers to function that no longer exists.

Signed-off-by: Briana Oursler <briana.oursler@gmail.com>
---
 drivers/staging/vt6655/baseband.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/vt6655/baseband.c b/drivers/staging/vt6655/baseband.c
index b4cdc0b7fee7..3d75e0156d02 100644
--- a/drivers/staging/vt6655/baseband.c
+++ b/drivers/staging/vt6655/baseband.c
@@ -13,8 +13,6 @@
  *
  * Functions:
  *      BBuGetFrameTime        - Calculate data frame transmitting time
- *      BBvCalculateParameter   - Calculate PhyLength, PhyService and Phy Signal
- *                               parameter for baseband Tx
  *      BBbReadEmbedded         - Embedded read baseband register via MAC
  *      BBbWriteEmbedded        - Embedded write baseband register via MAC
  *      BBbVT3253Init          - VIA VT3253 baseband chip init code
-- 
2.24.1


