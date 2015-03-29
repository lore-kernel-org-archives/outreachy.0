X-GM-THRID: 10263819452416
X-Received: by 10.43.16.70 with SMTP id px6mr54082552icb.28.1427619902749;
        Sun, 29 Mar 2015 02:05:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.29.134 with SMTP id b6ls1839927qgb.93.gmail; Sun, 29 Mar
 2015 02:05:02 -0700 (PDT)
X-Received: by 10.236.41.73 with SMTP id g49mr35451443yhb.57.1427619902562;
        Sun, 29 Mar 2015 02:05:02 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id pc4si746455pac.0.2015.03.29.02.05.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 29 Mar 2015 02:05:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mail=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22b.google.com with SMTP id gg7so8961952pac.0
        for <outreachy-kernel@googlegroups.com>; Sun, 29 Mar 2015 02:05:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=46j0XBBf3PLOb+kEnwn4JqHoNW8rfuYFFHbGf5XuYDE=;
        b=pKZ1LN1XkxuGCW9wH5t+sXPQg/L1qNbJg4drD0c7//VJyl1RV61EFU51METd1+H0ob
         fW1KY+OCJF6EuscbTLTf8pWmINF6fGoCF20TWh4QRlpYEe+ir7+YyjMVJxXMVM1Db/mj
         +3lzyAQW+L1QsHp0wfhCcs3RL5cU+BqKLDe41vYJ8/yXBLW4umrcU3VTaFZ3aqtejImD
         vLfG1rlDeh7GRIuIZ/8LpKx41gLsXMpQZqok1XTYlG7IA6EVkrhcfR8JvTrk3A6EUyVD
         udsyupC888M/Nl1pyAe3PViMF8gfVf9LRQdPB/zRIZzvKtGgvC898Ul3x2N/Xm7QzyZu
         psqg==
X-Received: by 10.70.21.227 with SMTP id y3mr19774251pde.101.1427619902408;
        Sun, 29 Mar 2015 02:05:02 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.173.150])
        by mx.google.com with ESMTPSA id pf3sm6928025pdb.3.2015.03.29.02.05.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sun, 29 Mar 2015 02:05:01 -0700 (PDT)
Date: Sun, 29 Mar 2015 14:34:56 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/4] Staging: sm750fb: Fix else statement position
Message-ID: <20150329090456.GA19865@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Fixed position of else statement after brace '}' by placing it in the
same line. Problem found using checkpatch.pl
ERROR: else should follow close brace '}'

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/sm750fb/ddk750_chip.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index b306d32..5f2f424 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -22,15 +22,13 @@ logical_chip_type_t getChipType(void)
 
 	if (physicalID == 0x718) {
 		chip = SM718;
-	}
-	else if (physicalID == 0x750) {
+	} else if (physicalID == 0x750) {
 		chip = SM750;
 		/* SM750 and SM750LE are different in their revision ID only. */
 		if (physicalRev == SM750LE_REVISION_ID){
 			chip = SM750LE;
 		}
-	}
-	else {
+	} else {
 		chip = SM_UNKNOWN;
 	}
 
-- 
1.9.1


