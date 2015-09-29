X-GM-THRID: 6199956931462823936
X-Received: by 10.194.109.233 with SMTP id hv9mr4393578wjb.1.1443539962805;
        Tue, 29 Sep 2015 08:19:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.8.225 with SMTP id u1ls332727laa.83.gmail; Tue, 29 Sep
 2015 08:19:22 -0700 (PDT)
X-Received: by 10.112.158.202 with SMTP id ww10mr4447068lbb.13.1443539962223;
        Tue, 29 Sep 2015 08:19:22 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x229.google.com (mail-wi0-x229.google.com. [2a00:1450:400c:c05::229])
        by gmr-mx.google.com with ESMTPS id k7si852144wif.1.2015.09.29.08.19.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Sep 2015 08:19:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) client-ip=2a00:1450:400c:c05::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x229.google.com with SMTP id ge5so155429538wic.0
        for <outreachy-kernel@googlegroups.com>; Tue, 29 Sep 2015 08:19:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=2eUWWr13F18bCoDO+eKJKzE7ugJdwcmPL9+v/oMf3Bk=;
        b=ovtBzOm4cQeQV91drHroVlkFuM9Hg1cxMsHp1OfQd2zC2MvxtdHmJDgJBT2CBtTR0c
         p3lW8g90+9ed1A9EOWdjuQxWVIqG3YsRsfb7vI3q/SdIfLcvXIaZBuOlqoYT4QZqeu7y
         fGsy8VY2N05tCiavUe/toSLYTPZfgCqzNOyskWg6XjQ2MyRfqbf6Y6gnfrlp9ZVIxIuj
         7j5AwwUz7JVZSCzWWhGWNaTN1iQx5iH2OTc4qfjPhB+z3AeFnL5PkDBXoXJHMI3lYeNy
         ufNY4S+SZh/42a0syplbJWMIx7D5PqXOQzvW+KQCc/mnUVuTUwUf2GgQStcM2C8+Iy1C
         S11A==
X-Received: by 10.180.198.142 with SMTP id jc14mr27033724wic.32.1443539962048;
        Tue, 29 Sep 2015 08:19:22 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by smtp.gmail.com with ESMTPSA id jf3sm24400959wic.8.2015.09.29.08.19.20
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 29 Sep 2015 08:19:21 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: y2038@lists.linaro.org,
	Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH] Staging: olpc_dcon: Replace timespec with timespec64
Date: Tue, 29 Sep 2015 17:19:14 +0200
Message-Id: <1443539954-3341-1-git-send-email-ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

Struct timespec will overflow in year 2038, therefore relace it with
struct timespec64. Also replace functions getnstimeofday and timespec_sub,
which uses struct timespec, with getnstimeofday64 and timespec64_sub.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
 drivers/staging/olpc_dcon/olpc_dcon.c | 21 +++++++++++----------
 drivers/staging/olpc_dcon/olpc_dcon.h |  4 ++--
 2 files changed, 13 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/olpc_dcon/olpc_dcon.c b/drivers/staging/olpc_dcon/olpc_dcon.c
index d115f5c..227ae0d 100644
--- a/drivers/staging/olpc_dcon/olpc_dcon.c
+++ b/drivers/staging/olpc_dcon/olpc_dcon.c
@@ -238,11 +238,11 @@ static void dcon_sleep(struct dcon_priv *dcon, bool sleep)
  */
 static void dcon_load_holdoff(struct dcon_priv *dcon)
 {
-	struct timespec delta_t, now;
+	struct timespec64 delta_t, now;
 
 	while (1) {
-		getnstimeofday(&now);
-		delta_t = timespec_sub(now, dcon->load_time);
+		getnstimeofday64(&now);
+		delta_t = timespec64_sub(now, dcon->load_time);
 		if (delta_t.tv_sec != 0 ||
 			delta_t.tv_nsec > NSEC_PER_MSEC * 20) {
 			break;
@@ -325,19 +325,19 @@ static void dcon_source_switch(struct work_struct *work)
 
 		/* And turn off the DCON */
 		pdata->set_dconload(1);
-		getnstimeofday(&dcon->load_time);
+		getnstimeofday64(&dcon->load_time);
 
 		pr_info("The CPU has control\n");
 		break;
 	case DCON_SOURCE_DCON:
 	{
-		struct timespec delta_t;
+		struct timespec64 delta_t;
 
 		pr_info("dcon_source_switch to DCON\n");
 
 		/* Clear DCONLOAD - this implies that the DCON is in control */
 		pdata->set_dconload(0);
-		getnstimeofday(&dcon->load_time);
+		getnstimeofday64(&dcon->load_time);
 
 		wait_event_timeout(dcon->waitq, dcon->switched, HZ/2);
 
@@ -355,14 +355,15 @@ static void dcon_source_switch(struct work_struct *work)
 			 * deassert and reassert, and hope for the best.
 			 * see http://dev.laptop.org/ticket/9664
 			 */
-			delta_t = timespec_sub(dcon->irq_time, dcon->load_time);
+			delta_t = timespec64_sub(dcon->irq_time,
+						 dcon->load_time);
 			if (dcon->switched && delta_t.tv_sec == 0 &&
 					delta_t.tv_nsec < NSEC_PER_MSEC * 20) {
 				pr_err("missed loading, retrying\n");
 				pdata->set_dconload(1);
 				mdelay(41);
 				pdata->set_dconload(0);
-				getnstimeofday(&dcon->load_time);
+				getnstimeofday64(&dcon->load_time);
 				mdelay(41);
 			}
 		}
@@ -742,7 +743,7 @@ irqreturn_t dcon_interrupt(int irq, void *id)
 	case 2:	/* switch to DCON mode */
 	case 1: /* switch to CPU mode */
 		dcon->switched = true;
-		getnstimeofday(&dcon->irq_time);
+		getnstimeofday64(&dcon->irq_time);
 		wake_up(&dcon->waitq);
 		break;
 
@@ -756,7 +757,7 @@ irqreturn_t dcon_interrupt(int irq, void *id)
 		 */
 		if (dcon->curr_src != dcon->pending_src && !dcon->switched) {
 			dcon->switched = true;
-			getnstimeofday(&dcon->irq_time);
+			getnstimeofday64(&dcon->irq_time);
 			wake_up(&dcon->waitq);
 			pr_debug("switching w/ status 0/0\n");
 		} else {
diff --git a/drivers/staging/olpc_dcon/olpc_dcon.h b/drivers/staging/olpc_dcon/olpc_dcon.h
index d06e19d..ccb500b 100644
--- a/drivers/staging/olpc_dcon/olpc_dcon.h
+++ b/drivers/staging/olpc_dcon/olpc_dcon.h
@@ -79,8 +79,8 @@ struct dcon_priv {
 
 	/* Variables used during switches */
 	bool switched;
-	struct timespec irq_time;
-	struct timespec load_time;
+	struct timespec64 irq_time;
+	struct timespec64 load_time;
 
 	/* Current output type; true == mono, false == color */
 	bool mono;
-- 
1.9.1


