X-GM-THRID: 6203096899740762112
X-Received: by 10.50.36.104 with SMTP id p8mr876028igj.0.1444271043294;
        Wed, 07 Oct 2015 19:24:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.41.136 with SMTP id z8ls979152qgz.37.gmail; Wed, 07 Oct
 2015 19:24:02 -0700 (PDT)
X-Received: by 10.140.233.142 with SMTP id e136mr3836651qhc.13.1444271042772;
        Wed, 07 Oct 2015 19:24:02 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id zg1si5488031pbb.2.2015.10.07.19.24.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Oct 2015 19:24:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x229.google.com with SMTP id lk4so38720922pab.3
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Oct 2015 19:24:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=BlkWLFcbmzRT6xWjvU1hyof9Utryvq33mYhIwu2Y1AE=;
        b=ej1cgY9dEjIAdDUSkJQypal+Wv6QQfJOf07E30APfpk4Bj6ucmwCOAPDa8pdIL/Q1p
         poo5o+64Bz5RVnR3AQEvD/eT/aBFBv5U4GOw3Uyn0e1azYrvEcDQdV0YDukiWbZoJlZr
         CHBfA5Ykdy8SHI8w2KzTidJH9n0D0ZST6S78h94mWSrN7vIo0YLjoPQLZazFjFaK7suQ
         YOX9+zPyPROHasXaKxzwjxg/1dC58iVPS1watgweC/7PwAPrfpMuu41fyIIQCfYRqMiB
         QmIkJ3huSDFK27FOr+q8mfF0vxs54dZeFchPK2qXGpbmLRA48k0WeLWkXCIDI6ZaqPqm
         7NnA==
X-Received: by 10.68.69.79 with SMTP id c15mr4946888pbu.90.1444271042596;
        Wed, 07 Oct 2015 19:24:02 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.135.17])
        by smtp.gmail.com with ESMTPSA id xm4sm42186805pab.27.2015.10.07.19.24.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Wed, 07 Oct 2015 19:24:01 -0700 (PDT)
Date: Thu, 8 Oct 2015 07:53:58 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: sm750fb: Remove multiple blank lines
Message-ID: <20151008022358.GA6582@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove multiple blank lines. Problem found using checkpatch.pl
CHECK: Please don't use multiple blank lines

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/sm750fb/ddk750_chip.c | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index a80eb94..270d10b 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -12,7 +12,6 @@ typedef struct _pllcalparam {
 }
 pllcalparam;
 
-
 logical_chip_type_t getChipType(void)
 {
 	unsigned short physicalID;
@@ -74,7 +73,6 @@ static unsigned int getPllValue(clock_type_t clockType, pll_value_t *pPLL)
 	return calcPLL(pPLL);
 }
 
-
 static unsigned int getChipClock(void)
 {
 	pll_value_t pll;
@@ -86,7 +84,6 @@ static unsigned int getChipClock(void)
 	return getPllValue(MXCLK_PLL, &pll);
 }
 
-
 /*
  * This function set up the main chip clock.
  *
@@ -121,8 +118,6 @@ static void setChipClock(unsigned int frequency)
 	}
 }
 
-
-
 static void setMemoryClock(unsigned int frequency)
 {
 	unsigned int ulReg, divisor;
@@ -162,7 +157,6 @@ static void setMemoryClock(unsigned int frequency)
 	}
 }
 
-
 /*
  * This function set up the master clock (MCLK).
  *
@@ -210,7 +204,6 @@ static void setMasterClock(unsigned int frequency)
 		}
 }
 
-
 unsigned int ddk750_getVMSize(void)
 {
 	unsigned int reg;
-- 
1.9.1


