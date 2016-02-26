X-GM-THRID: 6255520477727424512
X-Received: by 10.50.20.135 with SMTP id n7mr1326958ige.5.1456476906252;
        Fri, 26 Feb 2016 00:55:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.32.130 with SMTP id g124ls672334iog.70.gmail; Fri, 26 Feb
 2016 00:55:06 -0800 (PST)
X-Received: by 10.98.44.87 with SMTP id s84mr255842pfs.3.1456476905990;
        Fri, 26 Feb 2016 00:55:05 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id yd9si1757459pab.1.2016.02.26.00.55.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Feb 2016 00:55:05 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id q63so1041156pfb.1
        for <outreachy-kernel@googlegroups.com>; Fri, 26 Feb 2016 00:55:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=AzRsU6epIP0Raj176E/IHzDfx6xWDCQRUx96bkC/nuM=;
        b=ermonPnR+glRwyhTj+YKuKToF8dUZYDleoMPtGg2742O1a9AhBa4B3Cwm9pq5gt1rt
         6720ijWkv6FdyBH3KkzdhKX3uyAB4P7m05V3o274d9G1NYzAQFntxtig+DAu4Qgf4sOO
         dZcXyVzzR60+2qmpvba40SBRE5UDsS2l+6uuPvlLB2mBbFuMm41cVENOW89Raj7QjFde
         FCnI2XT3rXQmeLzuevXyeckHX6esXs3ReQIZnvZRnWodmAK0VXtdWl5LMEPQYTDiPESd
         XIc8NlYL7YJvh0flN2r4qQHb6abVQ/mjocBIPc0ggESpHFx+Sb7kxmHFH6kHzqGVJlz4
         Oh1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=AzRsU6epIP0Raj176E/IHzDfx6xWDCQRUx96bkC/nuM=;
        b=ZmbD+oOTTEe//03ZJ5hHLPbQgYv9vwHLVcyidQkEprMy71xSHW/pEaAttLmELc6avF
         YvfSPt1kbwf5SaXPQSbnUQUlKB97/zMCHjiEzpIO8FwsJZkj/JiI5svI7I9/DmtIQXF7
         wIWkv62loHK04opkmLk1TadJZZ4Ry1aje2BlZIrq0yykpQvWWRXpvJ/xzWGG2UEkA74e
         gjrQ+jNt0YhaK5ACzqiF/fpWhu1g4+f0mLwOL/XA7aaU6hNwXfsgaoOECHHwvTqysEsO
         LVKuAqNoT4tvPQEL9DfeZyp3DelHRZkOj5ze9LtzGhx9FoalvgP5LKODY+suWPbA75fq
         07zg==
X-Gm-Message-State: AD7BkJKXDJXZ7UxlXhMZCosbZlbfk/bTkEmZAECOqWv6z+/dL4CF0sP4DIji8aN0GsCZZg==
X-Received: by 10.98.11.88 with SMTP id t85mr503792pfi.98.1456476905814;
        Fri, 26 Feb 2016 00:55:05 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.179.114])
        by smtp.gmail.com with ESMTPSA id d81sm17553592pfj.77.2016.02.26.00.55.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Fri, 26 Feb 2016 00:55:05 -0800 (PST)
Date: Fri, 26 Feb 2016 14:25:02 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 7/8] staging: lustre: ldlm: Replace kmem_cache_alloc with
 kmem_cache_zalloc
Message-ID: <6a52cf0103a3dde960100e6e207b4acf1cfe01bc.1456475758.git.amitoj1606@gmail.com>
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
 drivers/staging/lustre/lustre/ldlm/ldlm_extent.c   | 2 +-
 drivers/staging/lustre/lustre/ldlm/ldlm_lock.c     | 2 +-
 drivers/staging/lustre/lustre/ldlm/ldlm_resource.c | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_extent.c b/drivers/staging/lustre/lustre/ldlm/ldlm_extent.c
index 222cb62..a803e20 100644
--- a/drivers/staging/lustre/lustre/ldlm/ldlm_extent.c
+++ b/drivers/staging/lustre/lustre/ldlm/ldlm_extent.c
@@ -115,7 +115,7 @@ struct ldlm_interval *ldlm_interval_alloc(struct ldlm_lock *lock)
 	struct ldlm_interval *node;
 
 	LASSERT(lock->l_resource->lr_type == LDLM_EXTENT);
-	node = kmem_cache_alloc(ldlm_interval_slab, GFP_NOFS | __GFP_ZERO);
+	node = kmem_cache_zalloc(ldlm_interval_slab, GFP_NOFS);
 	if (!node)
 		return NULL;
 
diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_lock.c b/drivers/staging/lustre/lustre/ldlm/ldlm_lock.c
index 98975ef..488523d 100644
--- a/drivers/staging/lustre/lustre/ldlm/ldlm_lock.c
+++ b/drivers/staging/lustre/lustre/ldlm/ldlm_lock.c
@@ -406,7 +406,7 @@ static struct ldlm_lock *ldlm_lock_new(struct ldlm_resource *resource)
 
 	LASSERT(resource);
 
-	lock = kmem_cache_alloc(ldlm_lock_slab, GFP_NOFS | __GFP_ZERO);
+	lock = kmem_cache_zalloc(ldlm_lock_slab, GFP_NOFS);
 	if (!lock)
 		return NULL;
 
diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_resource.c b/drivers/staging/lustre/lustre/ldlm/ldlm_resource.c
index 03b9726..9dede87 100644
--- a/drivers/staging/lustre/lustre/ldlm/ldlm_resource.c
+++ b/drivers/staging/lustre/lustre/ldlm/ldlm_resource.c
@@ -1041,7 +1041,7 @@ static struct ldlm_resource *ldlm_resource_new(void)
 	struct ldlm_resource *res;
 	int idx;
 
-	res = kmem_cache_alloc(ldlm_resource_slab, GFP_NOFS | __GFP_ZERO);
+	res = kmem_cache_zalloc(ldlm_resource_slab, GFP_NOFS);
 	if (!res)
 		return NULL;
 
-- 
1.9.1


