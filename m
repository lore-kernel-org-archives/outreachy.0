X-GM-THRID: 6389618895817277440
X-Received: by 10.129.76.138 with SMTP id z132mr8980574ywa.172.1487699080929;
        Tue, 21 Feb 2017 09:44:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.122.2 with SMTP id a2ls3107657itc.15.canary-gmail; Tue, 21
 Feb 2017 09:44:40 -0800 (PST)
X-Received: by 10.99.117.10 with SMTP id q10mr9959552pgc.59.1487699080115;
        Tue, 21 Feb 2017 09:44:40 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id u12si3353430pfd.3.2017.02.21.09.44.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Feb 2017 09:44:40 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id 1so12076099pgz.2
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Feb 2017 09:44:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=t4hlzK14S/mw3CZ5YrPaKlpt8OQRTje3CmrwkcjjDLY=;
        b=ZSbwzSGILowusYEVXaNJpIxaH25BUx0daP96k3NSkTK2rJJvf4UzL2biF5wZ211dRe
         oqSI9Sy4hPTEVRTyq6viHpGDGO1/4/Yh5qO9unQbKcHAT7A3t7lMNTyb6uvWDWQKM5Hf
         Tou4ybMTT0q2397ikBoJ86M2QfrIDRhgTukoXdmia7KJg9IRWrHKiqiAUrsPgY4qIjvX
         y0Yzr5EQyUT9cxpzctw0bdj3YpgKJVMvTM53AoSQJuvJNpDWAetIBNw+Yc67HX5KBwiH
         jPOxmlZ3qTo2hQTOJbtWYy8luvnOcZeJffX4pov4j7k+fW3ZR75DkYdtQcwpjm5/gPEr
         02Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=t4hlzK14S/mw3CZ5YrPaKlpt8OQRTje3CmrwkcjjDLY=;
        b=YjWlSZReA+OCtPi7XILbBn5OWDm8+smNrTFT2OqYTGVSMUYx5/nFPg4w2HtsKrghqt
         KrphTL55iRT3cONq/tsoaTetPXbVd/fR8mde23C+JQjakGcboEGR2xrj9OdJYolJ8VNU
         A5C0Tle+139AEpgdthmPj4wkqNDEmy7sCkoEU0Eb+5lAlTRlrbB61Ka4RCbsF2jGZzbL
         V+3EiY1g5PczcxXUfyvpRxB6m9/hmr+BVTMdMty7xQmj7u+2+nl5vvwsfqGffjEbTa8W
         HJiVzYnWeMVs8qQKmogQHQrE5GkoCJ5Vns+ItV568nsdo+furn3/MSsO5t1N9Kygr6sz
         G3oA==
X-Gm-Message-State: AMke39m8uY5jVkLIeKiMoh8yB5VfZGtJyDaCQDqD5gfDChM5pvBQoRfnz/EZYAt5OnfVGg==
X-Received: by 10.98.64.132 with SMTP id f4mr26661300pfd.152.1487699079843;
        Tue, 21 Feb 2017 09:44:39 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id f3sm42312486pfd.10.2017.02.21.09.44.38
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Feb 2017 09:44:38 -0800 (PST)
Date: Tue, 21 Feb 2017 23:16:31 +0530
From: simran singhal <singhalsimran0@gmail.com>
To: oleg.drokin@intel.com
Cc: andreas.dilger@intel.com, jsimmons@infradead.org,
	gregkh@linuxfoundation.org, lustre-devel@lists.lustre.org,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 5/6] staging: lustre: Using macro DIV_ROUND_UP
Message-ID: <20170221174631.GA22466@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

The macro DIV_ROUND_UP performs the computation (((n) + (d) - 1) /(d)).
It clarifies the divisor calculations. This occurence was detected using
the coccinelle script:

@@
expression e1;
expression e2;
@@
(
- ((e1) + e2 - 1) / (e2)
+ DIV_ROUND_UP(e1,e2)
|
- ((e1) + (e2 - 1)) / (e2)
+ DIV_ROUND_UP(e1,e2)
)

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c |  2 +-
 drivers/staging/lustre/lnet/selftest/conrpc.c       | 11 ++++-------
 drivers/staging/lustre/lustre/ptlrpc/client.c       |  3 +--
 drivers/staging/lustre/lustre/ptlrpc/niobuf.c       |  2 +-
 drivers/staging/lustre/lustre/ptlrpc/sec_bulk.c     |  2 +-
 5 files changed, 8 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
index 7f761b3..60264ed 100644
--- a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
+++ b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
@@ -2058,7 +2058,7 @@ static int kiblnd_create_tx_pool(struct kib_poolset *ps, int size,
 	tpo->tpo_tx_descs = NULL;
 	tpo->tpo_tx_pages = NULL;
 
-	npg = (size * IBLND_MSG_SIZE + PAGE_SIZE - 1) / PAGE_SIZE;
+	npg = DIV_ROUND_UP(size * IBLND_MSG_SIZE, PAGE_SIZE);
 	if (kiblnd_alloc_pages(&tpo->tpo_tx_pages, ps->ps_cpt, npg)) {
 		CERROR("Can't allocate tx pages: %d\n", npg);
 		LIBCFS_FREE(tpo, sizeof(*tpo));
diff --git a/drivers/staging/lustre/lnet/selftest/conrpc.c b/drivers/staging/lustre/lnet/selftest/conrpc.c
index 994422c..afc514b 100644
--- a/drivers/staging/lustre/lnet/selftest/conrpc.c
+++ b/drivers/staging/lustre/lnet/selftest/conrpc.c
@@ -785,8 +785,7 @@ lstcon_bulkrpc_v0_prep(lst_test_bulk_param_t *param,
 	struct test_bulk_req *brq = &req->tsr_u.bulk_v0;
 
 	brq->blk_opc = param->blk_opc;
-	brq->blk_npg = (param->blk_size + PAGE_SIZE - 1) /
-			PAGE_SIZE;
+	brq->blk_npg = DIV_ROUND_UP(param->blk_size, PAGE_SIZE);
 	brq->blk_flags = param->blk_flags;
 
 	return 0;
@@ -833,11 +832,9 @@ lstcon_testrpc_prep(struct lstcon_node *nd, int transop, unsigned int feats,
 	trq = &(*crpc)->crp_rpc->crpc_reqstmsg.msg_body.tes_reqst;
 
 	if (transop == LST_TRANS_TSBSRVADD) {
-		int ndist = (sgrp->grp_nnode + test->tes_dist - 1) /
-			    test->tes_dist;
-		int nspan = (dgrp->grp_nnode + test->tes_span - 1) /
-			    test->tes_span;
-		int nmax = (ndist + nspan - 1) / nspan;
+		int ndist = DIV_ROUND_UP(sgrp->grp_nnode, test->tes_dist);
+		int nspan = DIV_ROUND_UP(dgrp->grp_nnode, test->tes_span);
+		int nmax = DIV_ROUND_UP(ndist, nspan);
 
 		trq->tsr_ndest = 0;
 		trq->tsr_loop = nmax * test->tes_dist * test->tes_concur;
diff --git a/drivers/staging/lustre/lustre/ptlrpc/client.c b/drivers/staging/lustre/lustre/ptlrpc/client.c
index 8047413..0d75fe7 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/client.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/client.c
@@ -3136,8 +3136,7 @@ void ptlrpc_set_bulk_mbits(struct ptlrpc_request *req)
 	 * that server can infer the number of bulks that were prepared,
 	 * see LU-1431
 	 */
-	req->rq_mbits += ((bd->bd_iov_count + LNET_MAX_IOV - 1) /
-			  LNET_MAX_IOV) - 1;
+	req->rq_mbits += (DIV_ROUND_UP(bd->bd_iov_count, LNET_MAX_IOV)) - 1;
 }
 
 /**
diff --git a/drivers/staging/lustre/lustre/ptlrpc/niobuf.c b/drivers/staging/lustre/lustre/ptlrpc/niobuf.c
index da1209e..c2461c5 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/niobuf.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/niobuf.c
@@ -142,7 +142,7 @@ static int ptlrpc_register_bulk(struct ptlrpc_request *req)
 	LASSERT(desc->bd_cbid.cbid_fn == client_bulk_callback);
 	LASSERT(desc->bd_cbid.cbid_arg == desc);
 
-	total_md = (desc->bd_iov_count + LNET_MAX_IOV - 1) / LNET_MAX_IOV;
+	total_md = DIV_ROUND_UP(desc->bd_iov_count, LNET_MAX_IOV);
 	/* rq_mbits is matchbits of the final bulk */
 	mbits = req->rq_mbits - total_md + 1;
 
diff --git a/drivers/staging/lustre/lustre/ptlrpc/sec_bulk.c b/drivers/staging/lustre/lustre/ptlrpc/sec_bulk.c
index 2fe9085..d43680c 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/sec_bulk.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/sec_bulk.c
@@ -272,7 +272,7 @@ static unsigned long enc_pools_shrink_scan(struct shrinker *s,
 static inline
 int npages_to_npools(unsigned long npages)
 {
-	return (int)((npages + PAGES_PER_POOL - 1) / PAGES_PER_POOL);
+	return (int)(DIV_ROUND_UP(npages, PAGES_PER_POOL));
 }
 
 /*
-- 
2.7.4


