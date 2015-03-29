X-GM-THRID: 10253217300480
X-Received: by 10.182.24.38 with SMTP id r6mr22833308obf.20.1427624545962;
        Sun, 29 Mar 2015 03:22:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.23.5 with SMTP id 5ls2053079qgo.94.gmail; Sun, 29 Mar 2015
 03:22:25 -0700 (PDT)
X-Received: by 10.236.26.9 with SMTP id b9mr12532491yha.27.1427624545791;
        Sun, 29 Mar 2015 03:22:25 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id iw3si771161pbd.1.2015.03.29.03.22.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 29 Mar 2015 03:22:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mail=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x230.google.com with SMTP id cy3so139042543pad.3
        for <outreachy-kernel@googlegroups.com>; Sun, 29 Mar 2015 03:22:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=cmy6B3UlAHV0v3rxo5ZOGCwu1mUcQDkLwYsBFoscrp4=;
        b=jyr3LHTlC60buvH1WB9Uv6YQvpOBSis4eoL2bIDwQdMoTqT/6cDyeBAZXwXjA4h/MM
         cnK7x5OfiXcxrZeQmRhNvNsTC4YOlexU8ydKKq/gg0Fgpye54o9SflAMWd9JEWyijvqP
         53dneDpQxCXzqohdDSMGoKHOlLSgt+29Lw33l9FxsEcHaBNOvyNZv+R3PmpHBznCOlM7
         6inBdf/WCSDNeFUe+e8AyG4fBLpGWVVCr8M+fj30d9q3EMFU0CLqAOlwymSS5vkhVefg
         /mXWI3DIxFZf6BF9bbtw5OwHkynWu6XLQ0ApSLqZUvDGFQcYZzhOhC4ae+b+EyBgOVB+
         FCwQ==
X-Received: by 10.70.24.129 with SMTP id u1mr48050023pdf.16.1427624545612;
        Sun, 29 Mar 2015 03:22:25 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.77.40])
        by mx.google.com with ESMTPSA id x3sm7224310pdo.0.2015.03.29.03.22.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sun, 29 Mar 2015 03:22:25 -0700 (PDT)
Date: Sun, 29 Mar 2015 15:52:21 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 1/4] Staging: sm750fb: Fix C99 Comments
Message-ID: <20150329102221.GA20975@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Fixed C99 Comments to C89 comment style. Problem found using
checkpatch.pl
ERROR: do not use C99 // comments

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Changes in v2:
        -Removed comments that perform printing

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


