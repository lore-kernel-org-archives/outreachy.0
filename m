X-GM-THRID: 10397500309504
X-Received: by 10.182.24.38 with SMTP id r6mr29641220obf.20.1427730021463;
        Mon, 30 Mar 2015 08:40:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.97.10 with SMTP id l10ls2245708qge.73.gmail; Mon, 30 Mar
 2015 08:40:21 -0700 (PDT)
X-Received: by 10.236.51.170 with SMTP id b30mr39507202yhc.34.1427730021219;
        Mon, 30 Mar 2015 08:40:21 -0700 (PDT)
Return-Path: <1213charlie@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id gu4si1138400pac.1.2015.03.30.08.40.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Mar 2015 08:40:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of 1213charlie@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of 1213charlie@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mail=1213charlie@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id tp5so4179596pac.1
        for <outreachy-kernel@googlegroups.com>; Mon, 30 Mar 2015 08:40:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=mCzWB5l3ieGa0+trwG9emIGGAIFDbhCTnWrGSTQ+sOA=;
        b=Sn64CyzkVbQ/b70Ffx9SP3h14e1aM2sl1EukRc25D0hmCw1Q+4Xx3YJdOi3GqRwDYp
         paruzZJGKnMqcI/wyBXmLJr2x8s2RXXJhrB2mhgKRQdFfWhAZk8ieX9SMYuFT8TMYQF7
         20vd0S4KTyqRHqNOq+NhKMFJvaztVULm8iWVRD5y3Kh+/2zxSFq9bIGcwUi3Gx27GmqR
         7dGCA4z+Ul3Gu/vt/s4DkXBDDIWUT8sQjX0dG9XZTJevrC7mmsergEgJ9MqFqcCEWq/1
         PgMkxliiMCktX7cLxdfoGwmZykH9wPyvtqON9MTXRyL5a8QlPk2NV/UvlesXkIzQ2wRp
         ViZw==
X-Received: by 10.66.248.40 with SMTP id yj8mr59754583pac.141.1427730021063;
        Mon, 30 Mar 2015 08:40:21 -0700 (PDT)
Return-Path: <1213charlie@gmail.com>
Received: from ThinkPad ([2001:250:4402:228:7c63:20b1:d91f:bd6f])
        by mx.google.com with ESMTPSA id fl4sm10431963pab.8.2015.03.30.08.40.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 30 Mar 2015 08:40:20 -0700 (PDT)
Date: Mon, 30 Mar 2015 23:40:11 +0800
From: Charlie Wong Super <1213charlie@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: comedi: addi_apci_1564: Delete whitespace
Message-ID: <20150330154011.GA11201@ThinkPad>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch fixes the checkpatch.pl warning:
WARNING: line over 80 characters
FILE: drivers/staging/comedi/drivers/addi_apci_1564.c:114:
+	unsigned int ctrl;		/* interrupt mode OR (edge) . AND (level) */

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


