X-GM-THRID: 8297812852736
X-Received: by 10.236.19.8 with SMTP id m8mr55402229yhm.53.1426337723332;
        Sat, 14 Mar 2015 05:55:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.111.133 with SMTP id ii5ls504914igb.6.gmail; Sat, 14 Mar
 2015 05:55:23 -0700 (PDT)
X-Received: by 10.66.233.37 with SMTP id tt5mr38534618pac.3.1426337723113;
        Sat, 14 Mar 2015 05:55:23 -0700 (PDT)
Return-Path: <iskaranth@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id l3si895178pdo.0.2015.03.14.05.55.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Mar 2015 05:55:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of iskaranth@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of iskaranth@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mail=iskaranth@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22b.google.com with SMTP id yw6so15751182pab.2
        for <outreachy-kernel@googlegroups.com>; Sat, 14 Mar 2015 05:55:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=IQDqeamwz2aF1pPenTYcfWiIA/a4PqRZBZ/xwR9YLaM=;
        b=A8LQWc4f8U6nCsRx80oarprQveQtRc+ZpVawuDVKN1Rm5yyiDZKUiU/tGXtuMEkFW+
         vzFLfh5UwxczgOua9vAmuZqjPOpKxxwSNC4E30EDlIF9ehwZpIXHSDsKBwQd0cHVzxYm
         NX9cfZDBi/n7uUJDkjA2miyJx4+jpldRUdBg8RWZdC6Ypz1hy5MPocb7kVeNM5iT1sDI
         TDjqLtXrniyi5/mYo7/dbBJbxVX4CzGeJtdy7cwQHD4KtLwSsiLUg4jEpqwm9wDy+rcC
         qU2lC0C7nYKvUn3WElo5EJoWggb91EvHsnBMgBDKa54G6ZjM59i90QAWCdgo0LyBldDh
         wR0g==
X-Received: by 10.70.35.193 with SMTP id k1mr102315110pdj.46.1426337722998;
        Sat, 14 Mar 2015 05:55:22 -0700 (PDT)
Return-Path: <iskaranth@gmail.com>
Received: from localhost.localdomain ([222.117.133.143])
        by mx.google.com with ESMTPSA id os6sm8220909pac.28.2015.03.14.05.55.20
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 14 Mar 2015 05:55:22 -0700 (PDT)
From: Supriya Karanth <iskaranth@gmail.com>
To: iskaranth@gmail.com,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: sm750fb: remove parantheses from return statements
Date: Sat, 14 Mar 2015 21:55:11 +0900
Message-Id: <1426337711-32548-1-git-send-email-iskaranth@gmail.com>
X-Mailer: git-send-email 2.1.0

found by checkpatch.pl :ERROR: return is not a function,
parentheses are not required

changes made using coccinelle script:

@@
expression e,e1;
@@
(
return (e / e1);
|
return
-(
e
-)
;
)

Signed-off-by: Supriya Karanth <iskaranth@gmail.com>
---
 drivers/staging/sm750fb/ddk750_chip.c  | 2 +-
 drivers/staging/sm750fb/ddk750_swi2c.c | 6 +++---
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index 3c77207..33add64 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -633,7 +633,7 @@ unsigned int formatPllReg(pll_value_t *pPLL)
       | FIELD_VALUE(0, PANEL_PLL_CTRL, N,      pPLL->N)
       | FIELD_VALUE(0, PANEL_PLL_CTRL, M,      pPLL->M);
 
-    return(ulPllReg);
+    return ulPllReg;
 }
 
 
diff --git a/drivers/staging/sm750fb/ddk750_swi2c.c b/drivers/staging/sm750fb/ddk750_swi2c.c
index 1249759..8557cce 100644
--- a/drivers/staging/sm750fb/ddk750_swi2c.c
+++ b/drivers/staging/sm750fb/ddk750_swi2c.c
@@ -304,7 +304,7 @@ long swI2CWriteByte(unsigned char data)
     if (i<0xff)
         return 0;
     else
-        return (-1);
+        return -1;
 }
 
 /*
@@ -408,10 +408,10 @@ long swI2CInit(
 
     /* Return 0 if the GPIO pins to be used is out of range. The range is only from [0..63] */
     if ((i2cClkGPIO > 31) || (i2cDataGPIO > 31))
-        return (-1);
+        return -1;
 
     if (getChipType() == SM750LE)
-        return( swI2CInit_SM750LE(i2cClkGPIO, i2cDataGPIO) );
+        return swI2CInit_SM750LE(i2cClkGPIO, i2cDataGPIO);
 
     /* Initialize the GPIO pin for the i2c Clock Register */
     g_i2cClkGPIOMuxReg = GPIO_MUX;
-- 
2.1.0


