X-GM-THRID: 6254547919446212608
X-Received: by 10.194.84.40 with SMTP id v8mr4312519wjy.2.1456250417818;
        Tue, 23 Feb 2016 10:00:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.141.200 with SMTP id p191ls678785wmd.48.gmail; Tue, 23 Feb
 2016 10:00:17 -0800 (PST)
X-Received: by 10.28.48.88 with SMTP id w85mr2087676wmw.5.1456250417285;
        Tue, 23 Feb 2016 10:00:17 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-wm0-x22e.google.com (mail-wm0-x22e.google.com. [2a00:1450:400c:c09::22e])
        by gmr-mx.google.com with ESMTPS id s141si1489591wmd.1.2016.02.23.10.00.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 10:00:17 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c09::22e as permitted sender) client-ip=2a00:1450:400c:c09::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c09::22e as permitted sender) smtp.mailfrom=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x22e.google.com with SMTP id g62so5517104wme.0
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Feb 2016 10:00:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=W+atlbItMPxoi+xza4ZKkUCfCsiQ3Tc8BAvCFUMaDqk=;
        b=iDTnWOZSDYLDcwkASLuxwxKZ/HPJ4x8tToGSVvWeh8aVujohu7ekf87kGhE+jr1nFz
         zXkEWAefgjnPiJIhgx3nk/MtT5vZxEck7G/oL29lcwx6n2vYuxWrZbv8rU5zorntXBc6
         gZJ6iZjbQKRq91l1v9cCKZ0FqLIllfgHXyRGSkBRvWKb/nPdc10AGwR9zLH0rnMQd2BP
         ZLuM0wF7A/E0dxBPX8wMbbxzQKFb2NEmIzadE6UiNPeuTmletZujigW1YIgPTPZamXV6
         +tN6+4ncPq7g5wgnXrwKKoXNUZhJST92Aig3zmqivcfuMliukeprVTARzX5Nx/x90S3Z
         dJiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=W+atlbItMPxoi+xza4ZKkUCfCsiQ3Tc8BAvCFUMaDqk=;
        b=aFkv8WrWrT+rq3n+ZsoAIrRvaswiXjWcPYXX6ffe4LnX4dGQhWoPVNyW+QM7JiQ8fz
         KXeUsoDgZRyTuyb46gO3vnS2PDpqqB6vpxDaZ7M1K3V1gt8+ZLH73zfnti0aCXelUKjS
         8gTPT+Fg3qhJMxMIUNcksF8RZhjAww0BeSBXzVkJgQQjN4NtsEiZdACrxeuijuyxwXRE
         5Sv3Aw+3R9s+ujbgCwC4/EGYQXF/V4teVimeb/ALMEJFmf7Wf0mpIc+ko4ZRrmIfPq43
         BsGUha2kqQpb6jMtVWYYeDgpQvneD3oS3W8uwxVLwpYPabdiAJq6c+8v+SNXROdmxYou
         K9qg==
X-Gm-Message-State: AG10YORBQXz8vdVHtvH3ms9nV0HCyaERT/090gMQaFUp6eA1vevevoZ5+FUDhIA6/pTYeg==
X-Received: by 10.194.187.240 with SMTP id fv16mr41066785wjc.53.1456250417124;
        Tue, 23 Feb 2016 10:00:17 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([88.236.228.232])
        by smtp.gmail.com with ESMTPSA id fv6sm27278321wjc.12.2016.02.23.10.00.15
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 23 Feb 2016 10:00:16 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH] Staging: octeon: Add space around '+'
Date: Tue, 23 Feb 2016 20:00:08 +0200
Message-Id: <1456250408-19142-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

Add space around operator '+'. Problem found using checkpatch.pl
CHECK: spaces preferred around that '+' (ctx:VxV)

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 drivers/staging/octeon/ethernet-defines.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/octeon/ethernet-defines.h b/drivers/staging/octeon/ethernet-defines.h
index f92e0c4..d683348 100644
--- a/drivers/staging/octeon/ethernet-defines.h
+++ b/drivers/staging/octeon/ethernet-defines.h
@@ -40,7 +40,7 @@
 #define FAU_TOTAL_TX_TO_CLEAN (CVMX_FAU_REG_END - sizeof(uint32_t))
 #define FAU_NUM_PACKET_BUFFERS_TO_FREE (FAU_TOTAL_TX_TO_CLEAN - sizeof(uint32_t))
 
-#define TOTAL_NUMBER_OF_PORTS       (CVMX_PIP_NUM_INPUT_PORTS+1)
+#define TOTAL_NUMBER_OF_PORTS       (CVMX_PIP_NUM_INPUT_PORTS + 1)
 
 
 #endif /* __ETHERNET_DEFINES_H__ */
-- 
1.9.1


