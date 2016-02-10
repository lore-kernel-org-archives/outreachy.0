X-GM-THRID: 6249681963932712960
X-Received: by 10.112.201.104 with SMTP id jz8mr4953599lbc.13.1455117474394;
        Wed, 10 Feb 2016 07:17:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.87.207 with SMTP id l198ls851387wmb.38.canary; Wed, 10 Feb
 2016 07:17:53 -0800 (PST)
X-Received: by 10.28.156.83 with SMTP id f80mr1381016wme.1.1455117473930;
        Wed, 10 Feb 2016 07:17:53 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from mail-wm0-x232.google.com (mail-wm0-x232.google.com. [2a00:1450:400c:c09::232])
        by gmr-mx.google.com with ESMTPS id 5si182597wmm.2.2016.02.10.07.17.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Feb 2016 07:17:53 -0800 (PST)
Received-SPF: pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c09::232 as permitted sender) client-ip=2a00:1450:400c:c09::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c09::232 as permitted sender) smtp.mailfrom=aybuke.147@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x232.google.com with SMTP id c200so33421375wme.0
        for <outreachy-kernel@googlegroups.com>; Wed, 10 Feb 2016 07:17:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=xNc1Jb1jO0hLlJrhoYKjBFTufrb8xybYsrm1OrIZZMI=;
        b=w1QsuXhvSOx1P1PNjUyoMJQYVmxy/RTb88a3GtfVweBwHzuBILaLPkV0F8Jl8Ngc4q
         S2HGGH+0r5pdzPTGOhegE7BAZ6+okuQsDUmmABhB6pdLON9P8qQ8rhhfCceSxlXK+zXo
         ThhsIZYUxJymMxNLrPyYUVyrt/5CWZRa6qp/GptIft0hTFym+B6RpWvt9M6kS7WGhF7L
         cBaYs+CahO4yOc9z0dMPU1TGCPO/LQuNsLHKgHX1SwHHfGJVKcbKVZS1LZr5fBMvPrv/
         xPYANPoj9SqtEtCFHCF25+h3HovncyroOYagEmS+GIGoOQ/kknNRbFio4AuBP91IiebO
         KVqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=xNc1Jb1jO0hLlJrhoYKjBFTufrb8xybYsrm1OrIZZMI=;
        b=bRI7L2zt4ChshfOa5ZIfevo7/G5Jj6gn81omkqbmyGEePZXyacIWlVL6gCfGagrp/E
         MAcQyGd45heNISwO7G6NF+FnXKNK7eMVWKdZZs2zkumlm8gsskrocZXVY5n2mvWqpjFv
         KRRAhJyKG28xdneGvKPfd/OM6pQ7K73B+Tar1VYOJF2wBQNkl4fm9xoFsicOiUrZ8wrt
         7r0TZOdQ85tZxCxDcUeVCoxOQbMMHVMSjHhuB2ygZery8DQsMx0jujyDws/H9Wwn9lFJ
         xT9xgQfQXRA7/SdOM5J9f0d3sRH3MDdm3eF7a9KTvzcpnDqqtHywvjQ5pL7yofhp9MvT
         IVZA==
X-Gm-Message-State: AG10YOQ7gk4fjkCfpEI48WzXNjjpfAsFXqaXNWQiqE3FgLUKOL9EyMnqqtUGBM/8fO8aWA==
X-Received: by 10.194.62.179 with SMTP id z19mr10356917wjr.96.1455117473796;
        Wed, 10 Feb 2016 07:17:53 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from localhost.localdomain ([81.215.143.77])
        by smtp.gmail.com with ESMTPSA id cb2sm3421366wjc.16.2016.02.10.07.17.52
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 10 Feb 2016 07:17:52 -0800 (PST)
From: Aybuke Ozdemir <aybuke.147@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: aybuke <aybuke.147@gmail.com>
Subject: [PATCH] Staging: comedi: Prefer using the BIT macro
Date: Wed, 10 Feb 2016 17:17:44 +0200
Message-Id: <1455117464-17485-1-git-send-email-aybuke.147@gmail.com>
X-Mailer: git-send-email 2.1.4

From: aybuke <aybuke.147@gmail.com>

Replace all instances of bit shifting on 1 with the BIT(x) macro. In
addition, convert other non-1 shift operations with the equivalent
BIT(x) macro for uniformity. Issue pointed out by checkpatch.

CHECK: Prefer using the BIT macro

Signed-off-by: aybuke <aybuke.147@gmail.com>
---
 drivers/staging/comedi/comedi.h | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/comedi/comedi.h b/drivers/staging/comedi/comedi.h
index f0d1b15..9b7d0cb 100644
--- a/drivers/staging/comedi/comedi.h
+++ b/drivers/staging/comedi/comedi.h
@@ -72,12 +72,12 @@
 #define CR_AREF(a)	(((a) >> 24) & 0x03)
 
 #define CR_FLAGS_MASK	0xfc000000
-#define CR_ALT_FILTER	(1 << 26)
+#define CR_ALT_FILTER	BIT(26)
 #define CR_DITHER	CR_ALT_FILTER
 #define CR_DEGLITCH	CR_ALT_FILTER
-#define CR_ALT_SOURCE	(1 << 27)
-#define CR_EDGE		(1 << 30)
-#define CR_INVERT	(1 << 31)
+#define CR_ALT_SOURCE	BIT(27)
+#define CR_EDGE		BIT(30)
+#define CR_INVERT	BIT(31)
 
 #define AREF_GROUND	0x00	/* analog ref = analog ground */
 #define AREF_COMMON	0x01	/* analog ref = analog common */
@@ -510,7 +510,7 @@ struct comedi_bufinfo {
 #define RANGE_LENGTH(b)		((b) & 0xffff)
 
 #define RF_UNIT(flags)		((flags) & 0xff)
-#define RF_EXTERNAL		(1 << 8)
+#define RF_EXTERNAL		BIT(8)
 
 #define UNIT_volt		0
 #define UNIT_mA			1
-- 
2.1.4


