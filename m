X-GM-THRID: 6209280550027395072
X-Received: by 10.68.216.39 with SMTP id on7mr19484274pbc.12.1445932028018;
        Tue, 27 Oct 2015 00:47:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.37.114 with SMTP id q105ls3358507qgq.14.gmail; Tue, 27 Oct
 2015 00:47:07 -0700 (PDT)
X-Received: by 10.13.235.207 with SMTP id u198mr32259600ywe.3.1445932027489;
        Tue, 27 Oct 2015 00:47:07 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id vy6si3930341pbc.1.2015.10.27.00.47.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2015 00:47:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x229.google.com with SMTP id fv9so224228292pac.3
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Oct 2015 00:47:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=0GR+98xK2zVbZVD2VC+2kV3P6707Jbq3Er+zGBXKCxU=;
        b=G389IzR3bQryElZtl79LjZ4QICUVGtWh78arOejCU6f0xrDM+LgBwCLdbb84X4T0Qc
         dX2is+DYkatdD6gXrhW/5uKychWiPeQvhuEoFEIDEILU52+pd5hL0dAVtYBI62FAL1bT
         z4qLVfBrJfGH9ndphNbLC0qn650b4WMY7D9cOH66+7a7S6KF0wX583UywB4LCsNPvRaj
         jEzoiYw7sFWN+WNu11JMd4d/JRkxoQiO1AbTpMhIK6NVoFSE1ZE8mNEmN5LrvfEHcEa7
         VBKJrgjRS4ohy3GtEifdC7NNkjxTu8Vd19pGO+Uyeie4HgxHmY0o1hlPPmPUoQsa8ffB
         LhwA==
X-Received: by 10.68.255.37 with SMTP id an5mr26390899pbd.163.1445932027285;
        Tue, 27 Oct 2015 00:47:07 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([122.162.184.86])
        by smtp.gmail.com with ESMTPSA id x6sm37889968pbt.3.2015.10.27.00.47.06
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Tue, 27 Oct 2015 00:47:06 -0700 (PDT)
Date: Tue, 27 Oct 2015 13:17:02 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: y2038@lists.linaro.org
Subject: [PATCH v2] staging: media: lirc: lirc_sasem: Replace timeval with
 ktime_t
Message-ID: <20151027074702.GA26499@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This driver uses 'struct timeval' which we are trying to remove since
32 bit time types will break in the year 2038 by replacing it with
ktime_t.

This patch changes do_gettimeofday() to ktime_get() because
ktime_get() returns ktime_t while do_gettimeofday() returns struct
timeval.

This patch also uses ktime_ms_delta() to get the elapsed time in
milliseconds.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Changes in v2:
        -Removed trailing whitespace

 drivers/staging/media/lirc/lirc_sasem.c | 15 ++++++---------
 1 file changed, 6 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/media/lirc/lirc_sasem.c b/drivers/staging/media/lirc/lirc_sasem.c
index bc78da0..37f9997 100644
--- a/drivers/staging/media/lirc/lirc_sasem.c
+++ b/drivers/staging/media/lirc/lirc_sasem.c
@@ -38,6 +38,7 @@
 
 #include <linux/errno.h>
 #include <linux/kernel.h>
+#include <linux/ktime.h>
 #include <linux/module.h>
 #include <linux/slab.h>
 #include <linux/uaccess.h>
@@ -111,7 +112,7 @@ struct sasem_context {
 	} tx;
 
 	/* for dealing with repeat codes (wish there was a toggle bit!) */
-	struct timeval presstime;
+	ktime_t presstime;
 	char lastcode[8];
 	int codesaved;
 };
@@ -567,7 +568,7 @@ static void incoming_packet(struct sasem_context *context,
 	int len = urb->actual_length;
 	unsigned char *buf = urb->transfer_buffer;
 	long ms;
-	struct timeval tv;
+	ktime_t timestamp;
 
 	if (len != 8) {
 		dev_warn(&context->dev->dev,
@@ -584,9 +585,7 @@ static void incoming_packet(struct sasem_context *context,
 	 */
 
 	/* get the time since the last button press */
-	do_gettimeofday(&tv);
-	ms = (tv.tv_sec - context->presstime.tv_sec) * 1000 +
-	     (tv.tv_usec - context->presstime.tv_usec) / 1000;
+	ms = ktime_ms_delta(timestamp, context->presstime);
 
 	if (memcmp(buf, "\x08\0\0\0\0\0\0\0", 8) == 0) {
 		/*
@@ -602,8 +601,7 @@ static void incoming_packet(struct sasem_context *context,
 		 */
 		if ((ms < 250) && (context->codesaved != 0)) {
 			memcpy(buf, &context->lastcode, 8);
-			context->presstime.tv_sec = tv.tv_sec;
-			context->presstime.tv_usec = tv.tv_usec;
+			context->presstime = timestamp;
 		}
 	} else {
 		/* save the current valid code for repeats */
@@ -613,8 +611,7 @@ static void incoming_packet(struct sasem_context *context,
 		 * just for safety reasons
 		 */
 		context->codesaved = 1;
-		context->presstime.tv_sec = tv.tv_sec;
-		context->presstime.tv_usec = tv.tv_usec;
+		context->presstime = timestamp;
 	}
 
 	lirc_buffer_write(context->driver->rbuf, buf);
-- 
1.9.1


