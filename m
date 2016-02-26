X-GM-THRID: 6255520477727424512
X-Received: by 10.13.248.4 with SMTP id i4mr269705ywf.20.1456476899929;
        Fri, 26 Feb 2016 00:54:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.73.226 with SMTP id o2ls469235igv.8.gmail; Fri, 26 Feb 2016
 00:54:59 -0800 (PST)
X-Received: by 10.66.150.68 with SMTP id ug4mr228955pab.33.1456476899627;
        Fri, 26 Feb 2016 00:54:59 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id ff2si1924512pad.2.2016.02.26.00.54.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Feb 2016 00:54:59 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id w128so4357750pfb.2
        for <outreachy-kernel@googlegroups.com>; Fri, 26 Feb 2016 00:54:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=msAiRodU1aRhuDO35quN2PUX9dij1SFhpqadTfrAgkM=;
        b=Pk2iNY6wF4Rp3Cf8kBl0XAfAUxNswyoeRI2AQIKLlZvPTpfrxDkVccTwhsI2wYL3j0
         Zo74TS7V2z7DAhzHsvXTyHqdplQP5VNsdxwIBJHmaB2lg0GFScyWejIUss51j5ZQ1JRU
         ee6L7RDmPJg5VYAKsqgyDVbZC2iBJkI6fgXOkv34vHyWJf7rWQ5Tix7BjaEM7bwjg5H4
         tJ+FqD4ER0c3nNqlw2UIreA1i5JsGICtuhyvr3gTTVFWlk/+rp7PXTmV4wj/DPdaSidX
         rUVigwhN8ZaRPUED7XTaxt3fi4oQUzJplHHxcgHNBQz7DBOZANKMzWgKXsxbOrPCpVEl
         YRjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=msAiRodU1aRhuDO35quN2PUX9dij1SFhpqadTfrAgkM=;
        b=mncqi0FYnkqazBcOhM4NfFi+yD3naBz/ZYbs5DcFIqHRGgGl8f9KoyDVLfzmbbkSCk
         pEvDpBFm0xZ34BXdknxayiQb88YoP7hq/x5WTZPYEtjjWMc9huQNKBX/IoPI69oRLEax
         H9k4POahYSpUxEyGmatAxYSWyUuF8aP9upxPNbIMKG82nsxsScKkByPeWuJurG291j30
         aqsB+/HcfarCwOabneVvb7N2ezFeHDCs9YMqQ0gYpdQPE6JrQqvTLqezH2yX4lEG/eaz
         wGrNwei6b3TBMlJjjfTeCdDmCDJ4bfsErJmrFWcAJSLeeGhJQMMGe73YMi025zjxZYS8
         ySKw==
X-Gm-Message-State: AD7BkJLu91XPyxts1iUFJe8s9R0WHNdZymQl5qPcpb9NCP94DysbsjhIKOHVZ2gZ1QLWKA==
X-Received: by 10.98.69.78 with SMTP id s75mr508036pfa.102.1456476899447;
        Fri, 26 Feb 2016 00:54:59 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.179.114])
        by smtp.gmail.com with ESMTPSA id ko9sm17597788pab.37.2016.02.26.00.54.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Fri, 26 Feb 2016 00:54:58 -0800 (PST)
Date: Fri, 26 Feb 2016 14:24:55 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 6/8] staging: lustre: osc: Replace kmem_cache_alloc with
 kmem_cache_zalloc
Message-ID: <14cf6f6674d83676159a2da6732fb08b8bad6397.1456475758.git.amitoj1606@gmail.com>
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
 drivers/staging/lustre/lustre/osc/osc_cache.c   | 2 +-
 drivers/staging/lustre/lustre/osc/osc_dev.c     | 4 ++--
 drivers/staging/lustre/lustre/osc/osc_io.c      | 2 +-
 drivers/staging/lustre/lustre/osc/osc_lock.c    | 2 +-
 drivers/staging/lustre/lustre/osc/osc_object.c  | 2 +-
 drivers/staging/lustre/lustre/osc/osc_quota.c   | 2 +-
 drivers/staging/lustre/lustre/osc/osc_request.c | 4 ++--
 7 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/lustre/lustre/osc/osc_cache.c b/drivers/staging/lustre/lustre/osc/osc_cache.c
index c6623c1..c2c795f 100644
--- a/drivers/staging/lustre/lustre/osc/osc_cache.c
+++ b/drivers/staging/lustre/lustre/osc/osc_cache.c
@@ -347,7 +347,7 @@ static struct osc_extent *osc_extent_alloc(struct osc_object *obj)
 {
 	struct osc_extent *ext;
 
-	ext = kmem_cache_alloc(osc_extent_kmem, GFP_NOFS | __GFP_ZERO);
+	ext = kmem_cache_zalloc(osc_extent_kmem, GFP_NOFS);
 	if (!ext)
 		return NULL;
 
diff --git a/drivers/staging/lustre/lustre/osc/osc_dev.c b/drivers/staging/lustre/lustre/osc/osc_dev.c
index 67cb6e4..d4fe507 100644
--- a/drivers/staging/lustre/lustre/osc/osc_dev.c
+++ b/drivers/staging/lustre/lustre/osc/osc_dev.c
@@ -122,7 +122,7 @@ static void *osc_key_init(const struct lu_context *ctx,
 {
 	struct osc_thread_info *info;
 
-	info = kmem_cache_alloc(osc_thread_kmem, GFP_NOFS | __GFP_ZERO);
+	info = kmem_cache_zalloc(osc_thread_kmem, GFP_NOFS);
 	if (!info)
 		info = ERR_PTR(-ENOMEM);
 	return info;
@@ -147,7 +147,7 @@ static void *osc_session_init(const struct lu_context *ctx,
 {
 	struct osc_session *info;
 
-	info = kmem_cache_alloc(osc_session_kmem, GFP_NOFS | __GFP_ZERO);
+	info = kmem_cache_zalloc(osc_session_kmem, GFP_NOFS);
 	if (!info)
 		info = ERR_PTR(-ENOMEM);
 	return info;
diff --git a/drivers/staging/lustre/lustre/osc/osc_io.c b/drivers/staging/lustre/lustre/osc/osc_io.c
index 2d8d93c..489d73d 100644
--- a/drivers/staging/lustre/lustre/osc/osc_io.c
+++ b/drivers/staging/lustre/lustre/osc/osc_io.c
@@ -804,7 +804,7 @@ int osc_req_init(const struct lu_env *env, struct cl_device *dev,
 	struct osc_req *or;
 	int result;
 
-	or = kmem_cache_alloc(osc_req_kmem, GFP_NOFS | __GFP_ZERO);
+	or = kmem_cache_zalloc(osc_req_kmem, GFP_NOFS);
 	if (or) {
 		cl_req_slice_add(req, &or->or_cl, dev, &osc_req_ops);
 		result = 0;
diff --git a/drivers/staging/lustre/lustre/osc/osc_lock.c b/drivers/staging/lustre/lustre/osc/osc_lock.c
index 87f3522..870ca16 100644
--- a/drivers/staging/lustre/lustre/osc/osc_lock.c
+++ b/drivers/staging/lustre/lustre/osc/osc_lock.c
@@ -1567,7 +1567,7 @@ int osc_lock_init(const struct lu_env *env,
 	struct osc_lock *clk;
 	int result;
 
-	clk = kmem_cache_alloc(osc_lock_kmem, GFP_NOFS | __GFP_ZERO);
+	clk = kmem_cache_zalloc(osc_lock_kmem, GFP_NOFS);
 	if (clk) {
 		__u32 enqflags = lock->cll_descr.cld_enq_flags;
 
diff --git a/drivers/staging/lustre/lustre/osc/osc_object.c b/drivers/staging/lustre/lustre/osc/osc_object.c
index 60d8230..9d474fc 100644
--- a/drivers/staging/lustre/lustre/osc/osc_object.c
+++ b/drivers/staging/lustre/lustre/osc/osc_object.c
@@ -255,7 +255,7 @@ struct lu_object *osc_object_alloc(const struct lu_env *env,
 	struct osc_object *osc;
 	struct lu_object *obj;
 
-	osc = kmem_cache_alloc(osc_object_kmem, GFP_NOFS | __GFP_ZERO);
+	osc = kmem_cache_zalloc(osc_object_kmem, GFP_NOFS);
 	if (osc) {
 		obj = osc2lu(osc);
 		lu_object_init(obj, NULL, dev);
diff --git a/drivers/staging/lustre/lustre/osc/osc_quota.c b/drivers/staging/lustre/lustre/osc/osc_quota.c
index 208f72b..194d8ed 100644
--- a/drivers/staging/lustre/lustre/osc/osc_quota.c
+++ b/drivers/staging/lustre/lustre/osc/osc_quota.c
@@ -30,7 +30,7 @@ static inline struct osc_quota_info *osc_oqi_alloc(u32 id)
 {
 	struct osc_quota_info *oqi;
 
-	oqi = kmem_cache_alloc(osc_quota_kmem, GFP_NOFS | __GFP_ZERO);
+	oqi = kmem_cache_zalloc(osc_quota_kmem, GFP_NOFS);
 	if (oqi)
 		oqi->oqi_id = id;
 
diff --git a/drivers/staging/lustre/lustre/osc/osc_request.c b/drivers/staging/lustre/lustre/osc/osc_request.c
index 10f262f..1ef31dc 100644
--- a/drivers/staging/lustre/lustre/osc/osc_request.c
+++ b/drivers/staging/lustre/lustre/osc/osc_request.c
@@ -1897,7 +1897,7 @@ int osc_build_rpc(const struct lu_env *env, struct client_obd *cli,
 		goto out;
 	}
 
-	oa = kmem_cache_alloc(obdo_cachep, GFP_NOFS | __GFP_ZERO);
+	oa = kmem_cache_zalloc(obdo_cachep, GFP_NOFS);
 	if (!oa) {
 		rc = -ENOMEM;
 		goto out;
@@ -2959,7 +2959,7 @@ static int osc_set_info_async(const struct lu_env *env, struct obd_export *exp,
 
 		CLASSERT(sizeof(*aa) <= sizeof(req->rq_async_args));
 		aa = ptlrpc_req_async_args(req);
-		oa = kmem_cache_alloc(obdo_cachep, GFP_NOFS | __GFP_ZERO);
+		oa = kmem_cache_zalloc(obdo_cachep, GFP_NOFS);
 		if (!oa) {
 			ptlrpc_req_finished(req);
 			return -ENOMEM;
-- 
1.9.1


