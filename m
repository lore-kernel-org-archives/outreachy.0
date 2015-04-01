X-GM-THRID: 10253217300480
X-Received: by 10.42.47.5 with SMTP id m5mr70056699icf.26.1427906050815;
        Wed, 01 Apr 2015 09:34:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.9.219 with SMTP id 88ls306533ioj.35.gmail; Wed, 01 Apr
 2015 09:34:10 -0700 (PDT)
X-Received: by 10.67.8.40 with SMTP id dh8mr49779471pad.1.1427906050623;
        Wed, 01 Apr 2015 09:34:10 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id oc12si280507pdb.1.2015.04.01.09.34.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Apr 2015 09:34:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mail=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x236.google.com with SMTP id cy3so56781580pad.3
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Apr 2015 09:34:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=/en8eGmJkHEpD1EBj1j7dtp5I2H4M+MlDz9LKwGNMh0=;
        b=PrVPp1grhwI9rWkQ43bnG1wK8Qopg5bApDZv7CX2M/hZmlKIfSHl65nnrVSnoquWjK
         YJl3M/kmsd7mkJazYgGCOEh3lLRhfKyUGGNveDp735af0iaDi/Ls250VqI/Cv2hj2WKD
         DyYix8WwpfZNXCDXybEI0lkZ/KcE86vNB8fPdTyNWB1OO0FPWkdiXOfAw/dYrrAtCnMv
         trc0BbKYGDpbVyAOs+xMkM6AXC1jcP191dxLgBhzU39YpqOzNTq3VdmBfxlaWq/tTNg5
         ZvKjWty4oA5xIbsaans496oAbKbDzFC3dXUqTisFZ10njJQsKtk+m6+D2NknGSySMTmv
         G4HA==
X-Received: by 10.66.66.166 with SMTP id g6mr37816654pat.88.1427906050472;
        Wed, 01 Apr 2015 09:34:10 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.166.37])
        by mx.google.com with ESMTPSA id qm6sm2625365pac.14.2015.04.01.09.34.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Wed, 01 Apr 2015 09:34:09 -0700 (PDT)
Date: Wed, 1 Apr 2015 22:04:06 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: sm750fb: Fix C99 Comments
Message-ID: <20150401163406.GA3271@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Used C89 instead of C99 Comments and removed C99 comments performing prints only. Problem found using checkpatch.pl
ERROR: do not use C99 // comments

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Changes in v2:
        -Wrap comment lines at 72 characters
 drivers/staging/sm750fb/ddk750_chip.c | 10 ++--------
 ret.ou                                |  0
 2 files changed, 2 insertions(+), 8 deletions(-)
 create mode 100644 ret.ou

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index b2dc136..cd1508a 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -17,7 +17,7 @@ logical_chip_type_t getChipType(void)
 	char physicalRev;
 	logical_chip_type_t chip;
 
-	physicalID = devId750;//either 0x718 or 0x750
+	physicalID = devId750; /* either 0x718 or 0x750 */
 	physicalRev = revId750;
 
 	if (physicalID == 0x718)
@@ -257,7 +257,7 @@ int ddk750_initHw(initchip_param_t *pInitParam)
 
 	unsigned int ulReg;
 #if 0
-	//move the code to map regiter function.
+	/* move the code to map regiter function. */
 	if (getChipType() == SM718) {
 		/* turn on big endian bit*/
 		ulReg = PEEK32(0x74);
@@ -488,7 +488,6 @@ unsigned int calcPllValue(unsigned int request_orig, pll_value_t *pll)
 		}
 	}
 
-	//printk("Finally:  pll->n[%lu],m[%lu],od[%lu],pod[%lu]\n",pll->N,pll->M,pll->OD,pll->POD);
 	return ret;
 }
 
@@ -580,14 +579,9 @@ pll_value_t *pPLL           /* Structure to hold the value to be set in PLL */
 	}
 
     /* Restore input frequency from Khz to hz unit */
-//    pPLL->inputFreq *= 1000;
 	ulRequestClk *= 1000;
 	pPLL->inputFreq = DEFAULT_INPUT_CLOCK; /* Default reference clock */
 
-    /* Output debug information */
-	//DDKDEBUGPRINT((DISPLAY_LEVEL, "calcPllValue: Requested Frequency = %d\n", ulRequestClk));
-	//DDKDEBUGPRINT((DISPLAY_LEVEL, "calcPllValue: Input CLK = %dHz, M=%d, N=%d, OD=%d, POD=%d\n", pPLL->inputFreq, pPLL->M, pPLL->N, pPLL->OD, pPLL->POD));
-
     /* Return actual frequency that the PLL can set */
 	ret = calcPLL(pPLL);
 	return ret;
diff --git a/ret.ou b/ret.ou
new file mode 100644
index 0000000..e69de29
-- 
1.9.1


