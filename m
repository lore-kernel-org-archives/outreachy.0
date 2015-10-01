X-GM-THRID: 6200357690588266496
X-Received: by 10.112.12.132 with SMTP id y4mr1530024lbb.0.1443713358351;
        Thu, 01 Oct 2015 08:29:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.100.161 with SMTP id ez1ls188696wib.12.gmail; Thu, 01 Oct
 2015 08:29:17 -0700 (PDT)
X-Received: by 10.180.9.104 with SMTP id y8mr592207wia.7.1443713357436;
        Thu, 01 Oct 2015 08:29:17 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x22c.google.com (mail-wi0-x22c.google.com. [2a00:1450:400c:c05::22c])
        by gmr-mx.google.com with ESMTPS id c7si92832wiy.3.2015.10.01.08.29.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2015 08:29:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) client-ip=2a00:1450:400c:c05::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22c.google.com with SMTP id fx3so38838611wic.1
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Oct 2015 08:29:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=RKCewzTLkqpsM4Psj8TOxV+jK/oqDcejui073qEYhC8=;
        b=XPrUeZnWts7uZlYrNiWFABn/ubi0SQYluJe+omgK8J36HhrlKDJbd64YDNTuIi4Qp3
         fgzK8uDUoyKl1MdUbWfNv9Ef6KEQb+bh0+F3pEyIbzL/QfNOPXCSmJWnwa95zDRgI/pn
         KFZq9ix/xkFdvC7ipGREMhLzlu5hPMxYV5RVN8JoxKP6AEnzDCHayyo/BKRaXOd8RkNg
         wwlu4eexfNFX2aHEfv71zbccDiyPSBgfC9XIXj1EyX0iATK3sf6L+W85rNRsLJ/Vtuww
         VXmr0K/qE8agOSVmNtIWWGiFqEMFBYr8kPlB7TWQSQr+PVE8scpJbG7zj4DyCuGtb6fo
         VQJg==
X-Received: by 10.194.222.227 with SMTP id qp3mr13281588wjc.36.1443713357252;
        Thu, 01 Oct 2015 08:29:17 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by smtp.gmail.com with ESMTPSA id it4sm6707156wjb.0.2015.10.01.08.29.16
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 01 Oct 2015 08:29:16 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: y2038@lists.linaro.org,
	Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH v3] Staging: olpc_dcon: Replace timespec with ktime_t
Date: Thu,  1 Oct 2015 17:29:00 +0200
Message-Id: <1443713340-3161-1-git-send-email-ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

Struct timespec will overflow in year 2038, here it will not cause an
overflow because it is used with timespec_sub, but still has to be
removed as part of y2038 changes. Replace it with ktime_t. Also use
monotonic instead of real-time by replacing functions getnstimeofday
with ktime_get.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
Changes in v3:
        -fix commit message (ktime_sub -> ktime_get)

Changes in v2:
        -use ktime_t instead timespec64
        -use ktime_sub instead timespec64_sub
        -use monotonic instead real-time.

 drivers/staging/olpc_dcon/olpc_dcon.c | 27 +++++++++++++--------------
 drivers/staging/olpc_dcon/olpc_dcon.h |  4 ++--
 2 files changed, 15 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/olpc_dcon/olpc_dcon.c b/drivers/staging/olpc_dcon/olpc_dcon.c
index d115f5c..2dc5d36 100644
--- a/drivers/staging/olpc_dcon/olpc_dcon.c
+++ b/drivers/staging/olpc_dcon/olpc_dcon.c
@@ -238,13 +238,12 @@ static void dcon_sleep(struct dcon_priv *dcon, bool sleep)
  */
 static void dcon_load_holdoff(struct dcon_priv *dcon)
 {
-	struct timespec delta_t, now;
+	ktime_t delta_t, now;
 
 	while (1) {
-		getnstimeofday(&now);
-		delta_t = timespec_sub(now, dcon->load_time);
-		if (delta_t.tv_sec != 0 ||
-			delta_t.tv_nsec > NSEC_PER_MSEC * 20) {
+		now = ktime_get();
+		delta_t = ktime_sub(now, dcon->load_time);
+		if (ktime_to_ns(delta_t) > NSEC_PER_MSEC * 20) {
 			break;
 		}
 		mdelay(4);
@@ -325,19 +324,19 @@ static void dcon_source_switch(struct work_struct *work)
 
 		/* And turn off the DCON */
 		pdata->set_dconload(1);
-		getnstimeofday(&dcon->load_time);
+		dcon->load_time = ktime_get();
 
 		pr_info("The CPU has control\n");
 		break;
 	case DCON_SOURCE_DCON:
 	{
-		struct timespec delta_t;
+		ktime_t delta_t;
 
 		pr_info("dcon_source_switch to DCON\n");
 
 		/* Clear DCONLOAD - this implies that the DCON is in control */
 		pdata->set_dconload(0);
-		getnstimeofday(&dcon->load_time);
+		dcon->load_time = ktime_get();
 
 		wait_event_timeout(dcon->waitq, dcon->switched, HZ/2);
 
@@ -355,14 +354,14 @@ static void dcon_source_switch(struct work_struct *work)
 			 * deassert and reassert, and hope for the best.
 			 * see http://dev.laptop.org/ticket/9664
 			 */
-			delta_t = timespec_sub(dcon->irq_time, dcon->load_time);
-			if (dcon->switched && delta_t.tv_sec == 0 &&
-					delta_t.tv_nsec < NSEC_PER_MSEC * 20) {
+			delta_t = ktime_sub(dcon->irq_time, dcon->load_time);
+			if (dcon->switched && 
+				ktime_to_ns(delta_t) < NSEC_PER_MSEC * 20) {
 				pr_err("missed loading, retrying\n");
 				pdata->set_dconload(1);
 				mdelay(41);
 				pdata->set_dconload(0);
-				getnstimeofday(&dcon->load_time);
+				dcon->load_time = ktime_get();
 				mdelay(41);
 			}
 		}
@@ -742,7 +741,7 @@ irqreturn_t dcon_interrupt(int irq, void *id)
 	case 2:	/* switch to DCON mode */
 	case 1: /* switch to CPU mode */
 		dcon->switched = true;
-		getnstimeofday(&dcon->irq_time);
+		dcon->irq_time = ktime_get();
 		wake_up(&dcon->waitq);
 		break;
 
@@ -756,7 +755,7 @@ irqreturn_t dcon_interrupt(int irq, void *id)
 		 */
 		if (dcon->curr_src != dcon->pending_src && !dcon->switched) {
 			dcon->switched = true;
-			getnstimeofday(&dcon->irq_time);
+			dcon->irq_time = ktime_get();
 			wake_up(&dcon->waitq);
 			pr_debug("switching w/ status 0/0\n");
 		} else {
diff --git a/drivers/staging/olpc_dcon/olpc_dcon.h b/drivers/staging/olpc_dcon/olpc_dcon.h
index d06e19d..215e7ec 100644
--- a/drivers/staging/olpc_dcon/olpc_dcon.h
+++ b/drivers/staging/olpc_dcon/olpc_dcon.h
@@ -79,8 +79,8 @@ struct dcon_priv {
 
 	/* Variables used during switches */
 	bool switched;
-	struct timespec irq_time;
-	struct timespec load_time;
+	ktime_t irq_time;
+	ktime_t load_time;
 
 	/* Current output type; true == mono, false == color */
 	bool mono;
-- 
1.9.1


