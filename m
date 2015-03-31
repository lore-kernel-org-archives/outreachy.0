X-GM-THRID: 10535493959680
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,88d40c3dbd42b212,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.68.173.97 with SMTP id bj1mr15496261pbc.8.1427831407340;
        Tue, 31 Mar 2015 12:50:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.96.67 with SMTP id j61ls2994427qge.67.gmail; Tue, 31 Mar
 2015 12:50:07 -0700 (PDT)
X-Received: by 10.52.24.108 with SMTP id t12mr45669787vdf.6.1427831407126;
        Tue, 31 Mar 2015 12:50:07 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id oc12si1648138pdb.1.2015.03.31.12.50.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 31 Mar 2015 12:50:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mail=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22b.google.com with SMTP id j18so29045032pat.2
        for <outreachy-kernel@googlegroups.com>; Tue, 31 Mar 2015 12:50:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=T+d+NxY+cdvE3LBsYo33uV8sOet5+qWumYXmBrUbisQ=;
        b=KTlr3O5DbQ3+F1jKnzzZxidzgOlbF7p0++OPb7TjLhK6MfXP6+1y7pRdHRqBcMrNzS
         Z5ZdJqNQimGHG6cdy48QsxzpIAWfBYDMHvDjEGu5GntnZWNE4Cj88AvIWcXCGwAKBdUt
         5zh0w9CnkmoKZ3Xww4NIKcjTPA0BYwjrRocnWLKM6vAL/Wx5c6uJaSj7sljULZlIjLiC
         aSJ/cvZVHcpaBx4CNUwk33IrKDz7k2+d47nSwQ5j+CEmcbeREOqUg+1KEd/LTA2uWQje
         BSZGI0OzB9mJnmB0Khz8cKrdD3XcSo5+COlxTe1pxK4AU4h3mkiGyCiADaU1G3kuEh3N
         z8sA==
X-Received: by 10.68.248.39 with SMTP id yj7mr71283387pbc.58.1427831406970;
        Tue, 31 Mar 2015 12:50:06 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.171.82])
        by mx.google.com with ESMTPSA id jy9sm14764710pbc.31.2015.03.31.12.50.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Tue, 31 Mar 2015 12:50:06 -0700 (PDT)
Date: Wed, 1 Apr 2015 01:20:03 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] Staging: rtl8712: Fix zero-testing pointer typed value
Message-ID: <20150331195003.GA30918@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Removes variable comparison with 0 by using !. Done using following
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
 drivers/staging/rtl8712/rtl8712_cmd.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_cmd.c b/drivers/staging/rtl8712/rtl8712_cmd.c
index 007f0a3..26971b5 100644
--- a/drivers/staging/rtl8712/rtl8712_cmd.c
+++ b/drivers/staging/rtl8712/rtl8712_cmd.c
@@ -91,7 +91,7 @@ static void query_fw_rx_phy_status(struct _adapter *padapter)
 			pollingcnts--;
 			msleep(20);
 		}
-		if (pollingcnts != 0)
+		if (pollingcnts)
 			val32 = r8712_read32(padapter, IOCMD_DATA_REG);
 		else /* time out */
 			val32 = 0;
@@ -289,12 +289,12 @@ u8 r8712_fw_cmd(struct _adapter *pAdapter, u32 cmd)
 
 	r8712_write32(pAdapter, IOCMD_CTRL_REG, cmd);
 	msleep(100);
-	while ((0 != r8712_read32(pAdapter, IOCMD_CTRL_REG)) &&
+	while ((r8712_read32(pAdapter, IOCMD_CTRL_REG)) &&
 	       (pollingcnts > 0)) {
 		pollingcnts--;
 		msleep(20);
 	}
-	if (pollingcnts == 0)
+	if (!pollingcnts)
 		return false;
 	return true;
 }
@@ -346,10 +346,10 @@ _next:
 			pdesc->txdw0 |= cpu_to_le32((wr_sz-TXDESC_SIZE) &
 						     0x0000ffff);
 			if (pdvobj->ishighspeed) {
-				if ((wr_sz % 512) == 0)
+				if (!wr_sz % 512)
 					blnPending = 1;
 			} else {
-				if ((wr_sz % 64) == 0)
+				if (!wr_sz % 64)
 					blnPending = 1;
 			}
 			if (blnPending) /* 32 bytes for TX Desc - 8 offset */
-- 
1.9.1


