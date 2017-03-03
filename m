X-GM-THRID: 6393297831380123648
X-Received: by 10.157.33.197 with SMTP id s63mr1283825otb.85.1488555649402;
        Fri, 03 Mar 2017 07:40:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.53.6 with SMTP id o6ls10714872otc.47.gmail; Fri, 03 Mar
 2017 07:40:49 -0800 (PST)
X-Received: by 10.237.39.102 with SMTP id n93mr941404qtd.19.1488555649054;
        Fri, 03 Mar 2017 07:40:49 -0800 (PST)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id y90si97487pfa.6.2017.03.03.07.40.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 07:40:48 -0800 (PST)
Received-SPF: neutral (google.com: 2607:f8b0:400e:c00::243 is neither permitted nor denied by best guess record for domain of kdunne@mail.ccsf.edu) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@mail-ccsf-edu.20150623.gappssmtp.com;
       spf=neutral (google.com: 2607:f8b0:400e:c00::243 is neither permitted nor denied by best guess record for domain of kdunne@mail.ccsf.edu) smtp.mailfrom=kdunne@mail.ccsf.edu
Received: by mail-pf0-x243.google.com with SMTP id 67so5813253pfg.2
        for <outreachy-kernel@googlegroups.com>; Fri, 03 Mar 2017 07:40:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mail-ccsf-edu.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=+qgZWHC5gLuDagYKdQIWhhSUH8h3Qgcb5It6VatxL58=;
        b=tUQpSECaeASGN0k5Kbjl5UXrYPf6uzJx+YBSw+yggBaecaey6Qk8WTFvQo/JlAzGpC
         FTFgrt77KSOyuaHqIbZz5LLLoyeLemCL3v+b2p5vjalj8+8aeDaY6xuFcQPCl/z7xMBp
         Ukt1p/AxtWcv8uTly8MYsoSoEIGbFd3ELMh8MX6IW0PTIgMT9CyaAITFlibEhebsRH2P
         9DVXe6OLkuyiVUIyQEa9w7UFutf5uxSn6wrcfqDPys9OS2VewQd/oNJBOHnciLz5TTsS
         z5PpxYESFTpT6d2Xrbytvkli+wsl1w1/gM4qO9behDKXK6eLsv+0vvJhenfsn3w7d1Hg
         Sq4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=+qgZWHC5gLuDagYKdQIWhhSUH8h3Qgcb5It6VatxL58=;
        b=t+bFh144dw/ot8pMLp5MkfamrunymHD0u+7oL0wAVZ3a/jIcyCPDYanQAyyMxdVJat
         F21/+34wOzm8euSnUmLrpO6lQvkn2wsVgbz6chWar1rBJBLu+6EWShzXjViLfEDGi1cy
         8HE7BW6SVAdu1c6dSeSQun03lRidKCRyPOGh25uJAi3ZH1AJzlVdNyfNizMKBCOv1nrB
         arzE66hEbJ+v5vPxcA7u4BULIwvRZAYMCdD3jVoZJqJrOsNjprrsOxSZvZ2PmD4GcX+K
         zrkSQD8bsV/ofDUAityfVlsNib8ROBbUCGh8KWv3gGYheFM/0dpbFK25P5iXKIDMjn+O
         G8Cw==
X-Gm-Message-State: AMke39mw7GKiY9MBUuS682TIVHT0eLdY7GQ3+qdHeJC/9gBsRKwsHVB0Yxc++5vu9mqBfIw9
X-Received: by 10.99.101.67 with SMTP id z64mr4254369pgb.78.1488555648784;
        Fri, 03 Mar 2017 07:40:48 -0800 (PST)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from katie-Inspiron-5748 (c-67-188-119-183.hsd1.ca.comcast.net. [67.188.119.183])
        by smtp.gmail.com with ESMTPSA id 197sm24177247pfv.19.2017.03.03.07.40.48
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 03 Mar 2017 07:40:48 -0800 (PST)
Date: Fri, 3 Mar 2017 07:38:37 -0800
From: Katie Dunne <kdunne@mail.ccsf.edu>
To: outreachy-kernel@googlegroups.com
Cc: jic23@kernel.org, knaack.h@gmx.de, lars@metafoo.de, pmeerw@pmeerw.net,
	gregkh@linuxfoundation.org, linux-iio@vger.kernel.org
Subject: [PATCH v2 2/2] staging: iio: meter: ade7753: Clean up includes
Message-ID: <20170303153837.GC29234@katie-Inspiron-5748>
References: <cover.1488553341.git.kdunne@mail.ccsf.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488553341.git.kdunne@mail.ccsf.edu>
User-Agent: Mutt/1.5.24 (2015-08-30)

Alphabetize header files.

Signed-off-by: Katie Dunne <kdunne@mail.ccsf.edu>
---
 drivers/staging/iio/meter/ade7753.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/iio/meter/ade7753.c b/drivers/staging/iio/meter/ade7753.c
index 063ff27..dfd8b71 100644
--- a/drivers/staging/iio/meter/ade7753.c
+++ b/drivers/staging/iio/meter/ade7753.c
@@ -6,20 +6,19 @@
  * Licensed under the GPL-2 or later.
  */
 
-#include <linux/interrupt.h>
-#include <linux/irq.h>
 #include <linux/delay.h>
-#include <linux/mutex.h>
 #include <linux/device.h>
+#include <linux/interrupt.h>
+#include <linux/irq.h>
 #include <linux/kernel.h>
-#include <linux/spi/spi.h>
-#include <linux/slab.h>
-#include <linux/sysfs.h>
 #include <linux/list.h>
 #include <linux/module.h>
-
+#include <linux/mutex.h>
+#include <linux/slab.h>
+#include <linux/sysfs.h>
 #include <linux/iio/iio.h>
 #include <linux/iio/sysfs.h>
+#include <linux/spi/spi.h>
 #include "meter.h"
 
 #define ADE7753_WAVEFORM   0x01
-- 
2.7.4


