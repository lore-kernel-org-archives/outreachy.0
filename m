X-GM-THRID: 6200357690588266496
X-Received: by 10.180.149.210 with SMTP id uc18mr16271wib.4.1443806655364;
        Fri, 02 Oct 2015 10:24:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.164.135 with SMTP id n129ls259214lfe.7.gmail; Fri, 02 Oct
 2015 10:24:14 -0700 (PDT)
X-Received: by 10.112.209.73 with SMTP id mk9mr2824483lbc.14.1443806654741;
        Fri, 02 Oct 2015 10:24:14 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x22d.google.com (mail-wi0-x22d.google.com. [2a00:1450:400c:c05::22d])
        by gmr-mx.google.com with ESMTPS id xl3si95230wib.1.2015.10.02.10.24.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2015 10:24:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) client-ip=2a00:1450:400c:c05::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22d.google.com with SMTP id ge5so42591146wic.0
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Oct 2015 10:24:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=mx24xfyr1I7E5EvHMy82Zd2x70bdEDQhv6OQTrU/Xds=;
        b=WyB2kI+CNeHmQDZVHL15YWkwubn5u3E0NYecA1gY3mnxdHGlZSCyutiR2pMia+sIlw
         4cpUn0MY2T3vEx0OM1T1R4YhrSS2oG5g35dcMMGUE9viZhOFaOIhhwSGWcD0L7nFxQ91
         zO4LI09yPa9O2HSD9IXURWIt0vQiJJ9bTfFatINzSG5Ugjc9URMGx9U0mWxta9mTCiIt
         G27mFGvJFFYArQDpNPIXn6jJhX2M7TmKj8XSYkYDObuqqcSipPtzTQJ6xpCEtH3G2R8a
         +Y8oke9W+/PyqYqCQ+aSg5KT1A3bUA4sQ5bZGZ5kDPeUUe7VOhiJ/Foawg6+MllbCQPf
         uD/A==
X-Received: by 10.194.80.42 with SMTP id o10mr16724891wjx.31.1443806654601;
        Fri, 02 Oct 2015 10:24:14 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by smtp.gmail.com with ESMTPSA id x7sm23990wia.5.2015.10.02.10.24.12
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 02 Oct 2015 10:24:13 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: y2038@lists.linaro.org,
	Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH v4] Staging: olpc_dcon: Replace timespec with ktime_t
Date: Fri,  2 Oct 2015 19:24:05 +0200
Message-Id: <1443806645-16504-1-git-send-email-ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

Struct timespec will overflow in year 2038, here it will not cause an
overflow because it is used with timespec_sub, but still has to be
removed as part of y2038 changes. Replace it with ktime_t. Also use
monotonic instead of real-time by replacing functions getnstimeofday
with ktime_get.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Reviewed-by: Arnd Bergmann <arnd@arndb.de>
---
Changes in v4:
	-fix checkpatch.pl errors/warnings introduced by changes made
	 in v3.

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
index d115f5c..9038e0b 100644
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
+			if (dcon->switched && ktime_to_ns(delta_t)
+			    < NSEC_PER_MSEC * 20) {
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


