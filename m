X-GM-THRID: 6201947249365221376
X-Received: by 10.107.136.229 with SMTP id s98mr12770807ioi.34.1444410620177;
        Fri, 09 Oct 2015 10:10:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.39.84 with SMTP id u78ls1320585qgu.93.gmail; Fri, 09 Oct
 2015 10:10:19 -0700 (PDT)
X-Received: by 10.129.134.129 with SMTP id w123mr11639742ywf.17.1444410619763;
        Fri, 09 Oct 2015 10:10:19 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id uv4si300055pac.0.2015.10.09.10.10.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Oct 2015 10:10:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id lk4so91726648pab.3
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Oct 2015 10:10:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=b/8DFdquK1g6gAw2RBNQg1f4pReR5wZvoPOff36WzRI=;
        b=lZFDIawg0EqQc/Sevl4Hw9d2T1WFAulRckPjB5rmcGPj9ZQKAIZIk9w3IZi8o3VM5z
         Sw3sHqR2iPbDBMaVZLq/jUV5YcW2vZ7wqycgz7B61tmbBBOEDeRBx/OjPLBxIWgK4j1J
         eMt2qRiMMpfUYlj+whCi+PPyq/tf0UhcH+KJKNz5m9rOSSK8q1cC79uWxbYMUT8aiM7n
         ew4GKNRvf1cnTcnsgOgjcC5G6jYZBt/h5aHm5nO8FXoORpPb0T2/br7YNlqBTyUa8EdY
         XM+lz2JDHEHdf0Ok1nNoBTEVqK6QcFbR9F+22YRz+K51qJe31sjvlbt1w/r1jb+xVaUc
         Edrg==
X-Received: by 10.66.232.40 with SMTP id tl8mr16001573pac.45.1444410619626;
        Fri, 09 Oct 2015 10:10:19 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id sn9sm3509950pac.16.2015.10.09.10.10.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 09 Oct 2015 10:10:18 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 1/2] Staging: lustre: obdclass: lu_object: Declare local functions as static
Date: Fri,  9 Oct 2015 22:40:06 +0530
Message-Id: <1444410607-5068-2-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1444410607-5068-1-git-send-email-shraddha.6596@gmail.com>
References: <1444410607-5068-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150209.5617F4FA.004B,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Declare lu_dev_add_linkage and lu_object_find as static since they are
used only in this particular file. Also remove the corresponding
declarations from header file.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/lustre/lustre/include/lu_object.h  |  5 -----
 drivers/staging/lustre/lustre/obdclass/lu_object.c | 11 +++++------
 2 files changed, 5 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/lu_object.h b/drivers/staging/lustre/lustre/include/lu_object.h
index e2199c2..7dafc28 100644
--- a/drivers/staging/lustre/lustre/include/lu_object.h
+++ b/drivers/staging/lustre/lustre/include/lu_object.h
@@ -671,8 +671,6 @@ void lu_object_fini       (struct lu_object *o);
 void lu_object_add_top    (struct lu_object_header *h, struct lu_object *o);
 void lu_object_add	(struct lu_object *before, struct lu_object *o);
 
-void lu_dev_add_linkage(struct lu_site *s, struct lu_device *d);
-
 /**
  * Helpers to initialize and finalize device types.
  */
@@ -715,9 +713,6 @@ int lu_site_purge(const struct lu_env *env, struct lu_site *s, int nr);
 
 void lu_site_print(const struct lu_env *env, struct lu_site *s, void *cookie,
 		   lu_printer_t printer);
-struct lu_object *lu_object_find(const struct lu_env *env,
-				 struct lu_device *dev, const struct lu_fid *f,
-				 const struct lu_object_conf *conf);
 struct lu_object *lu_object_find_at(const struct lu_env *env,
 				    struct lu_device *dev,
 				    const struct lu_fid *f,
diff --git a/drivers/staging/lustre/lustre/obdclass/lu_object.c b/drivers/staging/lustre/lustre/obdclass/lu_object.c
index 814e56a..a801b6c 100644
--- a/drivers/staging/lustre/lustre/obdclass/lu_object.c
+++ b/drivers/staging/lustre/lustre/obdclass/lu_object.c
@@ -572,13 +572,13 @@ static struct lu_object *htable_lookup(struct lu_site *s,
  * return it. Otherwise, create new object, insert it into cache and return
  * it. In any case, additional reference is acquired on the returned object.
  */
-struct lu_object *lu_object_find(const struct lu_env *env,
-				 struct lu_device *dev, const struct lu_fid *f,
-				 const struct lu_object_conf *conf)
+static struct lu_object *lu_object_find(const struct lu_env *env,
+					struct lu_device *dev,
+					const struct lu_fid *f,
+					const struct lu_object_conf *conf)
 {
 	return lu_object_find_at(env, dev->ld_site->ls_top_dev, f, conf);
 }
-EXPORT_SYMBOL(lu_object_find);
 
 static struct lu_object *lu_object_new(const struct lu_env *env,
 				       struct lu_device *dev,
@@ -925,14 +925,13 @@ cfs_hash_ops_t lu_site_hash_ops = {
 	.hs_put_locked  = lu_obj_hop_put_locked,
 };
 
-void lu_dev_add_linkage(struct lu_site *s, struct lu_device *d)
+static void lu_dev_add_linkage(struct lu_site *s, struct lu_device *d)
 {
 	spin_lock(&s->ls_ld_lock);
 	if (list_empty(&d->ld_linkage))
 		list_add(&d->ld_linkage, &s->ls_ld_linkage);
 	spin_unlock(&s->ls_ld_lock);
 }
-EXPORT_SYMBOL(lu_dev_add_linkage);
 
 /**
  * Initialize site \a s, with \a d as the top level device.
-- 
2.1.4


