X-GM-THRID: 10397500309504
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,6a06eb6a651084c5
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.231.199 with SMTP id ti7mr44190726obc.7.1427782103257;
        Mon, 30 Mar 2015 23:08:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.171.230 with SMTP id ax6ls1246674igc.19.gmail; Mon, 30 Mar
 2015 23:08:23 -0700 (PDT)
X-Received: by 10.43.107.79 with SMTP id dx15mr59729529icc.6.1427782103065;
        Mon, 30 Mar 2015 23:08:23 -0700 (PDT)
Return-Path: <1213charlie@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id iw3si1410022pbd.1.2015.03.30.23.08.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Mar 2015 23:08:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of 1213charlie@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of 1213charlie@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mail=1213charlie@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by patj18 with SMTP id j18so9595453pat.2
        for <outreachy-kernel@googlegroups.com>; Mon, 30 Mar 2015 23:08:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=l6VlIg53ziPNjGdO09mqzcNYppg38buVyvis7W7SUAQ=;
        b=jznenMUDO4t8flCIYNzao4zpbqqK7E5nBWZbsOTlGt/AKY9DTorDIKlDwzkgGEYUsU
         velah8zpWeyrmgOxaWEuCY8WmIYQjK1gjCbFasSrtORQCG7t3Xgi+TrJykOaMkQ6S3pK
         xf021YSt4a066SkKBzv9QcRjJXU54DZoV8XWpjMP0YXR/NOQv1bzqr/hQ4P7MJCb8OlP
         7Z9smJSN8TiLzn61pYdMrDj+D8eOsqA9XY2je+ZiugigwKU4cyQxAPcQsAQTr0IGgPGn
         3pcer2DUgSRD9J0gfSWkikFDZB5xo9F5C7IDS05mDZVYV75+Pc+hHCSSYN8O9HNod09u
         xA1w==
X-Received: by 10.70.35.130 with SMTP id h2mr65452238pdj.28.1427782102909;
        Mon, 30 Mar 2015 23:08:22 -0700 (PDT)
Return-Path: <1213charlie@gmail.com>
Received: from ThinkPad ([2001:250:4402:228:90e9:2717:61c3:1105])
        by mx.google.com with ESMTPSA id iv3sm12596857pbb.32.2015.03.30.23.08.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 30 Mar 2015 23:08:21 -0700 (PDT)
Date: Tue, 31 Mar 2015 14:08:13 +0800
From: Charlie Wong Super <1213charlie@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATH v3] Staging: comedi: addi_apci_1564: Delete whitespace
Message-ID: <20150331060813.GA23522@ThinkPad>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Fix the checkpatch.pl WARNING: line over 80 characters

Signed-off-by: Charlie Wong Super <1213charlie@gmail.com>
---
Changes in v2:
	edit the commit message, make it clear!
Changes in v3:
	about the commit and patch style problem!
	
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


