X-GM-THRID: 6255545204724465664
X-Received: by 10.182.200.234 with SMTP id jv10mr487126obc.39.1456482616881;
        Fri, 26 Feb 2016 02:30:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.44.162 with SMTP id f2ls476598obm.86.gmail; Fri, 26 Feb
 2016 02:30:16 -0800 (PST)
X-Received: by 10.182.91.9 with SMTP id ca9mr518442obb.7.1456482616537;
        Fri, 26 Feb 2016 02:30:16 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id u66si1965422pfa.2.2016.02.26.02.30.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Feb 2016 02:30:16 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id ho8so50566072pac.2
        for <outreachy-kernel@googlegroups.com>; Fri, 26 Feb 2016 02:30:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=wc2Rd683K4d8Bm6MYeuC5eGoJZ9ttmktUYjRadMvML8=;
        b=S6V5ArLmH6W+uqDpJ5uHMtaBoB13dQuQSq9vY0OD1AgkxkVB5GVbH9yDmNywXyuoeh
         11eqFCEIkLkYU13fBn0xKHEcdk9GwdvPfvnwTcoFCQ7AzEzzGkIniI4a0EGzbrlTycl6
         A4T1QqAof74I3K9d6+xFWU3fjCMiwlQvcWLLg4U2Dt/A5kYz7b1Ld0wvRJ8Iq8skBjlJ
         r9ZIeDiyK5yiSnpLQQyrJVpF++GB5uJXNdRBV84DkinMkXsDfMMAp4syQktBRzsBaog7
         yrI2on3exEJXCBfreXffJmstXP1pye2QsQe4sUr7wZCToxzp29Pfc0pV6cZdYcCTWlt0
         OPwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=wc2Rd683K4d8Bm6MYeuC5eGoJZ9ttmktUYjRadMvML8=;
        b=M1ervCmKbk55QRAKMjeHasmIu+3X9bxBQr8K0Wm00RT6UZo2A/AD7gT1j0CF1PbIHJ
         6JZPA0cTEDMf8ZY+drFnGm71CYXtpMEuNDnBsLRJmm9+Hq/ghpr/eWItVDHR3owirKjh
         UsUPR/YvUsGIL/l0fimeMH1xI6ZGkfveN8lD4e8dYumgtgezGRRUKdEgxijiGomuDnb8
         gLPGAY0vTTX7WhFp05A+aHBlbKO6SJ9HHTkPg0DoBsC3Io7FzDdQVyC8cCG89iolPDh+
         qI/TVDmLjYzgdS3LWI+hzv7+/hFJ0Du04uTQTfG9xPf8Hsv8ASSjePY5mLQB8Lo+S/Cy
         JCdg==
X-Gm-Message-State: AD7BkJIeyh4wCHEbeLZEG+br46oK32bIQF+TzB73LQbRNYwEdQHVVChPnySLrEzviLniow==
X-Received: by 10.66.124.170 with SMTP id mj10mr978759pab.92.1456482616308;
        Fri, 26 Feb 2016 02:30:16 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.179.114])
        by smtp.gmail.com with ESMTPSA id b63sm18348294pfj.25.2016.02.26.02.30.14
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Fri, 26 Feb 2016 02:30:15 -0800 (PST)
Date: Fri, 26 Feb 2016 16:00:12 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: tj@kernel.org
Subject: [PATCH] staging: unisys: visorbus: visorchipset: Remove
 create_singlethread_workqueue()
Message-ID: <20160226103012.GA13970@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

With concurrency managed workqueues, use of dedicated workqueues
can be replaced by using system_wq. Drop periodic_controlvm_workqueue 
by using system_wq.

Since there is only one work item periodic_controlvm_work and different 
periodic_controlvm_works do not need to be ordered, increase of concurrency 
level by switching to system_wq should not break anything.

cancel_work_sync() is used to ensure that work is not pending or
executing on any CPU.

Lastly, since all devices are suspended, which shutdowns the work item
before the driver can be unregistered, it is guaranteed that no work
item is pending or executing by the time exit path runs.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/unisys/visorbus/visorchipset.c | 23 ++++-------------------
 1 file changed, 4 insertions(+), 19 deletions(-)

diff --git a/drivers/staging/unisys/visorbus/visorchipset.c b/drivers/staging/unisys/visorbus/visorchipset.c
index b75b063..c4c71c6 100644
--- a/drivers/staging/unisys/visorbus/visorchipset.c
+++ b/drivers/staging/unisys/visorbus/visorchipset.c
@@ -102,7 +102,6 @@ struct parser_context {
 };
 
 static struct delayed_work periodic_controlvm_work;
-static struct workqueue_struct *periodic_controlvm_workqueue;
 static DEFINE_SEMAPHORE(notifier_lock);
 
 static struct cdev file_cdev;
@@ -1913,8 +1912,7 @@ cleanup:
 			poll_jiffies = POLLJIFFIES_CONTROLVMCHANNEL_FAST;
 	}
 
-	queue_delayed_work(periodic_controlvm_workqueue,
-			   &periodic_controlvm_work, poll_jiffies);
+	schedule_delayed_work(&periodic_controlvm_work, poll_jiffies);
 }
 
 static void
@@ -2011,8 +2009,7 @@ cleanup:
 
 	poll_jiffies = POLLJIFFIES_CONTROLVMCHANNEL_SLOW;
 
-	queue_delayed_work(periodic_controlvm_workqueue,
-			   &periodic_controlvm_work, poll_jiffies);
+	schedule_delayed_work(&periodic_controlvm_work, poll_jiffies);
 }
 
 static void
@@ -2299,19 +2296,10 @@ visorchipset_init(struct acpi_device *acpi_device)
 	else
 		INIT_DELAYED_WORK(&periodic_controlvm_work,
 				  controlvm_periodic_work);
-	periodic_controlvm_workqueue =
-	    create_singlethread_workqueue("visorchipset_controlvm");
 
-	if (!periodic_controlvm_workqueue) {
-		POSTCODE_LINUX_2(CREATE_WORKQUEUE_FAILED_PC,
-				 DIAG_SEVERITY_ERR);
-		rc = -ENOMEM;
-		goto cleanup;
-	}
 	most_recent_message_jiffies = jiffies;
 	poll_jiffies = POLLJIFFIES_CONTROLVMCHANNEL_FAST;
-	queue_delayed_work(periodic_controlvm_workqueue,
-			   &periodic_controlvm_work, poll_jiffies);
+	schedule_delayed_work(&periodic_controlvm_work, poll_jiffies);
 
 	visorchipset_platform_device.dev.devt = major_dev;
 	if (platform_device_register(&visorchipset_platform_device) < 0) {
@@ -2346,10 +2334,7 @@ visorchipset_exit(struct acpi_device *acpi_device)
 
 	visorbus_exit();
 
-	cancel_delayed_work(&periodic_controlvm_work);
-	flush_workqueue(periodic_controlvm_workqueue);
-	destroy_workqueue(periodic_controlvm_workqueue);
-	periodic_controlvm_workqueue = NULL;
+	cancel_delayed_work_sync(&periodic_controlvm_work);
 	destroy_controlvm_payload_info(&controlvm_payload_info);
 
 	memset(&g_chipset_msg_hdr, 0, sizeof(struct controlvm_message_header));
-- 
1.9.1


