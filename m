X-GM-THRID: 10253217300480
X-Received: by 10.182.63.80 with SMTP id e16mr60609561obs.13.1427995523497;
        Thu, 02 Apr 2015 10:25:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.143.34 with SMTP id sb2ls700239igb.10.gmail; Thu, 02 Apr
 2015 10:25:23 -0700 (PDT)
X-Received: by 10.50.254.161 with SMTP id aj1mr16644289igd.6.1427995523251;
        Thu, 02 Apr 2015 10:25:23 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id dv5si682471pbb.0.2015.04.02.10.25.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Apr 2015 10:25:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mail=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x231.google.com with SMTP id cy3so90144913pad.3
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Apr 2015 10:25:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=qxjsI/nVSKVjehKu5T6tjikTHShT90Yh4I6goK7fHNI=;
        b=F/q/XMaYgBqRZ13+BkHTTJSMop1awH64UctMgIiyg5Bg4MqPlzYE4tRyoytFat9WQT
         edxWAVwvt6Uh6dkHq8nB5T4m3N9MGB5DRK+Wj9iKlfo4quuY8Mr9MEwhTeW3MIaoAOAa
         NIAZiplO59Bz2K7xKYJ6pW/pcfz1bMRqGogCTP2GBzYitV7LPryjZiox1Y4qhBvjWwid
         GEOGxhA8Jt0WvgreeizgdnY0KTKLVWPTFOv2MmkNch5UMD85+3VyfoWNukwHvy7f4LIv
         9rIoki+tYPQWyT7q4udCtwnweLdc1ck0MHTddoiLUh/0bLw7HoATJ21tMLRs0qAjVWYR
         RfLw==
X-Received: by 10.70.18.97 with SMTP id v1mr88273720pdd.152.1427995523126;
        Thu, 02 Apr 2015 10:25:23 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.238.236])
        by mx.google.com with ESMTPSA id df7sm456743pdb.32.2015.04.02.10.25.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Thu, 02 Apr 2015 10:25:22 -0700 (PDT)
Date: Thu, 2 Apr 2015 22:55:18 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 1/3] Staging: sm750fb: Fix C99 Comments
Message-ID: <20150402172518.GA7241@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Used C89 instead of C99 Comment and removed C99 comments performing prints only.
Problem found using checkpatch.pl
ERROR: do not use C99 // comments

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Changes made in v3:
        -Fixed commit message

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


