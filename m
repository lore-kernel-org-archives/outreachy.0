X-GM-THRID: 6249484870068731904
X-Received: by 10.66.191.101 with SMTP id gx5mr34847788pac.27.1455071584194;
        Tue, 09 Feb 2016 18:33:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.225.71 with SMTP id ri7ls1050524igc.14.canary; Tue, 09 Feb
 2016 18:33:03 -0800 (PST)
X-Received: by 10.67.22.2 with SMTP id ho2mr35706500pad.19.1455071583893;
        Tue, 09 Feb 2016 18:33:03 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-qk0-x22d.google.com (mail-qk0-x22d.google.com. [2607:f8b0:400d:c09::22d])
        by gmr-mx.google.com with ESMTPS id y131si83922ywc.0.2016.02.09.18.33.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 18:33:03 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c09::22d as permitted sender) client-ip=2607:f8b0:400d:c09::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c09::22d as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x22d.google.com with SMTP id x1so2419131qkc.1
        for <outreachy-kernel@googlegroups.com>; Tue, 09 Feb 2016 18:33:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=uUJJOOzcfFsC9u/GAZoYnCWOQy6CR9euJBn+YR83p50=;
        b=bYm0K7+2LMR4jZaV40XEMvMUsSlHiSFMexeDwcyW82hEWW4SwYjiYSejZ8lYoDH2/u
         pm+Pvrg15WYFAzOipDZg5hp3CDHqzHYrYEqbAJ0nWEkrAcK9pOn81kawKWVOSLkezMuS
         g5H12SIhsr0XaW9UKIRCnZq92QhB0PfHVlPICXYb2t0L+wjudYQBmqn6z+XjNzEY3esp
         P49lIj1gOYBHthOKZcLdnmPytoLc52UG9ZU4Pwz1KYFMtZlarXyrzClpuZZnu6845/rR
         zgCAOEOIO4kDemaJobizKVtz3uWWw6ovgbTCkMIXoI40o8Ro394Q8NpH5pF+QeLE799r
         gY1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=uUJJOOzcfFsC9u/GAZoYnCWOQy6CR9euJBn+YR83p50=;
        b=dQdcPLm96fOenCVmZXcqhPgrixzhqDfU5YJ+eNPspHW8zp6OE458NCzFCIFPGX//YB
         5X+o1oy44pN5xJogfFc0cqqNMzRT0UNsVx9yw7F3uju1AX7yJ0OfGISyg7HZYsP7Ze5B
         SvNoIKOKKxJeDoGiC2A9SQXxrbvsqV/RDm0/8upC861pp/TRswyCFd1OG5KUyrHj6E3e
         q7GrM3hrY/X+qOxAykT2jq7hTY/vrWwpe3dbOC/L8aECpRESQ6uM9fYqkJXIgkXW0KrB
         sLtiCgaJf4OzyJVjpQ92iNkYCydAaaRgduK6MtuKGbeSXuiHeJFOCR7wR7sWko6L2+kU
         zLGw==
X-Gm-Message-State: AG10YOQYR4o3fB+N5Mgr+muGWek5PnknhWP0HVo9EaaDmPxlojh1pTtPZIY1KXlG4y9n7Q==
X-Received: by 10.55.80.68 with SMTP id e65mr45821904qkb.46.1455071583565;
        Tue, 09 Feb 2016 18:33:03 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 ([2620:cc:8000:212:5635:30ff:fe6b:610b])
        by smtp.gmail.com with ESMTPSA id 141sm421569qhk.23.2016.02.09.18.33.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 18:33:03 -0800 (PST)
Date: Wed, 10 Feb 2016 02:32:25 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: lustre: Modify arguments of sizeof() to pointer
 variables
Message-ID: <20160210073225.GA5118@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

It is better when sizeof() takes as an argument the size of the pointer variablewe care about rather than the type. This is because even if the type of the variable changes in the future, we will always get the correct size irrespective of the type.
This patch makes such a change.

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
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


