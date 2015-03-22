X-GM-THRID: 9527712808960
X-Received: by 10.50.109.202 with SMTP id hu10mr6163997igb.4.1426994999181;
        Sat, 21 Mar 2015 20:29:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.82.233 with SMTP id h96ls520331qgd.89.gmail; Sat, 21 Mar
 2015 20:29:59 -0700 (PDT)
X-Received: by 10.52.164.66 with SMTP id yo2mr30223546vdb.2.1426994999005;
        Sat, 21 Mar 2015 20:29:59 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pd0-x22e.google.com (mail-pd0-x22e.google.com. [2607:f8b0:400e:c02::22e])
        by gmr-mx.google.com with ESMTPS id ri9si1226277pdb.1.2015.03.21.20.29.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Mar 2015 20:29:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c02::22e as permitted sender) client-ip=2607:f8b0:400e:c02::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c02::22e as permitted sender) smtp.mail=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x22e.google.com with SMTP id ni2so149587207pdb.1
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Mar 2015 20:29:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=iqQCEZzsAfGo/6KeBH8qlsHk/aQRmv72ofdKc+Hw/3w=;
        b=XjOAjyrIlxJaxyoaQKQIOTcTpNlembVq8t+qXyKQzOkuPELc7pARq0TllxlUC/8+Gw
         FRGBQb9tosWDyECGA41F8TlN7gMszNDrAxm4wnw7uD8XYt+enB1bjLzCvZCn/LW+mcBM
         i4xf96hyz64kxFeDXqqcvsunuiz9o6jRuhgDQ10BoCxx06mABwWtfsEtsV8KWFc2jDEo
         l1iebf1JqvrHOrD6b0cK+vttO/doYMrVWtWADGh0D3kH6ydSy3pW1HRsbsE9ez+GYq2t
         tbkk/d9HX3wDxwH7ichV7VDKN36LMIpAcJrzrenrB6U0ZJ24KfbUQwaU6AkJXcKOZJ4B
         v7fw==
X-Received: by 10.68.193.66 with SMTP id hm2mr9191695pbc.14.1426994998858;
        Sat, 21 Mar 2015 20:29:58 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.249.51])
        by mx.google.com with ESMTPSA id y14sm12918327pdl.3.2015.03.21.20.29.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sat, 21 Mar 2015 20:29:58 -0700 (PDT)
Date: Sun, 22 Mar 2015 08:59:54 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [Outreachy kernel][PATCH 1/5] Staging: sm750fb: Remove spaces before
 lines
Message-ID: <20150322032954.GA29921@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Fixes checkpatch.pl warning by using tabs instead of spaces.
WARNING: please, no spaces at the start of a line.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/sm750fb/ddk750_chip.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index 9105c0e..b1fbccf 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -137,17 +137,17 @@ void setChipClock(unsigned int frequency)
 
 void setMemoryClock(unsigned int frequency)
 {
-    unsigned int ulReg, divisor;
+	unsigned int ulReg, divisor;
  #if 1
 	/* Cheok_0509: For SM750LE, the memory clock is fixed. Nothing to set. */
 	if (getChipType() == SM750LE)
 		return;
 #endif
-    if (frequency != 0) {
-        /* Set the frequency to the maximum frequency that the DDR Memory can take
-           which is 336MHz. */
-        if (frequency > MHz(336))
-            frequency = MHz(336);
+	if (frequency != 0) {
+		/* Set the frequency to the maximum frequency that the DDR
+		Memory can take which is 336MHz. */
+	if (frequency > MHz(336))
+		frequency = MHz(336);
 
         /* Calculate the divisor */
         divisor = (unsigned int) roundedDiv(getChipClock(), frequency);
-- 
1.9.1


