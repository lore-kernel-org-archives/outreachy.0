X-GM-THRID: 6208217817238470656
X-Received: by 10.140.238.83 with SMTP id j80mr9760241qhc.2.1445463350272;
        Wed, 21 Oct 2015 14:35:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.104.101 with SMTP id gd5ls626076obb.73.gmail; Wed, 21 Oct
 2015 14:35:49 -0700 (PDT)
X-Received: by 10.182.250.233 with SMTP id zf9mr9964584obc.7.1445463349279;
        Wed, 21 Oct 2015 14:35:49 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id el2si1322240pbb.0.2015.10.21.14.35.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Oct 2015 14:35:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id rc13so65567427pab.0
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Oct 2015 14:35:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=MfEFnvwzMri232w3L8YkglIVySUPCIbpfR6C9Lg31J8=;
        b=FtBNksqHtvIf4DNA+Oz4kJN/4Hbp8GWhhTsmvsxv9c9An+ZLL5Vr22hxognMG+62d4
         l/6YewSFTfXckHUhVwyCGpOYqmRWxxLpNWYxAaa9O5Dc/fIHC8PRTLNds+2XlYkQdkiY
         8b675YUuYUB6hJa3JbD7op5VKuUgFH2SxxfWaeTQpvJR1F2W+9XSVHmYF1jcZzRwfydm
         pqdEx4T1Qh2jbT9KXcB7M1+c2lpgYVvJb2ciADRaK1lY9kYWdlXinymET3fVQAgRpE+O
         JtDTydOgF+MBQ/kfrvHQqqESC+Z+ahLfyaktOSWayU66ali26XWMMNoUrWhaWGkqBa7Z
         mr+g==
X-Received: by 10.68.219.169 with SMTP id pp9mr13296416pbc.115.1445463349056;
        Wed, 21 Oct 2015 14:35:49 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.194.209])
        by smtp.gmail.com with ESMTPSA id ou3sm10806584pbb.44.2015.10.21.14.35.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Wed, 21 Oct 2015 14:35:48 -0700 (PDT)
Date: Thu, 22 Oct 2015 03:05:44 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] firewire: Replace timeval with timespec64
Message-ID: <20151021213544.GA2468@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

32 bit systems using 'struct timeval' will break in the year 2038, so
we replace the code appropriately.

This patch replaces timeval with timespec64.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/firewire/nosy.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/firewire/nosy.c b/drivers/firewire/nosy.c
index 76b2d39..42c38dd 100644
--- a/drivers/firewire/nosy.c
+++ b/drivers/firewire/nosy.c
@@ -33,6 +33,7 @@
 #include <linux/sched.h> /* required for linux/wait.h */
 #include <linux/slab.h>
 #include <linux/spinlock.h>
+#include <linux/time64.h>
 #include <linux/timex.h>
 #include <linux/uaccess.h>
 #include <linux/wait.h>
@@ -413,17 +414,18 @@ static void
 packet_irq_handler(struct pcilynx *lynx)
 {
 	struct client *client;
-	u32 tcode_mask, tcode;
+	u32 tcode_mask, tcode, tv_usec;
 	size_t length;
-	struct timeval tv;
+	struct timespec ts64;
 
 	/* FIXME: Also report rcv_speed. */
 
 	length = __le32_to_cpu(lynx->rcv_pcl->pcl_status) & 0x00001fff;
 	tcode  = __le32_to_cpu(lynx->rcv_buffer[1]) >> 4 & 0xf;
 
-	do_gettimeofday(&tv);
-	lynx->rcv_buffer[0] = (__force __le32)tv.tv_usec;
+	getnstimeofday64(&ts64);
+	tv_usec = ts64.tv_nsec / NSEC_PER_USEC;
+	lynx->rcv_buffer[0] = (__force __le32)tv_usec;
 
 	if (length == PHY_PACKET_SIZE)
 		tcode_mask = 1 << TCODE_PHY_PACKET;
-- 
1.9.1


