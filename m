X-GM-THRID: 9536368803840
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,6ece57de8a59d603,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.52.186.7 with SMTP id fg7mr73482311vdc.0.1426997414041;
        Sat, 21 Mar 2015 21:10:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.129.214 with SMTP id l83ls1683756ioi.33.gmail; Sat, 21 Mar
 2015 21:10:13 -0700 (PDT)
X-Received: by 10.66.66.196 with SMTP id h4mr95925990pat.5.1426997413760;
        Sat, 21 Mar 2015 21:10:13 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pd0-x230.google.com (mail-pd0-x230.google.com. [2607:f8b0:400e:c02::230])
        by gmr-mx.google.com with ESMTPS id pc4si1374673pac.0.2015.03.21.21.10.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Mar 2015 21:10:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c02::230 as permitted sender) client-ip=2607:f8b0:400e:c02::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c02::230 as permitted sender) smtp.mail=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x230.google.com with SMTP id cz9so150046974pdb.3
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Mar 2015 21:10:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=CsqK7MRKpYoj+rBBEXlYfyFDwnBDNBuAd/VsIs64qSA=;
        b=k6UYDb09Admlhe8hp3BWmYxZWcLRrO7cecImBX/0c0QXdgIBgw0kZfrJpN+Vvlh9sz
         i2sRFVP9XXoPBS9OsfGWXDR85J1XMoxcQdJcjku6IcYswR9+yk7fTVUAtxJOPlgEBlF8
         IQv2LlTANe2Ox4TEjkxiE7g0bXumMCgFyjHzYDnrkR+vcwfrNub3bF9VAXANn1QLgtTw
         ZKSQt4/L2I3hwFUN91XyHuERJaEqLKovZS+KRNiPeroQ2WreePnpPgg7i148iZ0HN2Ga
         7qyEW7aIVyjOzli2cySdBB251CvaX70JHMnCa7oGWSjM6tRAsxXRoTj6xbxw2UHcA3VC
         k5mQ==
X-Received: by 10.68.227.195 with SMTP id sc3mr9419759pbc.64.1426997413638;
        Sat, 21 Mar 2015 21:10:13 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.249.51])
        by mx.google.com with ESMTPSA id ed5sm3275302pbd.19.2015.03.21.21.10.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sat, 21 Mar 2015 21:10:13 -0700 (PDT)
Date: Sun, 22 Mar 2015 09:40:08 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [Outreachy Kernel][PATCH 3/5] Staging: sm750fb: fix switch-case
Message-ID: <20150322041008.GA30118@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Fixes checkpatch.pl error by properly indenting code using tabs.
ERROR: switch and case should be at the same indent

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
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


