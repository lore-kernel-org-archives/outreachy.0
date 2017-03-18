X-GM-THRID: 6398158236087746560
X-Received: by 10.25.215.37 with SMTP id o37mr2456629lfg.20.1489856170748;
        Sat, 18 Mar 2017 09:56:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.0.164 with SMTP id e36ls122276lji.53.gmail; Sat, 18 Mar
 2017 09:56:10 -0700 (PDT)
X-Received: by 10.46.21.28 with SMTP id s28mr2890775ljd.14.1489856170177;
        Sat, 18 Mar 2017 09:56:10 -0700 (PDT)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wr0-x241.google.com (mail-wr0-x241.google.com. [2a00:1450:400c:c0c::241])
        by gmr-mx.google.com with ESMTPS id q207si395337wme.3.2017.03.18.09.56.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Mar 2017 09:56:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) client-ip=2a00:1450:400c:c0c::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x241.google.com with SMTP id u48so13028196wrc.1
        for <outreachy-kernel@googlegroups.com>; Sat, 18 Mar 2017 09:56:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=9uK/iBW9cePT2+IdYwzFXV+oXL4SoyVlfADelB0uSDQ=;
        b=OeKaTKXN0QrMOGW+XbjwAQ+HUaHvxWmmD8k+mg52Knvv5WZmtOXRQvm0K6ZKhwnael
         u21aLlNs2fzDHRvxBMhSnHTpwR6ndmy4Ve6R7Zb4goP6Ns1RmNNNV9UhMeWf7spcqc3z
         T3UUrrnKCK32DLcbcN8QW1qldcpVBeghj1X9iP3k49kNafMVRFBCYju5fJZKih2AJW1m
         Xw7Dj/APUSea5shILZVa9vegL0JD03Trr9rMqhdKVQ/71zgDEtM3PPxvK4HRQhBHozN4
         d6vs5o2a9TNI8xjqHmoAlF3vzXfs1xreLNHDvBYRbzXv1UlLCK30x313w/ft0iLaUo/Q
         7jjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=9uK/iBW9cePT2+IdYwzFXV+oXL4SoyVlfADelB0uSDQ=;
        b=chXYXwVm280ASoLO12s0Tadssk0kVgPYYNnO7xCvBLhpFiL7x7N/hKaHZNOg+IPvfq
         CMN1f9szZgAAdnWk3CJhmkjqMY7ESxeDpw7b6jYaMu4WZ8a6r3HGbbmhiA1smMNcGFJu
         YzyuTZIoojPwaJ7DHkBYOteBhG1wj/kAsArKYgj7vRD2w2n5wXwvbeXWmJ9TBVzQ2qn9
         Vh1TXuDAmoXJVnK2C0uku3jqnBz1R6ccgAMP2UTbitpmhGrkO66oi5L2lbHzJItk5BUT
         yppl0wL25/DY8z/ZxT9Vl+KZ+8rtz3rlK35dKNhcIvA8pXOTpK1I75YU0lg4EM4H5Nz2
         75hw==
X-Gm-Message-State: AFeK/H1XLEb3os1Ancnwn9gOUm9xrEezNQ5S8gSXNvzQknwjF3BoVQveyFkd57L75ZIyRw==
X-Received: by 10.223.154.149 with SMTP id a21mr17466503wrc.145.1489856169957;
        Sat, 18 Mar 2017 09:56:09 -0700 (PDT)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from localhost.localdomain (p22.eregie.pub.ro. [141.85.0.122])
        by smtp.gmail.com with ESMTPSA id o22sm13420506wro.13.2017.03.18.09.56.08
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 18 Mar 2017 09:56:09 -0700 (PDT)
From: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
To: oleg.drokin@intel.com,
	andreas.dilger@intel.com,
	jsimmons@infradead.org,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
Subject: [PATCH v2 2/2] staging: lustre: libcfs: Define pr_fmt() to include relevant name
Date: Sat, 18 Mar 2017 18:56:00 +0200
Message-Id: <c92158e3e5fc4349ed9970d0fd60e458915375fc.1489855248.git.narcisaanamaria12@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1489855248.git.narcisaanamaria12@gmail.com>
References: <cover.1489686964.git.narcisaanamaria12@gmail.com> <cover.1489855248.git.narcisaanamaria12@gmail.com>

Define a pr_fmt() for tracefile.c
Remove redundant prefix 'Lustre' from pr_*() calls.

Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
---
 drivers/staging/lustre/lnet/libcfs/tracefile.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/lustre/lnet/libcfs/tracefile.c b/drivers/staging/lustre/lnet/libcfs/tracefile.c
index 5cc67d7..9599b74 100644
--- a/drivers/staging/lustre/lnet/libcfs/tracefile.c
+++ b/drivers/staging/lustre/lnet/libcfs/tracefile.c
@@ -37,6 +37,7 @@
 
 #define DEBUG_SUBSYSTEM S_LNET
 #define LUSTRE_TRACEFILE_PRIVATE
+#define pr_fmt(fmt) "Lustre: " fmt
 #include "tracefile.h"
 
 #include "../../include/linux/libcfs/libcfs.h"
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


