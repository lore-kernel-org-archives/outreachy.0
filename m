X-GM-THRID: 6208409681994448896
X-Received: by 10.66.152.230 with SMTP id vb6mr11629625pab.46.1445508022413;
        Thu, 22 Oct 2015 03:00:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.18.106 with SMTP id v10ls666894obd.78.gmail; Thu, 22 Oct
 2015 03:00:20 -0700 (PDT)
X-Received: by 10.182.68.104 with SMTP id v8mr25916obt.9.1445508020478;
        Thu, 22 Oct 2015 03:00:20 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id sm2si251884pab.0.2015.10.22.03.00.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 03:00:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x236.google.com with SMTP id z6so82927616pas.2
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Oct 2015 03:00:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=M+J2OCpDiidO4NRq4hQETVUXIwaI/57IH7EClZZilEI=;
        b=u3P8we+pcLTcyrkyx+wQcbMe4QwKXg0S/LrM6xY1ldjirgyQkA8SxH6pSv4TmE6w9J
         IIkkltjK6BH5gLwMfR5lU81dMep6yrsYoMbHFXan8j9kQv7YVWRjX4LdSyN3mNFsexeO
         jO4K6VhqcZKFPDbUMx73w/C9C5eiWkVbaQ37Hrg3t3V/rEyBj5lds1G4xVI1nw2YVa/5
         srlbvsNCGrcNr8GKp0q8N+IGiWKQKgrqidyzRrdJRqXeXekOeQFuhkJx0rjrhVd+FR62
         Dkz0S8j51xs9Gf5tTb/IRxCz0MdqOycJguc3VTSJbU14QvkLZGubt5mu5RnbqWY1Qwgu
         p/5w==
X-Received: by 10.68.222.163 with SMTP id qn3mr16811042pbc.54.1445508019452;
        Thu, 22 Oct 2015 03:00:19 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.64.0.234])
        by smtp.gmail.com with ESMTPSA id we9sm13254064pab.3.2015.10.22.03.00.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Thu, 22 Oct 2015 03:00:19 -0700 (PDT)
Date: Thu, 22 Oct 2015 15:30:14 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] ide: Replace timeval with ktime_t
Message-ID: <20151022100014.GA13736@amitoj-Inspiron-3542>
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


