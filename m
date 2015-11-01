X-GM-THRID: 6212095586717401088
X-Received: by 10.107.18.17 with SMTP id a17mr15039139ioj.24.1446371944072;
        Sun, 01 Nov 2015 01:59:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.142.38 with SMTP id rt6ls573649igb.25.canary; Sun, 01 Nov
 2015 01:59:03 -0800 (PST)
X-Received: by 10.66.221.42 with SMTP id qb10mr14115764pac.35.1446371943759;
        Sun, 01 Nov 2015 01:59:03 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id el2si1490507pbb.0.2015.11.01.01.59.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Nov 2015 01:59:03 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x230.google.com with SMTP id hy1so111304931pad.0
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Nov 2015 01:59:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=/7dNvT8emhxlOi1zcubgWaNqU9OQxGePa5neqPuDdgo=;
        b=jHg7eIEP3TkPO2R/6e6JmrsJ0/1ADGRwhrc130vjUvx/tj+Z7tkG2rzLdcY26AezhT
         Za19I5DWd44QbdL5SNn3uiAb5ShC7g1EjgnBIy4bEj0LoO7RNqDN0dRCA+PBSMDJSH7N
         /2EIFWbhw8MtTetN4VqO6hLLiLLnRd6XEvGz5xtIoVxqpjk1mS5A53MGnHP2ee0hzUqD
         0k5G4J6WmpWEOZvlPbURoJiDC4CltbH65RYR6A20TTNwQRbR/YWkhhZSE2e0bFYNcCki
         gHww8A35L2sQHVw9u6vVMmjvnTjl3iFokqunvbz1OdDLuRC/Ula91bGdbK9yNrOtrzXy
         kaeg==
X-Received: by 10.68.163.69 with SMTP id yg5mr19560460pbb.157.1446371943597;
        Sun, 01 Nov 2015 01:59:03 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.108.132])
        by smtp.gmail.com with ESMTPSA id tp6sm17771007pbc.81.2015.11.01.01.59.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sun, 01 Nov 2015 01:59:03 -0800 (PST)
Date: Sun, 1 Nov 2015 15:28:59 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 3/3] staging: rdma: hfi1: chip: Remove wrapper function
Message-ID: <20151101095859.GA17650@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Drop wrapper function remap_receive_available_interrupt() that wraps a
call to remap_intr() with the only difference being the addition of macro 
IS_RCVAVAIL_START to the second argument of remap_intr().

Both the function names give the same information so the wrapper
function can be dropped.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Changes in v2:
        -Improved commit message

 drivers/staging/rdma/hfi1/chip.c | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/staging/rdma/hfi1/chip.c b/drivers/staging/rdma/hfi1/chip.c
index beac326d..a9c6abf 100644
--- a/drivers/staging/rdma/hfi1/chip.c
+++ b/drivers/staging/rdma/hfi1/chip.c
@@ -8749,12 +8749,6 @@ static void remap_sdma_interrupts(struct hfi1_devdata *dd,
 		msix_intr);
 }
 
-static void remap_receive_available_interrupt(struct hfi1_devdata *dd,
-					      int rx, int msix_intr)
-{
-	remap_intr(dd, IS_RCVAVAIL_START + rx, msix_intr);
-}
-
 static int request_intx_irq(struct hfi1_devdata *dd)
 {
 	int ret;
@@ -8890,7 +8884,7 @@ static int request_msix_irqs(struct hfi1_devdata *dd)
 			snprintf(me->name, sizeof(me->name),
 				DRIVER_NAME"_%d kctxt%d", dd->unit, idx);
 			err_info = "receive context";
-			remap_receive_available_interrupt(dd, idx, i);
+			remap_intr(dd, IS_RCVAVAIL_START + idx, i);
 		} else {
 			/* not in our expected range - complain, then
 			   ignore it */
-- 
1.9.1


