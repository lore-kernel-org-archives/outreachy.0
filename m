X-GM-THRID: 9571546431488
X-Received: by 10.50.43.170 with SMTP id x10mr6974636igl.2.1427011411362;
        Sun, 22 Mar 2015 01:03:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.41.66 with SMTP id d2ls1028232igl.29.canary; Sun, 22 Mar
 2015 01:03:31 -0700 (PDT)
X-Received: by 10.42.153.135 with SMTP id m7mr13446990icw.4.1427011411092;
        Sun, 22 Mar 2015 01:03:31 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22e.google.com (mail-pa0-x22e.google.com. [2607:f8b0:400e:c03::22e])
        by gmr-mx.google.com with ESMTPS id ni4si1394999pdb.2.2015.03.22.01.03.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Mar 2015 01:03:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) client-ip=2607:f8b0:400e:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) smtp.mail=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pagj4 with SMTP id j4so65630463pag.2
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Mar 2015 01:03:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=YB0O/AHtuXcM+NfUtiyFx+AgpQsJZen6i3T6BEGXPJQ=;
        b=Ow9LRypHQLEpM3VObZhatl1JnsBMcWCIjgI4Wq1dQDjOfGFjhZbLj/928o8LAXfD4i
         UI3Hmx40etW9vCV6rIuoBDvpWBO5prO/UrGrIn9mcc1sht8qp6FWrp0S5VRQCm1ek0t/
         Fry0Zp2FT4DimiLLh0HmQ7ZHRe9nLMe+rD9JpEG+eZxxd00InDiVABp1lMCB6TQEyb70
         nbalrQRLc3OPv5AuQpn3nSEAfCX5VFFBuPolOZfJirfkEVbRS99aE9M1QqDT/nsJblSn
         iF7nOaJ5k/41vXODbbK9GpgnCQJdjWVBMK6FzLQW3NVLpr6gNddrpX1kCi2be2n6l44d
         XGxg==
X-Received: by 10.68.195.6 with SMTP id ia6mr10701009pbc.55.1427011410963;
        Sun, 22 Mar 2015 01:03:30 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.249.51])
        by mx.google.com with ESMTPSA id mt11sm1141909pbc.20.2015.03.22.01.03.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sun, 22 Mar 2015 01:03:30 -0700 (PDT)
Date: Sun, 22 Mar 2015 13:33:26 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 3/5] Staging: sm750fb: fix switch-case
Message-ID: <20150322080326.GA31814@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove indentation in switch code. Problem foudn using checkpatch.pl
ERROR: switch and case should be at the same indent

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Changes in v2:
        -Fix commit message

 drivers/staging/sm750fb/ddk750_chip.c | 30 +++++++++++++++---------------
 1 file changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index 5020280..0b6baae 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -154,21 +154,21 @@ void setMemoryClock(unsigned int frequency)
 
 	/* Set the corresponding divisor in the register. */
 	ulReg = PEEK32(CURRENT_GATE);
-	switch(divisor) {
-            default:
-            case 1:
-                ulReg = FIELD_SET(ulReg, CURRENT_GATE, M2XCLK, DIV_1);
-                break;
-            case 2:
-                ulReg = FIELD_SET(ulReg, CURRENT_GATE, M2XCLK, DIV_2);
-                break;
-            case 3:
-                ulReg = FIELD_SET(ulReg, CURRENT_GATE, M2XCLK, DIV_3);
-                break;
-            case 4:
-                ulReg = FIELD_SET(ulReg, CURRENT_GATE, M2XCLK, DIV_4);
-                break;
-        }
+	switch (divisor) {
+	default:
+	case 1:
+		ulReg = FIELD_SET(ulReg, CURRENT_GATE, M2XCLK, DIV_1);
+		break;
+	case 2:
+		ulReg = FIELD_SET(ulReg, CURRENT_GATE, M2XCLK, DIV_2);
+		break;
+	case 3:
+		ulReg = FIELD_SET(ulReg, CURRENT_GATE, M2XCLK, DIV_3);
+		break;
+	case 4:
+		ulReg = FIELD_SET(ulReg, CURRENT_GATE, M2XCLK, DIV_4);
+		break;
+	}
 
         setCurrentGate(ulReg);
     }
-- 
1.9.1


