X-GM-THRID: 975091793920
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,d42b1c9bcf5ebd76,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.12.146 with SMTP id y18mr979452wib.6.1424379853232;
        Thu, 19 Feb 2015 13:04:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.120.137 with SMTP id lc9ls178938lab.28.gmail; Thu, 19 Feb
 2015 13:04:12 -0800 (PST)
X-Received: by 10.152.37.200 with SMTP id a8mr847460lak.5.1424379852812;
        Thu, 19 Feb 2015 13:04:12 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from mail-wg0-x236.google.com (mail-wg0-x236.google.com. [2a00:1450:400c:c00::236])
        by gmr-mx.google.com with ESMTPS id el6si955345wib.2.2015.02.19.13.04.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 13:04:12 -0800 (PST)
Received-SPF: pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c00::236 as permitted sender) client-ip=2a00:1450:400c:c00::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c00::236 as permitted sender) smtp.mail=aysemelikeyurtoglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x236.google.com with SMTP id y19so9534226wgg.13
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Feb 2015 13:04:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=hy6H0DEPRxnqjXixZS77nBrdQ38imcwCoBh2lUTyTXY=;
        b=BOziEBnB15qQMEaGNa97/sghGljIU86XlYQNC1w+9tkwqpqau+hbys9yvHAc6JBNjW
         A1Yng/kAbdkvp0MPAFLU5sVVQQEOQ9Nrg5+x+EKU/LONWdrO/zrrJnd1dT2p5N3tcMsY
         Jxd9FML2SSFub7O//RvOwvDkjaBArMhnqCvh+mtvEfW9YEtsGZocmzkBTS8wm8BH9Fhd
         eEAjizbw64botss6ah/liqJ/ky1XmlONBdPmgyF8mRmefswfbHGdDvwnVzDbzFxbRiyn
         mrbl+U743UeRTg9U5JTTyzJuqJ9a2L2dTHvprQ7E0o3cypWcjYww7OJQViTsEJT25eKi
         xBmg==
X-Received: by 10.180.24.65 with SMTP id s1mr13818326wif.30.1424379852424;
        Thu, 19 Feb 2015 13:04:12 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from localhost.localdomain ([81.214.238.226])
        by mx.google.com with ESMTPSA id pp10sm39032456wjc.31.2015.02.19.13.04.09
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 19 Feb 2015 13:04:11 -0800 (PST)
From: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
Subject: [PATCH] Staging: lustre: include: lustre: include: linux: libcfs: Remove typedefs
Date: Thu, 19 Feb 2015 23:03:21 +0200
Message-Id: <1424379801-24942-1-git-send-email-aysemelikeyurtoglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

This patch fixes "do not add new typedefs" checkpatch.pl warning in
libcfs_hash.h

Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
---
 drivers/staging/lustre/include/linux/libcfs/libcfs_hash.h | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/lustre/include/linux/libcfs/libcfs_hash.h b/drivers/staging/lustre/include/linux/libcfs/libcfs_hash.h
index 4dcae61..ee3116e 100644
--- a/drivers/staging/lustre/include/linux/libcfs/libcfs_hash.h
+++ b/drivers/staging/lustre/include/linux/libcfs/libcfs_hash.h
@@ -272,7 +272,7 @@ struct cfs_hash {
 	char			hs_name[0];
 };
 
-typedef struct cfs_hash_lock_ops {
+struct cfs_hash_lock_ops {
 	/** lock the hash table */
 	void    (*hs_lock)(union cfs_hash_lock *lock, int exclusive);
 	/** unlock the hash table */
@@ -281,9 +281,9 @@ typedef struct cfs_hash_lock_ops {
 	void    (*hs_bkt_lock)(union cfs_hash_lock *lock, int exclusive);
 	/** unlock the hash bucket */
 	void    (*hs_bkt_unlock)(union cfs_hash_lock *lock, int exclusive);
-} cfs_hash_lock_ops_t;
+};
 
-typedef struct cfs_hash_hlist_ops {
+struct cfs_hash_hlist_ops {
 	/** return hlist_head of hash-head of @bd */
 	struct hlist_head *(*hop_hhead)(struct cfs_hash *hs, struct cfs_hash_bd *bd);
 	/** return hash-head size */
@@ -294,9 +294,9 @@ typedef struct cfs_hash_hlist_ops {
 	/** remove @hnode from hash-head of @bd */
 	int (*hop_hnode_del)(struct cfs_hash *hs,
 			     struct cfs_hash_bd *bd, struct hlist_node *hnode);
-} cfs_hash_hlist_ops_t;
+};
 
-typedef struct cfs_hash_ops {
+struct cfs_hash_ops {
 	/** return hashed value from @key */
 	unsigned (*hs_hash)(struct cfs_hash *hs, const void *key, unsigned mask);
 	/** return key address of @hnode */
@@ -318,7 +318,7 @@ typedef struct cfs_hash_ops {
 	void     (*hs_put_locked)(struct cfs_hash *hs, struct hlist_node *hnode);
 	/** it's called before removing of @hnode */
 	void     (*hs_exit)(struct cfs_hash *hs, struct hlist_node *hnode);
-} cfs_hash_ops_t;
+};
 
 /** total number of buckets in @hs */
 #define CFS_HASH_NBKT(hs)       \
-- 
1.8.3.2


