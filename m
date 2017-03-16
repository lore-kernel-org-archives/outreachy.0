X-GM-THRID: 6398158236087746560
X-Received: by 10.25.201.198 with SMTP id z189mr1480168lff.15.1489687314514;
        Thu, 16 Mar 2017 11:01:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.21.68 with SMTP id 4ls451738ljv.54.gmail; Thu, 16 Mar 2017
 11:01:53 -0700 (PDT)
X-Received: by 10.46.77.69 with SMTP id a66mr1622296ljb.11.1489687313874;
        Thu, 16 Mar 2017 11:01:53 -0700 (PDT)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wr0-x244.google.com (mail-wr0-x244.google.com. [2a00:1450:400c:c0c::244])
        by gmr-mx.google.com with ESMTPS id y19si259755wmd.0.2017.03.16.11.01.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Mar 2017 11:01:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) client-ip=2a00:1450:400c:c0c::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x244.google.com with SMTP id u48so6864965wrc.1
        for <outreachy-kernel@googlegroups.com>; Thu, 16 Mar 2017 11:01:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=kzdtcgWU4hQsnMkCImwJ+vLEdYBqU8pWzmj69XXYCfs=;
        b=dC7dT66L0LKfBeENXymmt4PC5RBk2XUSCRPRyHcRaArX/MMf1Wp7IN73rl//AFhsE9
         dRrkVt7ewVeg31Zo1zzqLB0sJtg7i67UBBQ8P2bED2H24bvWzXtFA/6Nd7bgMPhxIrfi
         hjwHGshATx6e1sJquRhUIlHAXZj5mDgwsZxGK2EoiG65HsWUY+8pVVPgy18Lkkz6Aswy
         KpG4Xro/BEQ5cWhgg7TYWiPMgkM59AOHj4dX32Ujz1mArjE27DqlIJ41R/GMeit9W7t/
         UChN5yE7WADN1wHxAeAqJ4unZyyGk8M6dSJP6hofsqGjDcF8eC2bnrEQeEMnItjPSZGh
         EXnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=kzdtcgWU4hQsnMkCImwJ+vLEdYBqU8pWzmj69XXYCfs=;
        b=ZJiHjqXrnbd9CIg3IZvY3ZVRVAPpOQ+PFCdtG/TjDK6dUintzIpjoYDluFsanrCCv0
         cwtUw52eTDe4I3uLTvhr94uhp65vSjr6Kx11QNYitrSik47Eo299mfT0FN9dAvhyj2uS
         Xh6YkvTIZ77fFsEBYz8004qEfL/OfG/TAMrCrDAKzZL4lb6MgNumsYr1eoSuDq+Sqv7S
         KvpFwYABljlIbr4w7iAshNC7OxbEzanNYv5HnXMFMyrrso0h3izuYKaiQ2k8hROKI+Rl
         P5xmGE29siN68a2cRwvOTDCuKd5Vg2kntllBvekCODuX96cL3neo9KFY77gfP8ng7FC1
         wKSw==
X-Gm-Message-State: AFeK/H1I0xx73qrcfs+D2znZ/Y25D2RmvPvlA2xZmBojR8mQTufbVecvtzNZ2sr04PpvEg==
X-Received: by 10.223.160.243 with SMTP id n48mr10214909wrn.198.1489687313597;
        Thu, 16 Mar 2017 11:01:53 -0700 (PDT)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from localhost.localdomain (p22.eregie.pub.ro. [141.85.0.122])
        by smtp.gmail.com with ESMTPSA id w130sm5171415wmg.0.2017.03.16.11.01.52
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 16 Mar 2017 11:01:53 -0700 (PDT)
From: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
To: oleg.drokin@intel.com,
	andreas.dilger@intel.com,
	jsimmons@infradead.org,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
Subject: [PATCH 1/2] staging: lustre: libcfs: Replace printk() with pr_*()
Date: Thu, 16 Mar 2017 20:01:44 +0200
Message-Id: <3c4911bf09b417670534bd51af9daa60bf2a3329.1489686964.git.narcisaanamaria12@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1489686964.git.narcisaanamaria12@gmail.com>
References: <cover.1489686964.git.narcisaanamaria12@gmail.com>

Convert printk() calls into corresponding pr_*() calls.

Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
---
 drivers/staging/lustre/lnet/libcfs/tracefile.c | 58 ++++++++++++--------------
 1 file changed, 26 insertions(+), 32 deletions(-)

diff --git a/drivers/staging/lustre/lnet/libcfs/tracefile.c b/drivers/staging/lustre/lnet/libcfs/tracefile.c
index d7b29f8..c70f36e 100644
--- a/drivers/staging/lustre/lnet/libcfs/tracefile.c
+++ b/drivers/staging/lustre/lnet/libcfs/tracefile.c
@@ -192,9 +192,8 @@ int cfs_trace_refill_stock(struct cfs_trace_cpu_data *tcd, gfp_t gfp,
 			if (unlikely(!tage)) {
 				if ((!memory_pressure_get() ||
 				     in_interrupt()) && printk_ratelimit())
-					printk(KERN_WARNING
-					       "cannot allocate a tage (%ld)\n",
-					       tcd->tcd_cur_pages);
+					pr_warn("cannot allocate a tage (%ld)\n",
+						tcd->tcd_cur_pages);
 				return NULL;
 			}
 		}
@@ -230,8 +229,8 @@ static void cfs_tcd_shrink(struct cfs_trace_cpu_data *tcd)
 	 */
 
 	if (printk_ratelimit())
-		printk(KERN_WARNING "debug daemon buffer overflowed; discarding 10%% of pages (%d of %ld)\n",
-		       pgcount + 1, tcd->tcd_cur_pages);
+		pr_warn("debug daemon buffer overflowed; discarding 10%% of pages (%d of %ld)\n",
+			pgcount + 1, tcd->tcd_cur_pages);
 
 	INIT_LIST_HEAD(&pc.pc_pages);
 
@@ -358,8 +357,7 @@ int libcfs_debug_vmsg2(struct libcfs_debug_msg_data *msgdata,
 
 		max_nob = PAGE_SIZE - tage->used - known_size;
 		if (max_nob <= 0) {
-			printk(KERN_EMERG "negative max_nob: %d\n",
-			       max_nob);
+			pr_emerg("negative max_nob: %d\n", max_nob);
 			mask |= D_ERROR;
 			cfs_trace_put_tcd(tcd);
 			tcd = NULL;
@@ -389,8 +387,8 @@ int libcfs_debug_vmsg2(struct libcfs_debug_msg_data *msgdata,
 	}
 
 	if (*(string_buf + needed - 1) != '\n')
-		printk(KERN_INFO "format at %s:%d:%s doesn't end in newline\n",
-		       file, msgdata->msg_line, msgdata->msg_fn);
+		pr_info("format at %s:%d:%s doesn't end in newline\n", file,
+			msgdata->msg_line, msgdata->msg_fn);
 
 	header.ph_len = known_size + needed;
 	debug_buf = (char *)page_address(tage->page) + tage->used;
@@ -713,8 +711,8 @@ int cfs_tracefile_dump_all_pages(char *filename)
 	if (IS_ERR(filp)) {
 		rc = PTR_ERR(filp);
 		filp = NULL;
-		pr_err("LustreError: can't open %s for dump: rc %d\n",
-		       filename, rc);
+		pr_err("LustreError: can't open %s for dump: rc %d\n", filename,
+		       rc);
 		goto out;
 	}
 
@@ -739,8 +737,8 @@ int cfs_tracefile_dump_all_pages(char *filename)
 		kunmap(tage->page);
 
 		if (rc != (int)tage->used) {
-			printk(KERN_WARNING "wanted to write %u but wrote %d\n",
-			       tage->used, rc);
+			pr_warn("wanted to write %u but wrote %d\n", tage->used,
+				rc);
 			put_pages_back(&pc);
 			__LASSERT(list_empty(&pc.pc_pages));
 			break;
@@ -894,10 +892,9 @@ int cfs_trace_daemon_command(char *str)
 	} else {
 		strcpy(cfs_tracefile, str);
 
-		printk(KERN_INFO
-		       "Lustre: debug daemon will attempt to start writing to %s (%lukB max)\n",
-		       cfs_tracefile,
-		       (long)(cfs_tracefile_size >> 10));
+		pr_info("Lustre: debug daemon will attempt to start writing to %s (%lukB max)\n",
+			cfs_tracefile,
+			(long)(cfs_tracefile_size >> 10));
 
 		cfs_trace_start_thread();
 	}
@@ -933,16 +930,14 @@ int cfs_trace_set_debug_mb(int mb)
 	struct cfs_trace_cpu_data *tcd;
 
 	if (mb < num_possible_cpus()) {
-		printk(KERN_WARNING
-		       "Lustre: %d MB is too small for debug buffer size, setting it to %d MB.\n",
-		       mb, num_possible_cpus());
+		pr_warn("Lustre: %d MB is too small for debug buffer size, setting it to %d MB.\n",
+			mb, num_possible_cpus());
 		mb = num_possible_cpus();
 	}
 
 	if (mb > limit) {
-		printk(KERN_WARNING
-		       "Lustre: %d MB is too large for debug buffer size, setting it to %d MB.\n",
-		       mb, limit);
+		pr_warn("Lustre: %d MB is too large for debug buffer size, setting it to %d MB.\n",
+			mb, limit);
 		mb = limit;
 	}
 
@@ -1010,8 +1005,8 @@ static int tracefiled(void *arg)
 			if (IS_ERR(filp)) {
 				rc = PTR_ERR(filp);
 				filp = NULL;
-				printk(KERN_WARNING "couldn't open %s: %d\n",
-				       cfs_tracefile, rc);
+				pr_warn("couldn't open %s: %d\n", cfs_tracefile,
+					rc);
 			}
 		}
 		cfs_tracefile_read_unlock();
@@ -1039,8 +1034,8 @@ static int tracefiled(void *arg)
 			kunmap(tage->page);
 
 			if (rc != (int)tage->used) {
-				printk(KERN_WARNING "wanted to write %u but wrote %d\n",
-				       tage->used, rc);
+				pr_warn("wanted to write %u but wrote %d\n",
+					tage->used, rc);
 				put_pages_back(&pc);
 				__LASSERT(list_empty(&pc.pc_pages));
 				break;
@@ -1053,7 +1048,7 @@ static int tracefiled(void *arg)
 		if (!list_empty(&pc.pc_pages)) {
 			int i;
 
-			printk(KERN_ALERT "Lustre: trace pages aren't empty\n");
+			pr_alert("Lustre: trace pages aren't empty\n");
 			pr_err("total cpus(%d): ", num_possible_cpus());
 			for (i = 0; i < num_possible_cpus(); i++)
 				if (cpu_online(i))
@@ -1065,8 +1060,8 @@ static int tracefiled(void *arg)
 			i = 0;
 			list_for_each_entry_safe(tage, tmp, &pc.pc_pages,
 						 linkage)
-				pr_err("page %d belongs to cpu %d\n",
-				       ++i, tage->cpu);
+				pr_err("page %d belongs to cpu %d\n", ++i,
+				       tage->cpu);
 			pr_err("There are %d pages unwritten\n", i);
 		}
 		__LASSERT(list_empty(&pc.pc_pages));
@@ -1123,8 +1118,7 @@ void cfs_trace_stop_thread(void)
 
 	mutex_lock(&cfs_trace_thread_mutex);
 	if (thread_running) {
-		printk(KERN_INFO
-		       "Lustre: shutting down debug daemon thread...\n");
+		pr_info("Lustre: shutting down debug daemon thread...\n");
 		atomic_set(&tctl->tctl_shutdown, 1);
 		wait_for_completion(&tctl->tctl_stop);
 		thread_running = 0;
-- 
1.9.1


