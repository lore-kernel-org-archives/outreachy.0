X-GM-THRID: 6398158236087746560
X-Received: by 10.46.7.80 with SMTP id i16mr2827558ljd.5.1489856136782;
        Sat, 18 Mar 2017 09:55:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.19.10 with SMTP id 10ls933512ljt.24.gmail; Sat, 18 Mar 2017
 09:55:36 -0700 (PDT)
X-Received: by 10.46.22.16 with SMTP id w16mr2884145ljd.18.1489856136343;
        Sat, 18 Mar 2017 09:55:36 -0700 (PDT)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wr0-x241.google.com (mail-wr0-x241.google.com. [2a00:1450:400c:c0c::241])
        by gmr-mx.google.com with ESMTPS id n128si360140wmf.2.2017.03.18.09.55.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Mar 2017 09:55:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) client-ip=2a00:1450:400c:c0c::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x241.google.com with SMTP id g10so13036097wrg.0
        for <outreachy-kernel@googlegroups.com>; Sat, 18 Mar 2017 09:55:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=UFpZtJBqggJBaR2YzejYGaYqt3HJU44easIDU6lmlr4=;
        b=llB//eq7csok2r9CD5CEdKjD7RkQAvjcofZgDcvy3akSbVUms7kXKKzW9d6LPCgAXF
         P3pIQNI+9pTTB8gB6ZJZ6EWWl6NjyS1bypplBk3Z8eH9Cq57PC7xVoXldMDrGa2BwOr2
         amu5nLy6NjkC1Hemsy3RWbEuQvmTJ5dNYshDSmvOvVegXIrRCu9XCaXSCB1+NRn5fZv+
         vEsp7r37jQs6zWQR/kQGyglCv4kFSPxNL0z4QfwePC/DSnkaFpLKUwd7WPhUEQSI6nN+
         yjA6wH6U3aqAVQDN0nuqpT6L7FSHOCkVgsytBtfNFtA7hJsptFG2hvy5Xjax9ToLacPx
         JugQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=UFpZtJBqggJBaR2YzejYGaYqt3HJU44easIDU6lmlr4=;
        b=OUvzLp0Cbi2ofdRwi9cxWPeAxM5iGs7nKZyR/kUxxNf2Tuq2iGERXIpdQzHxd7OFCd
         7DugBIkdW2mvDvGbI1S9CEnIdMP8qgC+bkRXVwO8fXKrmZepOAy/q3GZ8pAAtCT3pUA+
         bHa4W3ex/jawPlUUqN+LOAWYgEhquXMQ5r6dNWIEB0YNU+5NXL3tgnfzqIGE7iLdEjm5
         BX6+nMxNMwAcGVZdpb40Xh4lOpK0DHoI8Mf9u+JREbleZEn1EttLYDb9FVlUm2hCluft
         4ZzWgZrC/vVe3WhczksrfylUtDrwN6u5XtFaTIeBsevKXDTGlkK4yTTuVu0spYO8azT1
         fWjg==
X-Gm-Message-State: AFeK/H28UrjsayyyCFC1/+6J6+s2V7c5AAvA1E2RvUYkksod0Iocl0jPljKc3HDqJfANhg==
X-Received: by 10.223.131.3 with SMTP id 3mr18277469wrd.153.1489856136106;
        Sat, 18 Mar 2017 09:55:36 -0700 (PDT)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from localhost.localdomain (p22.eregie.pub.ro. [141.85.0.122])
        by smtp.gmail.com with ESMTPSA id 78sm6830709wms.14.2017.03.18.09.55.34
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 18 Mar 2017 09:55:35 -0700 (PDT)
From: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
To: oleg.drokin@intel.com,
	andreas.dilger@intel.com,
	jsimmons@infradead.org,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
Subject: [PATCH v2 1/2] staging: lustre: libcfs: Replace printk() with pr_*()
Date: Sat, 18 Mar 2017 18:55:25 +0200
Message-Id: <23e08384a4d95ed0b8ddcd191c20aa22c98bc9da.1489855248.git.narcisaanamaria12@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1489855248.git.narcisaanamaria12@gmail.com>
References: <cover.1489686964.git.narcisaanamaria12@gmail.com> <cover.1489855248.git.narcisaanamaria12@gmail.com>

Convert printk() calls into corresponding pr_*() calls.

Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
---
 drivers/staging/lustre/lnet/libcfs/tracefile.c | 50 ++++++++++++--------------
 1 file changed, 22 insertions(+), 28 deletions(-)

diff --git a/drivers/staging/lustre/lnet/libcfs/tracefile.c b/drivers/staging/lustre/lnet/libcfs/tracefile.c
index d7b29f8..5cc67d7 100644
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


