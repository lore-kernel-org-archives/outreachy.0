X-GM-THRID: 6255545204724465664
X-Received: by 10.129.70.86 with SMTP id t83mr8525236ywa.22.1456663461388;
        Sun, 28 Feb 2016 04:44:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.89.103 with SMTP id u94ls1927691qgd.40.gmail; Sun, 28 Feb
 2016 04:44:20 -0800 (PST)
X-Received: by 10.140.41.69 with SMTP id y63mr25690086qgy.26.1456663460900;
        Sun, 28 Feb 2016 04:44:20 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id 12si3049846pfb.1.2016.02.28.04.44.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 04:44:20 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id yy13so7097446pab.1
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 04:44:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=VMJFO8eQ9qhIBVIBvMDU2KBBe1RpZz633qaBnhQdV5w=;
        b=fM+jwHFYapoRCXaHI5GBfCrXGKBBZwtzwdE+MptKRW9vmQb0ZurJDyDJEN5YekD42+
         mirSQbNNFJQzxKLaxqnhIkzC2zkGJt5UIi3NNui4gFN7Oef3l1KUAGH4y0MbbWrrRd1M
         ABvtCVtPZlQ46A+LH9BvFPm/4s6cgYSO6ssg55d40P+VW+yMUvjzVrHlSeS2oL+JEA9J
         vK3MgxAHfXBPp4BQURmJBmwxyIv+MgKLyz+c1lvuyv0k2wA33kHhMsQ+L7A/OeHzh0UH
         fd4ttd7fmX0MS5FSyGQm2u0CPp78QfwSr+lvmpoBNTHvxf7NX8Aopaz4MlOEr8snqvRg
         J9BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=VMJFO8eQ9qhIBVIBvMDU2KBBe1RpZz633qaBnhQdV5w=;
        b=CIRBXS1kdXzBQgU5AFIQEX1X0BF7za1hrgRHziuYoy3eK6hti4uumH1F3Q3Fbk3MAr
         ldKvK/GsJC1z7x8aWiGRaDlEJ7SVN9kUrz36VpaZwe/F7rZMMTwgQINmEFP0Wc2huZWR
         jjt/hKO1a4sBMFXzu9NzuWY45Yl/cg2nZXS+GwwX0h4E1y6xE6R8EkHUZ1myu7zyGScI
         4kG4QRaPH+E1RKMISs1PndeH+G4efQK7hQr1gfIdFuxNdCo+/VG+j2CYZxwJ3kwdLqb4
         gM18Ucay2MsQLG6LFm7V6LCkcN8XMjMTc4jFNoGZVvqw25HrvRWPtRkS7uTM+svlFED4
         c5jg==
X-Gm-Message-State: AD7BkJIGKvnvUbvcvfku0e9rQc/yxTZDkY4bDPPu0WcRn0Sarvm3TKSt6jHLbH1Oez5nPQ==
X-Received: by 10.66.100.228 with SMTP id fb4mr14954161pab.84.1456663460670;
        Sun, 28 Feb 2016 04:44:20 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.179.114])
        by smtp.gmail.com with ESMTPSA id fn3sm31316724pab.20.2016.02.28.04.44.19
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sun, 28 Feb 2016 04:44:20 -0800 (PST)
Date: Sun, 28 Feb 2016 18:14:16 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: benjamin.romer@unisys.com, Jes.Sorensen@redhat.com,
	erik.arfvidson@unisys.com, david.kershner@unisys.com,
	jkc@redhat.com, Timothy.Sell@unisys.com, bryan.thompson@unisys.com,
	dzickus@redhat.com, kenneth.depro@unisys.com,
	gregkh@linuxfoundation.org, sparmaintainer@unisys.com,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Cc: tj@kernel.org, outreachy-kernel@googlegroups.com
Subject: [RFC] staging: unisys: visorbus: visorchipset: Remove
 create_singlethread_workqueue()
Message-ID: <20160228124416.GA12689@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

With concurrency managed workqueues, use of dedicated workqueues
can be replaced by using system_wq. Drop periodic_controlvm_workqueue
by using system_wq.

Since there is only one work item periodic_controlvm_work and
different periodic_controlvm_works do not need to be ordered, increase 
of concurrency level by switching to system_wq should not break anything.

cancel_delayed_work_sync() is used to ensure that work is not pending 
or executing on any CPU.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Acked-by: Tejun Heo <tj@kernel.org>
---
Only compile tested.

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


