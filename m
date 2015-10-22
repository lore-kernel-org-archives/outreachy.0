X-GM-THRID: 6208452343363534848
X-Received: by 10.67.1.102 with SMTP id bf6mr12405042pad.19.1445517955408;
        Thu, 22 Oct 2015 05:45:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.26.134 with SMTP id a128ls824008ioa.108.gmail; Thu, 22 Oct
 2015 05:45:54 -0700 (PDT)
X-Received: by 10.68.138.233 with SMTP id qt9mr12320830pbb.11.1445517954876;
        Thu, 22 Oct 2015 05:45:54 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id el2si1666505pbb.0.2015.10.22.05.45.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 05:45:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x233.google.com with SMTP id rc13so86111108pab.0
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Oct 2015 05:45:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=oXlsSlYKKJvT+tGBa3YUlUp1jijuAWWKpZnAk2cPcSM=;
        b=DHUuJUDzDKxBitBOrO7rtR61FRKmjOastByA0MP/VzLDhLyxRX8qR32OrZyoT3UvCk
         wr3ZQfXjKmnfLy3eJUcICGseIp7ZTEuCMVjieMRuWepO6vGsBY8e1KYA8t5AlSqnC/rB
         63Ozc3fu/2flOdogwJMraLfYTz3xjGfZPS1Ft/Kj2kuZBPD9/bASgPYGnlr/qNzevOra
         haEE5la14gpyVK5mHoEqEcFxSPV1NtLPRS5rmkC217FLcBpYLAkikew9ky/g5/QKAiQ4
         vC2gfcRIbSx3kjZ4GPlnHUtpnzPIMFg3gaXJt0P2eA0CTSY6D0tQfxO/uF0cvQisQPlb
         pLRg==
X-Received: by 10.66.250.197 with SMTP id ze5mr17613468pac.50.1445517954683;
        Thu, 22 Oct 2015 05:45:54 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.64.167.45])
        by smtp.gmail.com with ESMTPSA id k10sm13837404pbq.78.2015.10.22.05.45.53
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Thu, 22 Oct 2015 05:45:53 -0700 (PDT)
Date: Thu, 22 Oct 2015 18:15:50 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: y2038@lists.linaro.org, davem@davemloft.net, linux-ide@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] ide: pdc202xx_new: Replace timeval with ktime_t
Message-ID: <20151022124550.GA18694@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This driver uses 'struct timeval' which we are trying to remove since
32 bit time types will break in the year 2038 by replacing it with
ktime_t.

This patch changes do_gettimeofday() to ktime_get() because
ktime_get() returns a ktime_t while do_gettimeofday() returns struct
timeval.

This patch also uses ktime_us_delta() to get the elapsed time.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Changes in v2:
        -Modified subject of commit message

 drivers/ide/pdc202xx_new.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/ide/pdc202xx_new.c b/drivers/ide/pdc202xx_new.c
index df73cbd..9ad014a 100644
--- a/drivers/ide/pdc202xx_new.c
+++ b/drivers/ide/pdc202xx_new.c
@@ -22,6 +22,7 @@
 #include <linux/pci.h>
 #include <linux/init.h>
 #include <linux/ide.h>
+#include <linux/ktime.h>
 
 #include <asm/io.h>
 
@@ -243,13 +244,13 @@ static long read_counter(u32 dma_base)
  */
 static long detect_pll_input_clock(unsigned long dma_base)
 {
-	struct timeval start_time, end_time;
+	ktime_t start_time, end_time;
 	long start_count, end_count;
 	long pll_input, usec_elapsed;
 	u8 scr1;
 
 	start_count = read_counter(dma_base);
-	do_gettimeofday(&start_time);
+	start_time = ktime_get();
 
 	/* Start the test mode */
 	outb(0x01, dma_base + 0x01);
@@ -261,7 +262,7 @@ static long detect_pll_input_clock(unsigned long dma_base)
 	mdelay(10);
 
 	end_count = read_counter(dma_base);
-	do_gettimeofday(&end_time);
+	end_time = ktime_get();
 
 	/* Stop the test mode */
 	outb(0x01, dma_base + 0x01);
@@ -273,8 +274,7 @@ static long detect_pll_input_clock(unsigned long dma_base)
 	 * Calculate the input clock in Hz
 	 * (the clock counter is 30 bit wide and counts down)
 	 */
-	usec_elapsed = (end_time.tv_sec - start_time.tv_sec) * 1000000 +
-		(end_time.tv_usec - start_time.tv_usec);
+	usec_elapsed = ktime_us_delta(end_time, start_time);
 	pll_input = ((start_count - end_count) & 0x3fffffff) / 10 *
 		(10000000 / usec_elapsed);
 
-- 
1.9.1


