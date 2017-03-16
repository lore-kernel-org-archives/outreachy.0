X-GM-THRID: 6398158236087746560
X-Received: by 10.25.216.154 with SMTP id r26mr1415849lfi.7.1489687327731;
        Thu, 16 Mar 2017 11:02:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.77.72 with SMTP id a69ls460382ljb.42.gmail; Thu, 16 Mar
 2017 11:02:07 -0700 (PDT)
X-Received: by 10.25.145.17 with SMTP id t17mr1500761lfd.23.1489687327248;
        Thu, 16 Mar 2017 11:02:07 -0700 (PDT)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wr0-x242.google.com (mail-wr0-x242.google.com. [2a00:1450:400c:c0c::242])
        by gmr-mx.google.com with ESMTPS id 82si362319wmg.3.2017.03.16.11.02.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Mar 2017 11:02:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) client-ip=2a00:1450:400c:c0c::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x242.google.com with SMTP id l37so6834879wrc.3
        for <outreachy-kernel@googlegroups.com>; Thu, 16 Mar 2017 11:02:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=J7lU/1vVgZqGUl9RFkeg/X4EMBCV6GA7LLSaAOZEojg=;
        b=EV/ZEH2kqIFylYOhKv5TpllGVajjk3q54M+ua1LwLv2quGd0ScHrWxgsSxmDvD/+d4
         NmEgJztnbF4hbKZr4Ylgfh4QilHBXp4JzRR9G7M3yEwIUt8YBX2hO4D6Oc36S+P7eLt/
         i22PaBi6c1t5xFhiokZR66IlSw3gU+VyYMHrvHu9+PwXetVU403hjrdtxSU5KKGbOAE3
         5PcEa1SiXOoslhSOtFUSy9HD4pvfkRfEbwLzE55RuB2mvA+NiBGQFKu9OHWfDeE3bDiC
         jME0s1Q9bR5/0grhKUEsHyIwDtTAHzv9iRv3HLAduM6YQOOfLcZRZzW237/4DYBGqig/
         FA2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=J7lU/1vVgZqGUl9RFkeg/X4EMBCV6GA7LLSaAOZEojg=;
        b=F1AyvxUGqng9k7Nz7k/lRVhxBwrizFFvTRSdbxLeJ0FTd3NO8GVA70dxfA1EKuXIOK
         kLZBQlwEZx+j+dsM/uB9et9ie0kzpBmwQ4Jp7afQwrC5OxjpUwaCu06K+dl7V6qz/9os
         DIvCTShLoK9k+pG1Fi/LQl2Er7pkC9seBNf1iBnKG3SHEE/Kz5e1MYDJnohcUm8Zx5V7
         fhayf9TZRVUf8KL/Emh2IWQTAyXfIIX4yYHD1saS02OymDuUIfPZocefAQDct9eNdR/O
         4hd2pB11MYqWJXdKeQQNzTA5ykPBlkWkBHhn+ZPtu57gUAFqM3vD0H2QfC0UBnj06KWF
         txDw==
X-Gm-Message-State: AFeK/H2wk5Ej1ocSFtNT3NJECvHlBi9wecPuPZKMCjsGTjAhpSAnLs4b5zE4cGFPVySqwA==
X-Received: by 10.223.161.213 with SMTP id v21mr8650303wrv.144.1489687327043;
        Thu, 16 Mar 2017 11:02:07 -0700 (PDT)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from localhost.localdomain (p22.eregie.pub.ro. [141.85.0.122])
        by smtp.gmail.com with ESMTPSA id 17sm7036886wru.16.2017.03.16.11.02.06
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 16 Mar 2017 11:02:06 -0700 (PDT)
From: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
To: oleg.drokin@intel.com,
	andreas.dilger@intel.com,
	jsimmons@infradead.org,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
Subject: [PATCH 2/2] staging: lustre: libcfs: Define pr_fmt() to include relevant name
Date: Thu, 16 Mar 2017 20:01:58 +0200
Message-Id: <c9dc3ba5eb0d36a8ac8bef36d007d9715075af5b.1489686964.git.narcisaanamaria12@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1489686964.git.narcisaanamaria12@gmail.com>
References: <cover.1489686964.git.narcisaanamaria12@gmail.com>

Define a pr_fmt() for tracefile.c
Remove redundant prefix 'Lustre' from pr_*() calls.

Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
---
 drivers/staging/lustre/lnet/libcfs/tracefile.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/lustre/lnet/libcfs/tracefile.c b/drivers/staging/lustre/lnet/libcfs/tracefile.c
index c70f36e..72fd0c5 100644
--- a/drivers/staging/lustre/lnet/libcfs/tracefile.c
+++ b/drivers/staging/lustre/lnet/libcfs/tracefile.c
@@ -37,6 +37,7 @@
 
 #define DEBUG_SUBSYSTEM S_LNET
 #define LUSTRE_TRACEFILE_PRIVATE
+#define pr_fmt(fmt) "Lustre: " fmt
 #include "tracefile.h"
 
 #include "../../include/linux/libcfs/libcfs.h"
@@ -711,7 +712,7 @@ int cfs_tracefile_dump_all_pages(char *filename)
 	if (IS_ERR(filp)) {
 		rc = PTR_ERR(filp);
 		filp = NULL;
-		pr_err("LustreError: can't open %s for dump: rc %d\n", filename,
+		pr_err("Error: can't open %s for dump: rc %d\n", filename,
 		       rc);
 		goto out;
 	}
@@ -892,7 +893,7 @@ int cfs_trace_daemon_command(char *str)
 	} else {
 		strcpy(cfs_tracefile, str);
 
-		pr_info("Lustre: debug daemon will attempt to start writing to %s (%lukB max)\n",
+		pr_info("debug daemon will attempt to start writing to %s (%lukB max)\n",
 			cfs_tracefile,
 			(long)(cfs_tracefile_size >> 10));
 
@@ -930,13 +931,13 @@ int cfs_trace_set_debug_mb(int mb)
 	struct cfs_trace_cpu_data *tcd;
 
 	if (mb < num_possible_cpus()) {
-		pr_warn("Lustre: %d MB is too small for debug buffer size, setting it to %d MB.\n",
+		pr_warn("%d MB is too small for debug buffer size, setting it to %d MB.\n",
 			mb, num_possible_cpus());
 		mb = num_possible_cpus();
 	}
 
 	if (mb > limit) {
-		pr_warn("Lustre: %d MB is too large for debug buffer size, setting it to %d MB.\n",
+		pr_warn("%d MB is too large for debug buffer size, setting it to %d MB.\n",
 			mb, limit);
 		mb = limit;
 	}
@@ -1048,7 +1049,7 @@ static int tracefiled(void *arg)
 		if (!list_empty(&pc.pc_pages)) {
 			int i;
 
-			pr_alert("Lustre: trace pages aren't empty\n");
+			pr_alert("trace pages aren't empty\n");
 			pr_err("total cpus(%d): ", num_possible_cpus());
 			for (i = 0; i < num_possible_cpus(); i++)
 				if (cpu_online(i))
@@ -1118,7 +1119,7 @@ void cfs_trace_stop_thread(void)
 
 	mutex_lock(&cfs_trace_thread_mutex);
 	if (thread_running) {
-		pr_info("Lustre: shutting down debug daemon thread...\n");
+		pr_info("shutting down debug daemon thread...\n");
 		atomic_set(&tctl->tctl_shutdown, 1);
 		wait_for_completion(&tctl->tctl_stop);
 		thread_running = 0;
-- 
1.9.1


