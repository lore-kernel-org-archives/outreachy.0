X-GM-THRID: 6211463142533234688
X-Received: by 10.140.196.76 with SMTP id r73mr6659110qha.3.1446218971065;
        Fri, 30 Oct 2015 08:29:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.138.230 with SMTP id qt6ls181398igb.44.gmail; Fri, 30 Oct
 2015 08:29:30 -0700 (PDT)
X-Received: by 10.50.61.168 with SMTP id q8mr1258476igr.10.1446218970586;
        Fri, 30 Oct 2015 08:29:30 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id el2si795124pbb.0.2015.10.30.08.29.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2015 08:29:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x229.google.com with SMTP id z6so77277277pas.2
        for <outreachy-kernel@googlegroups.com>; Fri, 30 Oct 2015 08:29:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=AmY+Bd/+fTEnX7y/tedZTInzEubunwSZq4ZHF68n8QQ=;
        b=DExbFTR0Cn1/Ob/ahGfODJz2qyEFcAAhZqc8B1ow9edgK6qx1DnnXX89TPYn6U4okW
         kESciWpYEkRZG6bRGOceOrmxver9LVQDiWNTp6CYdqAB/CxfD1uckKWFMX/+TNFIFyoT
         LIOi+QgYsE7T3SQZCG5vTOIJ/1Aqdo9lYtrF8HTivwowEtI1hkRdkgN1Hns9zkl7Ful+
         TUqBva6D6VMQ2ceW5Pq76S3zoyu+8oFoXyYTv7btL2yC817XP095oYqtess9cn7BagOx
         MpusVJKTYpI6JZE+ca05cMPy98vxmJdMiwy/NzTXBUvFHWI4okmnFpijskgzROZ/9Rx3
         lZFg==
X-Received: by 10.66.253.232 with SMTP id ad8mr9451089pad.21.1446218970467;
        Fri, 30 Oct 2015 08:29:30 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id dn4sm8883843pbd.0.2015.10.30.08.29.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 30 Oct 2015 08:29:29 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 4/7] Staging: lustre: fld: Declare local functions as static
Date: Fri, 30 Oct 2015 20:59:06 +0530
Message-Id: <1446218949-8599-5-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1446218949-8599-1-git-send-email-shraddha.6596@gmail.com>
References: <1446218949-8599-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A15020A.56338CD9.0062,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Declare fld_cache_entry_delete and fld_cache_insert_nolock as static
since they are used only in this particular file. Also remove
corresponding declarations from header file.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/lustre/lustre/fld/fld_cache.c    | 8 ++++----
 drivers/staging/lustre/lustre/fld/fld_internal.h | 4 ----
 2 files changed, 4 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/lustre/lustre/fld/fld_cache.c b/drivers/staging/lustre/lustre/fld/fld_cache.c
index 4469174..c4db390 100644
--- a/drivers/staging/lustre/lustre/fld/fld_cache.c
+++ b/drivers/staging/lustre/lustre/fld/fld_cache.c
@@ -121,8 +121,8 @@ void fld_cache_fini(struct fld_cache *cache)
 /**
  * delete given node from list.
  */
-void fld_cache_entry_delete(struct fld_cache *cache,
-			    struct fld_cache_entry *node)
+static void fld_cache_entry_delete(struct fld_cache *cache,
+				   struct fld_cache_entry *node)
 {
 	list_del(&node->fce_list);
 	list_del(&node->fce_lru);
@@ -377,8 +377,8 @@ struct fld_cache_entry
  * This function handles all cases of merging and breaking up of
  * ranges.
  */
-int fld_cache_insert_nolock(struct fld_cache *cache,
-			    struct fld_cache_entry *f_new)
+static int fld_cache_insert_nolock(struct fld_cache *cache,
+				   struct fld_cache_entry *f_new)
 {
 	struct fld_cache_entry *f_curr;
 	struct fld_cache_entry *n;
diff --git a/drivers/staging/lustre/lustre/fld/fld_internal.h b/drivers/staging/lustre/lustre/fld/fld_internal.h
index fbb232d..ab184a6 100644
--- a/drivers/staging/lustre/lustre/fld/fld_internal.h
+++ b/drivers/staging/lustre/lustre/fld/fld_internal.h
@@ -156,8 +156,6 @@ int fld_cache_insert(struct fld_cache *cache,
 struct fld_cache_entry
 *fld_cache_entry_create(const struct lu_seq_range *range);
 
-int fld_cache_insert_nolock(struct fld_cache *cache,
-			    struct fld_cache_entry *f_new);
 void fld_cache_delete(struct fld_cache *cache,
 		      const struct lu_seq_range *range);
 void fld_cache_delete_nolock(struct fld_cache *cache,
@@ -167,8 +165,6 @@ int fld_cache_lookup(struct fld_cache *cache,
 
 struct fld_cache_entry*
 fld_cache_entry_lookup(struct fld_cache *cache, struct lu_seq_range *range);
-void fld_cache_entry_delete(struct fld_cache *cache,
-			    struct fld_cache_entry *node);
 void fld_dump_cache_entries(struct fld_cache *cache);
 
 struct fld_cache_entry
-- 
2.1.4


