X-GM-THRID: 9881078726656
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,dd95e5ef2cc5e81,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.50.57.47 with SMTP id f15mr27218467igq.1.1427328180700;
        Wed, 25 Mar 2015 17:03:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.106.136 with SMTP id e8ls522692qgf.15.gmail; Wed, 25 Mar
 2015 17:03:00 -0700 (PDT)
X-Received: by 10.236.207.68 with SMTP id m44mr13169033yho.25.1427328180510;
        Wed, 25 Mar 2015 17:03:00 -0700 (PDT)
Return-Path: <helen.fornazier@gmail.com>
Received: from mail-qg0-x229.google.com (mail-qg0-x229.google.com. [2607:f8b0:400d:c04::229])
        by gmr-mx.google.com with ESMTPS id kt5si515229qcb.3.2015.03.25.17.03.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Mar 2015 17:03:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of helen.fornazier@gmail.com designates 2607:f8b0:400d:c04::229 as permitted sender) client-ip=2607:f8b0:400d:c04::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of helen.fornazier@gmail.com designates 2607:f8b0:400d:c04::229 as permitted sender) smtp.mail=helen.fornazier@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x229.google.com with SMTP id p97so71386092qge.1
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Mar 2015 17:03:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=R9MTgxIKHEaQskv5/8k4V9Q85ARH0S02qle1/wFycHc=;
        b=NlMGUSxzgXrei+pQcwOsHISpgWXwjWH3CfVJHAj3jeikkA2xtTVfVkyah17qCss7GR
         IiiqvAgjQ6nJNBAklPJCUrj7h2neVR4GJgY0u2wqR77fWbSa5XnTbVqZq9ON00Jx4lg+
         O2JyidideZ0WcG9BOvrX3J6rOIW4Tf2eSaeFZofTpTDLzyDSokkn6mubOdwRD4mgL4Aq
         4A6LmrOWCCUIFlj1fZtEszAqtBZ8TvnvaP84vOsPVlG8TV4dFF8zPo7sOnhoMBpI12Wz
         VRVjeyRYQBRAHutsH+S/N03fO1Oh3E7OfxGXwXmaheqVoQK3nm+so/aJWWWc5AeEt8eL
         KaMw==
X-Received: by 10.55.22.213 with SMTP id 82mr23260449qkw.103.1427328180454;
        Wed, 25 Mar 2015 17:03:00 -0700 (PDT)
Return-Path: <helen.fornazier@gmail.com>
Received: from Cracker.linksys.com ([179.159.91.9])
        by mx.google.com with ESMTPSA id 135sm2484485qhq.23.2015.03.25.17.02.58
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 25 Mar 2015 17:02:59 -0700 (PDT)
From: Helen Fornazier <helen.fornazier@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Helen Fornazier <helen.fornazier@gmail.com>
Subject: [PATCH] Staging: i2o: Remove indentation of labels
Date: Wed, 25 Mar 2015 21:02:42 -0300
Message-Id: <1427328162-6345-1-git-send-email-helen.fornazier@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes the checkpatche.pl warnings:

WARNING: labels should not be indented
+      context_remove:

WARNING: labels should not be indented
+      nop_msg:

WARNING: labels should not be indented
+      exit:

Signed-off-by: Helen Fornazier <helen.fornazier@gmail.com>
---
 drivers/staging/i2o/i2o_block.c | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/i2o/i2o_block.c b/drivers/staging/i2o/i2o_block.c
index 7784787..406758f 100644
--- a/drivers/staging/i2o/i2o_block.c
+++ b/drivers/staging/i2o/i2o_block.c
@@ -871,13 +871,13 @@ static int i2o_block_transfer(struct request *req)
 
 	return 0;
 
-      context_remove:
+context_remove:
 	i2o_cntxt_list_remove(c, req);
 
-      nop_msg:
+nop_msg:
 	i2o_msg_nop(c, msg);
 
-      exit:
+exit:
 	return rc;
 };
 
@@ -1002,13 +1002,13 @@ static struct i2o_block_device *i2o_block_device_alloc(void)
 
 	return dev;
 
-      cleanup_queue:
+cleanup_queue:
 	put_disk(gd);
 
-      cleanup_dev:
+cleanup_dev:
 	kfree(dev);
 
-      exit:
+exit:
 	return ERR_PTR(rc);
 };
 
@@ -1115,10 +1115,10 @@ static int i2o_block_probe(struct device *dev)
 
 	return 0;
 
-      claim_release:
+claim_release:
 	i2o_device_claim_release(i2o_dev);
 
-      exit:
+exit:
 	return rc;
 };
 
@@ -1187,16 +1187,16 @@ static int __init i2o_block_init(void)
 
 	return 0;
 
-      unregister_blkdev:
+unregister_blkdev:
 	unregister_blkdev(I2O_MAJOR, "i2o_block");
 
-      free_mempool:
+free_mempool:
 	mempool_destroy(i2o_blk_req_pool.pool);
 
-      free_slab:
+free_slab:
 	kmem_cache_destroy(i2o_blk_req_pool.slab);
 
-      exit:
+exit:
 	return rc;
 };
 
-- 
1.9.1


