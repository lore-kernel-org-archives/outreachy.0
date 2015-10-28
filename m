X-GM-THRID: 6210788690269044736
X-Received: by 10.182.142.38 with SMTP id rt6mr11705757obb.33.1446061928203;
        Wed, 28 Oct 2015 12:52:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.6.20 with SMTP id w20ls32265igw.35.gmail; Wed, 28 Oct 2015
 12:52:07 -0700 (PDT)
X-Received: by 10.66.110.111 with SMTP id hz15mr28025578pab.16.1446061927145;
        Wed, 28 Oct 2015 12:52:07 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id vy6si4990741pbc.1.2015.10.28.12.52.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2015 12:52:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x232.google.com with SMTP id fv9so16534142pac.3
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Oct 2015 12:52:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=PONp42m+Ikhlkv1GubEsU6/kmiwIPstWbkooy5OhfG8=;
        b=lakEhdhKhc6/rkKEbh1fButXSEbBt1Uf686+Yt2eXJCIQ6KVH6cdhOjPLdsA9Bj/nY
         6QU0uGKA8/bBxaF1lfxXNEYQxUbUZTtu+AxZJ6EqMxlcYSZLJA+pvhysxsNsfN8EClQf
         LYX0ny0mZVqbCIWNCpXhPawsoOWCBrm9Nc/WvOuSwfJarshL8rGGtxqAwlVilm5rtfmh
         9A+S8ZYSl176RyJ5RDVRe8U+BJTnsG0m8nLBe5VKEr2kvxuYPxlTL3xawsBrEHC5cHNz
         jA5bDJZXwaQ0lEGdRXYtqI9nUPVD2XXnmG7HGTw+9apYG7Y9bYPPZM5EPtHZQOvsaqYX
         fdTA==
X-Received: by 10.69.11.193 with SMTP id ek1mr36376006pbd.32.1446061926988;
        Wed, 28 Oct 2015 12:52:06 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.198.148])
        by smtp.gmail.com with ESMTPSA id rc5sm46918520pbc.95.2015.10.28.12.52.05
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Wed, 28 Oct 2015 12:52:06 -0700 (PDT)
Date: Thu, 29 Oct 2015 01:22:02 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: y2038@lists.linaro.org
Subject: [PATCH] net: hamradio: baycom_ser_fdx: Replace timeval with
 timespec64
Message-ID: <20151028195202.GA1200@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

32 bit systems using 'struct timeval' will break in the year 2038, so
we replace the code appropriately.

This patch replaces struct timeval with struct timespec64.

The patch also changes the code to use ktime_get_real_ts64() which returns a 'struct timespec64' instead of do_gettimeofday() which returns a 'struct timeval'

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/net/hamradio/baycom_ser_fdx.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/net/hamradio/baycom_ser_fdx.c b/drivers/net/hamradio/baycom_ser_fdx.c
index 636b65c..e250ec4 100644
--- a/drivers/net/hamradio/baycom_ser_fdx.c
+++ b/drivers/net/hamradio/baycom_ser_fdx.c
@@ -71,6 +71,7 @@
 
 /*****************************************************************************/
 
+#include <linux/time64.h>
 #include <linux/capability.h>
 #include <linux/module.h>
 #include <linux/ioport.h>
@@ -228,14 +229,15 @@ static inline unsigned int hweight8(unsigned int w)
 
 /* --------------------------------------------------------------------- */
 
-static __inline__ void ser12_rx(struct net_device *dev, struct baycom_state *bc, struct timeval *tv, unsigned char curs)
+static __inline__ void ser12_rx(struct net_device *dev, struct baycom_state *bc, struct timespec64 *ts, unsigned char curs)
 {
 	int timediff;
 	int bdus8 = bc->baud_us >> 3;
 	int bdus4 = bc->baud_us >> 2;
 	int bdus2 = bc->baud_us >> 1;
 
-	timediff = 1000000 + tv->tv_usec - bc->modem.ser12.pll_time;
+	timediff = 1000000 + (ts->tv_nsec / NSEC_PER_USEC) -
+						bc->modem.ser12.pll_time;
 	while (timediff >= 500000)
 		timediff -= 1000000;
 	while (timediff >= bdus2) {
@@ -287,7 +289,7 @@ static irqreturn_t ser12_interrupt(int irq, void *dev_id)
 {
 	struct net_device *dev = (struct net_device *)dev_id;
 	struct baycom_state *bc = netdev_priv(dev);
-	struct timeval tv;
+	struct timespec64 ts;
 	unsigned char iir, msr;
 	unsigned int txcount = 0;
 
@@ -297,7 +299,7 @@ static irqreturn_t ser12_interrupt(int irq, void *dev_id)
 	if ((iir = inb(IIR(dev->base_addr))) & 1) 	
 		return IRQ_NONE;
 	/* get current time */
-	do_gettimeofday(&tv);
+	ktime_get_real_ts64(&ts);
 	msr = inb(MSR(dev->base_addr));
 	/* delta DCD */
 	if ((msr & 8) && bc->opt_dcd)
@@ -340,7 +342,7 @@ static irqreturn_t ser12_interrupt(int irq, void *dev_id)
 		}
 		iir = inb(IIR(dev->base_addr));
 	} while (!(iir & 1));
-	ser12_rx(dev, bc, &tv, msr & 0x10); /* CTS */
+	ser12_rx(dev, bc, &ts, msr & 0x10); /* CTS */
 	if (bc->modem.ptt && txcount) {
 		if (bc->modem.ser12.txshreg <= 1) {
 			bc->modem.ser12.txshreg = 0x10000 | hdlcdrv_getbits(&bc->hdrv);
-- 
1.9.1


