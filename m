X-GM-THRID: 6202654173231579136
X-Received: by 10.194.240.230 with SMTP id wd6mr6922643wjc.0.1444167963177;
        Tue, 06 Oct 2015 14:46:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.11.238 with SMTP id t14ls1183776wib.40.canary; Tue, 06 Oct
 2015 14:46:02 -0700 (PDT)
X-Received: by 10.180.107.167 with SMTP id hd7mr3826965wib.6.1444167962832;
        Tue, 06 Oct 2015 14:46:02 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-wi0-x22f.google.com (mail-wi0-x22f.google.com. [2a00:1450:400c:c05::22f])
        by gmr-mx.google.com with ESMTPS id q6si647917wif.2.2015.10.06.14.46.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Oct 2015 14:46:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) client-ip=2a00:1450:400c:c05::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22f.google.com with SMTP id gb1so184685555wic.1
        for <outreachy-kernel@googlegroups.com>; Tue, 06 Oct 2015 14:46:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=f5lIhJePiP4qhRCWoZUyvuZvR82QVti7sr0RKvhbWJM=;
        b=MOHC9nFMSFnUTT/eWDggbKFZwtIcVAq1CaBLplScNrgQYtZl1BD0HhAJ296UiCYZ6N
         RVW8+lbaMb8kOEl9zgubNMyM90dNo97cpHKXDbRyri41DMuloj1BNhHTSryovAxorPWz
         evuZvSH3wIagxzXKPatkLuJRRJXQJGiZj1mjMx9PQEEZUbh2DLxmxunyLaUeTI+Aea2Z
         weDKv1c/m7UVjKuvfluFbo5zcIcAGDxsVM35xdgPrXt067nvOEbG8+oFClQOEgk4vkIe
         mQa3EcxS78FFnivjzMJXPpb7eDoOk6gNxHpGCsQGx+iSdmzBL1Br1xFGNajWD0Riu80w
         6x/A==
X-Received: by 10.194.202.137 with SMTP id ki9mr36675299wjc.16.1444167962734;
        Tue, 06 Oct 2015 14:46:02 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from localhost.localdomain ([213.233.93.172])
        by smtp.gmail.com with ESMTPSA id ka10sm34956147wjc.30.2015.10.06.14.46.01
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 06 Oct 2015 14:46:02 -0700 (PDT)
From: Cristina Moraru <cristina.moraru09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Cristina Moraru <cristina.moraru09@gmail.com>
Subject: [PATCH] staging: octeon: Fix kernel-doc function description
Date: Wed,  7 Oct 2015 00:45:32 +0300
Message-Id: <1444167932-90634-1-git-send-email-cristina.moraru09@gmail.com>
X-Mailer: git-send-email 1.9.1

Fix kernel-doc 'Excess function parameter' by moving
the description to the correct location. Also corrected
parameter description

Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
---
 drivers/staging/octeon/ethernet.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/octeon/ethernet.c b/drivers/staging/octeon/ethernet.c
index 7274fda..a63488e 100644
--- a/drivers/staging/octeon/ethernet.c
+++ b/drivers/staging/octeon/ethernet.c
@@ -364,13 +364,6 @@ static void cvm_oct_common_set_multicast_list(struct net_device *dev)
 	}
 }
 
-/**
- * cvm_oct_common_set_mac_address - set the hardware MAC address for a device
- * @dev:    The device in question.
- * @addr:   Address structure to change it too.
-
- * Returns Zero on success
- */
 static int cvm_oct_set_mac_filter(struct net_device *dev)
 {
 	struct octeon_ethernet *priv = netdev_priv(dev);
@@ -413,6 +406,13 @@ static int cvm_oct_set_mac_filter(struct net_device *dev)
 	return 0;
 }
 
+/**
+ * cvm_oct_common_set_mac_address - set the hardware MAC address for a device
+ * @dev:    The device in question.
+ * @addr:   Socket address.
+ *
+ * Returns Zero on success
+ */
 static int cvm_oct_common_set_mac_address(struct net_device *dev, void *addr)
 {
 	int r = eth_mac_addr(dev, addr);
-- 
1.9.1


