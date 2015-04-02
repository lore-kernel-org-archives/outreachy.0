X-GM-THRID: 10695893581824
X-Received: by 10.236.3.106 with SMTP id 70mr57660940yhg.20.1427995868881;
        Thu, 02 Apr 2015 10:31:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.171.134 with SMTP id au6ls2184337igc.34.canary; Thu, 02 Apr
 2015 10:31:08 -0700 (PDT)
X-Received: by 10.66.157.129 with SMTP id wm1mr56810587pab.15.1427995868650;
        Thu, 02 Apr 2015 10:31:08 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id zw6si671941pbc.2.2015.04.02.10.31.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Apr 2015 10:31:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mail=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x233.google.com with SMTP id tp5so90174717pac.1
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Apr 2015 10:31:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=nK2flRMbNVIBoWpTcx+98zA2b7htQEoGbsftwbsakRc=;
        b=NIWF3UecPIC4IOsOYtShebmXahx/H5qof1fDmbMclSLyN6icDUWiZt0R6aMESIZ3EM
         Is74xfBiu/jFgv2A10KO8OdlWz7+X4Kb1lFGZGFr8o+Ec0OfAPOxKviQqEr1KUvMUCId
         5tW2JaMSlCjBn5QNXFCLJQzOrITWvo3RN44JS9SRIFFtkf8mHeL9LqwJ7la3bhfAKSDE
         emrPOWbZDU/w50osjn/NauIASM5iEtAUO6hjWMqW4j3HZlF4dhHz38zVfoAQLpvJZsgZ
         S3c11wqrSfig/RUrTzUeCiqqVosTCZujt5R0AMe2UzB4oGpueuwf0ez6Hjs1ufSABJJJ
         oB8A==
X-Received: by 10.68.190.106 with SMTP id gp10mr26076581pbc.163.1427995868537;
        Thu, 02 Apr 2015 10:31:08 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.238.236])
        by mx.google.com with ESMTPSA id cz10sm5829271pdb.9.2015.04.02.10.31.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Thu, 02 Apr 2015 10:31:07 -0700 (PDT)
Date: Thu, 2 Apr 2015 23:01:04 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 3/3] Staging: sm750fb: Remove zero testing pointer typed
 value
Message-ID: <20150402173104.GA7290@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Removes variable comparison with 0. 
Done using following coccinelle script.

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
Changes made in v2:
        -Numbered patches for same file

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


