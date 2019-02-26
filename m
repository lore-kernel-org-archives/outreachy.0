X-GM-THRID: 6662428250323550208
X-Received: by 2002:a17:902:b191:: with SMTP id s17mr8125233plr.14.1551217457976;
        Tue, 26 Feb 2019 13:44:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:467:: with SMTP id 94ls9363595ple.8.gmail; Tue, 26
 Feb 2019 13:44:17 -0800 (PST)
X-Google-Smtp-Source: AHgI3IYNStF15LaM19Ye2/WrPCgSpNAP9nYc0VaK9kQh+V/S9OQ0DuRWhMBb2c1Hy6q5uC1weWff
X-Received: by 2002:a17:902:e80c:: with SMTP id cq12mr8179711plb.86.1551217457377;
        Tue, 26 Feb 2019 13:44:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551217457; cv=none;
        d=google.com; s=arc-20160816;
        b=dzRUi+zzqWafnJIob9fn0zqYJvr3ZQRsUqjEyIJaUpjMq1x4SFvitPfpckln/lHX49
         7gCdj79aubtwmI4O4cItjdKX6osjIDJEqgIzO4sjZf1k3WFvP55ISjyHbVmqdlJPMy2w
         Vfco3w/3RXoGVIrCGs58Jl5aojjNG4GGg1V4BvyTgCdKLzxzAn7Ocf5N5bahhAGhmc1C
         6vx6R5kyhqhNeEiTBsNfg7NzP6tZMOyCgFXxx5C9MUJd3DwC/wno2Vp43XuqgxYkkfCt
         1p2AOnQH6HgQWw5Fcv39vIWo+gWl+8KcNhJmLaE6QSOjVDyyx1FvI5KUMQfeIJldYnhq
         ywbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=nlUIZfLZCRvqIFwEMOfEx4xJQEZobhAPKnbhTrNIpEo=;
        b=0w7l4gdV5q4Jk7eDGnc7Zwm8YNlOhuw5pfTUwlk5AqSMoR/AxCMI6eAJ5lgzYhwmro
         LjuHEs0oiS32ySHqhrGFE4YtwMa2IF8MJYdS+ibEYU8hTH2MO3besOi7Rbfyh80vD+sD
         egJeXMRI4PTT5xo/4LfZWODjN348hVyJO6rnll1mm5WFTk8ZAYvXMi63uslbeC7EGxky
         0mzfg/WnYfKSwEjL4I5a2NewVHzVxbKLJpdZz/zHrfO8iQO/f/DK+ZAjAMgil7VtXjLM
         xAsUiSstzzFsWVGmA8Fv0CbCCAvFNyH3rJUtF5qmlKVy4ywSW/jnAAKV8AEypPmzhwwF
         8Eew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QJT1HSBI;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com. [2607:f8b0:4864:20::242])
        by gmr-mx.google.com with ESMTPS id a90si125910pfj.5.2019.02.26.13.44.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Feb 2019 13:44:17 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) client-ip=2607:f8b0:4864:20::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QJT1HSBI;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x242.google.com with SMTP id e7so11682672oia.8
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Feb 2019 13:44:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=nlUIZfLZCRvqIFwEMOfEx4xJQEZobhAPKnbhTrNIpEo=;
        b=QJT1HSBIv+efC/wxik8p5QXWWAdccJe2HEzNP+a4zNAMILFldk4lr9NJmWQerujMRY
         rK/gMHQWI11dQLwvqqe4t7wEsU+934ZJvHbjsrgfqiiE3qT64TGVXFV3aelR8itDTXh4
         gzgNTZe7Nml2exXDa/PxfCi/dx923vx/CHJPwsC3o1l8GhGpK8c3D3bE+VlD785YEnVW
         qRMvxG4Wht4j5WhyUZ/+MGfxlV+//B+yLbY1daeeScX66FnzoZNS5t4EkcJZLIGHj2Jd
         aDOeFQt+DjiY4c34vzT4SBUaffBPwzF5ZuYZlbPowo80SkLTphnEpNKOEgS3/YGXxa2S
         pqjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=nlUIZfLZCRvqIFwEMOfEx4xJQEZobhAPKnbhTrNIpEo=;
        b=rIwlmnXlQDPSmufMIpURlxRcOLcLkn6zNCpvXZgmTAsHlzx0+f1s2MpUEt1/KcJOrN
         RwkV5EWjBqupfr1TPPV6oBG4Ra/vYyen8dknu4I/XhKumpH0T+Je1POL1Yu3XehQoY/u
         yVunmP2aiD8Xg7fvaqL7LHcMi6YoVaIzt1ed2reo9B6xF4zd1Q4mGtASV+Nw3LrOKf3/
         MaS6THC/oh0e04o3nJpCYzlA8FyUpbxlldXs5o5Yg4P+tpB83cSDi2XeDmex7mxjEGbj
         mK0I9eOuRAfsFDY+aEvqlURneDx0npJ2rBYcBrYJ2ue5XmXzuhl0aRgU3+P/OH5++FLn
         tSIQ==
X-Gm-Message-State: AHQUAuYk4sOSkKqFkv8QyXbHkqK/8eM8gB3oDedaQKNK9xg+6MfO8Uii
	LMvzhFTYjsP4+kDJDaAaB0o=
X-Received: by 2002:aca:88b:: with SMTP id 133mr3802135oii.95.1551217456444;
        Tue, 26 Feb 2019 13:44:16 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id e12sm5619870otr.1.2019.02.26.13.44.15
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 26 Feb 2019 13:44:15 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH] Staging: vt6655: Modify comment style for SPDX-License-Identifier
Date: Tue, 26 Feb 2019 15:44:12 -0600
Message-Id: <20190226214412.4942-1-madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

Fix the comment style for SPDX-License-Identifier, as the file type is
header.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/vt6655/card.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/card.h b/drivers/staging/vt6655/card.h
index 5884fd56153e..d71022aa3f86 100644
--- a/drivers/staging/vt6655/card.h
+++ b/drivers/staging/vt6655/card.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * Copyright (c) 1996, 2003 VIA Networking Technologies, Inc.
  * All rights reserved.
-- 
2.17.1


