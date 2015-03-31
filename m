X-GM-THRID: 10440153235456
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,d0a324f464b87ff3,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.202.205 with SMTP id d53mr41447081yho.53.1427780685445;
        Mon, 30 Mar 2015 22:44:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.33.14 with SMTP id h14ls284174ioh.51.gmail; Mon, 30 Mar
 2015 22:44:45 -0700 (PDT)
X-Received: by 10.66.229.36 with SMTP id sn4mr43138434pac.32.1427780685176;
        Mon, 30 Mar 2015 22:44:45 -0700 (PDT)
Return-Path: <1213charlie@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id dv5si1041404pbb.0.2015.03.30.22.44.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Mar 2015 22:44:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of 1213charlie@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of 1213charlie@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mail=1213charlie@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x232.google.com with SMTP id cy3so9001416pad.3
        for <outreachy-kernel@googlegroups.com>; Mon, 30 Mar 2015 22:44:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=ohxfiaI4/3nPTbeHc7Hl3ineeg6Vq+gEZ5Dw55ghj8g=;
        b=D/MXAOLwVVTQivxcXsM+uklyYZPA0W2e9tPtce0Hvetv5RV+WsKKrtGVP3Dgs8peSx
         NgYO1wEe8to5Lv/Nw2k1xiHeyWdCiSGSGNcBc7/bYpvcVCUwMbISPBI6cfCsaLZ08icc
         4Y0cn5gl/PI7Cl52kfqvEC5pof4zNH3h4hmfmETJ5iN81yRNpEdQNshIdoANjqcH9H2s
         WW7Jjtmbym4GxrgbZlS/S6k5ZnNlK6NcaNK6Xzaz9HOTyhcyOY33KKfvfjXRPUKvUuO4
         FPHBBW3aoRk5IoG93bMP0D39i7V4pI4bbH5FqQOtmmtsmJZ82Y+SA4YLD/I8PrvQtxdO
         adGw==
X-Received: by 10.68.221.226 with SMTP id qh2mr65645988pbc.1.1427780685022;
        Mon, 30 Mar 2015 22:44:45 -0700 (PDT)
Return-Path: <1213charlie@gmail.com>
Received: from ThinkPad ([2001:250:4402:228:90e9:2717:61c3:1105])
        by mx.google.com with ESMTPSA id fm3sm11900069pab.29.2015.03.30.22.44.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 30 Mar 2015 22:44:43 -0700 (PDT)
Date: Tue, 31 Mar 2015 13:44:35 +0800
From: Charlie Wong Super <1213charlie@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: comedi: addi_apci_1564: Delete Whitespace
Message-ID: <20150331054435.GA15859@ThinkPad>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Fix the checkpatch.pl WARNING: line over 80 characters

Signed-off-by: Charlie Wong Super <1213charlie@gmail.com>
---
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


