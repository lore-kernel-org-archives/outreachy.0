X-GM-THRID: 6210537290712743936
X-Received: by 10.66.147.33 with SMTP id th1mr36478600pab.27.1446003663721;
        Tue, 27 Oct 2015 20:41:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.33.228 with SMTP id j91ls5018230qgj.56.gmail; Tue, 27 Oct
 2015 20:41:02 -0700 (PDT)
X-Received: by 10.129.156.198 with SMTP id t189mr37117625ywg.26.1446003662179;
        Tue, 27 Oct 2015 20:41:02 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id zg1si4698285pbb.2.2015.10.27.20.41.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2015 20:41:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id hk11so242805169pad.1
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Oct 2015 20:41:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=dNXZxmcXxMiyuzdQXfBmAYqPZlfrIrZt4dyyad6b69I=;
        b=bXmwmsiit/yQ11lqrm3KzjgmyB5PeFkFHnpin/qstyR1z3hdKKCh++DJlIFfA6Eeie
         Q7KBxf7AeKJHTVcYSpiz4s5o15NNhOMtbhAzpbIVaPVaD28ElP4BAnheYalvT458eVZC
         gYBql7MN4jol7nf3Y4P3xsSNwhLwSGAck40qwiTzAWRn0DhpZO2V3e9QqS60IN8kB7zA
         ghYSwzAl2UhDsbtAJmeSX/an7l7ey+gsChe09119jejKrbqQFPVStJ+weiZpAePo54bZ
         O1Pm4FcIM2ARvGfskUI8mz5+uJkBjWvqUa1ElOWKU8H2jFM5UQCcHXz/dCOzEqPfHWUp
         mK7A==
X-Received: by 10.68.189.69 with SMTP id gg5mr32423644pbc.55.1446003661979;
        Tue, 27 Oct 2015 20:41:01 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.204.253])
        by smtp.gmail.com with ESMTPSA id pq1sm42233302pbb.91.2015.10.27.20.41.00
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Tue, 27 Oct 2015 20:41:01 -0700 (PDT)
Date: Wed, 28 Oct 2015 09:10:58 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: y2038@lists.linaro.org
Subject: [PATCH 1/2] scsi: 3w-9xxx: Remove use of struct timeval
Message-ID: <ec04096c9bb3827a9f51f8fd43788b75db0a2198.1446003130.git.amitoj1606@gmail.com>
References: <cover.1446003130.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1446003130.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This driver uses 'struct timeval' which we are trying to remove since
32 bit time types will break in the year 2038.

This patch uses ktime_get() instead of do_gettimeofday() which returns
ktime_t type.

This patch also uses ktime_to_ms() to find current time in
milliseconds.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/scsi/3w-9xxx.c | 16 ++++++----------
 1 file changed, 6 insertions(+), 10 deletions(-)

diff --git a/drivers/scsi/3w-9xxx.c b/drivers/scsi/3w-9xxx.c
index add419d..30961f7 100644
--- a/drivers/scsi/3w-9xxx.c
+++ b/drivers/scsi/3w-9xxx.c
@@ -90,7 +90,7 @@
 #include <linux/types.h>
 #include <linux/delay.h>
 #include <linux/pci.h>
-#include <linux/time.h>
+#include <linux/ktime.h>
 #include <linux/mutex.h>
 #include <linux/slab.h>
 #include <asm/io.h>
@@ -361,7 +361,6 @@ out:
 static void twa_aen_queue_event(TW_Device_Extension *tw_dev, TW_Command_Apache_Header *header)
 {
 	u32 local_time;
-	struct timeval time;
 	TW_Event *event;
 	unsigned short aen;
 	char host[16];
@@ -384,8 +383,8 @@ static void twa_aen_queue_event(TW_Device_Extension *tw_dev, TW_Command_Apache_H
 	memset(event, 0, sizeof(TW_Event));
 
 	event->severity = TW_SEV_OUT(header->status_block.severity__reserved);
-	do_gettimeofday(&time);
-	local_time = (u32)(time.tv_sec - (sys_tz.tz_minuteswest * 60));
+	local_time = (u32)(ktime_get_real_seconds() -
+						(sys_tz.tz_minuteswest * 60));
 	event->time_stamp_sec = local_time;
 	event->aen_code = aen;
 	event->retrieved = TW_AEN_NOT_RETRIEVED;
@@ -465,7 +464,6 @@ out:
 static void twa_aen_sync_time(TW_Device_Extension *tw_dev, int request_id)
 {
 	u32 schedulertime;
-	struct timeval utc;
 	TW_Command_Full *full_command_packet;
 	TW_Command *command_packet;
 	TW_Param_Apache *param;
@@ -491,8 +489,8 @@ static void twa_aen_sync_time(TW_Device_Extension *tw_dev, int request_id)
 
 	/* Convert system time in UTC to local time seconds since last 
            Sunday 12:00AM */
-	do_gettimeofday(&utc);
-	local_time = (u32)(utc.tv_sec - (sys_tz.tz_minuteswest * 60));
+	local_time = (u32)(ktime_get_real_seconds() -
+						(sys_tz.tz_minuteswest * 60));
 	schedulertime = local_time - (3 * 86400);
 	schedulertime = cpu_to_le32(schedulertime % 604800);
 
@@ -640,7 +638,6 @@ static long twa_chrdev_ioctl(struct file *file, unsigned int cmd, unsigned long
 	TW_Command_Full *full_command_packet;
 	TW_Compatibility_Info *tw_compat_info;
 	TW_Event *event;
-	struct timeval current_time;
 	u32 current_time_ms;
 	TW_Device_Extension *tw_dev = twa_device_extension_list[iminor(inode)];
 	int retval = TW_IOCTL_ERROR_OS_EFAULT;
@@ -832,8 +829,7 @@ static long twa_chrdev_ioctl(struct file *file, unsigned int cmd, unsigned long
 		break;
 	case TW_IOCTL_GET_LOCK:
 		tw_lock = (TW_Lock *)tw_ioctl->data_buffer;
-		do_gettimeofday(&current_time);
-		current_time_ms = (current_time.tv_sec * 1000) + (current_time.tv_usec / 1000);
+		current_time_ms = ktime_to_ms(ktime_get());
 
 		if ((tw_lock->force_flag == 1) || (tw_dev->ioctl_sem_lock == 0) || (current_time_ms >= tw_dev->ioctl_msec)) {
 			tw_dev->ioctl_sem_lock = 1;
-- 
1.9.1


