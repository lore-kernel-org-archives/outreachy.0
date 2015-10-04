X-GM-THRID: 6201835486956224512
X-Received: by 10.180.208.7 with SMTP id ma7mr1350756wic.5.1443977348029;
        Sun, 04 Oct 2015 09:49:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.198.44 with SMTP id iz12ls679680wic.4.gmail; Sun, 04 Oct
 2015 09:49:07 -0700 (PDT)
X-Received: by 10.194.59.166 with SMTP id a6mr4448200wjr.6.1443977347449;
        Sun, 04 Oct 2015 09:49:07 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-wi0-x236.google.com (mail-wi0-x236.google.com. [2a00:1450:400c:c05::236])
        by gmr-mx.google.com with ESMTPS id c7si222671wiy.3.2015.10.04.09.49.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2015 09:49:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) client-ip=2a00:1450:400c:c05::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x236.google.com with SMTP id fx3so89869091wic.1
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Oct 2015 09:49:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=ZHBHELcx1C+1EDSBp3p8GEsBxTpu5d/Ho6QKAfj+230=;
        b=TUzB2PgA57lhCGrSaS32brHTgoukbQOAjDtlUb19B1oNoDy2s6RDAooW+IHMEEYLM5
         tqUv2a7d8j033pXFOW2acvXf7mruur63sdXhBKfBbx9xmIQY8nlSpfYfrWme/qQMkTdu
         6ZBMe5QFJ3axaGMoHt7yDnVtf5szB6vMZLhGGHQJe/h+JFnYTa0ewP4HkC7GSJuXk+h3
         cllrdk8hkPaMed7o5VHeLGqxiyaw7ECx3iyO8XZXmpfy3azf7/Glq0c9LG+M7q/uYNQb
         IQa4L3e74sD0C5yQxWXITnp57k2IajG7742XSe+Q8Yuf4j6xnJ5bwWZd9EIIcpKeC5V5
         8aNw==
X-Received: by 10.180.39.175 with SMTP id q15mr7755443wik.73.1443977347364;
        Sun, 04 Oct 2015 09:49:07 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from localhost.localdomain ([141.85.225.214])
        by smtp.gmail.com with ESMTPSA id mx19sm10126844wic.0.2015.10.04.09.49.06
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 04 Oct 2015 09:49:06 -0700 (PDT)
From: Cristina Moraru <cristina.moraru09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Cristina Moraru <cristina.moraru09@gmail.com>
Subject: [PATCH] staging: octeon: Add kernel-doc for function
Date: Sun,  4 Oct 2015 19:48:58 +0300
Message-Id: <1443977338-86936-1-git-send-email-cristina.moraru09@gmail.com>
X-Mailer: git-send-email 1.9.1

Add kernel-doc comment for function cvm_oct_set_mac_filter

Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
---
 drivers/staging/octeon/ethernet.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/octeon/ethernet.c b/drivers/staging/octeon/ethernet.c
index 798aa6c..eb3b12c 100644
--- a/drivers/staging/octeon/ethernet.c
+++ b/drivers/staging/octeon/ethernet.c
@@ -363,7 +363,12 @@ static void cvm_oct_common_set_multicast_list(struct net_device *dev)
 			       gmx_cfg.u64);
 	}
 }
-
+/**
+ * cvm_oct_set_mac_filter - set the MAC filter for a device
+ * @dev:    The device in question.
+ *
+ * Returns Zero on success
+ */
 static int cvm_oct_set_mac_filter(struct net_device *dev)
 {
 	struct octeon_ethernet *priv = netdev_priv(dev);
-- 
1.9.1


