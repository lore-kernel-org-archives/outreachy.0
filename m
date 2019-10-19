X-GM-THRID: 6749515623301120000
X-Received: by 2002:a17:906:5007:: with SMTP id s7mr13743228ejj.181.1571494074081;
        Sat, 19 Oct 2019 07:07:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6402:88c:: with SMTP id e12ls219503edy.2.gmail; Sat, 19
 Oct 2019 07:07:53 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy2olNrl0YqYqcUsQzGjfT5W9YOx/IAx6xcDQx63JZUk/7IDhF0PA2vQbcwYHMQeyKRjHkZ
X-Received: by 2002:a05:6402:7d2:: with SMTP id u18mr15686251edy.23.1571494073149;
        Sat, 19 Oct 2019 07:07:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571494073; cv=none;
        d=google.com; s=arc-20160816;
        b=aS5C7nXok/407WIJvcBnVqZcggOkFUIFipnbsUyftsApMMEIGfv5P2mcqstVxMd3MM
         eU+845SiEiDxHGVCPHKzMUXQGMnmToB9J3zdMv0xCvqIX4gSXw+nHP7WNwAQ1eZ34/aA
         lAIX3P0fs1x5ywBy59rUJMOcJXR/kedlmG+Ofrj9Lqknyjyi6hvv0xMYD0lbUHx+CWXM
         2hlIuMbDmvKAvThbk4UxLOJPYj7/C+8Mv+u013zbqPnIMeh3JmBCgqajokEelAkmRUki
         YkBMIyc//kjY5l/t1Ru6UQtKl4G2aeLY9t6bShB5BX1mffGRra1rZ0hOBxRRytYhb2cs
         PVAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=4oUvDhII8vHajj9ZiQGmAkvxzCNzCrUqcLrW308wtI8=;
        b=kQrhxG0n0Vr92KbpYK+0NwxDam9i3NzmQwOzBZdAq1ubTxheEuAwFRkgzekd+iVv7D
         zkgnXkl90SbLjvw+b96xrXS7RJQvgni70h1ksGsdz4szUWUzttMFT49lm+pbFwz15R4G
         DGwlFAJIa4eBDKqyGpP6rXupNuE7CJuQSB2UD/UkRNwYOMRUPdn+oKYsGiq2JUSum5dp
         vmWfRyJvy2yqH/2blZJCOzvVNmwftjQSRvgCWGmnFSbbSAsu+xVTN64ykewh31odqXIv
         jr451HcLrVY1eoqPfINAWvmOfw6OJbuo7f1JX1+hlWZK36OzplbgkYh8RpNJflORC9r7
         Qolg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OTlhg+47;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id d11si419237edh.3.2019.10.19.07.07.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 19 Oct 2019 07:07:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OTlhg+47;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x441.google.com with SMTP id z9so9073345wrl.11
        for <outreachy-kernel@googlegroups.com>; Sat, 19 Oct 2019 07:07:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=4oUvDhII8vHajj9ZiQGmAkvxzCNzCrUqcLrW308wtI8=;
        b=OTlhg+47jcB5gxIcILG5r1UG97FdYGTVDsDnYGGZzjNvG7bjVyaqz7jPqyXCAghaa3
         LPi48tzw2hDyfkJrpTf8k4P0ElQgwXzrX4OReDd0ltxCXyToQTTrF5JXgYNV6PeI0F22
         bx1KPArFHLdDDVfqmRDKt1PTpNa4oC9B7knY+yo2+W9/tFK4PJccfZf4YkRWrGkY7d0P
         FaUflFfKc2jwnPyrE5SAd8sdn7GvQY9m12+tyUbRReLoy1Xt9AbotZtxIhsA02FH6E5g
         M2+ddw4Ev4EMGIF48SQBBFdvJFC6O1cMV/uz6K1IRW3ciuqXsijFtYc2Seyyw3bYBnPD
         70zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=4oUvDhII8vHajj9ZiQGmAkvxzCNzCrUqcLrW308wtI8=;
        b=BX/Y03X67XCAGfAe+Pjq5emLpXl9+qTNuVPf4XddvnP3rscgBh7RS4cK6gpQZ1UpKj
         K35BwpV5We4DRFteuZRQ2Leg8JbrlxB0HXaZ4+PnO++gQrf5Dbl4jftmHt9eIou8/JD6
         vXSXW5hDCv/ec8Y6DwTgGSY69mUDUDrqJg5JWmEZIVtdlMQxGUJlq42sKf4dZtWt1WZU
         IqMiFf7T3b1x/A3LQk25znoqpM4eCAr4zsVeGDllJa7N/1KktFeV5vCwuhg1BLF1w/MK
         cEl6WBi66gg3kJNgaX3PjfBSa10om3Kr+RtSxWSdaS0XDT/4Axmn/QNo4SwYu7yS31ln
         14tg==
X-Gm-Message-State: APjAAAVzdXkqvIaV8X9NyzbMJ9AlpIHtZOpBj8OGmPzWNbjxG+Bi7Xm8
	s3OhLYQZXBnWgEtxtFAPVAwYvVZ3RNrB
X-Received: by 2002:adf:f7c6:: with SMTP id a6mr11513756wrq.272.1571494072579;
        Sat, 19 Oct 2019 07:07:52 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjahub.lan (host-92-23-80-57.as13285.net. [92.23.80.57])
        by smtp.googlemail.com with ESMTPSA id t4sm7893080wrm.13.2019.10.19.07.07.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Oct 2019 07:07:52 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	jerome.pouiller@silabs.com,
	linux-kernel@vger.kernel.org,
	Jules Irenge <jbi.octave@gmail.com>
Subject: [PATCH v1 5/5] staging: wfx: fix warnings of alignment should match open parenthesis
Date: Sat, 19 Oct 2019 15:07:19 +0100
Message-Id: <20191019140719.2542-6-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191019140719.2542-1-jbi.octave@gmail.com>
References: <20191019140719.2542-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

: Fix warnings of alignment should match open parenthesis.
Issue detected by checkpatch tool.

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/wfx/data_rx.c |  2 +-
 drivers/staging/wfx/data_tx.c |  2 +-
 drivers/staging/wfx/debug.c   | 14 ++++++++------
 3 files changed, 10 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/wfx/data_rx.c b/drivers/staging/wfx/data_rx.c
index 52fb0f255dcd..e7fcce8d0cc4 100644
--- a/drivers/staging/wfx/data_rx.c
+++ b/drivers/staging/wfx/data_rx.c
@@ -77,7 +77,7 @@ static int wfx_drop_encrypt_data(struct wfx_dev *wdev, struct hif_ind_rx *arg, s
 		break;
 	default:
 		dev_err(wdev->dev, "unknown encryption type %d\n",
-			 arg->rx_flags.encryp);
+			arg->rx_flags.encryp);
 		return -EIO;
 	}
 
diff --git a/drivers/staging/wfx/data_tx.c b/drivers/staging/wfx/data_tx.c
index a02692f3210d..ea4205ac2149 100644
--- a/drivers/staging/wfx/data_tx.c
+++ b/drivers/staging/wfx/data_tx.c
@@ -40,7 +40,7 @@ static int wfx_get_hw_rate(struct wfx_dev *wdev,
 /* TX policy cache implementation */
 
 static void wfx_tx_policy_build(struct wfx_vif *wvif, struct tx_policy *policy,
-			    struct ieee80211_tx_rate *rates)
+				struct ieee80211_tx_rate *rates)
 {
 	int i;
 	size_t count;
diff --git a/drivers/staging/wfx/debug.c b/drivers/staging/wfx/debug.c
index 761ad9b4f27e..0a9ca109039c 100644
--- a/drivers/staging/wfx/debug.c
+++ b/drivers/staging/wfx/debug.c
@@ -141,10 +141,11 @@ static int wfx_rx_stats_show(struct seq_file *seq, void *v)
 	mutex_lock(&wdev->rx_stats_lock);
 	seq_printf(seq, "Timestamp: %dus\n", st->date);
 	seq_printf(seq, "Low power clock: frequency %uHz, external %s\n",
-		st->pwr_clk_freq,
-		st->is_ext_pwr_clk ? "yes" : "no");
-	seq_printf(seq, "Num. of frames: %d, PER (x10e4): %d, Throughput: %dKbps/s\n",
-		st->nb_rx_frame, st->per_total, st->throughput);
+		   st->pwr_clk_freq,
+		   st->is_ext_pwr_clk ? "yes" : "no");
+	seq_printf(seq,
+		   "N. of frames: %d, PER (x10e4): %d, Throughput: %dKbps/s\n",
+		   st->nb_rx_frame, st->per_total, st->throughput);
 	seq_puts(seq, "       Num. of      PER     RSSI      SNR      CFO\n");
 	seq_puts(seq, "        frames  (x10e4)    (dBm)     (dB)    (kHz)\n");
 	for (i = 0; i < ARRAY_SIZE(channel_names); i++) {
@@ -160,8 +161,9 @@ static int wfx_rx_stats_show(struct seq_file *seq, void *v)
 }
 DEFINE_SHOW_ATTRIBUTE(wfx_rx_stats);
 
-static ssize_t wfx_send_pds_write(struct file *file, const char __user *user_buf,
-			     size_t count, loff_t *ppos)
+static ssize_t wfx_send_pds_write(struct file *file,
+				  const char __user *user_buf,
+				  size_t count, loff_t *ppos)
 {
 	struct wfx_dev *wdev = file->private_data;
 	char *buf;
-- 
2.21.0


