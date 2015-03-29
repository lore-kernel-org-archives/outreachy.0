X-GM-THRID: 10253217300480
X-Received: by 10.182.129.166 with SMTP id nx6mr29784599obb.35.1427615174834;
        Sun, 29 Mar 2015 00:46:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.101.129 with SMTP id u1ls1964623qge.13.gmail; Sun, 29 Mar
 2015 00:46:14 -0700 (PDT)
X-Received: by 10.236.2.227 with SMTP id 63mr31523969yhf.12.1427615174500;
        Sun, 29 Mar 2015 00:46:14 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id oc12si718695pdb.1.2015.03.29.00.46.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 29 Mar 2015 00:46:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mail=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id wz10so86025160pac.2
        for <outreachy-kernel@googlegroups.com>; Sun, 29 Mar 2015 00:46:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=JtgfNcICP+ge5GZZEkWYacUixYJ1BeJ6bArufqOSt6M=;
        b=w7TxHCdugOkEe+8/AJGY3SeCD5cVBuabcChDrPABEFXRMMMyBUD2K6lgYu5bMRt8zX
         RNRUxAOC3as2Dv8mU4nZnfLfCj+DwP473gafU1jE4dJ1zUDoQS+V1uxc1b+xDLkLRXcv
         XVVwzP8eEveD5S78XLWKCLvt1xJ+rMkH8/h53WibdrJk4tTMH0/nC/lsyGMCCMinOd6w
         N9Pt66gQOvSE1QTzEIa10rp72ls7WgcbMLoy5z/Lan01h/PG3WA757asRpn3/Cc2VrCB
         OieMdjKkpQ7K2K5qAou52GPh+3jWQDQ4T98mTxt9qib8gQEZLfBGXqI2V9DHt/atuyb8
         608Q==
X-Received: by 10.70.44.100 with SMTP id d4mr49176383pdm.36.1427615174363;
        Sun, 29 Mar 2015 00:46:14 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.173.150])
        by mx.google.com with ESMTPSA id dl1sm6876762pdb.75.2015.03.29.00.46.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sun, 29 Mar 2015 00:46:13 -0700 (PDT)
Date: Sun, 29 Mar 2015 13:16:07 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/4] Staging: sm750fb: Fix C99 Comments
Message-ID: <20150329074607.GA18058@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Fixed C99 Comments to proper comment style. Problem found using checkpatch.pl
ERROR: do not use C99 // comments

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/sm750fb/ddk750_chip.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index 02f9326..ee4d668 100644
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
@@ -501,7 +501,7 @@ unsigned int calcPllValue(unsigned int request_orig,pll_value_t *pll)
 		}
 	}
 
-	//printk("Finally:  pll->n[%lu],m[%lu],od[%lu],pod[%lu]\n",pll->N,pll->M,pll->OD,pll->POD);
+	/* printk("Finally:  pll->n[%lu],m[%lu],od[%lu],pod[%lu]\n",pll->N,pll->M,pll->OD,pll->POD); */
 	return ret;
 }
 
@@ -597,13 +597,13 @@ pll_value_t *pPLL           /* Structure to hold the value to be set in PLL */
 	}
 
     /* Restore input frequency from Khz to hz unit */
-//    pPLL->inputFreq *= 1000;
+/*    pPLL->inputFreq *= 1000; */
 	ulRequestClk *= 1000;
 	pPLL->inputFreq = DEFAULT_INPUT_CLOCK; /* Default reference clock */
 
     /* Output debug information */
-	//DDKDEBUGPRINT((DISPLAY_LEVEL, "calcPllValue: Requested Frequency = %d\n", ulRequestClk));
-	//DDKDEBUGPRINT((DISPLAY_LEVEL, "calcPllValue: Input CLK = %dHz, M=%d, N=%d, OD=%d, POD=%d\n", pPLL->inputFreq, pPLL->M, pPLL->N, pPLL->OD, pPLL->POD));
+	/* DDKDEBUGPRINT((DISPLAY_LEVEL, "calcPllValue: Requested Frequency = %d\n", ulRequestClk)); */
+	/* DDKDEBUGPRINT((DISPLAY_LEVEL, "calcPllValue: Input CLK = %dHz, M=%d, N=%d, OD=%d, POD=%d\n", pPLL->inputFreq, pPLL->M, pPLL->N, pPLL->OD, pPLL->POD)); */
 
     /* Return actual frequency that the PLL can set */
 	ret = calcPLL(pPLL);
-- 
1.9.1


