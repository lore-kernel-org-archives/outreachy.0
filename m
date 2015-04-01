X-GM-THRID: 10636159352832
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,3829042d7389b846,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.68.143.234 with SMTP id sh10mr49830769pbb.7.1427902244394;
        Wed, 01 Apr 2015 08:30:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.3.71 with SMTP id a7ls273699iga.15.gmail; Wed, 01 Apr 2015
 08:30:44 -0700 (PDT)
X-Received: by 10.50.73.7 with SMTP id h7mr9988718igv.2.1427902244018;
        Wed, 01 Apr 2015 08:30:44 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id pc4si260815pac.0.2015.04.01.08.30.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Apr 2015 08:30:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mail=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id j18so55317072pat.2
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Apr 2015 08:30:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=LdArdla3WvtStVA0ZsrnAMKVf6PHWyyFGmI8BhX5R6U=;
        b=aUXI+JlBLbxcQNrHLQTyOAS7KS3VT1S5a88kuf+9/mt8FPSAmHWzqIZb0vu9+z6jG4
         xXmRyvA5zJltKkw3LB5QW8gHjNwrzOhqqss8HTSh7MF1kCnO5HhV27wCvoyaiCB1vApP
         nwWX7orrNZOyNia1KSGUupufRICkAZDuTuZGZU+WmELNNZKtePc6llneW0Nx2r6HU/On
         acWgKkYkMutPndTI3XxynUNBGb+eQnPApmNDhG21ufmjrhVVALcM3IQQT4euw3YFE8KP
         YDFezt5dmgsWQ37T2DV5X661PcQlSj4g9lDEt+BBKlDAovSUOhOcLEk3Q9Kqwu0CcIJd
         6KKQ==
X-Received: by 10.66.140.39 with SMTP id rd7mr77682237pab.25.1427902243740;
        Wed, 01 Apr 2015 08:30:43 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([106.223.5.128])
        by mx.google.com with ESMTPSA id yy2sm2475203pbb.6.2015.04.01.08.30.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Wed, 01 Apr 2015 08:30:43 -0700 (PDT)
Date: Wed, 1 Apr 2015 21:00:36 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] Staging: sm750fb: Replace C99 Comments with C89 comments
 style
Message-ID: <20150401152954.GA6779@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Replaced C99 Comments style with C89 Comment style and removed C99 comments that perform prints only.
Problem found using checkpatch.pl
ERROR: do not use C99 // comments

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/sm750fb/ddk750_chip.c | 10 ++--------
 1 file changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index c8a8b3f..70d65d1 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -17,7 +17,7 @@ logical_chip_type_t getChipType(void)
 	char physicalRev;
 	logical_chip_type_t chip;
 
-	physicalID = devId750;//either 0x718 or 0x750
+	physicalID = devId750; /* either 0x718 or 0x750 */
 	physicalRev = revId750;
 
 	if (physicalID == 0x718)
@@ -256,7 +256,7 @@ int ddk750_initHw(initchip_param_t *pInitParam)
 
 	unsigned int ulReg;
 #if 0
-	//move the code to map regiter function.
+	/* move the code to map regiter function. */
 	if (getChipType() == SM718) {
 		/* turn on big endian bit*/
 		ulReg = PEEK32(0x74);
@@ -487,7 +487,6 @@ unsigned int calcPllValue(unsigned int request_orig, pll_value_t *pll)
 		}
 	}
 
-	//printk("Finally:  pll->n[%lu],m[%lu],od[%lu],pod[%lu]\n",pll->N,pll->M,pll->OD,pll->POD);
 	return ret;
 }
 
@@ -579,14 +578,9 @@ pll_value_t *pPLL           /* Structure to hold the value to be set in PLL */
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
-- 
1.9.1


