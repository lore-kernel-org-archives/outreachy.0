X-GM-THRID: 9541992316928
X-Received: by 10.236.228.106 with SMTP id e100mr94426545yhq.21.1426998443363;
        Sat, 21 Mar 2015 21:27:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.12.233 with SMTP id 102ls1567595iom.25.gmail; Sat, 21 Mar
 2015 21:27:23 -0700 (PDT)
X-Received: by 10.66.124.198 with SMTP id mk6mr92324454pab.22.1426998443092;
        Sat, 21 Mar 2015 21:27:23 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id iw3si354551pbd.1.2015.03.21.21.27.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Mar 2015 21:27:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mail=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22b.google.com with SMTP id we9so153184896pac.1
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Mar 2015 21:27:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=6O5f/ro4Ha513WWizkftsQaPGHOFle14K0r4fMWfRnk=;
        b=upPkR1gW93dDtGFpsihRsdT1c6QDY1N2yXJ471nx/RbFzvk2YMxYR1SKGMO5W1Jc3n
         cicV88Mb/8zN05d6d2yOMcohTUncnXpdZVwXQhx8w3VYWZm4O5Wdc4OEfIwP/5B148Cj
         PDq5iR7l624zshTFd5vqHOOd8JyOACHH4fgYB9oLTWbQv/WyCVejSo6vO3syU3DNpiNN
         TDs/XHPq19es5zdzggzL7iyM29/JnBRMiGEWTdS9erkePnsfC4ycjIUVZLSLvbwi4AHN
         JCOwNGPbB7eQ37exid6IZRymCj1lp72GWd0wf493P/e6nlu17bOaQy8RGFh0of4e46Ig
         XVPw==
X-Received: by 10.70.109.197 with SMTP id hu5mr127544190pdb.98.1426998442964;
        Sat, 21 Mar 2015 21:27:22 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.249.51])
        by mx.google.com with ESMTPSA id id2sm3303604pbb.56.2015.03.21.21.27.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sat, 21 Mar 2015 21:27:22 -0700 (PDT)
Date: Sun, 22 Mar 2015 09:57:18 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [Outreachy kernel][PATCH 4/5] Staging: sm750fb: Remove spaces in
 front of lines
Message-ID: <20150322042718.GA30193@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Fixes checkpatch.pl warning by using tabs instead of spaces.
WARNING: please, no spaces at the start of a line.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/sm750fb/ddk750_chip.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index 0b6baae..a1672c8 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -170,8 +170,8 @@ void setMemoryClock(unsigned int frequency)
 		break;
 	}
 
-        setCurrentGate(ulReg);
-    }
+	setCurrentGate(ulReg);
+	}
 }
 
 
@@ -185,13 +185,13 @@ void setMemoryClock(unsigned int frequency)
  */
 void setMasterClock(unsigned int frequency)
 {
-    unsigned int ulReg, divisor;
+	unsigned int ulReg, divisor;
   #if 1
 	/* Cheok_0509: For SM750LE, the memory clock is fixed. Nothing to set. */
 	if (getChipType() == SM750LE)
 		return;
 #endif
-    if (frequency != 0)
+	if (frequency != 0)
     {
         /* Set the frequency to the maximum frequency that the SM750 engine can
            run, which is about 190 MHz. */
-- 
1.9.1


