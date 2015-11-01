X-GM-THRID: 6212138738119606272
X-Received: by 10.107.164.233 with SMTP id d102mr15020925ioj.13.1446376262596;
        Sun, 01 Nov 2015 03:11:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.231.167 with SMTP id th7ls670668obc.46.gmail; Sun, 01 Nov
 2015 03:11:02 -0800 (PST)
X-Received: by 10.182.19.195 with SMTP id h3mr13955243obe.25.1446376262277;
        Sun, 01 Nov 2015 03:11:02 -0800 (PST)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22e.google.com (mail-pa0-x22e.google.com. [2607:f8b0:400e:c03::22e])
        by gmr-mx.google.com with ESMTPS id el2si1507633pbb.0.2015.11.01.03.11.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Nov 2015 03:11:02 -0800 (PST)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) client-ip=2607:f8b0:400e:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22e.google.com with SMTP id fv9so123223448pac.3
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Nov 2015 03:11:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=IseAvNVh6HqCdJSGdagQgrIXy/II7s1rOyqknyFC+90=;
        b=H1Nn/DGviLmxgqckKECMji3ntWuk9d7cR6uaH/DYU0qxk/Is70N4GVEA9ghyHDVhtP
         r1ZE5zBAQdqSyaGJ7muHcSONQrWQqvHMuUjM1+j1nef/2hy19Oc/W3yecCZ2tDo+tTpE
         GXni9q8DtcvkLn50Bidozhuy8t78BOtOy2gWCJQAqADhLXZnvuAQWgxgTrC6eyQoacGN
         Q7J3bzWBKXUioaYlvegQXSTV4b/yao43rJNRvO86Hqqvjdjhs22DY6BjyYMvXPAi1wJX
         Wqc4DMe+SHEhDiroLKBjoHm1Iyf/+R3Cz7TzBk/JGOMTnG+NWvJVMZSrY2DSLKJMzA05
         dKfA==
X-Received: by 10.68.135.132 with SMTP id ps4mr20018925pbb.74.1446376262158;
        Sun, 01 Nov 2015 03:11:02 -0800 (PST)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id jt1sm18047346pbc.83.2015.11.01.03.11.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 01 Nov 2015 03:11:01 -0800 (PST)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 3/3] Staging: lustre: libcfs: Remove unused structures
Date: Sun,  1 Nov 2015 16:40:44 +0530
Message-Id: <1446376246-6959-2-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1446376246-6959-1-git-send-email-shraddha.6596@gmail.com>
References: <1446376246-6959-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150202.5635F344.01CD,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

The structures cfs_hash_bd_findadd_locked and -cfs_hash_bd_finddel_locked
are not used anywhere. Thus remove these structures.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 .../lustre/include/linux/libcfs/libcfs_hash.h       |  7 -------
 drivers/staging/lustre/lustre/libcfs/hash.c         | 21 ---------------------
 2 files changed, 28 deletions(-)

diff --git a/drivers/staging/lustre/include/linux/libcfs/libcfs_hash.h b/drivers/staging/lustre/include/linux/libcfs/libcfs_hash.h
index 70b8b29..d29e359 100644
--- a/drivers/staging/lustre/include/linux/libcfs/libcfs_hash.h
+++ b/drivers/staging/lustre/include/linux/libcfs/libcfs_hash.h
@@ -641,13 +641,6 @@ cfs_hash_bd_lookup_locked(struct cfs_hash *hs, struct cfs_hash_bd *bd,
 struct hlist_node *
 cfs_hash_bd_peek_locked(struct cfs_hash *hs, struct cfs_hash_bd *bd,
 			const void *key);
-struct hlist_node *
-cfs_hash_bd_findadd_locked(struct cfs_hash *hs, struct cfs_hash_bd *bd,
-			   const void *key, struct hlist_node *hnode,
-			   int insist_add);
-struct hlist_node *
-cfs_hash_bd_finddel_locked(struct cfs_hash *hs, struct cfs_hash_bd *bd,
-			   const void *key, struct hlist_node *hnode);
 
 /**
  * operations on cfs_hash bucket (bd: bucket descriptor),
diff --git a/drivers/staging/lustre/lustre/libcfs/hash.c b/drivers/staging/lustre/lustre/libcfs/hash.c
index 0308744..ae6c646 100644
--- a/drivers/staging/lustre/lustre/libcfs/hash.c
+++ b/drivers/staging/lustre/lustre/libcfs/hash.c
@@ -680,27 +680,6 @@ cfs_hash_bd_peek_locked(struct cfs_hash *hs, struct cfs_hash_bd *bd, const void
 }
 EXPORT_SYMBOL(cfs_hash_bd_peek_locked);
 
-struct hlist_node *
-cfs_hash_bd_findadd_locked(struct cfs_hash *hs, struct cfs_hash_bd *bd,
-			   const void *key, struct hlist_node *hnode,
-			   int noref)
-{
-	return cfs_hash_bd_lookup_intent(hs, bd, key, hnode,
-					 (!noref * CFS_HS_LOOKUP_MASK_REF) |
-					 CFS_HS_LOOKUP_IT_ADD);
-}
-EXPORT_SYMBOL(cfs_hash_bd_findadd_locked);
-
-struct hlist_node *
-cfs_hash_bd_finddel_locked(struct cfs_hash *hs, struct cfs_hash_bd *bd,
-			   const void *key, struct hlist_node *hnode)
-{
-	/* hnode can be NULL, we find the first item with @key */
-	return cfs_hash_bd_lookup_intent(hs, bd, key, hnode,
-					 CFS_HS_LOOKUP_IT_FINDDEL);
-}
-EXPORT_SYMBOL(cfs_hash_bd_finddel_locked);
-
 static void
 cfs_hash_multi_bd_lock(struct cfs_hash *hs, struct cfs_hash_bd *bds,
 		       unsigned n, int excl)
-- 
2.1.4


