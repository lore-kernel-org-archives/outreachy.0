X-GM-THRID: 1441778368512
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,8f560d6fb9b203e1,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.36.132 with SMTP id q4mr278519laj.6.1424458201844;
        Fri, 20 Feb 2015 10:50:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.85.229 with SMTP id k5ls163636wiz.0.canary; Fri, 20 Feb
 2015 10:50:00 -0800 (PST)
X-Received: by 10.180.13.98 with SMTP id g2mr35009wic.3.1424458199998;
        Fri, 20 Feb 2015 10:49:59 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from mail-wg0-x22b.google.com (mail-wg0-x22b.google.com. [2a00:1450:400c:c00::22b])
        by gmr-mx.google.com with ESMTPS id o3si159027wib.2.2015.02.20.10.49.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 10:49:59 -0800 (PST)
Received-SPF: pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c00::22b as permitted sender) client-ip=2a00:1450:400c:c00::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c00::22b as permitted sender) smtp.mail=aysemelikeyurtoglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x22b.google.com with SMTP id z12so14914993wgg.2
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 10:49:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=UVMdOo7u+y+2q/YRHHQlih69FFrwmqswAST1bJUx1Xc=;
        b=u+rHahSNdiOxZkqzSnT5GdNs/iLsHd1CihdXNz4ywTAi6nzj8YWNWh9Jn6dvZWshyy
         7uzfCEwpLr3KprUUywTSJ1+EYTEYigjbRXChIIKFwm3V3d8IRtpAp7bwb2o7drQstSe4
         sITtpKSekSJSb/bfT6zl3zcXnbHaFIGx0YoNtGl0Fsh1CFupctRLWHjD8x8BjaczdzTU
         rtPQM7/72cJctT6/A8jHeOywK2ckx8zKt/Y5eZTjxPOBwItMOsbq8+P0PpNet0qwxCQe
         b1PZOY0MESRKhPpsyw+aHGxeHVJ1Dy/cu6vOMSxDONvQA7gnoYgSDXbY6q1SNi7EAurF
         OP+A==
X-Received: by 10.194.242.6 with SMTP id wm6mr21247922wjc.7.1424458199833;
        Fri, 20 Feb 2015 10:49:59 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from localhost.localdomain ([81.214.238.226])
        by mx.google.com with ESMTPSA id k1sm43254276wjn.9.2015.02.20.10.49.58
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 20 Feb 2015 10:49:59 -0800 (PST)
From: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
Subject: [PATCH v2] Staging: lustre: Remove typedefs
Date: Fri, 20 Feb 2015 20:49:20 +0200
Message-Id: <1424458160-22284-1-git-send-email-aysemelikeyurtoglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

WARNING:do not add new typedefs.Remove typedefs,the names of the renamed
types changed.
That was found by running checkpatch.

Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
---

v2:the names of the renamed types changed and changed the subject line and description

 drivers/staging/lustre/include/linux/libcfs/libcfs_hash.h | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/lustre/include/linux/libcfs/libcfs_hash.h b/drivers/staging/lustre/include/linux/libcfs/libcfs_hash.h
index 4dcae61..485d84a 100644
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
@@ -671,7 +671,7 @@ struct hlist_node *cfs_hash_dual_bd_finddel_locked(struct cfs_hash *hs,
 struct cfs_hash *cfs_hash_create(char *name, unsigned cur_bits, unsigned max_bits,
 				 unsigned bkt_bits, unsigned extra_bytes,
 			    unsigned min_theta, unsigned max_theta,
-			    cfs_hash_ops_t *ops, unsigned flags);
+			    cfs_hash_ops *ops, unsigned flags);
 
 struct cfs_hash *cfs_hash_getref(struct cfs_hash *hs);
 void cfs_hash_putref(struct cfs_hash *hs);
-- 
1.8.3.2


