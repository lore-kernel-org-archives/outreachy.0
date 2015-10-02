X-GM-THRID: 6201123761704402944
X-Received: by 10.180.210.212 with SMTP id mw20mr82254wic.3.1443811636615;
        Fri, 02 Oct 2015 11:47:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.11.196 with SMTP id ek4ls427182wid.36.gmail; Fri, 02 Oct
 2015 11:47:16 -0700 (PDT)
X-Received: by 10.180.12.170 with SMTP id z10mr85249wib.1.1443811636231;
        Fri, 02 Oct 2015 11:47:16 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-wi0-x236.google.com (mail-wi0-x236.google.com. [2a00:1450:400c:c05::236])
        by gmr-mx.google.com with ESMTPS id bn1si14838wib.0.2015.10.02.11.47.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2015 11:47:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) client-ip=2a00:1450:400c:c05::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x236.google.com with SMTP id lk2so45943916wic.0
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Oct 2015 11:47:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=oFda9rZipxYFa4T1r/N1LnPjMJqFP/HRLflmm/yug6Y=;
        b=t3oQCmjBQWtg0Hw+9XY+2hmXaEI9K7yiqti57WryPHz74yykyahN5XId3AVReZm3Sj
         ULYxstwfD9w+NIuyjzBfVjdWpytz/7vRfxARvB1HC16nT7z2HjMnWKin5t/drACIG8Df
         poOhUZbGyjo8G/AbVgMXOSqc1i0foWrtRnC2oU0KMejPf60Ikkl1/j4vmsTJYgr52MgJ
         fHGQnHnSSA7S+iyX7/kRYO1fCNPphWH1qtu7VhnHta6LWHh8JJykXQUuvRzvFUfiLLvJ
         q5UQnZmSwv+1/wkwYzYgQAJmxQyuTI3Tx4KT1SXbHv68VFgxwU8drOVweEqoasX1G+uU
         ZCsA==
X-Received: by 10.194.87.74 with SMTP id v10mr17130796wjz.114.1443811636136;
        Fri, 02 Oct 2015 11:47:16 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from localhost.localdomain ([141.85.225.214])
        by smtp.gmail.com with ESMTPSA id xa5sm12630541wjc.20.2015.10.02.11.47.14
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 02 Oct 2015 11:47:15 -0700 (PDT)
From: Cristina Moraru <cristina.moraru09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Cristina Moraru <cristina.moraru09@gmail.com>
Subject: [PATCH] staging: octeon: Remove bad line
Date: Fri,  2 Oct 2015 21:47:05 +0300
Message-Id: <1443811625-50199-1-git-send-email-cristina.moraru09@gmail.com>
X-Mailer: git-send-email 1.9.1

Fix 'bad line' kernel-doc warning

Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
---
 drivers/staging/octeon/ethernet.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/octeon/ethernet.c b/drivers/staging/octeon/ethernet.c
index 7274fda..a8da250 100644
--- a/drivers/staging/octeon/ethernet.c
+++ b/drivers/staging/octeon/ethernet.c
@@ -368,7 +368,7 @@ static void cvm_oct_common_set_multicast_list(struct net_device *dev)
  * cvm_oct_common_set_mac_address - set the hardware MAC address for a device
  * @dev:    The device in question.
  * @addr:   Address structure to change it too.
-
+ *
  * Returns Zero on success
  */
 static int cvm_oct_set_mac_filter(struct net_device *dev)
-- 
1.9.1


