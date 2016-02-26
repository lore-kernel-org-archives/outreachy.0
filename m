X-GM-THRID: 6255520477727424512
X-Received: by 10.129.159.131 with SMTP id w125mr263807ywg.26.1456476871092;
        Fri, 26 Feb 2016 00:54:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.148.68 with SMTP id w65ls711524iod.20.gmail; Fri, 26 Feb
 2016 00:54:30 -0800 (PST)
X-Received: by 10.107.164.208 with SMTP id d77mr6149366ioj.22.1456476870836;
        Fri, 26 Feb 2016 00:54:30 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id u66si1925025pfa.2.2016.02.26.00.54.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Feb 2016 00:54:30 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id t66so102284pfb.0
        for <outreachy-kernel@googlegroups.com>; Fri, 26 Feb 2016 00:54:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=FcuB5tJac9cL/auTbah/1kMIL8Xvwic+0qqny0fPBpU=;
        b=QsHg3YzdLbml7KjePLh2oCHGNS9ZTkYCI9HJB0IjXCs9xnO87FH9XkK/pwf5ZGjZ3D
         q/pAFS94VHxfL03KZMRJZYj6KTQSyTcARyP4QafJpQPyclc7Wjhfe1X2X+ND8QoJDPf3
         IK22XgieC83dafkSYhe5of66yZoo6LPPgbtee/wJESmAB5/xTjUAzpuzMr7rFSwPDmDh
         ZN+tBfR02J4ceZXveS/Ib30FmpRpW7Jt8GDKvT3pgdQbXf6sgBLSYfgPv7BC3oI1kfT6
         vx8IK19uxJ3uFr64UhO7Aub3zd2TQVjun7GyRYEgfAWUaLCS3C72Tx8yGDdtFB6VHQt+
         TyJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=FcuB5tJac9cL/auTbah/1kMIL8Xvwic+0qqny0fPBpU=;
        b=Zn/1kknNlD8zRrAd7V7PZSwrwQbtPOymtTp8W11TRhEWiPt/vrtvpRXqq6bxQBqEMF
         dek53Apk95w68cZOFqXQuPOvlJ+narp6IfhwwR4qFlLdO3e1GlBK8upgNMH9hZRjFnu9
         iLqdwjjjycz5Vfpy5JBSYMsiyTJqBvNq0VYGhzFpyjfX9E7rw1Pcw6iTz1tbzs/hOlml
         uRWUzXi5HOXoVNt1RGJyUq/Eucit9PLEZx2tfT48+PJJ63zQU497TyyflxPqJmCKHl9C
         JK/ogMesMJUHLy/ppIPsAEgMWZcU3JqArtSmiW4/Ft5iGzcDzJWtUwHDvc1160Pbt9HQ
         vIZA==
X-Gm-Message-State: AD7BkJKJqYbnFJ5zQhBkKAHC60UNHiY2BJej+dgT4ZhH3aYTv0d1EUIYn2UFaHckz3Ohvw==
X-Received: by 10.98.93.205 with SMTP id n74mr454194pfj.99.1456476870637;
        Fri, 26 Feb 2016 00:54:30 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.179.114])
        by smtp.gmail.com with ESMTPSA id wx3sm15983643pab.25.2016.02.26.00.54.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Fri, 26 Feb 2016 00:54:30 -0800 (PST)
Date: Fri, 26 Feb 2016 14:24:27 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/8] staging: lustre: obdclass: Replace kmem_cache_alloc with
 kmem_cache_zalloc
Message-ID: <f2410166fdb4415f86cab70ff2b1b1b4a7532b98.1456475758.git.amitoj1606@gmail.com>
References: <cover.1456475758.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1456475758.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Use kmem_cache_zalloc instead of manually setting kmem_cache_alloc 
with flag GFP_ZERO since kmem_alloc_zalloc sets allocated memory
to zero.

The Coccinelle semantic patch used to make this change is as
follows:
// <smpl>
@@
expression e,f;
@@
- kmem_cache_alloc(e, f |__GFP_ZERO)
+ kmem_cache_zalloc(e, f)
// </smpl>

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/lustre/lustre/obdclass/cl_lock.c   | 2 +-
 drivers/staging/lustre/lustre/obdclass/cl_object.c | 2 +-
 drivers/staging/lustre/lustre/obdclass/genops.c    | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/lustre/lustre/obdclass/cl_lock.c b/drivers/staging/lustre/lustre/obdclass/cl_lock.c
index 7b7f344..e5cb29c 100644
--- a/drivers/staging/lustre/lustre/obdclass/cl_lock.c
+++ b/drivers/staging/lustre/lustre/obdclass/cl_lock.c
@@ -361,7 +361,7 @@ static struct cl_lock *cl_lock_alloc(const struct lu_env *env,
 	struct cl_lock	  *lock;
 	struct lu_object_header *head;
 
-	lock = kmem_cache_alloc(cl_lock_kmem, GFP_NOFS | __GFP_ZERO);
+	lock = kmem_cache_zalloc(cl_lock_kmem, GFP_NOFS);
 	if (lock) {
 		atomic_set(&lock->cll_ref, 1);
 		lock->cll_descr = *descr;
diff --git a/drivers/staging/lustre/lustre/obdclass/cl_object.c b/drivers/staging/lustre/lustre/obdclass/cl_object.c
index 39b4fd0..0abac20 100644
--- a/drivers/staging/lustre/lustre/obdclass/cl_object.c
+++ b/drivers/staging/lustre/lustre/obdclass/cl_object.c
@@ -662,7 +662,7 @@ static struct lu_env *cl_env_new(__u32 ctx_tags, __u32 ses_tags, void *debug)
 	struct lu_env *env;
 	struct cl_env *cle;
 
-	cle = kmem_cache_alloc(cl_env_kmem, GFP_NOFS | __GFP_ZERO);
+	cle = kmem_cache_zalloc(cl_env_kmem, GFP_NOFS);
 	if (cle) {
 		int rc;
 
diff --git a/drivers/staging/lustre/lustre/obdclass/genops.c b/drivers/staging/lustre/lustre/obdclass/genops.c
index 9042632..4b04828 100644
--- a/drivers/staging/lustre/lustre/obdclass/genops.c
+++ b/drivers/staging/lustre/lustre/obdclass/genops.c
@@ -69,7 +69,7 @@ static struct obd_device *obd_device_alloc(void)
 {
 	struct obd_device *obd;
 
-	obd = kmem_cache_alloc(obd_device_cachep, GFP_NOFS | __GFP_ZERO);
+	obd = kmem_cache_zalloc(obd_device_cachep, GFP_NOFS);
 	if (obd)
 		obd->obd_magic = OBD_DEVICE_MAGIC;
 	return obd;
-- 
1.9.1


