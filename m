X-GM-THRID: 7783898415104
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,50e70a48f0408055
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.50.92.67 with SMTP id ck3mr5687931igb.5.1426134452105;
        Wed, 11 Mar 2015 21:27:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.111.116 with SMTP id ih20ls1720739igb.20.canary; Wed, 11
 Mar 2015 21:27:31 -0700 (PDT)
X-Received: by 10.43.90.6 with SMTP id bg6mr34828494icc.11.1426134451855;
        Wed, 11 Mar 2015 21:27:31 -0700 (PDT)
Return-Path: <iskaranth@gmail.com>
Received: from mail-pa0-x22e.google.com (mail-pa0-x22e.google.com. [2607:f8b0:400e:c03::22e])
        by gmr-mx.google.com with ESMTPS id gu4si1102557pac.1.2015.03.11.21.27.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Mar 2015 21:27:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of iskaranth@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) client-ip=2607:f8b0:400e:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of iskaranth@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) smtp.mail=iskaranth@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pabrd3 with SMTP id rd3so17155171pab.5
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Mar 2015 21:27:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references:in-reply-to
         :references;
        bh=sW1APxnncz5m4MQaf+dZ9bab3j+04gDG1Nn5ElJlnXY=;
        b=BMop2w7iPLpsVRDVcbFgPYuGg5JR4pRqwNEPRkv8y7U2amxq0qWQ4lsLo+7fJ9Tfux
         8lUVneRxEfNzToxtEXBFsRPySGkxrr/hzp7Q9N4N61gsWpS6B84Qp7QRdWTIspB3cPrG
         RfLklqTIpClWLr8cfS3mYOisQv3QcVamTR3wAt+hf94kfCNeBAw9bYghaWOC3Ja+c/iu
         595ptu6pyZl4N3fZE/HxxilzdEi3PVRGjLr+CpbP5e26PGO1YreNnTM+Kq6qYPY8taLG
         3me0cfMBTIet9e5L8edsef4G4/mSgIB9sReK7q0cKG2rku9aWQzSXnQ4W2zmXG9jewIr
         rblQ==
X-Received: by 10.70.64.228 with SMTP id r4mr84799916pds.15.1426134451738;
        Wed, 11 Mar 2015 21:27:31 -0700 (PDT)
Return-Path: <iskaranth@gmail.com>
Received: from localhost.localdomain ([222.117.133.143])
        by mx.google.com with ESMTPSA id ny9sm8476191pdb.37.2015.03.11.21.27.29
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 11 Mar 2015 21:27:30 -0700 (PDT)
From: Supriya Karanth <iskaranth@gmail.com>
To: iskaranth@gmail.com,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 1/4] staging: i2o: remove intialization of static ints
Date: Thu, 12 Mar 2015 13:26:18 +0900
Message-Id: <62bdafa6e2fb551d014204ca3af041a194a3e365.1426129493.git.iskaranth@gmail.com>
X-Mailer: git-send-email 2.1.0
In-Reply-To: <cover.1426129493.git.iskaranth@gmail.com>
References: <cover.1426129493.git.iskaranth@gmail.com>
In-Reply-To: <cover.1426129493.git.iskaranth@gmail.com>
References: <cover.1426129493.git.iskaranth@gmail.com>

static ints are initialized to 0 by the compiler.
Explicit initialization is not necessary.

Found by checkpatch.pl - ERROR: do not initialise statics to 0 or NULL

changes made using coccinelle script:
@@
type T;
identifier var;
@@
static T var
- =0
;

Signed-off-by: Supriya Karanth <iskaranth@gmail.com>
---
 drivers/staging/i2o/i2o_block.c  | 2 +-
 drivers/staging/i2o/i2o_config.c | 2 +-
 drivers/staging/i2o/iop.c        | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/i2o/i2o_block.c b/drivers/staging/i2o/i2o_block.c
index 0a13c64..7784787 100644
--- a/drivers/staging/i2o/i2o_block.c
+++ b/drivers/staging/i2o/i2o_block.c
@@ -1028,7 +1028,7 @@ static int i2o_block_probe(struct device *dev)
 	struct i2o_block_device *i2o_blk_dev;
 	struct gendisk *gd;
 	struct request_queue *queue;
-	static int unit = 0;
+	static int unit;
 	int rc;
 	u64 size;
 	u32 blocksize;
diff --git a/drivers/staging/i2o/i2o_config.c b/drivers/staging/i2o/i2o_config.c
index 5748663..cd7ca5e 100644
--- a/drivers/staging/i2o/i2o_config.c
+++ b/drivers/staging/i2o/i2o_config.c
@@ -64,7 +64,7 @@ struct i2o_cfg_info {
 	struct i2o_cfg_info *next;
 };
 static struct i2o_cfg_info *open_files = NULL;
-static ulong i2o_cfg_info_id = 0;
+static ulong i2o_cfg_info_id;
 
 static int i2o_cfg_getiops(unsigned long arg)
 {
diff --git a/drivers/staging/i2o/iop.c b/drivers/staging/i2o/iop.c
index 52334fc..6cae63c 100644
--- a/drivers/staging/i2o/iop.c
+++ b/drivers/staging/i2o/iop.c
@@ -1042,7 +1042,7 @@ static void i2o_iop_release(struct device *dev)
  */
 struct i2o_controller *i2o_iop_alloc(void)
 {
-	static int unit = 0;	/* 0 and 1 are NULL IOP and Local Host */
+	static int unit;	/* 0 and 1 are NULL IOP and Local Host */
 	struct i2o_controller *c;
 	char poolname[32];
 
-- 
2.1.0


