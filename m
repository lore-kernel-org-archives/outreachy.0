X-GM-THRID: 6212095586717401088
X-Received: by 10.68.216.39 with SMTP id on7mr13927180pbc.12.1446374902524;
        Sun, 01 Nov 2015 02:48:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.6.20 with SMTP id w20ls571697igw.35.gmail; Sun, 01 Nov 2015
 02:48:22 -0800 (PST)
X-Received: by 10.107.9.36 with SMTP id j36mr15174636ioi.2.1446374902269;
        Sun, 01 Nov 2015 02:48:22 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id sm2si1384415pab.0.2015.11.01.02.48.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Nov 2015 02:48:22 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by pacfv9 with SMTP id fv9so122916274pac.3
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Nov 2015 02:48:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=f1iGn+avfP9ztEpbzQ3Bdq109pRiNm4t38Hn5VIGpPo=;
        b=u4jHuwsnDhlKMe0I3Wluo9wtx+VY5T6DxFiht8Tof9JO81bJ/EQsoB0gmTVbO8XdUn
         foSVa5XlJc0p20+i6Gv7spRJbjNz0C5q1Bp1MYM0YNwHRDJKis0anuHWorgeQWCMUQGb
         qwzR5H7ytnpVl3NlfbjGN8rEskuhCfGGQMliGTzdy0LKSLRAjTlNaBwt0k88w2thljyt
         0oSuz4zreW0i8LtDCtKJ5VSpmaObvuFguMCkk4EcACZY+z1omyCYeztw6GW313o2uhYs
         yP8ycgOaQVEW5kHxjgrz3ZNhyFkfWFpjJNxM/wMIB84KqSrhTfNqVQhgBlT1Fu/c/DV6
         6rkQ==
X-Received: by 10.66.63.34 with SMTP id d2mr19697397pas.80.1446374902118;
        Sun, 01 Nov 2015 02:48:22 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.108.132])
        by smtp.gmail.com with ESMTPSA id fl1sm13943005pab.10.2015.11.01.02.48.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sun, 01 Nov 2015 02:48:21 -0800 (PST)
Date: Sun, 1 Nov 2015 16:18:18 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 3/3] staging: rdma: hfi1: chip: Remove wrapper function
Message-ID: <20e275fdaf55e0da2c1999f6e0399e9e1ee99155.1446373894.git.amitoj1606@gmail.com>
References: <cover.1446373894.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1446373894.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Drop wrapper function remap_receive_available_interrupt() that wraps a
call to remap_intr() with the only difference being the addition of
macro IS_RCVAVAIL_START to the second argument of remap_intr().

Both the function names give the same information so the wrapper
function can be dropped.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Changes in v2:
        -Improved commit message
Changes in v3:
        -None

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


