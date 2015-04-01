X-GM-THRID: 10695893581824
X-Received: by 10.182.148.164 with SMTP id tt4mr48477225obb.30.1427907511418;
        Wed, 01 Apr 2015 09:58:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.49.103 with SMTP id p94ls352622qga.10.gmail; Wed, 01 Apr
 2015 09:58:31 -0700 (PDT)
X-Received: by 10.236.105.137 with SMTP id k9mr50246470yhg.14.1427907511182;
        Wed, 01 Apr 2015 09:58:31 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pd0-x22f.google.com (mail-pd0-x22f.google.com. [2607:f8b0:400e:c02::22f])
        by gmr-mx.google.com with ESMTPS id gu4si288511pac.1.2015.04.01.09.58.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Apr 2015 09:58:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c02::22f as permitted sender) client-ip=2607:f8b0:400e:c02::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c02::22f as permitted sender) smtp.mail=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x22f.google.com with SMTP id ni2so60710921pdb.1
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Apr 2015 09:58:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=NrTllXyU6QbLniO5eIAkIHn42iGBBUUDjLl/SPdfSrU=;
        b=BZIfuDiiRbPbAxn9m36Uy0Xfjbt8/BChwPomSGC+RixWIogySWpuFM+Ug4Bmfrb1S9
         swz6U/nw5U7REhI/pudh1yvVL2V724cr8E+7g4wtmxXmwm+T0TqvW7Ouah8JeY3KKgLb
         C1kBG9Y086t7szPbVm9u/zamcEW3+DhIm417hvzKua+Ked9I60Ge+NceKieM1Ny4Vaqx
         G8KbBM9olj5luiIFpHXotxIK2Z5lAoM8MMS2KFY+0xCk1qh6x8dEQ/5SD7GG81Q+cm4E
         R/le5I0plgomrwU1Sdkf0rCLrIeu98WiwpWpjoQIyE7z6YIxMU3zoruefRN57NqDvXtg
         WMmA==
X-Received: by 10.66.62.201 with SMTP id a9mr79427135pas.101.1427907511024;
        Wed, 01 Apr 2015 09:58:31 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.153.42])
        by mx.google.com with ESMTPSA id ae7sm2672051pac.19.2015.04.01.09.58.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Wed, 01 Apr 2015 09:58:30 -0700 (PDT)
Date: Wed, 1 Apr 2015 22:28:26 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: sm750fb: Remove zero testing pointer typed value
Message-ID: <20150401165826.GA3615@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Removes variable comparison with 0. Done using following
coccinelle script.

@ disable is_zero,isnt_zero @
expression *E;
expression E1,f;
@@

E = f(...)
<...
(
- E == 0
+ !E
|
- E != 0
+ E
|
- 0 == E
+ !E
|
- 0 != E
+ E
)
...>
?E = E1

@ disable is_zero,isnt_zero @
expression *E;
@@

(
  E ==
- 0
+ NULL
|
  E !=
- 0
+ NULL
|
- 0
+ NULL
  == E
|
- 0
+ NULL
  != E
)

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/sm750fb/ddk750_chip.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index cd1508a..9b5bb7e 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -110,7 +110,7 @@ void setChipClock(unsigned int frequency)
 		return;
 #endif
 
-	if (frequency != 0) {
+	if (frequency) {
 		/*
 		* Set up PLL, a structure to hold the value to be set in clocks.
 		*/
@@ -139,7 +139,7 @@ void setMemoryClock(unsigned int frequency)
 	if (getChipType() == SM750LE)
 		return;
 #endif
-	if (frequency != 0) {
+	if (frequency) {
 		/* Set the frequency to the maximum frequency that the DDR Memory can take
 		which is 336MHz. */
 		if (frequency > MHz(336))
@@ -187,7 +187,7 @@ void setMasterClock(unsigned int frequency)
 	if (getChipType() == SM750LE)
 		return;
 #endif
-	if (frequency != 0) {
+	if (frequency) {
 		/* Set the frequency to the maximum frequency that the SM750 engine can
 		run, which is about 190 MHz. */
 		if (frequency > MHz(190))
-- 
1.9.1


