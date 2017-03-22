X-GM-THRID: 6400147141672566784
X-Received: by 10.99.1.3 with SMTP id 3mr20374445pgb.150.1490150378788;
        Tue, 21 Mar 2017 19:39:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.7.18 with SMTP id 18ls839097ote.1.gmail; Tue, 21 Mar 2017
 19:39:38 -0700 (PDT)
X-Received: by 10.157.14.20 with SMTP id c20mr16983535otc.149.1490150378316;
        Tue, 21 Mar 2017 19:39:38 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id y203si4248pfb.0.2017.03.21.19.39.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 19:39:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id 79so19350067pgf.0
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 19:39:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=ZHuRSObIN/WcSGWg7P2twxl/QrloglKThJwuBdpsxSw=;
        b=JQKTSrmHs3C0yPrIyFEntjr7W6XaO37gKo7zDBg+V3vKiPXc9sXqNcKx5WMQot5x/Q
         AY5oYdyVa58IRDfR4BdPhVN4++exXLTKxFZaASOT1wXDAFJdZNcjWCfP1t/J/GoVzblc
         g/vzLLMWixrzyTz3qBsgb09M/NcGDr9ttoZ/fp3yRCNAYr+4QuuqZggxeCvo1p0zONk4
         5785nYDMKGDyvr5VKi1CcLcYpTIhkAhMsDO8OOzRki7jZiBLW7dQ75qQXlzmbZHH4hOH
         CasMvxRLJJsT/jsWchNJchtnrxMiQnQFQsVpJkx24NCTIfkqXrX9b/2JJVrgHTIgpC9+
         dpfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=ZHuRSObIN/WcSGWg7P2twxl/QrloglKThJwuBdpsxSw=;
        b=V+yX+sx3xy3oCJsfr6vOEuHpPcoZOANjjEPf8u5GhVn29aGEcavtXCeFHTvK/7ufBt
         ZQmNz94S4zk9TvukK5lzFotjOzG4i1qQ2r9p40DElCxsHe01PUDpZvifxqxmaLqBs8hP
         v4u1zMocoGK+binW7KrhODD/UHkdpDVtxZNyUEoSUPXDsID0GJxf9wL8J43R/Ew6A3Io
         55avjjwCOGKDN+7IMgVHDLxB/9XHT8BWjI4XZEFXd7t/A4OEekT2wDfHXkY5cEUQf/vG
         HknDquMZFDf99BvH9ZdQsxfbxI2/1KsK+lS+HeXj402h03ioV7zlWh2zfgFeYUTv8ya1
         uCww==
X-Gm-Message-State: AFeK/H1d+5r4uCsN6aWlu4vaE/3+5qNQjqkYYzM3zGGhVUtoVcWPq3i6RI9tqabBR2rfjw==
X-Received: by 10.84.233.200 with SMTP id m8mr51707317pln.92.1490150378007;
        Tue, 21 Mar 2017 19:39:38 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id l3sm26235pgn.10.2017.03.21.19.39.36
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Mar 2017 19:39:36 -0700 (PDT)
Date: Wed, 22 Mar 2017 08:09:33 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: oleg.drokin@intel.com
Cc: Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	lustre-devel@lists.lustre.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: lustre: Replace a bit shift by a use of BIT.
Message-ID: <20170322023933.GA11339@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch replaces bit shifting on 1 with the BIT(x) macro.
This was done with coccinelle:
@@
constant c;
@@

-1 << c
+BIT(c)

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c           | 2 +-
 drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c        | 8 ++++----
 drivers/staging/lustre/lnet/klnds/socklnd/socklnd_modparams.c | 2 +-
 drivers/staging/lustre/lnet/lnet/lib-ptl.c                    | 4 ++--
 drivers/staging/lustre/lnet/lnet/net_fault.c                  | 8 ++++----
 drivers/staging/lustre/lustre/llite/lproc_llite.c             | 4 ++--
 drivers/staging/lustre/lustre/obdclass/lustre_handles.c       | 2 +-
 drivers/staging/lustre/lustre/osc/osc_request.c               | 2 +-
 8 files changed, 16 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
index 79321e4aaf30..449f04f125b7 100644
--- a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
+++ b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
@@ -2241,7 +2241,7 @@ static int kiblnd_hdev_get_attr(struct kib_hca_dev *hdev)
 	 * matching that of the native system
 	 */
 	hdev->ibh_page_shift = PAGE_SHIFT;
-	hdev->ibh_page_size  = 1 << PAGE_SHIFT;
+	hdev->ibh_page_size  = BIT(PAGE_SHIFT);
 	hdev->ibh_page_mask  = ~((__u64)hdev->ibh_page_size - 1);
 
 	hdev->ibh_mr_size = hdev->ibh_ibdev->attrs.max_mr_size;
diff --git a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c
index eaa4399e6a2e..5bef8a7e053b 100644
--- a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c
+++ b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c
@@ -1906,14 +1906,14 @@ ksocknal_connect(struct ksock_route *route)
 		if (retry_later) /* needs reschedule */
 			break;
 
-		if (wanted & (1 << SOCKLND_CONN_ANY)) {
+		if (wanted & (BIT(SOCKLND_CONN_ANY))) {
 			type = SOCKLND_CONN_ANY;
-		} else if (wanted & (1 << SOCKLND_CONN_CONTROL)) {
+		} else if (wanted & (BIT(SOCKLND_CONN_CONTROL))) {
 			type = SOCKLND_CONN_CONTROL;
-		} else if (wanted & (1 << SOCKLND_CONN_BULK_IN)) {
+		} else if (wanted & (BIT(SOCKLND_CONN_BULK_IN))) {
 			type = SOCKLND_CONN_BULK_IN;
 		} else {
-			LASSERT(wanted & (1 << SOCKLND_CONN_BULK_OUT));
+			LASSERT(wanted & (BIT(SOCKLND_CONN_BULK_OUT)));
 			type = SOCKLND_CONN_BULK_OUT;
 		}
 
diff --git a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_modparams.c b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_modparams.c
index fc7eec83ac07..2d1e3479cf7e 100644
--- a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_modparams.c
+++ b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_modparams.c
@@ -71,7 +71,7 @@ static int typed_conns = 1;
 module_param(typed_conns, int, 0444);
 MODULE_PARM_DESC(typed_conns, "use different sockets for bulk");
 
-static int min_bulk = 1 << 10;
+static int min_bulk = BIT(10);
 module_param(min_bulk, int, 0644);
 MODULE_PARM_DESC(min_bulk, "smallest 'large' message");
 
diff --git a/drivers/staging/lustre/lnet/lnet/lib-ptl.c b/drivers/staging/lustre/lnet/lnet/lib-ptl.c
index 63cce0c4a065..b980c669705e 100644
--- a/drivers/staging/lustre/lnet/lnet/lib-ptl.c
+++ b/drivers/staging/lustre/lnet/lnet/lib-ptl.c
@@ -332,7 +332,7 @@ lnet_mt_test_exhausted(struct lnet_match_table *mtable, int pos)
 	LASSERT(pos <= LNET_MT_HASH_IGNORE);
 	/* mtable::mt_mhash[pos] is marked as exhausted or not */
 	bmap = &mtable->mt_exhausted[pos >> LNET_MT_BITS_U64];
-	pos &= (1 << LNET_MT_BITS_U64) - 1;
+	pos &= (BIT(LNET_MT_BITS_U64)) - 1;
 
 	return (*bmap & (1ULL << pos));
 }
@@ -347,7 +347,7 @@ lnet_mt_set_exhausted(struct lnet_match_table *mtable, int pos, int exhausted)
 
 	/* set mtable::mt_mhash[pos] as exhausted/non-exhausted */
 	bmap = &mtable->mt_exhausted[pos >> LNET_MT_BITS_U64];
-	pos &= (1 << LNET_MT_BITS_U64) - 1;
+	pos &= (BIT(LNET_MT_BITS_U64)) - 1;
 
 	if (!exhausted)
 		*bmap &= ~(1ULL << pos);
diff --git a/drivers/staging/lustre/lnet/lnet/net_fault.c b/drivers/staging/lustre/lnet/lnet/net_fault.c
index 18183cbb9859..e83761a77d22 100644
--- a/drivers/staging/lustre/lnet/lnet/net_fault.c
+++ b/drivers/staging/lustre/lnet/lnet/net_fault.c
@@ -997,10 +997,10 @@ lnet_fault_ctl(int opc, struct libcfs_ioctl_data *data)
 int
 lnet_fault_init(void)
 {
-	BUILD_BUG_ON(LNET_PUT_BIT != 1 << LNET_MSG_PUT);
-	BUILD_BUG_ON(LNET_ACK_BIT != 1 << LNET_MSG_ACK);
-	BUILD_BUG_ON(LNET_GET_BIT != 1 << LNET_MSG_GET);
-	BUILD_BUG_ON(LNET_REPLY_BIT != 1 << LNET_MSG_REPLY);
+	BUILD_BUG_ON(LNET_PUT_BIT != BIT(LNET_MSG_PUT));
+	BUILD_BUG_ON(LNET_ACK_BIT != BIT(LNET_MSG_ACK));
+	BUILD_BUG_ON(LNET_GET_BIT != BIT(LNET_MSG_GET));
+	BUILD_BUG_ON(LNET_REPLY_BIT != BIT(LNET_MSG_REPLY));
 
 	mutex_init(&delay_dd.dd_mutex);
 	spin_lock_init(&delay_dd.dd_lock);
diff --git a/drivers/staging/lustre/lustre/llite/lproc_llite.c b/drivers/staging/lustre/lustre/llite/lproc_llite.c
index 40f1fcf8b5c0..366833dd8aa3 100644
--- a/drivers/staging/lustre/lustre/llite/lproc_llite.c
+++ b/drivers/staging/lustre/lustre/llite/lproc_llite.c
@@ -1308,7 +1308,7 @@ static void ll_display_extents_info(struct ll_rw_extents_info *io_extents,
 			   r, pct(r, read_tot), pct(read_cum, read_tot),
 			   w, pct(w, write_tot), pct(write_cum, write_tot));
 		start = end;
-		if (start == 1 << 10) {
+		if (start == BIT(10)) {
 			start = 1;
 			units += 10;
 			unitp++;
@@ -1506,7 +1506,7 @@ void ll_rw_stats_tally(struct ll_sb_info *sbi, pid_t pid,
 		lprocfs_oh_clear(&io_extents->pp_extents[cur].pp_w_hist);
 	}
 
-	for (i = 0; (count >= (1 << LL_HIST_START << i)) &&
+	for (i = 0; (count >= (BIT(LL_HIST_START) << i)) &&
 	     (i < (LL_HIST_MAX - 1)); i++)
 		;
 	if (rw == 0) {
diff --git a/drivers/staging/lustre/lustre/obdclass/lustre_handles.c b/drivers/staging/lustre/lustre/obdclass/lustre_handles.c
index c9445e5ec271..11e32b5174f2 100644
--- a/drivers/staging/lustre/lustre/obdclass/lustre_handles.c
+++ b/drivers/staging/lustre/lustre/obdclass/lustre_handles.c
@@ -49,7 +49,7 @@ static struct handle_bucket {
 	struct list_head	head;
 } *handle_hash;
 
-#define HANDLE_HASH_SIZE (1 << 16)
+#define HANDLE_HASH_SIZE (BIT(16))
 #define HANDLE_HASH_MASK (HANDLE_HASH_SIZE - 1)
 
 /*
diff --git a/drivers/staging/lustre/lustre/osc/osc_request.c b/drivers/staging/lustre/lustre/osc/osc_request.c
index d8aa3fb468c7..8739abf639a7 100644
--- a/drivers/staging/lustre/lustre/osc/osc_request.c
+++ b/drivers/staging/lustre/lustre/osc/osc_request.c
@@ -2847,7 +2847,7 @@ static int __init osc_init(void)
 	register_shrinker(&osc_cache_shrinker);
 
 	/* This is obviously too much memory, only prevent overflow here */
-	if (osc_reqpool_mem_max >= 1 << 12 || osc_reqpool_mem_max == 0) {
+	if (osc_reqpool_mem_max >= BIT(12) || osc_reqpool_mem_max == 0) {
 		rc = -EINVAL;
 		goto out_type;
 	}
-- 
2.11.0


