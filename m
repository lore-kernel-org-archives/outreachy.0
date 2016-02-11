X-GM-THRID: 6249484870068731904
X-Received: by 10.182.56.233 with SMTP id d9mr39669093obq.2.1455144492778;
        Wed, 10 Feb 2016 14:48:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.108.20 with SMTP id hg20ls1287103igb.39.canary; Wed, 10 Feb
 2016 14:48:12 -0800 (PST)
X-Received: by 10.98.42.10 with SMTP id q10mr40121813pfq.9.1455144492112;
        Wed, 10 Feb 2016 14:48:12 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-qg0-x242.google.com (mail-qg0-x242.google.com. [2607:f8b0:400d:c04::242])
        by gmr-mx.google.com with ESMTPS id q187si419651ywf.4.2016.02.10.14.48.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Feb 2016 14:48:11 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::242 as permitted sender) client-ip=2607:f8b0:400d:c04::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::242 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x242.google.com with SMTP id 14so2270062qgg.3
        for <outreachy-kernel@googlegroups.com>; Wed, 10 Feb 2016 14:48:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=LIlXOQuPB08II8vOiJX3chOScAHgekJkTaadyTYVrco=;
        b=ToFxgoZ6zNtVkSGIaPRD3ZOSwxCUU4SDABZTHiarJwIh8XchI3bdCYyiLVhNN8W3jH
         p4GUbznPosVbg4d/+3Rl/ANQ5l71hOR4mvzIC35x8Lvwuw/wocAp2ksR6uOWJl8mVZ+C
         9ZEvj3epQMIxq8B7STdoo2dwztRfOyd5GhAJHZVoPztuznuYjEqL7AajS+Q7tU7U7xXw
         skvHwJKswaiI+2UkGTlIXzTkXdktynsuWF0BjHF3hBYghSy2LYZLCv5o8Z+DOiaZ+SwK
         f1kaNUnbglb4igjbsd5WGM4CsayZneddpEVqBQfjDXvng/R7rp7Xhsjr+3C0pfY0Xonc
         GZUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=LIlXOQuPB08II8vOiJX3chOScAHgekJkTaadyTYVrco=;
        b=aMPx4JVlgQnXqAo/WXVFiM1RtNHvIqa9UHLdfWi7JYRb5MegLMwEUi/L92faAjAZjD
         x/x8LjgPR25tPKqPJJSDTIjviVff5rXYO7NO8O8BRSm7+GtIcJ4iaUMihjpF0QH0vW76
         B4GL9vuNdA1MBitcEy0I95cQguUg+EyUa73XT+oyyf3EuDzUA+JKiJjvH6DeTtJ3B4Kf
         uYZ5mttlYwdspSET8M17XLgs73AnNhvUBB5kz1MMbr8eDcC+yUHLpKnGETyWjZ8bqt+P
         Z8iQd4D274yHeko6xWqjPOz69BuBBIfI2F4v8UnWg7UHXbi/aYl47bOOf042W+hY9Wtb
         ur/Q==
X-Gm-Message-State: AG10YORMHfgLHy/EEDR87hiHWRGyYUWz8xxulQMOvuwyMUMxFfDsHzsKx0EH22B0v8hTlA==
X-Received: by 10.140.250.138 with SMTP id v132mr55076687qhc.0.1455144491814;
        Wed, 10 Feb 2016 14:48:11 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id d65sm2185012qgf.30.2016.02.10.14.48.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Feb 2016 14:48:11 -0800 (PST)
Date: Wed, 10 Feb 2016 22:47:33 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3] staging: lustre: Modify arguments of sizeof() to pointer
 variables
Message-ID: <20160211034733.GA2625@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Take the size of a dereference to a variable rather than the associated
type, to make the code more resistant to type changes in the future.
The type of the pointer variable here is the same as the type in the
argument that is being replaced in sizeof().

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
Changes since v2:
 * Modified commit description to add that the pointer variable is of
   the same type.
 
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


