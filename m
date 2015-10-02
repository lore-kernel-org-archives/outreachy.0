X-GM-THRID: 6201124442892926976
X-Received: by 10.112.130.41 with SMTP id ob9mr2868124lbb.17.1443811795831;
        Fri, 02 Oct 2015 11:49:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.218.207 with SMTP id r198ls273968lfg.40.gmail; Fri, 02 Oct
 2015 11:49:55 -0700 (PDT)
X-Received: by 10.112.142.195 with SMTP id ry3mr2964886lbb.22.1443811795229;
        Fri, 02 Oct 2015 11:49:55 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-wi0-x22f.google.com (mail-wi0-x22f.google.com. [2a00:1450:400c:c05::22f])
        by gmr-mx.google.com with ESMTPS id hs5si8864wib.1.2015.10.02.11.49.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2015 11:49:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) client-ip=2a00:1450:400c:c05::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22f.google.com with SMTP id ge5so45540619wic.0
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Oct 2015 11:49:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=R/VeD039c+RfmMFJVukwoQ1YBd5i3f+hkqJBNV4q9pM=;
        b=APeF24z40mTInrDSMhXlihBKDsT69iGWQH8O6fmqD1prETnq/t3EU2crZniNy1/W7X
         gnevAng86YIRNj6J6Y61t0JMaKtM64aJpoW8ZhdvtkRDoyrZzdxuY/Y9BuOBHLmLxp1M
         StxhY1dzlP6a454PFltcz7tV1FbtHMkTS0G52hohpbL3OFaeH21JUtyuBLeABjUT+T5H
         UF1qVlCBFkRQIrkbMac2VUvK2o8PBof0UwQkvXxqag+IZt9/EObZLxbCQcZutYta5lh3
         JJ8ZPxZOpeSpXqByQzRcJOo+3E6uMdtGx+yBiVzdIdFkuCKyGRDweFmqo9Ft1Om5sAba
         8PBg==
X-Received: by 10.194.77.4 with SMTP id o4mr20459125wjw.4.1443811795110;
        Fri, 02 Oct 2015 11:49:55 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from localhost.localdomain ([141.85.225.214])
        by smtp.gmail.com with ESMTPSA id hx4sm12631590wjb.31.2015.10.02.11.49.54
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 02 Oct 2015 11:49:54 -0700 (PDT)
From: Cristina Moraru <cristina.moraru09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Cristina Moraru <cristina.moraru09@gmail.com>
Subject: [PATCH] staging: octeon: Switch unnecessary /** to /*
Date: Fri,  2 Oct 2015 21:49:45 +0300
Message-Id: <1443811785-50375-1-git-send-email-cristina.moraru09@gmail.com>
X-Mailer: git-send-email 1.9.1

Fix kernel-doc comment used as regular comment.
Fix 'cannot understand function prototype' Warning

Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
---
 drivers/staging/octeon/ethernet.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/octeon/ethernet.c b/drivers/staging/octeon/ethernet.c
index 87ab6c6..14eb4af 100644
--- a/drivers/staging/octeon/ethernet.c
+++ b/drivers/staging/octeon/ethernet.c
@@ -86,19 +86,19 @@ int rx_napi_weight = 32;
 module_param(rx_napi_weight, int, 0444);
 MODULE_PARM_DESC(rx_napi_weight, "The NAPI WEIGHT parameter.");
 
-/**
+/*
  * cvm_oct_poll_queue - Workqueue for polling operations.
  */
 struct workqueue_struct *cvm_oct_poll_queue;
 
-/**
+/*
  * cvm_oct_poll_queue_stopping - flag to indicate polling should stop.
  *
  * Set to one right before cvm_oct_poll_queue is destroyed.
  */
 atomic_t cvm_oct_poll_queue_stopping = ATOMIC_INIT(0);
 
-/**
+/*
  * Array of every ethernet device owned by this driver indexed by
  * the ipd input port number.
  */
-- 
1.9.1


