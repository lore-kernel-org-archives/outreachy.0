X-GM-THRID: 10397500309504
X-Received: by 10.70.130.67 with SMTP id oc3mr48820119pdb.5.1427969429931;
        Thu, 02 Apr 2015 03:10:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.30.135 with SMTP id e129ls565515ioe.3.gmail; Thu, 02 Apr
 2015 03:10:29 -0700 (PDT)
X-Received: by 10.50.178.175 with SMTP id cz15mr14530017igc.5.1427969429553;
        Thu, 02 Apr 2015 03:10:29 -0700 (PDT)
Return-Path: <1213charlie@gmail.com>
Received: from mail-pd0-x242.google.com (mail-pd0-x242.google.com. [2607:f8b0:400e:c02::242])
        by gmr-mx.google.com with ESMTPS id dv5si555243pbb.0.2015.04.02.03.10.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Apr 2015 03:10:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of 1213charlie@gmail.com designates 2607:f8b0:400e:c02::242 as permitted sender) client-ip=2607:f8b0:400e:c02::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of 1213charlie@gmail.com designates 2607:f8b0:400e:c02::242 as permitted sender) smtp.mail=1213charlie@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x242.google.com with SMTP id g10so14603464pdj.2
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Apr 2015 03:10:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=WQ0MTAD1gumkqdOVTSFXcnxvTiloORaVpNm5j5wVeRY=;
        b=RFLFyJhYGlbbNaKIIUPfyMz4ueOvdvc6wNQq2IJcc1Wu4Md7Kghscuk/soEpBRg+hI
         eHykeY5i3Nt2p5oxzzAT/rufkLPkBx5tkdk7IeCtekjnDVP4E1fAVXwU/W4sr0kH6P78
         wxVSPEas3LNzk3vIv4VjArw5Zb56DxUvrXcCoSSiLS0O+4ysxxclLsxaquLBOiCRGeSf
         6+/21QX0UPUYIC1PrCQx1YKfVl4ReTUEuNAauObEAYeAowvbI0PklDNcVI7u+m32KrRY
         r1CEfb4wOwntv0HnTGq2xzl2jOn8bmf9mfpUa+oGf/+84NKpJZ3NoVSRMXyfwaHkmW7+
         W9fg==
X-Received: by 10.68.222.231 with SMTP id qp7mr84916695pbc.7.1427969429441;
        Thu, 02 Apr 2015 03:10:29 -0700 (PDT)
Return-Path: <1213charlie@gmail.com>
Received: from localhost.localdomain ([2001:250:4402:228:cd6f:7693:85c:9c8c])
        by mx.google.com with ESMTPSA id c16sm3393980pdl.61.2015.04.02.03.10.20
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 02 Apr 2015 03:10:25 -0700 (PDT)
From: Charlie WONG Super <1213charlie@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Charlie Wong Super <1213charlie@gmail.com>
Subject: [PATCH v4] Staging: comedi: addi_apci_1564: Delete a tap
Date: Thu,  2 Apr 2015 18:10:04 +0800
Message-Id: <1427969404-10446-1-git-send-email-1213charlie@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <20150401153751.GB881@kroah.com>
References: <20150401153751.GB881@kroah.com>

From: Charlie Wong Super <1213charlie@gmail.com>

Fix the checkpatch.pl WARNING: line over 80 characters

Signed-off-by: Charlie Wong Super <1213charlie@gmail.com>
---
Changes in v2:
	-edit the commit message, make it clear
Changes in v3:
	-about the commit and patch style problem
Changes in v4:
	-delete a tap, keep the ' ' character before and after the * character

 drivers/staging/comedi/drivers/addi_apci_1564.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/comedi/drivers/addi_apci_1564.c b/drivers/staging/comedi/drivers/addi_apci_1564.c
index c481c48..c1d0021 100644
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
+	unsigned long eeprom;	/* base address of EEPROM register */
+	unsigned long timer;	/* base address of 12-bit timer */
+	unsigned long counters;	/* base address of 32-bit counters */
+	unsigned int mode1;	/* riding-edge/high level channels */
+	unsigned int mode2;	/* falling-edge/low level channels */
+	unsigned int ctrl;	/* interrupt mode OR (edge) . AND (level) */
 	struct task_struct *tsk_current;
 };
 
-- 
1.9.1


