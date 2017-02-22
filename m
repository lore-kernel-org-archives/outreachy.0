X-GM-THRID: 6389636871256801280
X-Received: by 10.99.143.70 with SMTP id r6mr6161689pgn.5.1487754621880;
        Wed, 22 Feb 2017 01:10:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.14.81 with SMTP id n17ls433160otd.19.gmail; Wed, 22 Feb
 2017 01:10:21 -0800 (PST)
X-Received: by 10.129.159.11 with SMTP id w11mr2091125ywg.130.1487754621529;
        Wed, 22 Feb 2017 01:10:21 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id u12si135720pfd.3.2017.02.22.01.10.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Feb 2017 01:10:21 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 1so1383306pgz.2
        for <outreachy-kernel@googlegroups.com>; Wed, 22 Feb 2017 01:10:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Ohm/3gM0iP5m/QXyvQsv+Aa6ku8ul6r1cmwQGp+I664=;
        b=ei7ETdViQ4MJeHsJ7nsS+cGsquB3Dnm64U5MS0F44RGKpBd6bdMErV0+dRQy6JRRQN
         UjRNBKsO6YnZiC5wE4CCRQc4T5TA+nsKURVSSInL6n6gZ1Ds36GQ7rXGqaD9k23xkL9I
         c4xhXRmYVaAvKbPBWxMprEyi+l7A/ZdD7DfKQFpK0mKceyJFePQYOBkkhG1S0nO4R9WS
         WFvJmEtY7j8s1AzTlpU4vivDj3XHrZCXGkeViSREmcO4P4r9Zq/SmJ84p/pmu8ZuRnH2
         Dr1rs8n2bA31d1gs4MvgTPRbjpeR4iSomZVHjxup2hFdsqDkLi/v7OfPD54N4AP7VHYk
         iifA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Ohm/3gM0iP5m/QXyvQsv+Aa6ku8ul6r1cmwQGp+I664=;
        b=t0MQKEPXskKOd2rQRXcjuGpfLWRCRsuXYSmqUfW+cTaN0NgXGdiPrePlaJPFFX2Wea
         kcUVyprSSHnahaVFsP/H0dkZTWk+YHiezVrDfbdkAvfhBF+ABGEfW4CrtcMIttGxBpsa
         hQR7t5cY0+DIc7G2XM2qtHUtjy5fNSQo4WUqVz2i+UjHdM8xtgTCav1LTFXf258YFwxA
         7cfnimODPWfSyIY3ltUEF50DSoex/iiIRwOlqU3UkD63HJdaErrGfN7V+4LXK7BSRo9c
         e3vxQ+fYMxSJUbNiFghdXFUGXSH5iP1dHCZZRtkLJujs1AzPn2nDtODDuDOTeqJzfF5x
         vSdg==
X-Gm-Message-State: AMke39nD8/eTjQ9kJtEQ9x5KgzGtuCezgXSmAA/iAD2T6SNnL9+l0rfrbuLKf7ge0NJk2w==
X-Received: by 10.99.99.68 with SMTP id x65mr41095110pgb.126.1487754621280;
        Wed, 22 Feb 2017 01:10:21 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id a24sm2186155pfh.33.2017.02.22.01.10.18
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 22 Feb 2017 01:10:19 -0800 (PST)
Date: Wed, 22 Feb 2017 14:40:15 +0530
From: simran singhal <singhalsimran0@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v2 2/7] staging: most: Using macro DIV_ROUND_UP
Message-ID: <20170222091015.GA11058@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

The macro DIV_ROUND_UP performs the computation (((n) + (d) - 1) /(d)).
It clarifies the divisor calculations. This occurence was detected using
the coccinelle script:

@@
expression e1;
expression e2;
@@
(
- ((e1) + e2 - 1) / (e2)
+ DIV_ROUND_UP(e1,e2)
|
- ((e1) + (e2 - 1)) / (e2)
+ DIV_ROUND_UP(e1,e2)
)

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 
 v2:
   -Included kernel.h as DIV_ROUND_UP is defined in it,
    before it was giving compilation error.

 drivers/staging/most/hdm-dim2/dim2_hal.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/most/hdm-dim2/dim2_hal.c b/drivers/staging/most/hdm-dim2/dim2_hal.c
index 0b9816c..d604ec09 100644
--- a/drivers/staging/most/hdm-dim2/dim2_hal.c
+++ b/drivers/staging/most/hdm-dim2/dim2_hal.c
@@ -18,6 +18,7 @@
 #include "dim2_errors.h"
 #include "dim2_reg.h"
 #include <linux/stddef.h>
+#include <linux/kernel.h>
 
 /*
  * Size factor for isochronous DBR buffer.
@@ -49,7 +50,7 @@
 #define DBR_SIZE  (16 * 1024) /* specified by IP */
 #define DBR_BLOCK_SIZE  (DBR_SIZE / 32 / DBR_MAP_SIZE)
 
-#define ROUND_UP_TO(x, d)  (((x) + (d) - 1) / (d) * (d))
+#define ROUND_UP_TO(x, d)  (DIV_ROUND_UP(x, (d)) * (d))
 
 /* -------------------------------------------------------------------------- */
 /* generic helper functions and macros */
@@ -117,7 +118,7 @@ static int alloc_dbr(u16 size)
 		return DBR_SIZE; /* out of memory */
 
 	for (i = 0; i < DBR_MAP_SIZE; i++) {
-		u32 const blocks = (size + DBR_BLOCK_SIZE - 1) / DBR_BLOCK_SIZE;
+		u32 const blocks = DIV_ROUND_UP(size, DBR_BLOCK_SIZE);
 		u32 mask = ~((~(u32)0) << blocks);
 
 		do {
@@ -137,7 +138,7 @@ static int alloc_dbr(u16 size)
 static void free_dbr(int offs, int size)
 {
 	int block_idx = offs / DBR_BLOCK_SIZE;
-	u32 const blocks = (size + DBR_BLOCK_SIZE - 1) / DBR_BLOCK_SIZE;
+	u32 const blocks = DIV_ROUND_UP(size, DBR_BLOCK_SIZE);
 	u32 mask = ~((~(u32)0) << blocks);
 
 	mask <<= block_idx % 32;
-- 
2.7.4


