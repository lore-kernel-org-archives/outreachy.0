X-GM-THRID: 10440153235456
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,d0a324f464b87ff3
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.44.199 with SMTP id g7mr36941724obm.11.1427781387204;
        Mon, 30 Mar 2015 22:56:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.138.69 with SMTP id qo5ls1190871igb.31.canary; Mon, 30 Mar
 2015 22:56:27 -0700 (PDT)
X-Received: by 10.70.130.67 with SMTP id oc3mr36132512pdb.5.1427781387020;
        Mon, 30 Mar 2015 22:56:27 -0700 (PDT)
Return-Path: <1213charlie@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id l3si1409702pdo.0.2015.03.30.22.56.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Mar 2015 22:56:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of 1213charlie@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of 1213charlie@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mail=1213charlie@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id j18so9306163pat.2
        for <outreachy-kernel@googlegroups.com>; Mon, 30 Mar 2015 22:56:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=bEcaS/mo3lfE/ig6e8pbd9+MjR0NkuawW68f+qJeeDU=;
        b=hLSlzAr08rEtb/YGuS9yAwmfSFitSqkePfFl/4TKOuuVpzzQVc31SjYD73f+3mCtm6
         hVI5JhfzH2zdO/CzDx3soAnXoQO6DhbcU3SNE9EQkK4HUgyKlD+Ycpjc6NUzZgdTuUZq
         VxFMGV2+Ar5K9E/lC6AOVJnq+/j/rDW110TKCLK5ZM8DfplIIWGU9MNpsshH0Sit05za
         O1VpF82CH8WyJm/ugxaKGVLBERew8ERnLzqgOp+ewwB6czJNaSiSTHJyJybHYvSVFF/5
         CX+fCmDJCVaFAxFsJiB+fPGdfGBtRzivcVKygJ4k7/lfcKDki5N4JPHp3lOfByiy7PAT
         i5Zw==
X-Received: by 10.68.102.228 with SMTP id fr4mr64056068pbb.87.1427781386848;
        Mon, 30 Mar 2015 22:56:26 -0700 (PDT)
Return-Path: <1213charlie@gmail.com>
Received: from ThinkPad ([2001:250:4402:228:90e9:2717:61c3:1105])
        by mx.google.com with ESMTPSA id c2sm12544422pbu.73.2015.03.30.22.56.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 30 Mar 2015 22:56:25 -0700 (PDT)
Date: Tue, 31 Mar 2015 13:56:17 +0800
From: Charlie Wong Super <1213charlie@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: comedi: addi_apci_1564: Delete Whitespace
Message-ID: <20150331055617.GA19463@ThinkPad>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Fix the checkpatch.pl WARNING: line over 80 characters

Signed-off-by: Charlie Wong Super <1213charlie@gmail.com>	
---
Changes in v2:
	1) edit the commit message, make it clear!

 drivers/staging/comedi/drivers/addi_apci_1564.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/comedi/drivers/addi_apci_1564.c b/drivers/staging/comedi/drivers/addi_apci_1564.c
index c481c48..dd335e8 100644
--- a/drivers/staging/comedi/drivers/addi_apci_1564.c
+++ b/drivers/staging/comedi/drivers/addi_apci_1564.c
@@ -106,12 +106,12 @@
 #define APCI1564_COUNTER(x)			((x) * 0x20)
 
 struct apci1564_private {
-	unsigned long eeprom;		/* base address of EEPROM register */
-	unsigned long timer;		/* base address of 12-bit timer */
-	unsigned long counters;		/* base address of 32-bit counters */
-	unsigned int mode1;		/* riding-edge/high level channels */
-	unsigned int mode2;		/* falling-edge/low level channels */
-	unsigned int ctrl;		/* interrupt mode OR (edge) . AND (level) */
+	unsigned long eeprom;		/*base address of EEPROM register*/
+	unsigned long timer;		/*base address of 12-bit timer*/
+	unsigned long counters;		/*base address of 32-bit counters*/
+	unsigned int mode1;		/*riding-edge/high level channels*/
+	unsigned int mode2;		/*falling-edge/low level channels*/
+	unsigned int ctrl;		/*interrupt mode OR (edge).AND(level)*/
 	struct task_struct *tsk_current;
 };
 
-- 
1.9.1


