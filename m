X-GM-THRID: 9566631755776
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,ad21c143047176b2,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.97.2 with SMTP id dw2mr98438880obb.0.1427011041826;
        Sun, 22 Mar 2015 00:57:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.83.116 with SMTP id i107ls2380240qgd.41.gmail; Sun, 22 Mar
 2015 00:57:21 -0700 (PDT)
X-Received: by 10.236.229.233 with SMTP id h99mr95447129yhq.42.1427011041571;
        Sun, 22 Mar 2015 00:57:21 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id l3si1413189pdo.0.2015.03.22.00.57.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Mar 2015 00:57:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mail=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id we9so156647273pac.1
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Mar 2015 00:57:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=XmcXYodd1ARCvl49JxUfzRyrQbmgbvmF1Bu9iZ7XnvM=;
        b=ZcQmhN16+/LrVCnaAe5NajEWYSH1SjALJmP2Eu/t1mj8ZUqTIS3pWT/Kh6xSz9iAFP
         wtTsoIqI8yvBP6n94asUVPPSxlTczEmQ0Kbpgtv0xtI5/spCnkWHCSPttsxWm63rMxRn
         kQ2zJW6voAU/tZiRSfAAcdkpk8wfhvO5qCSDhwv2l9pmy3DGKbwlDk7CQmotO6tAxUOF
         7Qenm7hDF7/JJJ75fikSLBr9VbgSKYMoP4w5cUvN0R5L3MggHsSJVLyb0iyqp04RWXbm
         k0093YuIfpVXTD8fLGkDatcgWPGTZDoYpAQ4p+couWsjgxgKgRgxIig/V+9n4H4be9GN
         ZRsg==
X-Received: by 10.68.172.3 with SMTP id ay3mr10468389pbc.94.1427011041409;
        Sun, 22 Mar 2015 00:57:21 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.249.51])
        by mx.google.com with ESMTPSA id i10sm13363203pdk.53.2015.03.22.00.57.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sun, 22 Mar 2015 00:57:20 -0700 (PDT)
Date: Sun, 22 Mar 2015 13:27:17 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 5/5] Staging: sm750fb: Correct brace '{' position
Message-ID: <20150322075717.GA31758@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Move if brace to the if header line. Problem found using checkpatch.pl
ERROR: that open brace { should be on the previous line

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Changes in v2:
        -Fix commit message 

 drivers/staging/sm750fb/ddk750_chip.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index a1672c8..03d96c0 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -191,8 +191,7 @@ void setMasterClock(unsigned int frequency)
 	if (getChipType() == SM750LE)
 		return;
 #endif
-	if (frequency != 0)
-    {
+	if (frequency != 0) {
         /* Set the frequency to the maximum frequency that the SM750 engine can
            run, which is about 190 MHz. */
         if (frequency > MHz(190))
-- 
1.9.1


