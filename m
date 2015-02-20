X-GM-THRID: 1229525614592
X-Received: by 10.194.161.194 with SMTP id xu2mr1192785wjb.1.1424431506180;
        Fri, 20 Feb 2015 03:25:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.7.100 with SMTP id i4ls218135laa.106.gmail; Fri, 20 Feb
 2015 03:25:05 -0800 (PST)
X-Received: by 10.152.5.3 with SMTP id o3mr1199889lao.6.1424431505667;
        Fri, 20 Feb 2015 03:25:05 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from mail-wi0-x22b.google.com (mail-wi0-x22b.google.com. [2a00:1450:400c:c05::22b])
        by gmr-mx.google.com with ESMTPS id ta1si83888wic.1.2015.02.20.03.25.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 03:25:05 -0800 (PST)
Received-SPF: pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) client-ip=2a00:1450:400c:c05::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) smtp.mail=yeliztaneroglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-f171.google.com with SMTP id hi2so2241789wib.4
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 03:25:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=muG3t7o+DD+6fsqsUSzSHdUJbZzkdoyKiR0uXMmTLh0=;
        b=j3UFke/v8psgwuUw25dIlIYI1oL7GfZiF8hqiBDUgEgE+ueAmllOMWhXqPAE3zY0XO
         R8tfLqyw/lKpd7w0zxhm3qbdkM0NxXcFNmh/N1Fze86lbhxP4/NdQYVThi+OSv98iHVS
         B74BflRhKOb7KKn571dN+2MagL+ETREd4idpoxfoNhgSURezEtHkp90hPsNGbOBfHG31
         7MYtKNw94WptFDAT1/ffj15ue48BOTRvwJTUWgAgcFNVM4OkLYYhu/r2hKa6zzekndKu
         DpR11jwJEp4P5Do/yvsZwJFMi4Gs9JX6gdYHTW6xi04WDY7OdKWzIirySqKiC/CcOjS1
         qx+Q==
X-Received: by 10.180.198.44 with SMTP id iz12mr22986663wic.36.1424431505537;
        Fri, 20 Feb 2015 03:25:05 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from localhost.localdomain ([78.187.192.150])
        by mx.google.com with ESMTPSA id f1sm1968920wij.2.2015.02.20.03.25.04
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 20 Feb 2015 03:25:04 -0800 (PST)
From: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
Subject: [PATCH] Staging: dgnc: Remove space before tab
Date: Fri, 20 Feb 2015 13:25:02 +0200
Message-Id: <1424431502-4155-1-git-send-email-yeliztaneroglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

This patch fixes the checkpatch.pl warning:
WARNING: "please, no space before tabs"

Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
---
 drivers/staging/dgnc/dgnc_mgmt.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/dgnc/dgnc_mgmt.c b/drivers/staging/dgnc/dgnc_mgmt.c
index 31e9f45..ee821da 100644
--- a/drivers/staging/dgnc/dgnc_mgmt.c
+++ b/drivers/staging/dgnc/dgnc_mgmt.c
@@ -167,7 +167,8 @@ long dgnc_mgmt_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 		di.info_bdstate = dgnc_Board[brd]->dpastatus;
 		di.info_ioport = 0;
 		di.info_physaddr = (ulong) dgnc_Board[brd]->membase;
-		di.info_physsize = (ulong) dgnc_Board[brd]->membase - dgnc_Board[brd]->membase_end;
+		di.info_physsize = (ulong) dgnc_Board[brd]->membase
+			- dgnc_Board[brd]->membase_end;
 		if (dgnc_Board[brd]->state != BOARD_FAILED)
 			di.info_nports = dgnc_Board[brd]->nasync;
 		else
-- 
1.8.3.2


