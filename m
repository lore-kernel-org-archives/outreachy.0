X-GM-THRID: 6670470603047174144
X-Received: by 2002:a63:d84a:: with SMTP id k10mr8591117pgj.123.1553089963085;
        Wed, 20 Mar 2019 06:52:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:82c7:: with SMTP id f7ls1126938pfn.6.gmail; Wed, 20 Mar
 2019 06:52:42 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxXZNFkTxOygyH0kfr91mV5JzsmKZCTC4TCVo92ZGhvh6ZS8DwgjqEW08wR3XaATxZm8dQ1
X-Received: by 2002:a63:ef58:: with SMTP id c24mr334416pgk.20.1553089962237;
        Wed, 20 Mar 2019 06:52:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553089962; cv=none;
        d=google.com; s=arc-20160816;
        b=su2mqd3yuhgLxJKbMEU527JOa4MWrZ2guC9aQ11pa+46QSyydJsbPCfUUuI66S8dct
         J25dYj9n3sbTg2l5GOJ+p3100ifhtvMYYkeeYDAhNysCES/S+k89CQeDHgYxNk/BIFXh
         Q8qpBI5h0LDV5TlSqi5/aO18G3EFar67Zi58H77uKyLx1e8SVndSIEmuU2aT4vK6cSKR
         4rhvahwS34U5saRNd1+G+aVKVt8uQGlX3Px3gAFMXlPXA/CQcBaY8sk3CYI2KNV6fth2
         QUcATsI+n/OVAcjZZzXunhfrdMsgFwTY9m6zv0ym5dDADG0sUK8VQbI5M5Wq1d9iUPOO
         soDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=xR+34w/xMQ4rUld01xJ2HYHBEA9ZoxHqTwM2VmlT0Es=;
        b=ZlGPP1Ll9B5ecL+jLS/2toM2aa0XEMJ/MVeG7xYceHm1Gw8sodW5XC3hhNdIzc64e1
         OhU88UfglwhZvnncE3jdB9vw0Ob674wORr4lSztRuicpcSzOGLPSlpLzRIA/92YI7A7J
         Yu8az2dX2ytm8kZ39CrENr7UH2Lb+ookKCifsamel2a14WomsZdY1P38hQ14mHms5tV8
         a5OaKwe/dQGeVeU0agPcS1Bk5tJ5wVmXAaey3BNCv0J0wbG8d70dnNFYBKmq+L/pZODb
         soQzoiz+SWfs57fkcrzPUUQkNz53OhVCV2uZp9pyu5POMMyayS0VBeLANPA+aSHdy++T
         Kp9A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mapuaYLg;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::42e as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com. [2607:f8b0:4864:20::42e])
        by gmr-mx.google.com with ESMTPS id 192si179402pgc.0.2019.03.20.06.52.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Mar 2019 06:52:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::42e as permitted sender) client-ip=2607:f8b0:4864:20::42e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mapuaYLg;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::42e as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x42e.google.com with SMTP id p10so1998144pff.3
        for <outreachy-kernel@googlegroups.com>; Wed, 20 Mar 2019 06:52:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=xR+34w/xMQ4rUld01xJ2HYHBEA9ZoxHqTwM2VmlT0Es=;
        b=mapuaYLg2H7S4b5lWVTrk+jQebelE4DjB6NBccquEE9+lFSUcz6FFp3VHnmKPb6Xao
         x8bISGF7CU5uHV+wg3TTyjvy26kDGVLFUch8Um5DmDOP4uR/DMwlLE/u98sbzBL9d8yV
         iyOJPANuTAcH1+WsNMMYBrDEqZ4yRP8pTDe3jHKHVLYiI4CZPx3V9uFLsheiLHOYHX8r
         jYN5LBW5P8+1fniuJ/RSajUcCABOORVpmH41JQhWyGnFJza81g4+uVgZ9p7iCA1ZS7XZ
         Zu4isJAczJXWF2HGsrbOHxg3XLjt8p9/R8YGpkU2LbzSInl72cP9VU5sIvs1qu2mSd4J
         fpJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=xR+34w/xMQ4rUld01xJ2HYHBEA9ZoxHqTwM2VmlT0Es=;
        b=XZvA/eoSkXFT+td7u7oV+0UospJ63+5WZ0yQkISNEJmwplqcYoiadcURABxSM8I76k
         rJXQMe3KyDai2KJKXPMR9mmQoDV7zOO9xROfwdWhEzg90IidZ3uqvNqCbJpdWjFerbhR
         xs0uzdU13ukLVBwu40GcOkZYO+VrxHr/ysM2Un9buNAYQlm+XVXnnRV08Fowk6Soxdj6
         C3YxPrpkUmgSanZUUmXzJFQZENRTaLCZuYmrkZ+sbqdDEUFlezvkuAh4YQW44eMCm1Jn
         tlWQzN9JQ5EzfmcIZJ6cRhKcy2zM4UmKoibqlOBxFvzCCXUOiR8MxYRZB56z2TXdBPW8
         c9iw==
X-Gm-Message-State: APjAAAWIuoE2qRhVQc3GlyfD3kxAorNLXuI4xPL9naGQpIPtM4NhUoWv
	ACVoM4fWd5xChBeTgfcch6ZaOF5o
X-Received: by 2002:aa7:9389:: with SMTP id t9mr1071397pfe.60.1553089961183;
        Wed, 20 Mar 2019 06:52:41 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.44.145])
        by smtp.gmail.com with ESMTPSA id m13sm4851740pff.175.2019.03.20.06.52.38
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 20 Mar 2019 06:52:40 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [PATCH] [Outreachy kernel] staging: speakup: line over 80 characters
Date: Wed, 20 Mar 2019 19:22:22 +0530
Message-Id: <1553089942-7490-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4

Fix line over 80 characters issue of file
drivers/staging/speakup/kobjects.c

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/speakup/kobjects.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/speakup/kobjects.c b/drivers/staging/speakup/kobjects.c
index 11c704b..fbd09c7 100644
--- a/drivers/staging/speakup/kobjects.c
+++ b/drivers/staging/speakup/kobjects.c
@@ -154,7 +154,7 @@ static ssize_t chars_chartab_store(struct kobject *kobj,
 			continue;
 		}
 
-		/* Do not replace with kstrtoul: here we need temp to be updated */
+/* Do not replace with kstrtoul: here we need temp to be updated */
 		index = simple_strtoul(cp, &temp, 10);
 		if (index > 255) {
 			rejected++;
@@ -788,7 +788,7 @@ static ssize_t message_store_helper(const char *buf, size_t count,
 			continue;
 		}
 
-		/* Do not replace with kstrtoul: here we need temp to be updated */
+/* Do not replace with kstrtoul: here we need temp to be updated */
 		index = simple_strtoul(cp, &temp, 10);
 
 		while ((temp < linefeed) && (*temp == ' ' || *temp == '\t'))
-- 
2.7.4


