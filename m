X-GM-THRID: 6201866686183768064
X-Received: by 10.180.105.98 with SMTP id gl2mr1689337wib.0.1443984612350;
        Sun, 04 Oct 2015 11:50:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.105.132 with SMTP id gm4ls694417wib.17.canary; Sun, 04 Oct
 2015 11:50:11 -0700 (PDT)
X-Received: by 10.180.188.211 with SMTP id gc19mr1681558wic.6.1443984611980;
        Sun, 04 Oct 2015 11:50:11 -0700 (PDT)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-wi0-x235.google.com (mail-wi0-x235.google.com. [2a00:1450:400c:c05::235])
        by gmr-mx.google.com with ESMTPS id c7si232685wiy.3.2015.10.04.11.50.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2015 11:50:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) client-ip=2a00:1450:400c:c05::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) smtp.mailfrom=haticeerturk27@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by wiclk2 with SMTP id lk2so92656056wic.0
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Oct 2015 11:50:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:mime-version:content-type
         :content-transfer-encoding;
        bh=nmi9Z07JGxNEZdNLYvGojAbfUdD3tCFRh1NejFddgcE=;
        b=Kga4/ksMqefrrMi8VORxVBMtXk5vxQqlCpJfP71onw46WRSWPOyIp+hjJ7G5ENTiDq
         Aqe9gu8qll7wCEVbqhm5GxtI1zUtBqeEgU8QBHniuJPqN85Eb7gQupBGr145tgOjHfEk
         kmDT/jgwPsA9Qq0Lcu/iB4jMsjfS5cpoCw4mo2kaNrMxSv1EfGwhrS9TsZrGylFEzOxN
         Dss5eRMuBFtftD44FqsLhUeoUG8AXs/QvNT0W+Ju7oatWIDBPHcktAfz/mHR9K2CgzcI
         ux2AqY5jxif4lEKfMQYLvNWWLGUt6lZXgABM26AE/UlVpashptsHUcVzVW7trBY0DEya
         MwEw==
X-Received: by 10.180.109.35 with SMTP id hp3mr6959743wib.51.1443984611885;
        Sun, 04 Oct 2015 11:50:11 -0700 (PDT)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([88.242.105.163])
        by smtp.googlemail.com with ESMTPSA id qc4sm22848639wjc.33.2015.10.04.11.50.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 04 Oct 2015 11:50:11 -0700 (PDT)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] drivers: mtd: ftl.c: Remove intialization of static to 0
Date: Sun,  4 Oct 2015 21:49:53 +0300
Message-Id: <1443984593-12445-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

initial value unassigned static variables are automatically set to zero. So it is unnecessary to assign the initial value to zero

Signed-off-by: Hatice ERTÜRK <haticeerturk27@gmail.com>
---
 drivers/mtd/ftl.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/mtd/ftl.c b/drivers/mtd/ftl.c
index dabf084..afec65f 100644
--- a/drivers/mtd/ftl.c
+++ b/drivers/mtd/ftl.c
@@ -651,7 +651,7 @@ static int reclaim_block(partition_t *part)
 		      "unit to be prepared...\n");
 		mtd_sync(part->mbd.mtd);
 	    } else {
-		static int ne = 0;
+		static int ne;
 		if (++ne < 5)
 		    printk(KERN_NOTICE "ftl_cs: reclaim failed: no "
 			   "suitable transfer units!\n");
@@ -681,7 +681,7 @@ static int reclaim_block(partition_t *part)
 		eun = i;
 	    }
 	if (best == 0) {
-	    static int ne = 0;
+	    static int ne;
 	    if (++ne < 5)
 		printk(KERN_NOTICE "ftl_cs: reclaim failed: "
 		       "no free blocks!\n");
@@ -765,7 +765,7 @@ static uint32_t find_free(partition_t *part)
 	if (BLOCK_FREE(le32_to_cpu(part->bam_cache[blk]))) break;
     if (blk == part->BlocksPerUnit) {
 #ifdef PSYCHO_DEBUG
-	static int ne = 0;
+	static int ne;
 	if (++ne == 1)
 	    dump_lists(part);
 #endif
@@ -861,7 +861,7 @@ static int set_bam_entry(partition_t *part, uint32_t log_addr,
     if (((virt_addr == 0xfffffffe) && !BLOCK_FREE(old_addr)) ||
 	((virt_addr == 0) && (BLOCK_TYPE(old_addr) != BLOCK_DATA)) ||
 	(!BLOCK_DELETED(virt_addr) && (old_addr != 0xfffffffe))) {
-	static int ne = 0;
+	static int ne;
 	if (++ne < 5) {
 	    printk(KERN_NOTICE "ftl_cs: set_bam_entry() inconsistency!\n");
 	    printk(KERN_NOTICE "ftl_cs:   log_addr = 0x%x, old = 0x%x"
@@ -874,7 +874,7 @@ static int set_bam_entry(partition_t *part, uint32_t log_addr,
     if (part->bam_index == eun) {
 #ifdef PSYCHO_DEBUG
 	if (le32_to_cpu(part->bam_cache[blk]) != old_addr) {
-	    static int ne = 0;
+	    static int ne;
 	    if (++ne < 5) {
 		printk(KERN_NOTICE "ftl_cs: set_bam_entry() "
 		       "inconsistency!\n");
@@ -931,7 +931,7 @@ static int ftl_write(partition_t *part, caddr_t buffer,
 	/* Grab a free block */
 	blk = find_free(part);
 	if (blk == 0) {
-	    static int ne = 0;
+	    static int ne;
 	    if (++ne < 5)
 		printk(KERN_NOTICE "ftl_cs: internal error: "
 		       "no free blocks!\n");
-- 
1.9.1


