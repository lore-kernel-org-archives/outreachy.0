X-GM-THRID: 9445831606272
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,153891478aacf657
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.50.254.161 with SMTP id aj1mr6976744igd.6.1427011642570;
        Sun, 22 Mar 2015 01:07:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.39.74 with SMTP id n71ls1703177ion.54.gmail; Sun, 22 Mar
 2015 01:07:22 -0700 (PDT)
X-Received: by 10.66.194.234 with SMTP id hz10mr5096055pac.10.1427011642251;
        Sun, 22 Mar 2015 01:07:22 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pd0-x231.google.com (mail-pd0-x231.google.com. [2607:f8b0:400e:c02::231])
        by gmr-mx.google.com with ESMTPS id pj7si399491pbb.2.2015.03.22.01.07.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Mar 2015 01:07:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c02::231 as permitted sender) client-ip=2607:f8b0:400e:c02::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c02::231 as permitted sender) smtp.mail=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x231.google.com with SMTP id op1so153828478pdb.2
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Mar 2015 01:07:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=XuhR55ot7OUnfU7Af7GifMCZRjTG0aQeunftYVfT7D0=;
        b=hobwMXdtMhCKCmWpwPm5VornF9BdvM+wQBMl1sF7EL13cxvvFn35Xl8kQE70SfpGso
         8B7N1rcSfGg5Bp5Lj33N6+bW4DfC9Q7r5FUxuJqtDpMGjBjjXAWVlB97fpHwzxJqTR1X
         1UfmbRZ+BFcjOeVy/OK4HjiA9SaQbBp+3FpbyPBVnd9FYYFVv/PSIqZQPZQAQb1cYMoh
         2etjL3Z39FoZqm2v3QcmDWNOml1jROk4M9yU/AEdcIvDQcDIe59H1eKp8QVK74y+gT3J
         rpoGqx0v3c0PTRa1s9yl6QzD+7Z5+A8s/MbYfAOqgfg7naKo9pQAUxR1zn/TRCOTkhP9
         izgg==
X-Received: by 10.70.37.238 with SMTP id b14mr200328628pdk.50.1427011642162;
        Sun, 22 Mar 2015 01:07:22 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.249.51])
        by mx.google.com with ESMTPSA id n3sm1310203pdm.90.2015.03.22.01.07.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sun, 22 Mar 2015 01:07:21 -0700 (PDT)
Date: Sun, 22 Mar 2015 13:37:17 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 4/5] Staging: sm750fb: Remove spaces in front of lines
Message-ID: <20150322080717.GA31836@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Replace spaces by tabs. Problem found using checkpach.pl
WARNING: please, no spaces at the start of a line.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Changes in v2:
        -Fix commit message

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


