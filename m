X-GM-THRID: 9590400876544
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,885fbfd306c38f9f
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.50.178.175 with SMTP id cz15mr9020066igc.5.1427046196256;
        Sun, 22 Mar 2015 10:43:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.94.44 with SMTP id f41ls30651qge.20.gmail; Sun, 22 Mar
 2015 10:43:16 -0700 (PDT)
X-Received: by 10.236.8.69 with SMTP id 45mr82124916yhq.39.1427046195986;
        Sun, 22 Mar 2015 10:43:15 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pd0-x236.google.com (mail-pd0-x236.google.com. [2607:f8b0:400e:c02::236])
        by gmr-mx.google.com with ESMTPS id t6si488768pbs.0.2015.03.22.10.43.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Mar 2015 10:43:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c02::236 as permitted sender) client-ip=2607:f8b0:400e:c02::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c02::236 as permitted sender) smtp.mail=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x236.google.com with SMTP id cz9so162783114pdb.3
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Mar 2015 10:43:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=TsOhFgBmyYb32u8ZRIG1JmACPgUzIzCZpgSbkMojj3o=;
        b=Mu15e5n8HIdL54fvJbFVPOTR7bAUtJL0aVmgtfoqtkVIk3U0/9Zfi2D7Vk2hmLHYmf
         IBMwHhlfxksTyCxsv44ejg2U6FczSRJ7MlAg87zcL/yqNwGZfRif73n7MS5Hbg5Jgxm2
         KA2pYoz7ek9wc1BONCBCwGgQMyt7cRH0/PAPxyT57F2aT9nXyVIj/OSDyAck4wfOabbY
         kWxPNl0jSQqoZGaB00GHgXYApyJ43zPimt3J9ybLoSsmrZS06+Lu6UDqaBSYGMSdAZcN
         1CEFLQjB+4lUZCigKYdPoqe5/m5VY7t6c7c4cxcLy9F7mH1aYwvHADlEXE5N65rB6OBV
         NADA==
X-Received: by 10.68.166.65 with SMTP id ze1mr13771007pbb.142.1427046195800;
        Sun, 22 Mar 2015 10:43:15 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.249.51])
        by mx.google.com with ESMTPSA id ff10sm14584654pad.1.2015.03.22.10.43.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sun, 22 Mar 2015 10:43:15 -0700 (PDT)
Date: Sun, 22 Mar 2015 23:13:11 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: sm750fb: Remove struct typedefs
Message-ID: <20150322174311.GA2426@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove typedef for struct. Warning found using checkpatch.pl
WARNING: do not add new typedefs

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Changes in v2:
        -Fix code error in removing typedef

 drivers/staging/sm750fb/ddk750_chip.c | 25 ++++++++++++-------------
 1 file changed, 12 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index 74a3642..3ac6478 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -2,13 +2,12 @@
 #include "ddk750_reg.h"
 #include "ddk750_chip.h"
 #include "ddk750_power.h"
-struct _pllcalparam {
+struct pllcalparam {
 	unsigned char power;/* d : 0~ 6*/
 	unsigned char pod;
 	unsigned char od;
 	unsigned char value;/* value of  2 power d (2^d) */
-}
-pllcalparam;
+};
 
 
 logical_chip_type_t getChipType(void)
@@ -192,17 +191,17 @@ void setMasterClock(unsigned int frequency)
 		return;
 #endif
 	if (frequency != 0) {
-        /* Set the frequency to the maximum frequency that the SM750 engine can
-           run, which is about 190 MHz. */
-        if (frequency > MHz(190))
-            frequency = MHz(190);
+		/* Set the frequency to the maximum frequency that the SM750
+		engine can run, which is about 190 MHz. */
+		if (frequency > MHz(190))
+			frequency = MHz(190);
 
-        /* Calculate the divisor */
-        divisor = (unsigned int) roundedDiv(getChipClock(), frequency);
+	/* Calculate the divisor */
+	divisor = (unsigned int) roundedDiv(getChipClock(), frequency);
 
-        /* Set the corresponding divisor in the register. */
-        ulReg = PEEK32(CURRENT_GATE);
-        switch(divisor)
+	/* Set the corresponding divisor in the register. */
+	ulReg = PEEK32(CURRENT_GATE);
+	switch(divisor)
         {
             default:
             case 3:
@@ -219,7 +218,7 @@ void setMasterClock(unsigned int frequency)
                 break;
         }
 
-        setCurrentGate(ulReg);
+	setCurrentGate(ulReg);
     }
 }
 
-- 
1.9.1


