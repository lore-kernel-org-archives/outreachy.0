X-GM-THRID: 10253217300480
X-Received: by 10.42.89.205 with SMTP id h13mr52186125icm.25.1427625024859;
        Sun, 29 Mar 2015 03:30:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.43.197 with SMTP id y5ls767586igl.26.canary; Sun, 29 Mar
 2015 03:30:24 -0700 (PDT)
X-Received: by 10.66.194.234 with SMTP id hz10mr31918559pac.10.1427625024647;
        Sun, 29 Mar 2015 03:30:24 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id ni4si724158pdb.2.2015.03.29.03.30.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 29 Mar 2015 03:30:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mail=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x229.google.com with SMTP id we9so139133674pac.1
        for <outreachy-kernel@googlegroups.com>; Sun, 29 Mar 2015 03:30:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=XAZXejStZ23WOLdIGQrhbgpKJuwhT5ktJItF32WYCGE=;
        b=sBOHmk2270lk6ILTiqiasmpr/SBQgj1xCOcmliFCIP5ve9NRDfMhfEMSfpUMd+FDPc
         nblvR+2j2Mp4ih3AvlXlGCWGpfnpIPP8deomuzB7DpsWO9d3iYMSg66Zg8yjhAfb3hRZ
         +y/9PrLBddIav4U6CxC4cszXiiR/j/R6aLhVNOW/UzzVvFHnQ1CtJ9LJFghISPck/X9e
         uCoVt9CZEoEKx9D8Ib9BQHvZio4WkkLhyqeAf9RWYuZOCmIfG/dbacmthlWU9Ob4B7tv
         4+/sEBHyJXL6HrR3CIkt3zEEqjFS8SmbhT93FsZfeiGw9qGtXgX9+UjPuS5MjNDOuR4J
         gcWQ==
X-Received: by 10.68.231.66 with SMTP id te2mr50293324pbc.118.1427625024480;
        Sun, 29 Mar 2015 03:30:24 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.118.172])
        by mx.google.com with ESMTPSA id dl1sm7220978pdb.75.2015.03.29.03.30.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sun, 29 Mar 2015 03:30:23 -0700 (PDT)
Date: Sun, 29 Mar 2015 16:00:20 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 1/4] Staging: sm750fb: Fix C99 Comments
Message-ID: <20150329103020.GA21007@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Fixed C99 Comments to C89 comment style and removed C99 comments
performing printing. Problem found using checkpatch.pl
ERROR: do not use C99 // comments

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Changes made in v3:
        -Fixed commit message

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


