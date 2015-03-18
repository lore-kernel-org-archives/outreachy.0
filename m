X-GM-THRID: 9022009769984
X-Received: by 10.236.105.137 with SMTP id k9mr75332809yhg.14.1426696245291;
        Wed, 18 Mar 2015 09:30:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.128.234 with SMTP id nr10ls328804obb.66.gmail; Wed, 18 Mar
 2015 09:30:45 -0700 (PDT)
X-Received: by 10.182.18.102 with SMTP id v6mr80130605obd.11.1426696245015;
        Wed, 18 Mar 2015 09:30:45 -0700 (PDT)
Return-Path: <somyaanand214@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id gb13si3195200pac.2.2015.03.18.09.30.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Mar 2015 09:30:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mail=somyaanand214@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x231.google.com with SMTP id cy3so47061920pad.3
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Mar 2015 09:30:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=knYN9Ro/synzlG0STC/C/Q1bEqX6PF75Y2YnJijAOWM=;
        b=M75vLJLNPW0YsbPr6YmeR70IBwm+I8u1XSfYjkbQtVsHlyLMZKHVjgh7Kg8kwW06rk
         f26HzuAjpxF0loMnNlhc5eoKelKlf5s+ihyJXHU7V99LaH0VUS6H2IPG2Hh4BrNagole
         iU48+WB/I6wPPHiGUbLCrHLDweHnuNx9yIaIJ4iAGUaCCBuMbcUqX/wOk2vXXs33/N0n
         f1Wye2sf/VXwyXHzbQ33z0zUBSI7Bf6sX5O2odjxCZ4Oh9f/LBD7GcdloqwgNZkrzJgH
         sZwhFjSf+isqqtnkNsWfF9AJOw2HuD9sWDcch8s/Fso6DJhDxoBf/N+pyq4PsXjRinI4
         H0pQ==
X-Received: by 10.70.34.129 with SMTP id z1mr85464358pdi.113.1426696244837;
        Wed, 18 Mar 2015 09:30:44 -0700 (PDT)
Return-Path: <somyaanand214@gmail.com>
Received: from localhost.localdomain ([182.66.40.42])
        by mx.google.com with ESMTPSA id fk15sm28340781pdb.19.2015.03.18.09.30.40
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 18 Mar 2015 09:30:44 -0700 (PDT)
From: Somya Anand <somyaanand214@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Somya Anand <somyaanand214@gmail.com>
Subject: [PATCH] Staging: comedi: Avoid bitwise OR operator with zero valued variable
Date: Wed, 18 Mar 2015 22:00:29 +0530
Message-Id: <1426696229-25453-1-git-send-email-somyaanand214@gmail.com>
X-Mailer: git-send-email 1.9.1

Zero ORed with any expression is equal to that expression itself. So, it
is redundant to do OR with a variable whose value is 0.

This patch identifies the issue and simplify the code by using expression x
itself instead of 0 | x where ever it is possible. While doing so, checks has
been made that the variable is not further assigned some non zero value or
there is no for or while loop. This change is done via following coccinelle script

@@
expression x,e,e1;
statement S;
@@

if (x == 0) {
  <... when != x = e1
       when != while(...) S
       when != for(...;...;...) S
(
-  x |= e;
+  x = e;
|
-  x | e
+  e
)
 ...>
}

Signed-off-by: Somya Anand <somyaanand214@gmail.com>
---
 drivers/staging/comedi/drivers/amplc_pci230.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/comedi/drivers/amplc_pci230.c b/drivers/staging/comedi/drivers/amplc_pci230.c
index 2dd794d..330bc46 100644
--- a/drivers/staging/comedi/drivers/amplc_pci230.c
+++ b/drivers/staging/comedi/drivers/amplc_pci230.c
@@ -1108,7 +1108,7 @@ static bool pci230_handle_ao_fifo(struct comedi_device *dev,
 		/* Check for FIFO underrun. */
 		if (dacstat & PCI230P2_DAC_FIFO_UNDERRUN_LATCHED) {
 			dev_err(dev->class_dev, "AO FIFO underrun\n");
-			events |= COMEDI_CB_OVERFLOW | COMEDI_CB_ERROR;
+			events = COMEDI_CB_OVERFLOW | COMEDI_CB_ERROR;
 		}
 		/*
 		 * Check for buffer underrun if FIFO less than half full
@@ -1118,7 +1118,7 @@ static bool pci230_handle_ao_fifo(struct comedi_device *dev,
 		if (num_scans == 0 &&
 		    (dacstat & PCI230P2_DAC_FIFO_HALF) == 0) {
 			dev_err(dev->class_dev, "AO buffer underrun\n");
-			events |= COMEDI_CB_OVERFLOW | COMEDI_CB_ERROR;
+			events = COMEDI_CB_OVERFLOW | COMEDI_CB_ERROR;
 		}
 	}
 	if (events == 0) {
-- 
1.9.1


