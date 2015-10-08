X-GM-THRID: 6203360253861429248
X-Received: by 10.140.235.131 with SMTP id g125mr7520327qhc.4.1444332495653;
        Thu, 08 Oct 2015 12:28:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.12.194 with SMTP id 63ls643398iom.103.gmail; Thu, 08 Oct
 2015 12:28:15 -0700 (PDT)
X-Received: by 10.50.225.102 with SMTP id rj6mr4469981igc.9.1444332495381;
        Thu, 08 Oct 2015 12:28:15 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id el2si5801756pbb.0.2015.10.08.12.28.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Oct 2015 12:28:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by padhy16 with SMTP id hy16so62825686pad.1
        for <outreachy-kernel@googlegroups.com>; Thu, 08 Oct 2015 12:28:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=gNxFlJrmZbkItqHUzbvkJ9fGZ8QqJBlnRE4GtGLvt0Y=;
        b=C8cI0E085VK7JxPl6pEW01TQj5VsE+LOAVk1bfsP0auw6SFrWx6PYQYNoxMfHtzkdF
         /zzcikP+y3nG4kcJBae39iQhn2dvZvnMlbv0eGo+dCB/MVEnnJ+Mji4Vn4tEy2/bY954
         GJZBduiCjHzdLBw0A7fWJzycj4giiBRfGrvBnDTiqoU/YFQZT4yKaMuu6YGNezhFPmno
         4K4enLuS4IZH+Aw6Q7R2hglGugHH79TaT7Oipj9RAlX/We8B0pIoUipuCVmfKcRxyLRo
         0QN/VUQ/7NBRyj7dMxhSVEiOGJioLdM8ZYEoU9gmX+YLLax6yV2b/TaiGhqHnI18pjdA
         XAJQ==
X-Received: by 10.69.10.133 with SMTP id ea5mr9790219pbd.2.1444332495212;
        Thu, 08 Oct 2015 12:28:15 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.203.20])
        by smtp.gmail.com with ESMTPSA id l16sm47001025pbq.22.2015.10.08.12.28.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Thu, 08 Oct 2015 12:28:12 -0700 (PDT)
Date: Fri, 9 Oct 2015 00:58:09 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/3] staging: sm750fb: Remove space after cast
Message-ID: <82b6a37d332b54b9b0b5ab6f4b637ed44fc85470.1444332001.git.amitoj1606@gmail.com>
References: <cover.1444332001.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1444332001.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove unnecessary space after cast. Problem found using checkpatch.pl
CHECK: No space is necessary after a cast

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/sm750fb/ddk750_chip.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index 270d10b..e797b5b 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -133,7 +133,7 @@ static void setMemoryClock(unsigned int frequency)
 			frequency = MHz(336);
 
 		/* Calculate the divisor */
-		divisor = (unsigned int) roundedDiv(getChipClock(), frequency);
+		divisor = (unsigned int)roundedDiv(getChipClock(), frequency);
 
 		/* Set the corresponding divisor in the register. */
 		ulReg = PEEK32(CURRENT_GATE);
@@ -180,7 +180,7 @@ static void setMasterClock(unsigned int frequency)
 			frequency = MHz(190);
 
 		/* Calculate the divisor */
-		divisor = (unsigned int) roundedDiv(getChipClock(), frequency);
+		divisor = (unsigned int)roundedDiv(getChipClock(), frequency);
 
 		/* Set the corresponding divisor in the register. */
 		ulReg = PEEK32(CURRENT_GATE);
-- 
1.9.1


