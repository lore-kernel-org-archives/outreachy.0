X-GM-THRID: 6208217817238470656
X-Received: by 10.50.3.35 with SMTP id 3mr10435848igz.9.1445466906116;
        Wed, 21 Oct 2015 15:35:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.103.182 with SMTP id y51ls266327qge.30.gmail; Wed, 21 Oct
 2015 15:35:05 -0700 (PDT)
X-Received: by 10.140.151.198 with SMTP id 189mr9931941qhx.11.1445466905532;
        Wed, 21 Oct 2015 15:35:05 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id fa8si1360561pab.1.2015.10.21.15.35.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Oct 2015 15:35:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x230.google.com with SMTP id fv9so69662557pac.3
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Oct 2015 15:35:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=oPVSh7ZAWduOx8GUsrGRlvVYeYPrc8eNuib57pxRSgE=;
        b=X1wZx1+G6eHzncNf4RCfb8ZXlaAypmvQMYu1DFd6ekrPJ7SwVAVaU7GZ6dy3VL+Piu
         /fl4ouKmUIi/PLmdGg8S68nXhNW3MQ3lnuQy8/kpj0H5yud4ywwYO5cwbYOt2rs7VUjz
         55f2z8Ua5BRrGVJu9JtTW0PoR0ix8DeDG0jx+cxg/sIW3grofOBTDhzU1i1xdtvuUJB8
         HmzDlKqEhSn/iP7MjxHv4SgByHsWLcap480VD1+Bux+s2yFbDFOQcHkoUz9VkN/KLM6w
         tE9ZzAU39j7bKczZK47zv/iLekZDZzoOsIvljbIPIlcqBpjM/4daWiMvULuVTfxkPQtQ
         Rhzg==
X-Received: by 10.68.219.4 with SMTP id pk4mr13465027pbc.138.1445466905277;
        Wed, 21 Oct 2015 15:35:05 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.170.137])
        by smtp.gmail.com with ESMTPSA id bn1sm10970257pad.17.2015.10.21.15.35.03
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Wed, 21 Oct 2015 15:35:04 -0700 (PDT)
Date: Thu, 22 Oct 2015 04:05:00 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: stefanr@s5r6.in-berlin.de, linux1394-devel@lists.sourceforge.net,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] firewire: Replace timeval with timespec64
Message-ID: <20151021223500.GA26701@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

32 bit systems using 'struct timeval' will break in the year 2038, so
we replace the code appropriately. However, this driver is not broken
in 2038 since we are using only the microseconds portion of the
current time.

This patch replaces timeval with timespec64.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Changes in v2:
        -Replaced timespec with timspec64
        -Modified commit message
        -Used ktime_get_real_ts64() instead of getnstimeofday64()

 drivers/firewire/nosy.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/firewire/nosy.c b/drivers/firewire/nosy.c
index 76b2d39..8a46077 100644
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
+	u32 tcode_mask, tcode, timestamp;
 	size_t length;
-	struct timeval tv;
+	struct timespec64 ts64;
 
 	/* FIXME: Also report rcv_speed. */
 
 	length = __le32_to_cpu(lynx->rcv_pcl->pcl_status) & 0x00001fff;
 	tcode  = __le32_to_cpu(lynx->rcv_buffer[1]) >> 4 & 0xf;
 
-	do_gettimeofday(&tv);
-	lynx->rcv_buffer[0] = (__force __le32)tv.tv_usec;
+	ktime_get_real_ts64(&ts64);
+	timestamp = ts64.tv_nsec / NSEC_PER_USEC;
+	lynx->rcv_buffer[0] = (__force __le32)timestamp;
 
 	if (length == PHY_PACKET_SIZE)
 		tcode_mask = 1 << TCODE_PHY_PACKET;
-- 
1.9.1


