X-GM-THRID: 6665770369024
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,4ed54408e97fa8e1,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.198.34 with SMTP id iz2mr661257lbc.22.1425497982159;
        Wed, 04 Mar 2015 11:39:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.19.66 with SMTP id c2ls199661wie.1.canary; Wed, 04 Mar
 2015 11:39:41 -0800 (PST)
X-Received: by 10.194.239.41 with SMTP id vp9mr957467wjc.5.1425497981843;
        Wed, 04 Mar 2015 11:39:41 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-we0-x22f.google.com (mail-we0-x22f.google.com. [2a00:1450:400c:c03::22f])
        by gmr-mx.google.com with ESMTPS id gj20si132231wic.1.2015.03.04.11.39.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Mar 2015 11:39:41 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::22f as permitted sender) client-ip=2a00:1450:400c:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::22f as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x22f.google.com with SMTP id q59so11572019wes.3
        for <outreachy-kernel@googlegroups.com>; Wed, 04 Mar 2015 11:39:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=lDCG3Exldg/rePw45poXaGtY8v2PesrAeidn7AuUupo=;
        b=vAS8yg37MasKOr1q3ZPK7C7OOaTqmf/VikZrSRK68gyzPp1qRGTSf+m1AYQLO5kr2s
         Po6reV0AtuUK+4aW1WLEhkmFOh4rGRBC1jb/Zo9td7lKN/IhofqeIfV/14A+MnK9UTq+
         +JuzueumB+ERU+F9cM2kYj15j0bSi8KFWt0vTNy+2HbM4/MlD9NOZ9Y8QFSBv27RO6To
         4lWMMExeCp7G5Q90MEC6SX0sxJv6Dq0lVm9kt1W/ZGnqfwfbWj4DNYby5m2BHxz+Mmdk
         wEUHrPnOsv2W5U8zvFTDq5sX9Q1RB9ZQqwO1otyzx3aWVHWXDHAHbj3PM5yl8mBRlDCV
         QJ9A==
X-Received: by 10.194.94.164 with SMTP id dd4mr11804560wjb.56.1425497981750;
        Wed, 04 Mar 2015 11:39:41 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.54.175])
        by mx.google.com with ESMTPSA id dx11sm7294666wjb.23.2015.03.04.11.39.37
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Mar 2015 11:39:40 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id C442D62672; Wed,  4 Mar 2015 22:39:31 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH] Staging: comedi: remove redundant bitwise OR assignment
Date: Wed,  4 Mar 2015 22:38:24 +0300
Message-Id: <1425497904-13815-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1

No need to combine variable with value of 0 with other expressions using "|", for "0 | x = x".
eg. if (x == 0)  x |= e;
same as: if (x == 0) x = e;
Issue found using coccinelle.

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/staging/comedi/drivers/amplc_pci230.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/comedi/drivers/amplc_pci230.c b/drivers/staging/comedi/drivers/amplc_pci230.c
index a977156..7930438 100644
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
@@ -1163,7 +1163,7 @@ static bool pci230_handle_ao_fifo(struct comedi_device *dev,
 		dacstat = inw(devpriv->daqio + PCI230_DACCON);
 		if (dacstat & PCI230P2_DAC_FIFO_UNDERRUN_LATCHED) {
 			dev_err(dev->class_dev, "AO FIFO underrun\n");
-			events |= COMEDI_CB_OVERFLOW | COMEDI_CB_ERROR;
+			events = COMEDI_CB_OVERFLOW | COMEDI_CB_ERROR;
 		}
 	}
 	async->events |= events;
-- 
1.9.1


