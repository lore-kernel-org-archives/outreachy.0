X-GM-THRID: 6200961771427069952
X-Received: by 10.107.31.209 with SMTP id f200mr12104062iof.14.1443773920345;
        Fri, 02 Oct 2015 01:18:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.17.147 with SMTP id 19ls1683693qgd.85.gmail; Fri, 02 Oct
 2015 01:18:39 -0700 (PDT)
X-Received: by 10.129.80.133 with SMTP id e127mr7848512ywb.51.1443773919294;
        Fri, 02 Oct 2015 01:18:39 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id el2si1515037pbb.0.2015.10.02.01.18.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2015 01:18:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x231.google.com with SMTP id lk4so100101193pab.3
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Oct 2015 01:18:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=AVquOQyVjYsEPEYxXFbkrwOaxo6OpMWt03izW1AmHyw=;
        b=aawKbsCzh5PIkhvVVByywRbbPaQY/pEBL2DKnXKg6PjD9hK5Ba/M5INH6NXghqqYhY
         0Z+D6dWL1vXoBqk8wgSnYi2XU4kKLKh36W30N8bMVp/U2vTwoDWSEWM2eWs4TjlAwvkh
         dOr0Fl1cFPfrCAvy7N2INxNRTUBXp3JRrWi0nkMmNTggmTvLHyxdr59EF9RmKEhJrVUR
         FTSv3fz5Zvc5yBDAAhzYHEFL2LOwCn84xSJlMHdsjDLmSp2xRXNr8/jBS5SoWEA5xOiA
         17LD/Ssrs1abX/HfJz6817uLcYcUvzBzi/Ilf+DdWworJoYLBr58M9PPaKnbxVKkmn7W
         wrkg==
X-Received: by 10.68.219.169 with SMTP id pp9mr18760377pbc.115.1443773919154;
        Fri, 02 Oct 2015 01:18:39 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id ey3sm10746420pbd.28.2015.10.02.01.18.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 02 Oct 2015 01:18:37 -0700 (PDT)
Date: Fri, 2 Oct 2015 13:48:28 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: board: Removed unnecessary header file
Message-ID: <20151002081827.GA56279@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Fixed the problem with previous version by removing the unnecessary
header file that was added in previous version.

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/board/board.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/board/board.c b/drivers/staging/board/board.c
index 8d0ac82..edbc590 100644
--- a/drivers/staging/board/board.c
+++ b/drivers/staging/board/board.c
@@ -19,8 +19,6 @@
 #include <linux/of_irq.h>
 #include <linux/platform_device.h>
 #include <linux/pm_domain.h>
-#include <asm/prom.h>
-
 #include "board.h"
 
 static struct device_node *irqc_node __initdata;
-- 
2.1.0


