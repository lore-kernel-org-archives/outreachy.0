X-GM-THRID: 6212138738119606272
X-Received: by 10.129.137.133 with SMTP id z127mr13840964ywf.25.1446377807570;
        Sun, 01 Nov 2015 03:36:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.117.97 with SMTP id kd1ls591686igb.19.gmail; Sun, 01 Nov
 2015 03:36:47 -0800 (PST)
X-Received: by 10.50.114.162 with SMTP id jh2mr2698918igb.9.1446377807312;
        Sun, 01 Nov 2015 03:36:47 -0800 (PST)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id el2si1512134pbb.0.2015.11.01.03.36.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Nov 2015 03:36:47 -0800 (PST)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id hy1so112566075pad.0
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Nov 2015 03:36:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=yS2h3pqhmE/XzPdl/pZeQannFpx7h7F9wWopBjqkBMI=;
        b=sTgcgVahzapyqr4phHNX0JJ2z93W2t8DwPB174yCqZFwQd6aqd9K1L6QhVQZNOjACb
         ROET4AWwB3+GJKp3zeBDBFAIeIskY0Sy5uzhJcoId1axtbyyuaStREVZB+KIY0IwgNYj
         wEkYQF7i3D5R8aC2Srs4QWhWlKq3NwBARU28Gf8GI6S3/AK/Gj0uWhcMHU+l26dxQuoF
         OfueQ97km3j0KosbGNUIsx7IztRn8f70pJsHPb5ff8hPN9rTLgz526l8AzrWf82qc7Gs
         Rr860qMVLceyNs5YfcleIgoaKx1Vxudx05FzMg19S+7gwvd/mEt90w8iLDgrMWkjmymj
         Pc0Q==
X-Received: by 10.66.156.1 with SMTP id wa1mr20311211pab.84.1446377807186;
        Sun, 01 Nov 2015 03:36:47 -0800 (PST)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id qn5sm18230904pac.41.2015.11.01.03.36.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 01 Nov 2015 03:36:46 -0800 (PST)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 3/3] Staging: lustre: libcfs: Remove unused functions
Date: Sun,  1 Nov 2015 17:06:32 +0530
Message-Id: <1446377794-7761-2-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1446377794-7761-1-git-send-email-shraddha.6596@gmail.com>
References: <1446377794-7761-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150201.5635F94D.0166,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

The functions cfs_hash_bd_findadd_locked and cfs_hash_bd_finddel_locked
are not used anywhere. Thus remove these functions.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
Changes in v2-
 Fix commit message.

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


