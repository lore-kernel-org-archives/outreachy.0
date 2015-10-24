X-GM-THRID: 6209280550027395072
X-Received: by 10.107.12.88 with SMTP id w85mr7062354ioi.32.1445710787911;
        Sat, 24 Oct 2015 11:19:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.108.169 with SMTP id hl9ls1417428obb.70.gmail; Sat, 24 Oct
 2015 11:19:47 -0700 (PDT)
X-Received: by 10.182.107.130 with SMTP id hc2mr21637411obb.39.1445710787527;
        Sat, 24 Oct 2015 11:19:47 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id zg1si2852907pbb.2.2015.10.24.11.19.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Oct 2015 11:19:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by padhk11 with SMTP id hk11so146874366pad.1
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Oct 2015 11:19:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=w4i3wrmEsU8vhxKM+I0KfNF0U/aHHKUPKdmCRZpELsY=;
        b=CTSvR0yY4/nKNn8gWEHKAma/tfKs7YJwaD8zhwjjNWtJjd5w4FaqTxOGJ0SLTZlWFj
         rtjvphONY4bOL9yIeManwbgcvDcsAxoqb889D19jCfY0cPeYxZwfVFXc2u0BsEsQsczs
         qbydTnfNoXcABVaBPCi2Iue0NjE26FlinMSe4trf1GWHbMNPas9BK/iC+0PH8wr3haHH
         k0JhSh0Xp1mEb+szED0if/HbEEAtp/ICjlpMm3fv6djATziFyjRcyZswU0eIuQHIVOey
         X8A1C5wHOr2pxq4Q7r/wFhF+XXPBtMDRtrlmuBkD+w2hujcuTTu6cCBVNef/qpxkACF2
         aD5g==
X-Received: by 10.66.218.230 with SMTP id pj6mr12372418pac.104.1445710787339;
        Sat, 24 Oct 2015 11:19:47 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.222.180])
        by smtp.gmail.com with ESMTPSA id ia3sm11136448pbb.5.2015.10.24.11.19.46
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sat, 24 Oct 2015 11:19:46 -0700 (PDT)
Date: Sat, 24 Oct 2015 23:49:42 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: y2038@lists.linaro.org
Subject: [PATCH] staging: media: lirc: lirc_sasem: Replace timeval with
 ktime_t
Message-ID: <20151024181942.GA2306@amitoj-Inspiron-3542>
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
 drivers/staging/media/lirc/lirc_sasem.c | 18 ++++++++----------
 1 file changed, 8 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/media/lirc/lirc_sasem.c b/drivers/staging/media/lirc/lirc_sasem.c
index bc78da0..51780c0 100644
--- a/drivers/staging/media/lirc/lirc_sasem.c
+++ b/drivers/staging/media/lirc/lirc_sasem.c
@@ -40,6 +40,7 @@
 #include <linux/kernel.h>
 #include <linux/module.h>
 #include <linux/slab.h>
+#include <linux/ktime.h>
 #include <linux/uaccess.h>
 #include <linux/usb.h>
 
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
@@ -584,10 +585,9 @@ static void incoming_packet(struct sasem_context *context,
 	 */
 
 	/* get the time since the last button press */
-	do_gettimeofday(&tv);
-	ms = (tv.tv_sec - context->presstime.tv_sec) * 1000 +
-	     (tv.tv_usec - context->presstime.tv_usec) / 1000;
-
+	timestamp = ktime_get();
+	ms = ktime_ms_delta(timestamp, context->presstime);
+	
 	if (memcmp(buf, "\x08\0\0\0\0\0\0\0", 8) == 0) {
 		/*
 		 * the repeat code is being sent, so we copy
@@ -602,8 +602,7 @@ static void incoming_packet(struct sasem_context *context,
 		 */
 		if ((ms < 250) && (context->codesaved != 0)) {
 			memcpy(buf, &context->lastcode, 8);
-			context->presstime.tv_sec = tv.tv_sec;
-			context->presstime.tv_usec = tv.tv_usec;
+			context->presstime = timestamp;
 		}
 	} else {
 		/* save the current valid code for repeats */
@@ -613,8 +612,7 @@ static void incoming_packet(struct sasem_context *context,
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


