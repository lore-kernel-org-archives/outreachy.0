X-GM-THRID: 6249484870068731904
X-Received: by 10.66.217.229 with SMTP id pb5mr35866482pac.39.1455093050553;
        Wed, 10 Feb 2016 00:30:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.104.164 with SMTP id gf4ls125002obb.73.gmail; Wed, 10 Feb
 2016 00:30:50 -0800 (PST)
X-Received: by 10.182.221.129 with SMTP id qe1mr36875233obc.7.1455093050075;
        Wed, 10 Feb 2016 00:30:50 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-qg0-x243.google.com (mail-qg0-x243.google.com. [2607:f8b0:400d:c04::243])
        by gmr-mx.google.com with ESMTPS id t198si157308ywe.3.2016.02.10.00.30.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Feb 2016 00:30:50 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::243 as permitted sender) client-ip=2607:f8b0:400d:c04::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::243 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x243.google.com with SMTP id e61so842395qgf.1
        for <outreachy-kernel@googlegroups.com>; Wed, 10 Feb 2016 00:30:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=97JMK263ynTj7ABHFdk2PWvh7VlGB8nvYujfB8u/NPc=;
        b=GFsJZr1wKMTo5VaoDSAm2XukjkMzVvdRt8pw12lDv/ncxi19sSe6HfnE+wY2dU7XTD
         tR82amAHG8EvhH9JTuvPd//V/60WTqbUIL52Ec2Wxu/mYhYlJ7A13rCDyxnWFJFE+TdT
         S2jK9H+DyPPT7qWoA9eyX6O4Xdy+nqrgivBEZtYMULUd6qwSQkVYNuph3OS6QqmAGMO4
         PTJi0V30Lv80gQHy3w0V+lS4NpPcp9+yQLUrWur5fFFNIfQUfdyCSihD3R9mLiQZ/WVI
         9x8/y5pzJJ3NmHemIC8UFLt2vsJ7vyff8V0wfK0z3yfXNkKgbXXgGvL9YZhu9OaZUuoC
         kGDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=97JMK263ynTj7ABHFdk2PWvh7VlGB8nvYujfB8u/NPc=;
        b=Ukj1Cue/IMHeChRQJGgzZ85RzrOtuZC5zKVfrazhdqZqTJ5jewPEt9c1ESTrlvAnuz
         49eI+nfi9+v2x5RBtjWGwry8v7hFXve6e5h9l2tWbxtG/KM0i4EHMKVTGsAIVXqx4yN/
         iuf1g0b2Hl2SWVyD2fAp806TSgZXuTJ0MxlnwPk2XQ4KNAJss6BSnAtT7msKKBYhh8LN
         wOvAWawRvbIGxlNo2SpEhsRMVk3Lo02CwT71Tr+eHgH6QH2z8ffN0tWoZOTv/6NXeAdd
         YpgA00LudjK5i4C0OD+F1E/txEeMacQY7XM97te9WtLoiQP2YxAn0frWtzSurEuMcx12
         3Lmw==
X-Gm-Message-State: AG10YOTo2f3+tQKHHvejUzl45bK/SE9t0VJpKpAX9ed4PECL4VbnhC5XHKdIzrNCRfJ3OQ==
X-Received: by 10.140.28.52 with SMTP id 49mr46212847qgy.36.1455093049859;
        Wed, 10 Feb 2016 00:30:49 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id y16sm863120qgd.33.2016.02.10.00.30.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Feb 2016 00:30:49 -0800 (PST)
Date: Wed, 10 Feb 2016 08:30:11 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: lustre: Modify arguments of sizeof() to pointer
 variables
Message-ID: <20160210133011.GA2600@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Take the size of a dereference to a variable rather than the associated
type, to make the code more resistant to type changes in the future.

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
Changes since v1:
 * Changed commit description to respect 80 character limit and also
   made it shorter upon feedback from Julia.
   
 drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
index cb74ae7..49cd333 100644
--- a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
+++ b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
@@ -1352,7 +1352,7 @@ static void kiblnd_destroy_fmr_pool(kib_fmr_pool_t *pool)
 	if (pool->fpo_hdev != NULL)
 		kiblnd_hdev_decref(pool->fpo_hdev);
 
-	LIBCFS_FREE(pool, sizeof(kib_fmr_pool_t));
+	LIBCFS_FREE(pool, sizeof(*pool));
 }
 
 static void kiblnd_destroy_fmr_pool_list(struct list_head *head)
@@ -1410,7 +1410,7 @@ static int kiblnd_create_fmr_pool(kib_fmr_poolset_t *fps,
 		CERROR("Failed to create FMR pool: %d\n", rc);
 
 		kiblnd_hdev_decref(fpo->fpo_hdev);
-		LIBCFS_FREE(fpo, sizeof(kib_fmr_pool_t));
+		LIBCFS_FREE(fpo, sizeof(*fpo));
 		return rc;
 	}
 
@@ -1458,7 +1458,7 @@ static int kiblnd_init_fmr_poolset(kib_fmr_poolset_t *fps, int cpt,
 	kib_fmr_pool_t *fpo;
 	int rc;
 
-	memset(fps, 0, sizeof(kib_fmr_poolset_t));
+	memset(fps, 0, sizeof(*fps));
 
 	fps->fps_net = net;
 	fps->fps_cpt = cpt;
@@ -1606,7 +1606,7 @@ static void kiblnd_init_pool(kib_poolset_t *ps, kib_pool_t *pool, int size)
 {
 	CDEBUG(D_NET, "Initialize %s pool\n", ps->ps_name);
 
-	memset(pool, 0, sizeof(kib_pool_t));
+	memset(pool, 0, sizeof(*pool));
 	INIT_LIST_HEAD(&pool->po_free_list);
 	pool->po_deadline = cfs_time_shift(IBLND_POOL_DEADLINE);
 	pool->po_owner    = ps;
@@ -1663,7 +1663,7 @@ static int kiblnd_init_poolset(kib_poolset_t *ps, int cpt,
 	kib_pool_t *pool;
 	int rc;
 
-	memset(ps, 0, sizeof(kib_poolset_t));
+	memset(ps, 0, sizeof(*ps));
 
 	ps->ps_cpt          = cpt;
 	ps->ps_net          = net;
@@ -1834,7 +1834,7 @@ static void kiblnd_destroy_tx_pool(kib_pool_t *pool)
 		    pool->po_size * sizeof(kib_tx_t));
 out:
 	kiblnd_fini_pool(pool);
-	LIBCFS_FREE(tpo, sizeof(kib_tx_pool_t));
+	LIBCFS_FREE(tpo, sizeof(*tpo));
 }
 
 static int kiblnd_tx_pool_size(int ncpts)
@@ -1866,7 +1866,7 @@ static int kiblnd_create_tx_pool(kib_poolset_t *ps, int size,
 	npg = (size * IBLND_MSG_SIZE + PAGE_SIZE - 1) / PAGE_SIZE;
 	if (kiblnd_alloc_pages(&tpo->tpo_tx_pages, ps->ps_cpt, npg) != 0) {
 		CERROR("Can't allocate tx pages: %d\n", npg);
-		LIBCFS_FREE(tpo, sizeof(kib_tx_pool_t));
+		LIBCFS_FREE(tpo, sizeof(*tpo));
 		return -ENOMEM;
 	}
 
-- 
2.5.0


