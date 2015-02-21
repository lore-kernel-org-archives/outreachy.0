X-GM-THRID: 2118621593600
X-Received: by 10.180.89.194 with SMTP id bq2mr404202wib.4.1424551255082;
        Sat, 21 Feb 2015 12:40:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.94.163 with SMTP id dd3ls314699wib.18.gmail; Sat, 21 Feb
 2015 12:40:54 -0800 (PST)
X-Received: by 10.180.101.101 with SMTP id ff5mr402254wib.5.1424551254952;
        Sat, 21 Feb 2015 12:40:54 -0800 (PST)
Return-Path: <gulsah.1004@gmail.com>
Received: from mail-wg0-x22c.google.com (mail-wg0-x22c.google.com. [2a00:1450:400c:c00::22c])
        by gmr-mx.google.com with ESMTPS id by11si589575wib.1.2015.02.21.12.40.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 12:40:54 -0800 (PST)
Received-SPF: pass (google.com: domain of gulsah.1004@gmail.com designates 2a00:1450:400c:c00::22c as permitted sender) client-ip=2a00:1450:400c:c00::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gulsah.1004@gmail.com designates 2a00:1450:400c:c00::22c as permitted sender) smtp.mail=gulsah.1004@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-f44.google.com with SMTP id k14so19045431wgh.3
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 12:40:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=vEuHgJMObIuBmTVgC7TAgFchD/OYOuEJGzXgTFs+Gf8=;
        b=bH4GNFx65Z2SGaae4j6q2fnKE7ErKsJfLYLAbrfzaIZClmu13n4rZi0Ujdgg7QOJCQ
         MR1BoDXfjw42SVxp0lhX5H7YZ9nz3ss3sKi+uqCoa7B+sBezV6NYB1t0jjqp28giY81l
         rT/99vDvuH97ctCN5eM9Ho6qoY8lD5pf634jKTvQHK7+mK5LytKgG8hZmDrkR9mKB210
         iGq/vADnIYclXDg1HPcSWk/Ixm4O/AtzyPimsio3kT/xnRxYMnpfO09GTctxCqJyJ3eh
         iqIMQrJZnTkffthPzTj01+PvIIBiQia9hR/iNDrr0Tu54Ugz5fN4FKwIPXsoD+4+7aQT
         xVvw==
X-Received: by 10.194.103.228 with SMTP id fz4mr7624206wjb.82.1424551254883;
        Sat, 21 Feb 2015 12:40:54 -0800 (PST)
Return-Path: <gulsah.1004@gmail.com>
Received: from diyorki.kykwifi.com ([81.213.40.143])
        by mx.google.com with ESMTPSA id gz3sm8416433wib.1.2015.02.21.12.40.52
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Feb 2015 12:40:54 -0800 (PST)
From: Gulsah Kose <gulsah.1004@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Gulsah Kose <gulsah.1004@gmail.com>
Subject: [PATCH 1/4] staging: arch: alpha: boot: Deleted unnecessary space.
Date: Sat, 21 Feb 2015 22:40:35 +0200
Message-Id: <33246c3b8b15cb8fda459c6d57ff1bdc39b09da9.1424551058.git.gulsah.1004@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1424551058.git.gulsah.1004@gmail.com>
References: <cover.1424551058.git.gulsah.1004@gmail.com>
In-Reply-To: <cover.1424551058.git.gulsah.1004@gmail.com>
References: <cover.1424551058.git.gulsah.1004@gmail.com>

This patch fixes "foo * bar" should be "foo *bar" checkpatch.pl error in bootp.c

Signed-off-by: Gulsah Kose <gulsah.1004@gmail.com>
---
 arch/alpha/boot/bootp.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/alpha/boot/bootp.c b/arch/alpha/boot/bootp.c
index 2a542a5..3ee529d 100644
--- a/arch/alpha/boot/bootp.c
+++ b/arch/alpha/boot/bootp.c
@@ -23,7 +23,7 @@
 #include "ksize.h"
 
 extern unsigned long switch_to_osf_pal(unsigned long nr,
-	struct pcb_struct * pcb_va, struct pcb_struct * pcb_pa,
+	struct pcb_struct *pcb_va, struct pcb_struct *pcb_pa,
 	unsigned long *vptb);
 
 extern void move_stack(unsigned long new_stack);
@@ -68,8 +68,8 @@ void
 pal_init(void)
 {
 	unsigned long i, rev;
-	struct percpu_struct * percpu;
-	struct pcb_struct * pcb_pa;
+	struct percpu_struct *percpu;
+	struct pcb_struct *pcb_pa;
 
 	/* Create the dummy PCB.  */
 	pcb_va->ksp = 0;
-- 
1.9.1


