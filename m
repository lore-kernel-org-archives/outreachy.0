X-GM-THRID: 10288549068800
X-Received: by 10.66.250.198 with SMTP id ze6mr3661371pac.2.1427624012602;
        Sun, 29 Mar 2015 03:13:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.107.199 with SMTP id he7ls948603obb.76.gmail; Sun, 29 Mar
 2015 03:13:32 -0700 (PDT)
X-Received: by 10.182.251.231 with SMTP id zn7mr33824694obc.24.1427624012312;
        Sun, 29 Mar 2015 03:13:32 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id dv5si405972pbb.0.2015.03.29.03.13.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 29 Mar 2015 03:13:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mail=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x233.google.com with SMTP id we9so138916992pac.1
        for <outreachy-kernel@googlegroups.com>; Sun, 29 Mar 2015 03:13:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=mOfEL0quUCvQMJusXNNb3Fr4I0kbbhh/8lcYzMIHzfA=;
        b=esxSHP1TlMAkTDlRO+mnBl/LJacc+WCKxWxbrgv/WCnwAYn3ni0pzMCwoYvnjIMV/z
         KHqTAhWKVfHTaXtSRSxfDcH/y6XliKbhMzi3hEJU9yez1jbaepJ8h7nuyW+VdAZf3d4X
         7nSMPX8skFQRBsbK2Qc50vQVqj6OeXlTU0y5JoReXs+Q0+kwp7n21YUl5R2k5fXwAeUO
         zESLA0J6qSbWJceuCE9LFIZxiQ1BCAtGk4lOkqYFFOp1fVYbuyT2EJ0BuCGacuWC7ThE
         BULZDnjIr1Bnqjx3Q/6iW60SX8r4vUejYfScFMJ+W9qwKsGn1bf85xeZKVW3bqMxtPBy
         I9Pw==
X-Received: by 10.67.24.71 with SMTP id ig7mr49129230pad.99.1427624012157;
        Sun, 29 Mar 2015 03:13:32 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.116.44])
        by mx.google.com with ESMTPSA id hh2sm7176902pbb.93.2015.03.29.03.13.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sun, 29 Mar 2015 03:13:31 -0700 (PDT)
Date: Sun, 29 Mar 2015 15:43:27 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/4] Staging: sm750fb: Replace C99 comment style with C89
 style
Message-ID: <20150329101327.GA20904@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Fixed C99 Comments to C89 comment style. Problem found using
checkpatch.pl
ERROR: do not use C99 // comments

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/sm750fb/ddk750_chip.c | 11 +++--------
 1 file changed, 3 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index 02f9326..233436d 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -17,7 +17,7 @@ logical_chip_type_t getChipType(void)
 	char physicalRev;
 	logical_chip_type_t chip;
 
-	physicalID = devId750;//either 0x718 or 0x750
+	physicalID = devId750; /* either 0x718 or 0x750 */
 	physicalRev = revId750;
 
 	if (physicalID == 0x718)
@@ -264,7 +264,7 @@ int ddk750_initHw(initchip_param_t * pInitParam)
 
 	unsigned int ulReg;
 #if 0
-	//move the code to map regiter function.
+	/* move the code to map regiter function. */
 	if(getChipType() == SM718){
 		/* turn on big endian bit*/
 		ulReg = PEEK32(0x74);
@@ -501,7 +501,6 @@ unsigned int calcPllValue(unsigned int request_orig,pll_value_t *pll)
 		}
 	}
 
-	//printk("Finally:  pll->n[%lu],m[%lu],od[%lu],pod[%lu]\n",pll->N,pll->M,pll->OD,pll->POD);
 	return ret;
 }
 
@@ -601,11 +600,7 @@ pll_value_t *pPLL           /* Structure to hold the value to be set in PLL */
 	ulRequestClk *= 1000;
 	pPLL->inputFreq = DEFAULT_INPUT_CLOCK; /* Default reference clock */
 
-    /* Output debug information */
-	//DDKDEBUGPRINT((DISPLAY_LEVEL, "calcPllValue: Requested Frequency = %d\n", ulRequestClk));
-	//DDKDEBUGPRINT((DISPLAY_LEVEL, "calcPllValue: Input CLK = %dHz, M=%d, N=%d, OD=%d, POD=%d\n", pPLL->inputFreq, pPLL->M, pPLL->N, pPLL->OD, pPLL->POD));
-
-    /* Return actual frequency that the PLL can set */
+	/* Return actual frequency that the PLL can set */
 	ret = calcPLL(pPLL);
 	return ret;
 }
-- 
1.9.1


