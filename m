X-GM-THRID: 9425045684224
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,e31c13411a119aab,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.66.237.140 with SMTP id vc12mr95898603pac.44.1426958107431;
        Sat, 21 Mar 2015 10:15:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.3.65 with SMTP id a1ls811263iga.10.canary; Sat, 21 Mar 2015
 10:15:07 -0700 (PDT)
X-Received: by 10.67.8.40 with SMTP id dh8mr91489515pad.1.1426958107012;
        Sat, 21 Mar 2015 10:15:07 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pd0-x22c.google.com (mail-pd0-x22c.google.com. [2607:f8b0:400e:c02::22c])
        by gmr-mx.google.com with ESMTPS id pj7si232791pbb.2.2015.03.21.10.15.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Mar 2015 10:15:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c02::22c as permitted sender) client-ip=2607:f8b0:400e:c02::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c02::22c as permitted sender) smtp.mail=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x22c.google.com with SMTP id cz9so139830378pdb.3
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Mar 2015 10:15:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=TOhNI8tWhvl4z6Zjywwhdru/r1+ktL6yCANha3zjo7w=;
        b=pxSnfUacdmCD9qHSGQizLP+Ccl/vYweJbLGLkBGZll1mu0lfFWYeBGdO2Gb5pgDC4o
         1Jdo+TzajQKTGwb1gw+uk02qhhU7Ukt7CJZ4U+XB5OsKvx3M7Re0Dj0AjNNTSSpY5eYo
         cjA6wmru0s6vDmnIfpufkcl8qES+tC/z5+e+CVmRnN/oYXKmi8XzgQ3ACNOY1WbpTojN
         IGnT50I7fRljfWRHEFzq+vt9hIEcxI63A4mYmdsqPXllOPkyfMj+ReU9THumTjYODLiW
         S+R8ZmZQ5Oi6mJyVNMcBZ0zf9D2H7D6EHY0JFTIq+WpDL9Y7MADqXhBZm0G0fZ93qxkk
         QLEA==
X-Received: by 10.66.97.7 with SMTP id dw7mr196723487pab.56.1426958106914;
        Sat, 21 Mar 2015 10:15:06 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.209.90])
        by mx.google.com with ESMTPSA id qo4sm12128269pab.33.2015.03.21.10.15.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sat, 21 Mar 2015 10:15:06 -0700 (PDT)
Date: Sat, 21 Mar 2015 22:45:02 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] sm750fb: Fix C99 comment and if-else braces
Message-ID: <20150321171502.GA27122@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

The edits have been made to fix C99 Comment and properly indent
the if-else statements with the braces.

Also, to use tabs instead of spaces.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/sm750fb/ddk750_chip.c | 35 ++++++++++++++---------------------
 1 file changed, 14 insertions(+), 21 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index 33add64..1e6b474 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -17,38 +17,31 @@ logical_chip_type_t getChipType(void)
 	char physicalRev;
 	logical_chip_type_t chip;
 
-	physicalID = devId750;//either 0x718 or 0x750
+	physicalID = devId750; /* either 0x718 or 0x750 */
 	physicalRev = revId750;
 
-    if (physicalID == 0x718)
-    {
-        chip = SM718;
-    }
-    else if (physicalID == 0x750)
-    {
-        chip = SM750;
+	if (physicalID == 0x718) {
+		chip = SM718;
+	} else if (physicalID == 0x750) {
+		chip = SM750;
 		/* SM750 and SM750LE are different in their revision ID only. */
-		if (physicalRev == SM750LE_REVISION_ID){
+		if (physicalRev == SM750LE_REVISION_ID)
 			chip = SM750LE;
-		}
-    }
-    else
-    {
-        chip = SM_UNKNOWN;
-    }
+	} else {
+		chip = SM_UNKNOWN;
+	}
 
 	return chip;
 }
 
-
 inline unsigned int twoToPowerOfx(unsigned long x)
 {
-    unsigned long i;
-    unsigned long result = 1;
+	unsigned long i;
+	unsigned long result = 1;
 
-    for (i=1; i<=x; i++)
-        result *= 2;
-    return result;
+	for (i = 1; i <= x; i++)
+		result *= 2;
+	return result;
 }
 
 inline unsigned int calcPLL(pll_value_t *pPLL)
-- 
1.9.1


