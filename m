X-GM-THRID: 6249681963932712960
X-Received: by 10.25.154.129 with SMTP id c123mr4880114lfe.1.1455120162300;
        Wed, 10 Feb 2016 08:02:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.194.4 with SMTP id s4ls788128wmf.54.canary; Wed, 10 Feb
 2016 08:02:41 -0800 (PST)
X-Received: by 10.28.45.82 with SMTP id t79mr1419570wmt.2.1455120161713;
        Wed, 10 Feb 2016 08:02:41 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id w197si148167wmw.3.2016.02.10.08.02.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Feb 2016 08:02:41 -0800 (PST)
Received-SPF: pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=aybuke.147@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x241.google.com with SMTP id 128so5113861wmz.3
        for <outreachy-kernel@googlegroups.com>; Wed, 10 Feb 2016 08:02:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=f6hcBrduTKSXPs8l2Gpe0/BjtFm5iLWBkM2lEJLx59M=;
        b=Vsrg42+vnYTFRohTLkSiCiyCFrtBJlD/uM1ArTNsU1EqDkCTv8LAGiWP9jijYfpnMx
         +zvBAjsAooZ9l0Xg0KpcGDs38icZqWx+8NEylRC+zGm04Rrbh9WBg6MT7e5Y6+yFDVbp
         ejDNtvn6e0OTYkzGGjeI+bMcfhxg77Kj+1oMAEJNvI7pHmnpm2+fXnYs+V/OGdtqLMeQ
         otR6sZrRKDJpPe0Ypn9m4IzqAOrLfakPLRGztQDfr8tMPAJC/mcDPRLLMB+4eIBNH67S
         v++dcit1PPiNWkX2zcmSRPlx7vAVREsqUEarUUX+G3+kt/TiruBiW7resdgmQG4u6gGe
         vBnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=f6hcBrduTKSXPs8l2Gpe0/BjtFm5iLWBkM2lEJLx59M=;
        b=l5p1SybXPEWk+a6v4MgIwBKGMUI3oCr6zaTRcdJseajzO2eDnIBJa964E7CCJA2d+b
         c7OfABcfplycqjI287vRySFgGbGTitergKovNuV16ZeJRn74VMEHUa4eiE3ASbBFOD+i
         mwKKsrPqaZ4ogfx/RoDigEElV9caAjwySGjBy14Cm8lPzH7FCTQ5CiHLQpl0EKB17ofS
         JEcLkLoOkfu8ONtnfEWOn57BMzrejvLXqvWjIqEF0UNrAsBYZpnSiR7m5J5RcNKWGEVh
         kIjidLSY/34pQilIEn9r3lpWZ/Nuzcl1wrRtWeSw6J0oa3C2CG2PoxiuifGcNEplFYUF
         UUqw==
X-Gm-Message-State: AG10YOQIO1ilNExhWysXyEf68uy+kd+z4rJkcyoBOwaysf0pjL6VavgaqXXxfv7gpRJIcA==
X-Received: by 10.194.243.103 with SMTP id wx7mr44437236wjc.136.1455120160112;
        Wed, 10 Feb 2016 08:02:40 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from localhost.localdomain ([81.215.143.77])
        by smtp.gmail.com with ESMTPSA id w8sm3558174wjx.21.2016.02.10.08.02.38
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 10 Feb 2016 08:02:38 -0800 (PST)
From: Aybuke Ozdemir <aybuke.147@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Aybuke Ozdemir <aybuke.147@gmail.com>
Subject: [PATCH v2] Staging: comedi: Prefer using the BIT macro
Date: Wed, 10 Feb 2016 18:02:25 +0200
Message-Id: <1455120145-18000-1-git-send-email-aybuke.147@gmail.com>
X-Mailer: git-send-email 2.1.4

Replace all instances of bit shifting on 1 with the BIT(x) macro. In
addition, convert other non-1 shift operations with the equivalent
BIT(x) macro for uniformity. Issue pointed out by checkpatch.

CHECK: Prefer using the BIT macro

Signed-off-by: Aybuke Ozdemir <aybuke.147@gmail.com>
---
Changes in v2:
    - Added surname in From and Signed by part.

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


