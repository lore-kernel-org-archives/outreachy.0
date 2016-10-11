X-GM-THRID: 6340281739033706496
X-Received: by 10.28.166.6 with SMTP id p6mr13117wme.7.1476211878844;
        Tue, 11 Oct 2016 11:51:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.31.81 with SMTP id f78ls18256wmf.11.gmail; Tue, 11 Oct 2016
 11:51:18 -0700 (PDT)
X-Received: by 10.194.126.69 with SMTP id mw5mr431468wjb.20.1476211878462;
        Tue, 11 Oct 2016 11:51:18 -0700 (PDT)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id r11si8356wmf.0.2016.10.11.11.51.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 11 Oct 2016 11:51:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=dilekuzulmez@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x243.google.com with SMTP id b80so167150wme.3
        for <outreachy-kernel@googlegroups.com>; Tue, 11 Oct 2016 11:51:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=+Hic4nRzUB/YIIFe9kDicP9OtdSAh1g+DgUZt/WPmIA=;
        b=XsBrLnLnrzodl5KzVoBVErleurX7KSQdDKw3rIEWBFaHt5LQ+i38nJJnoQP6C1gl92
         ge4z+8zAyuQ2TyV3m0LLpAkaoz2LX1gi4KbwQ62KaPeuOc34KpEYrErgL0gUinDwOblE
         2w6cGSCQvrinAPSXhATrIf85nBDuNEtm4vGZqqhuSlICs/g252qD5nkIhg4eXj0suMP6
         SuL+9Oi2ewjiZMKZas48mWmDrFZ4ARtmK0b+7AE7QyhTULwF0cILQv2LZzhXIMP7T0qq
         VCJP7YuWplrOKlXVun7Du5lrb1DMFPXzilEY60iKyHq0LvZ0UdusVnbapTXcK9K0eDI6
         s6ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=+Hic4nRzUB/YIIFe9kDicP9OtdSAh1g+DgUZt/WPmIA=;
        b=UjnYLeZvBwl/WOnXWJ97S6HXM7U1PCn9udpez5mpQDYltaJE8xM6YwsjViwQtSv9es
         FQweQVTsOniwEPcHa3dC9xxAa0qcqykE1KfACFKoy5oUvBMn7mu9B4+GOiWr5YHzCwMj
         tOzA+cq07uanHSj0SxG+p34FWoUgcYJqJ5eB705cZ49+dVbtxgQhdCk0SROLpMyHCGpD
         PjkodaLyLJZjyE1qZCpSDSglm1kiOTL3QxfDHHwT8fOMa7nn0WfHyUoOufkSnRBg1sq8
         3pXtXpc5IdDT2q+lIO/C+Xv3KJuQ77N3pK7RqSBA7olQaEDrgSsVo4bgXdswJAwtwedM
         Vujg==
X-Gm-Message-State: AA6/9RlZ0ZZVIw1ux1PtUoO0GggqCsBMYGP4VB2K4WLsP6q0reOZsmoWz15UMYegObpCPw==
X-Received: by 10.194.102.67 with SMTP id fm3mr6519961wjb.80.1476211878108;
        Tue, 11 Oct 2016 11:51:18 -0700 (PDT)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([88.236.251.249])
        by smtp.gmail.com with ESMTPSA id w73sm211081wmd.18.2016.10.11.11.51.16
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 11 Oct 2016 11:51:17 -0700 (PDT)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH] Staging: olpc_dcon: Add space around '|'
Date: Tue, 11 Oct 2016 21:51:10 +0300
Message-Id: <1476211870-10083-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

Add space around operator '|'. Problem found using checkpatch.pl
CHECK: spaces preferred around that '|' (ctx:VxV)

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 drivers/staging/olpc_dcon/olpc_dcon_xo_1_5.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/olpc_dcon/olpc_dcon_xo_1_5.c b/drivers/staging/olpc_dcon/olpc_dcon_xo_1_5.c
index 1e23ef1..a4f61b7 100644
--- a/drivers/staging/olpc_dcon/olpc_dcon_xo_1_5.c
+++ b/drivers/staging/olpc_dcon/olpc_dcon_xo_1_5.c
@@ -65,7 +65,7 @@ static int dcon_init_xo_1_5(struct dcon_priv *dcon)
 	dcon_clear_irq();
 
 	/* set   PMIO_Rx52[6] to enable SCI/SMI on gpio12 */
-	outb(inb(VX855_GPI_SCI_SMI)|BIT_GPIO12, VX855_GPI_SCI_SMI);
+	outb(inb(VX855_GPI_SCI_SMI) | BIT_GPIO12, VX855_GPI_SCI_SMI);
 
 	/* Determine the current state of DCONLOAD, likely set by firmware */
 	/* GPIO1 */
@@ -131,7 +131,7 @@ static void dcon_wiggle_xo_1_5(void)
 	udelay(5);
 
 	/* set   PMIO_Rx52[6] to enable SCI/SMI on gpio12 */
-	outb(inb(VX855_GPI_SCI_SMI)|BIT_GPIO12, VX855_GPI_SCI_SMI);
+	outb(inb(VX855_GPI_SCI_SMI) | BIT_GPIO12, VX855_GPI_SCI_SMI);
 }
 
 static void dcon_set_dconload_xo_1_5(int val)
-- 
1.9.1


