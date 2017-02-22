X-GM-THRID: 6389618895817277440
X-Received: by 10.99.202.73 with SMTP id o9mr9692341pgi.154.1487755929492;
        Wed, 22 Feb 2017 01:32:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.80.147 with SMTP id m141ls1922955itb.19.canary-gmail; Wed,
 22 Feb 2017 01:32:08 -0800 (PST)
X-Received: by 10.107.140.22 with SMTP id o22mr10082203iod.54.1487755928855;
        Wed, 22 Feb 2017 01:32:08 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id u12si143726pfd.3.2017.02.22.01.32.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Feb 2017 01:32:08 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id 1so1482461pgz.2
        for <outreachy-kernel@googlegroups.com>; Wed, 22 Feb 2017 01:32:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=H9KpIiUhA0/JIMdvzZ55Oe1uo9JA5jsIk9CIwwUJG3s=;
        b=BMOFUTD/mSIO4dDLRqg9i3E5MsLWnS7f6KnPd/LVWKCZC5jOAqRGZ3Jf8FTHtFxzm3
         vER16VtNG3h7gERlYRvlqOBxO5B0rAu0/pYOgmIWMORio4wa7JkGWR0g0d48dPmHVYEW
         qrXRvmLPzT88PbgYt24pEo9QIpK4/WBFTCS1/+Az8V/s/6YyEbeVzTL/rlJVgJGJIoiU
         pmKIfnBeULtuXIWf/0oWyerp4QnffNYgKudBwi0eiDR5JfF81PeZM7YD047uT43j0/Ss
         HavOwXDFskcUnbnQz5rMogGy0xVp8PifH/eYmTIxJcglU8K48zeAw9TCojzYMlBrKZR3
         +ZiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=H9KpIiUhA0/JIMdvzZ55Oe1uo9JA5jsIk9CIwwUJG3s=;
        b=V92zvMMkbOLQnC9cbjYThDxUDoChrseGBOQxeXK3maKeCARL3V6E+ZBs9ZBt86DnaD
         /CHmkDH4ECVqoB/9WhJ4TBLPR5SWoQuJUiERLrOdacFfo/+//tIF489J88M4wcyYNTFs
         6rT22ZLrytfd5tT6OtNMrp9JeoBsmGj0JsOctLgy3Nvna8M5FnNKG1XAaMZ+B2PoqpjM
         QhvIDnxF5isEozBAPYPON46AALxUF88+BimXJZf9aQn3IRa6MI2/DvzW+vzLnsnOjhc3
         AGgUrIrMjHWyc628KTk6Lja0csQWo6x90CrFnrChRt0FuOKrYytX7zFtOIEUw5+Ldl1S
         0fyQ==
X-Gm-Message-State: AMke39kBH45VpNyoXorU1U4GFqJIztDetfj2ieNeDBGJmhtS4rnsVIQXwlgPuFqXiJWACA==
X-Received: by 10.99.8.70 with SMTP id 67mr40249172pgi.205.1487755928588;
        Wed, 22 Feb 2017 01:32:08 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id e129sm2363716pfe.8.2017.02.22.01.32.06
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 22 Feb 2017 01:32:07 -0800 (PST)
Date: Wed, 22 Feb 2017 15:02:04 +0530
From: simran singhal <singhalsimran0@gmail.com>
To: oleg.drokin@intel.com
Cc: andreas.dilger@intel.com, jsimmons@infradead.org,
	gregkh@linuxfoundation.org, lustre-devel@lists.lustre.org,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v2 5/6] staging: lustre: Using macro DIV_ROUND_UP
Message-ID: <20170222093204.GA13913@singhal-Inspiron-5558>
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
 
 v2:
   -Removed unnecessary parantheses from the right side of
    assignment.

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
index 8047413..5214e68 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/client.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/client.c
@@ -3136,8 +3136,7 @@ void ptlrpc_set_bulk_mbits(struct ptlrpc_request *req)
 	 * that server can infer the number of bulks that were prepared,
 	 * see LU-1431
 	 */
-	req->rq_mbits += ((bd->bd_iov_count + LNET_MAX_IOV - 1) /
-			  LNET_MAX_IOV) - 1;
+	req->rq_mbits += DIV_ROUND_UP(bd->bd_iov_count, LNET_MAX_IOV) - 1;
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
index 2fe9085..128838a 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/sec_bulk.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/sec_bulk.c
@@ -272,7 +272,7 @@ static unsigned long enc_pools_shrink_scan(struct shrinker *s,
 static inline
 int npages_to_npools(unsigned long npages)
 {
-	return (int)((npages + PAGES_PER_POOL - 1) / PAGES_PER_POOL);
+	return (int)DIV_ROUND_UP(npages, PAGES_PER_POOL);
 }
 
 /*
-- 
2.7.4


