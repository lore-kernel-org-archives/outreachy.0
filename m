X-GM-THRID: 6393699904957448192
X-Received: by 10.157.9.238 with SMTP id 43mr3270441otz.140.1488649272694;
        Sat, 04 Mar 2017 09:41:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.59.33 with SMTP id z30ls12003629otb.29.gmail; Sat, 04 Mar
 2017 09:41:12 -0800 (PST)
X-Received: by 10.157.11.109 with SMTP id p42mr3499657otd.14.1488649272397;
        Sat, 04 Mar 2017 09:41:12 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id c123si599206pfa.4.2017.03.04.09.41.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 09:41:12 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id v190so2137877pfb.0
        for <outreachy-kernel@googlegroups.com>; Sat, 04 Mar 2017 09:41:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=pVGyC8JIVH+aQuqlhV7i89WN/xgLUvYiUdFZ0OayKjM=;
        b=p4YGIzdGx4piguTDDW81PzK8veWpSFiXiWfQl2eQlI4MckWH8Z/K8G1DImju+8lmQB
         wW5xww7Q7HZErwgaumsJCYLQ77SIxkywRdrXfUpIpouHtrOVs8IpyALwlvbhORqsLDBq
         f7oBPQ4XboINjwx+UuFWGX73hKGtxt4wEe2IO4Uo7Cl3YXXTaUUsEbz8SaHKNua6ufxj
         x05jVIaLFhodP1ltrBg9T4Ij2/cHGeI8qA3pVNaR1MdapYh0jhvanDhB1b4YB/Jd9iCg
         AQjVo++ym2KXmP5m7GaESxEpLNJpbta+ll5rwwuuR0N+nYIrSc9r4jKwv8jzHER7nERb
         OtIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=pVGyC8JIVH+aQuqlhV7i89WN/xgLUvYiUdFZ0OayKjM=;
        b=Tb10g9pCzrguGfxUhaOQeiCrU9DxZEpdf6p2ECMDVtS+bVmxQrorlhT1vN/8E/L7ZN
         YhUNIikJvT9oQDMIsaFZZ/zHMYRiDeND+dcl9ZJzp40wwYssw5Jnj+Usdz9Sv734BaQj
         5kij+bylfAno+eM1dBf7WvFenGjvfJiAtklxjFAhMxZmyqjU5uRpg3SME1V6pZQJ1T3G
         fRpWkrCKGjUfSvgDZovECi1QDB58XGXjl5kFvRI5ScGmv+mqYjqFwWod9BIRAttxXTtL
         YTcKVtBRMP1ebaczzNMhSSefFJI6G4fHAqiGfXgMnrNt16QcfrJPVH37Dx9ripqShGWs
         a7kQ==
X-Gm-Message-State: AMke39l3e1g2UFU7wWyv2K4kN+h/1MU90l+CRPkMdJeGI8kxH6uxHDGjadTbos32dID+Jw==
X-Received: by 10.99.94.195 with SMTP id s186mr10672031pgb.197.1488649272176;
        Sat, 04 Mar 2017 09:41:12 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id h25sm23566378pfk.119.2017.03.04.09.41.10
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 04 Mar 2017 09:41:11 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: abbotti@mev.co.uk
Cc: hsweeten@visionengravers.com,
	gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	johan@kernel.org,
	dtwlin@gmail.com,
	outreachy-kernel@googlegroups.com,
	greybus-dev@lists.linaro.org
Subject: [PATCH v1 2/3] staging: greybus: Replace "is is" with "is"
Date: Sat,  4 Mar 2017 23:11:00 +0530
Message-Id: <1488649261-10261-3-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1488649261-10261-1-git-send-email-singhalsimran0@gmail.com>
References: <1488649261-10261-1-git-send-email-singhalsimran0@gmail.com>

This patch replace "is is " with "is". The replacement couldn't be
automated because sometimes the first "is" was meant to be another
word.

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
Acked-by: Julia Lawall <julia.lawall@lip6.fr>
---
 drivers/staging/greybus/uart.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/greybus/uart.c b/drivers/staging/greybus/uart.c
index ab0dbf5..9188fe0 100644
--- a/drivers/staging/greybus/uart.c
+++ b/drivers/staging/greybus/uart.c
@@ -34,7 +34,7 @@
 #include "greybus.h"
 #include "gbphy.h"
 
-#define GB_NUM_MINORS	16	/* 16 is is more than enough */
+#define GB_NUM_MINORS	16	/* 16 is more than enough */
 #define GB_NAME		"ttyGB"
 
 #define GB_UART_WRITE_FIFO_SIZE		PAGE_SIZE
-- 
2.7.4


