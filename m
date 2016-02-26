X-GM-THRID: 6255520477727424512
X-Received: by 10.182.19.164 with SMTP id g4mr260612obe.42.1456476865463;
        Fri, 26 Feb 2016 00:54:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.19.171 with SMTP id 40ls859892qgh.42.gmail; Fri, 26 Feb
 2016 00:54:24 -0800 (PST)
X-Received: by 10.129.116.214 with SMTP id p205mr238929ywc.55.1456476864730;
        Fri, 26 Feb 2016 00:54:24 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id r75si250774pfr.0.2016.02.26.00.54.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Feb 2016 00:54:24 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id fl4so4178227pad.2
        for <outreachy-kernel@googlegroups.com>; Fri, 26 Feb 2016 00:54:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=RT9A3ISHqun6+igQCDwg3nOdomrt0gCxbEhHMDAgo+0=;
        b=Vhu9QVdDvVgRRvE9DOxjRfurJ23jt6dHqfhWKzACK+EijqAMO91pdMqHpdI1Ersuju
         hhVr0b0qxjJRLa6xvl347+IZLxuVBW//H3z+JqOcqCx/Sxki4Ts80dMFHZBKA3buyXHT
         mMhMy7S8ZUnliWXFoVMWo5SVHT+MUhNyvw/8oXW1rl2pqYaEWhp6GRzTMYGs/cJ7Qnyq
         FyXdblfwjKjSNWR17dLt2KDPt8Ra/bXdMmXIsw2lZBQ6sSNDF84kpiYsIF3phBCCaBKU
         MTeVt4Gzo37RT8o6jrlheVfs4b+EHu0hDscBCULTSrcsQxC0QeNkFSo2MDqj9G3A5iVx
         rlhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=RT9A3ISHqun6+igQCDwg3nOdomrt0gCxbEhHMDAgo+0=;
        b=knyqgmrKHTTm3nnEFrjtA5XMCFuUNoDdnZ4GRcp6qdnNk6OWFS3fGUyP7CNCueLsyO
         B1GO60w2hLB0g+RjFSqvAXyKSDx8+ovU66Me/J6Ad/g/rOSkdDrTRnaormiL72Nr6acs
         isTUcwzG9zfGxmfIVQpJH5ZkrKLhBMv4zNK/J9jHYiExl1XnY7oU3CMzyKzwJYtXi8EP
         Q4s8hB5zAXn+QF3iYTBQzzrlw96+5bitTHhrq9gYjkHqWNpmHFrOs60S2DlvRiF/yUiY
         xZTQqnvEv0aDH4WhHwHUwcFomQprDiz8qjuNHq5UncwuWqGlJs7KhdfAPKwXtm7kncUr
         rbzQ==
X-Gm-Message-State: AD7BkJL9hBlsRwD7OZ3bgbTxdkNCgSa48304O03UbaYHS6kQUf9neD/eON0O1oQFkLLFKA==
X-Received: by 10.66.132.73 with SMTP id os9mr456886pab.27.1456476864516;
        Fri, 26 Feb 2016 00:54:24 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.179.114])
        by smtp.gmail.com with ESMTPSA id u5sm17592111pfi.15.2016.02.26.00.54.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Fri, 26 Feb 2016 00:54:23 -0800 (PST)
Date: Fri, 26 Feb 2016 14:24:21 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/8] staging: lustre: lclient: Replace kmem_cache_alloc with
 kmem_cache_zalloc
Message-ID: <b7b2cf468e55a32fd9b51033f5624d944a621b90.1456475758.git.amitoj1606@gmail.com>
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
 drivers/staging/lustre/lustre/lclient/lcommon_cl.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/lustre/lustre/lclient/lcommon_cl.c b/drivers/staging/lustre/lustre/lclient/lcommon_cl.c
index 30651f2..aced41a 100644
--- a/drivers/staging/lustre/lustre/lclient/lcommon_cl.c
+++ b/drivers/staging/lustre/lustre/lclient/lcommon_cl.c
@@ -116,7 +116,7 @@ void *ccc_key_init(const struct lu_context *ctx, struct lu_context_key *key)
 {
 	struct ccc_thread_info *info;
 
-	info = kmem_cache_alloc(ccc_thread_kmem, GFP_NOFS | __GFP_ZERO);
+	info = kmem_cache_zalloc(ccc_thread_kmem, GFP_NOFS);
 	if (!info)
 		info = ERR_PTR(-ENOMEM);
 	return info;
@@ -135,7 +135,7 @@ void *ccc_session_key_init(const struct lu_context *ctx,
 {
 	struct ccc_session *session;
 
-	session = kmem_cache_alloc(ccc_session_kmem, GFP_NOFS | __GFP_ZERO);
+	session = kmem_cache_zalloc(ccc_session_kmem, GFP_NOFS);
 	if (!session)
 		session = ERR_PTR(-ENOMEM);
 	return session;
@@ -251,7 +251,7 @@ int ccc_req_init(const struct lu_env *env, struct cl_device *dev,
 	struct ccc_req *vrq;
 	int result;
 
-	vrq = kmem_cache_alloc(ccc_req_kmem, GFP_NOFS | __GFP_ZERO);
+	vrq = kmem_cache_zalloc(ccc_req_kmem, GFP_NOFS);
 	if (vrq) {
 		cl_req_slice_add(req, &vrq->crq_cl, dev, &ccc_req_ops);
 		result = 0;
@@ -327,7 +327,7 @@ struct lu_object *ccc_object_alloc(const struct lu_env *env,
 	struct ccc_object *vob;
 	struct lu_object  *obj;
 
-	vob = kmem_cache_alloc(ccc_object_kmem, GFP_NOFS | __GFP_ZERO);
+	vob = kmem_cache_zalloc(ccc_object_kmem, GFP_NOFS);
 	if (vob) {
 		struct cl_object_header *hdr;
 
@@ -396,7 +396,7 @@ int ccc_lock_init(const struct lu_env *env,
 
 	CLOBINVRNT(env, obj, ccc_object_invariant(obj));
 
-	clk = kmem_cache_alloc(ccc_lock_kmem, GFP_NOFS | __GFP_ZERO);
+	clk = kmem_cache_zalloc(ccc_lock_kmem, GFP_NOFS);
 	if (clk) {
 		cl_lock_slice_add(lock, &clk->clk_cl, obj, lkops);
 		result = 0;
-- 
1.9.1


