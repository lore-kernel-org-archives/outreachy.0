X-GM-THRID: 6255520477727424512
X-Received: by 10.129.101.66 with SMTP id z63mr269126ywb.14.1456476886288;
        Fri, 26 Feb 2016 00:54:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.94.34 with SMTP id f31ls942597qge.76.gmail; Fri, 26 Feb
 2016 00:54:45 -0800 (PST)
X-Received: by 10.140.102.163 with SMTP id w32mr17436612qge.10.1456476885494;
        Fri, 26 Feb 2016 00:54:45 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id r75si250774pfr.0.2016.02.26.00.54.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Feb 2016 00:54:45 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id fl4so4178227pad.2
        for <outreachy-kernel@googlegroups.com>; Fri, 26 Feb 2016 00:54:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Q0SvqnlO02c/b2D491Te7cSoTNCy9IduUeKCNg5HYYU=;
        b=wVmTyOyECVyxNzcOg6z6g+jhUt9EVutzkVWgHQlbv+CXYb+PSmDrylT0eneWO+HyIQ
         p8F9rNRSuaAZZFf8XrvXbRS09GEwUNiGBYN1DQjD+AUkWdcMv2tCovW1wSJ+bEaAsijw
         BD0d7VXhzKd9V0UYk8HBLyuu7Nrvq9+SrMsgkm0ftXarDO/AXmtcKsjRfiHGWbgCEtfR
         Z9XiJGjh8gobKJtEAPU9o2fDSMQmYW4A6Qe/h77mhV/LgeQq63JC0AbcI2Jk/ans+l0W
         GbwGIPWisjJWTS5epwW+1qttaQYuwdQjrZFXz/H7kCMTpUd5ZACL4Z9OBAjBJWShTMDx
         K+kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Q0SvqnlO02c/b2D491Te7cSoTNCy9IduUeKCNg5HYYU=;
        b=I5N0SNdlLwb9x0CvPgRVNdSXRKVWlsy8oqbasBJ1mSBi1MoDZDlVs0KhDRz/rPj/On
         p9JHiR26binGtM/f5zIAaaq2XJgT3UIE3HmOrTeue1QmIy/R7MNQ7tVBtfB0GHrTjXKu
         i6ujleAL6SjQCKpUhG5KKTyDXdGVCOe7UpxS0PWLaLCIuM7zNJ7uPkreMK3jQZIaNwYd
         qnIjNyQQpsdF2h+KjFmOnX07yXi4HQ5oDxEQ0mbaDSYOM/MqkAJo+v5kasWEBuOKAM/F
         AS7ymdpX8v9YrlXnBS2TKTxCqWNMaOKV+82gHDW6roiBIWlrK0uGJZSE0HgJcuaezIpx
         Sz9w==
X-Gm-Message-State: AD7BkJJdX76E6QPvp+S1rr1/5SQcblZPo5B7O19THZKQzVEs6/PYCq3riUVunBqQ9JNm6w==
X-Received: by 10.66.119.202 with SMTP id kw10mr487547pab.110.1456476885276;
        Fri, 26 Feb 2016 00:54:45 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.179.114])
        by smtp.gmail.com with ESMTPSA id 17sm17557652pfp.96.2016.02.26.00.54.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Fri, 26 Feb 2016 00:54:44 -0800 (PST)
Date: Fri, 26 Feb 2016 14:24:41 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 4/8] staging: lustre: obdecho: Replace kmem_cache_alloc with
 kmem_cache_zalloc
Message-ID: <f0e8ab8be1e6e7ee2ad4c2845e60a9d5b9791214.1456475758.git.amitoj1606@gmail.com>
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
 drivers/staging/lustre/lustre/obdecho/echo_client.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/lustre/lustre/obdecho/echo_client.c b/drivers/staging/lustre/lustre/obdecho/echo_client.c
index 3be28c5..1cd85d7 100644
--- a/drivers/staging/lustre/lustre/obdecho/echo_client.c
+++ b/drivers/staging/lustre/lustre/obdecho/echo_client.c
@@ -392,7 +392,7 @@ static int echo_lock_init(const struct lu_env *env,
 {
 	struct echo_lock *el;
 
-	el = kmem_cache_alloc(echo_lock_kmem, GFP_NOFS | __GFP_ZERO);
+	el = kmem_cache_zalloc(echo_lock_kmem, GFP_NOFS);
 	if (el) {
 		cl_lock_slice_add(lock, &el->el_cl, obj, &echo_lock_ops);
 		el->el_object = cl2echo_obj(obj);
@@ -562,7 +562,7 @@ static struct lu_object *echo_object_alloc(const struct lu_env *env,
 
 	/* we're the top dev. */
 	LASSERT(!hdr);
-	eco = kmem_cache_alloc(echo_object_kmem, GFP_NOFS | __GFP_ZERO);
+	eco = kmem_cache_zalloc(echo_object_kmem, GFP_NOFS);
 	if (eco) {
 		struct cl_object_header *hdr = &eco->eo_hdr;
 
@@ -625,7 +625,7 @@ static void *echo_thread_key_init(const struct lu_context *ctx,
 {
 	struct echo_thread_info *info;
 
-	info = kmem_cache_alloc(echo_thread_kmem, GFP_NOFS | __GFP_ZERO);
+	info = kmem_cache_zalloc(echo_thread_kmem, GFP_NOFS);
 	if (!info)
 		info = ERR_PTR(-ENOMEM);
 	return info;
@@ -656,7 +656,7 @@ static void *echo_session_key_init(const struct lu_context *ctx,
 {
 	struct echo_session_info *session;
 
-	session = kmem_cache_alloc(echo_session_kmem, GFP_NOFS | __GFP_ZERO);
+	session = kmem_cache_zalloc(echo_session_kmem, GFP_NOFS);
 	if (!session)
 		session = ERR_PTR(-ENOMEM);
 	return session;
-- 
1.9.1


