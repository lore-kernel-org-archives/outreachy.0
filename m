X-GM-THRID: 6201835486956224512
X-Received: by 10.112.147.7 with SMTP id tg7mr7022468lbb.16.1444169365097;
        Tue, 06 Oct 2015 15:09:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.107.65 with SMTP id ha1ls1181525wib.18.canary; Tue, 06 Oct
 2015 15:09:24 -0700 (PDT)
X-Received: by 10.194.240.230 with SMTP id wd6mr6939644wjc.0.1444169364744;
        Tue, 06 Oct 2015 15:09:24 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-wi0-x22a.google.com (mail-wi0-x22a.google.com. [2a00:1450:400c:c05::22a])
        by gmr-mx.google.com with ESMTPS id bn1si667262wib.0.2015.10.06.15.09.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Oct 2015 15:09:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) client-ip=2a00:1450:400c:c05::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22a.google.com with SMTP id fx3so2784109wic.0
        for <outreachy-kernel@googlegroups.com>; Tue, 06 Oct 2015 15:09:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=CGg8AsistLoPoZabgVgoOTYabjwaDXJ4KJ4DUGFOtI4=;
        b=C6qmPvzp5nG1Jt+soY2xXaP1Vwk2Cx66tA3MTX7cdqB6gSZkkcYpfjCH5ru0Vk7c8P
         46H+VXn0aRfgpFfCEbsyStvY1aAigPX9x0FAv6V+acnGXPvx57pj3rm+jNlCQlSaUTlD
         QsHU+zUnZEZvwQ3t5QJJsVHCzwTGQ858ARVJjQCdo5Z+dlki2D1Dw5KbTL5j+hOHmXDX
         li/btUn/ESloCwNm0XWR+FTtKVBbvYjN3kTyQ2fBvTWHbQbESUbf1vhlZIXTm8IodKf9
         Bk/yU5/H1vyJyp/Eiy32Bb4qhE/Ulw/OCZSR1jaIs/m/o4nh5NqUm/ERSWjc6vxbcCXx
         /R/g==
X-Received: by 10.180.87.225 with SMTP id bb1mr20861911wib.0.1444169364652;
        Tue, 06 Oct 2015 15:09:24 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from localhost.localdomain ([213.233.93.172])
        by smtp.gmail.com with ESMTPSA id ht5sm21549237wib.10.2015.10.06.15.09.23
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 06 Oct 2015 15:09:24 -0700 (PDT)
From: Cristina Moraru <cristina.moraru09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Cristina Moraru <cristina.moraru09@gmail.com>
Subject: [PATCH] staging: octeon: Add kernel-doc for function
Date: Wed,  7 Oct 2015 01:08:55 +0300
Message-Id: <1444169335-90949-1-git-send-email-cristina.moraru09@gmail.com>
X-Mailer: git-send-email 1.9.1

Add kernel-doc description for function cvm_oct_set_mac_filter

Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
---
 drivers/staging/octeon/ethernet.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/staging/octeon/ethernet.c b/drivers/staging/octeon/ethernet.c
index 13ee25d..ce116ec 100644
--- a/drivers/staging/octeon/ethernet.c
+++ b/drivers/staging/octeon/ethernet.c
@@ -364,6 +364,12 @@ static void cvm_oct_common_set_multicast_list(struct net_device *dev)
 	}
 }
 
+/**
+ * cvm_oct_set_mac_filter - set the MAC filter for a device
+ * @dev:    The device in question.
+ *
+ * Returns 0 on success or a negative error code.
+ */
 static int cvm_oct_set_mac_filter(struct net_device *dev)
 {
 	struct octeon_ethernet *priv = netdev_priv(dev);
-- 
1.9.1


