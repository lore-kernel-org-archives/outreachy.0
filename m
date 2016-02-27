X-GM-THRID: 6255862432468566016
X-Received: by 10.107.136.160 with SMTP id s32mr9798308ioi.14.1456556476867;
        Fri, 26 Feb 2016 23:01:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.22.10 with SMTP id 10ls1565703qgm.23.gmail; Fri, 26 Feb
 2016 23:01:15 -0800 (PST)
X-Received: by 10.129.71.85 with SMTP id u82mr4486529ywa.9.1456556475078;
        Fri, 26 Feb 2016 23:01:15 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id ui7si2421027pab.0.2016.02.26.23.01.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Feb 2016 23:01:14 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x230.google.com with SMTP id ho8so64440354pac.2
        for <outreachy-kernel@googlegroups.com>; Fri, 26 Feb 2016 23:01:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=hp+ZwvVD3IVvQAFI0gYDpJdvYN8TzfwZAdc1ogQiNYs=;
        b=mrKwRJmEIN+dqvN+YgFIGLD/WZvS7VIzkjWeF6/ySa646h0CL3VUrid6Rv4wT49AbZ
         /xDoz95jXYRm9pQmE8GRMhgtqVyN7hY5sbQle6v/XJIVFaemaR25SdEKiMxfGsVpFAAx
         juTNYuIXe7fGmhHkqG7RW0tsP98aZmDG11ZSccFHzJJWHyX+FIZziyQrFilFkLRCQYbp
         JYP3FDNeTE9tBGhvqZPCENjrYV4/ue6WzKxzayGn4OsmIAO7+PLzZk+4McU/TAtGigO2
         be3yI8oKR4ayIKTywdL3L0KQzguupKEN0NIqShcDen5kU72LD8cUJ/deOvkfkMSMyhlE
         nvZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=hp+ZwvVD3IVvQAFI0gYDpJdvYN8TzfwZAdc1ogQiNYs=;
        b=H36n5vEIH6eOLi9KP9Z3djzuSEpih1j9Nt+NibvqQSsRZd+AAdNNgH8DOCeyCO8lZa
         I39sEuYF41vn9AK7cZwex8yJmEJEW8cVQJhtgDb4C1KTXqyK3QVv5HGTuclGTrHgrIrO
         qyv4CLOto6/NZt8Qg4SP4F1JSfvkPBSkS0v2RVcelg0floMZmIEbSrdSOjWhjIVZLY25
         vGNey3FiUszAdsW9EdEI5pqn6xr9B1gUh6GodYFaPTrtbAakbRtqRoZYXSQDCjDdY4HW
         jhVQks1GMVvpX2Jz3h+mHzJj+yWRdIEUgmT6cfsyX3PZ/m/hZIXjVlK6C3Rj0tyZbSoB
         45nA==
X-Gm-Message-State: AD7BkJKzumn1XwDLgURArtx/SxEVSqLQhNzK+0308W5oovPWoBgdBhBUTwGAZCpiiwkAGA==
X-Received: by 10.67.7.197 with SMTP id de5mr7666565pad.105.1456556474766;
        Fri, 26 Feb 2016 23:01:14 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.157.148])
        by smtp.gmail.com with ESMTPSA id w89sm23640508pfi.13.2016.02.26.23.01.10
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Fri, 26 Feb 2016 23:01:13 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Sat, 27 Feb 2016 12:31:03 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: lustre: Use seq_puts instead of seq_printf
Date: Sat, 27 Feb 2016 12:30:43 +0530
Message-Id: <1456556443-5809-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch converts the seq_printf output with constant strings to
seq_puts.
Done using coccinelle:

@@
identifier a;
constant b;
@@
(
- seq_printf(a,"\n");
+ seq_putc(a,'\n');
|
- seq_printf(a,b);
+ seq_puts(a,b);
)

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/lustre/lustre/llite/lproc_llite.c | 14 +++++++-------
 drivers/staging/lustre/lustre/mgc/mgc_request.c   |  2 +-
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/lustre/lustre/llite/lproc_llite.c b/drivers/staging/lustre/lustre/llite/lproc_llite.c
index f5fe928..a6aec0e 100644
--- a/drivers/staging/lustre/lustre/llite/lproc_llite.c
+++ b/drivers/staging/lustre/lustre/llite/lproc_llite.c
@@ -776,7 +776,7 @@ static int ll_sbi_flags_seq_show(struct seq_file *m, void *v)
 		flags >>= 1;
 		++i;
 	}
-	seq_printf(m, "\b\n");
+	seq_puts(m, "\b\n");
 	return 0;
 }
 
@@ -1153,8 +1153,8 @@ static int ll_rw_extents_stats_pp_seq_show(struct seq_file *seq, void *v)
 	ktime_get_real_ts64(&now);
 
 	if (!sbi->ll_rw_stats_on) {
-		seq_printf(seq, "disabled\n"
-			   "write anything in this file to activate, then 0 or \"[D/d]isabled\" to deactivate\n");
+		seq_puts(seq,
+			 "disabled\n write anything in this file to activate, then 0 or \"[D/d]isabled\" to deactivate\n");
 		return 0;
 	}
 	seq_printf(seq, "snapshot_time:	 %llu.%09lu (secs.usecs)\n",
@@ -1231,8 +1231,8 @@ static int ll_rw_extents_stats_seq_show(struct seq_file *seq, void *v)
 	ktime_get_real_ts64(&now);
 
 	if (!sbi->ll_rw_stats_on) {
-		seq_printf(seq, "disabled\n"
-			   "write anything in this file to activate, then 0 or \"[D/d]isabled\" to deactivate\n");
+		seq_puts(seq,
+			 "disabled\n write anything in this file to activate, then 0 or \"[D/d]isabled\" to deactivate\n");
 		return 0;
 	}
 	seq_printf(seq, "snapshot_time:	 %llu.%09lu (secs.usecs)\n",
@@ -1411,8 +1411,8 @@ static int ll_rw_offset_stats_seq_show(struct seq_file *seq, void *v)
 	ktime_get_real_ts64(&now);
 
 	if (!sbi->ll_rw_stats_on) {
-		seq_printf(seq, "disabled\n"
-			   "write anything in this file to activate, then 0 or \"[D/d]isabled\" to deactivate\n");
+		seq_puts(seq,
+			 "disabled\n write anything in this file to activate, then 0 or \"[D/d]isabled\" to deactivate\n");
 		return 0;
 	}
 	spin_lock(&sbi->ll_process_lock);
diff --git a/drivers/staging/lustre/lustre/mgc/mgc_request.c b/drivers/staging/lustre/lustre/mgc/mgc_request.c
index 6fc8225..a72fad3 100644
--- a/drivers/staging/lustre/lustre/mgc/mgc_request.c
+++ b/drivers/staging/lustre/lustre/mgc/mgc_request.c
@@ -455,7 +455,7 @@ int lprocfs_mgc_rd_ir_state(struct seq_file *m, void *data)
 
 	seq_printf(m, "imperative_recovery: %s\n",
 		      OCD_HAS_FLAG(ocd, IMP_RECOV) ? "ENABLED" : "DISABLED");
-	seq_printf(m, "client_state:\n");
+	seq_puts(m, "client_state:\n");
 
 	spin_lock(&config_list_lock);
 	list_for_each_entry(cld, &config_llog_list, cld_list_chain) {
-- 
1.9.1


