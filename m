X-GM-THRID: 6395138092490031104
X-Received: by 10.99.135.193 with SMTP id i184mr2648851pge.29.1488984827161;
        Wed, 08 Mar 2017 06:53:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.19.71 with SMTP id b68ls1060086ioj.22.gmail; Wed, 08 Mar
 2017 06:53:46 -0800 (PST)
X-Received: by 10.99.137.193 with SMTP id v184mr3119242pgd.69.1488984826439;
        Wed, 08 Mar 2017 06:53:46 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id u12si623388pfd.3.2017.03.08.06.53.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Mar 2017 06:53:46 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id 187so3643259pgb.2
        for <outreachy-kernel@googlegroups.com>; Wed, 08 Mar 2017 06:53:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=R0zlqwNJaG/BdF8/8xFCI3yrZW/itP/LwAM+N/Roc2g=;
        b=Z+oU6t9Gy/ktGNBpM7A4I2zzn9R6eVfBPQrBwD8Ngyf4B46duKPigjIYGU/e5PNXMG
         IdsfDpGWI8D7T2EpeyNUk5tMx0ZMkTROOY1VWg5Z+PM1QZZeNOTZfQqcAZcFCBRYBjHr
         5UjFKNTIKvfFwhqPZL9Zyj9iM0Z8kgdI+3D6ZoL2wrW6gsxRC7z9YcI/V6dEClSq/Bpv
         T7on6jVFndQXRDMvH6sE3FmUGd/7MGKG8Z2JfvtWVdvhNtQM6+/ZGM/wTTdg5lTH+eBG
         t0CnCLyzTTGUYu4hzbquGcZCNQoter6e6UIladsrb4xui4/QGMLXiwW4j92/PeyVKqIV
         J7Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=R0zlqwNJaG/BdF8/8xFCI3yrZW/itP/LwAM+N/Roc2g=;
        b=r5V+z6IAYYPKkVz+NvbD4Z4Jb96j53cHEj0B2hZFWb+kpAfcv4La/GOBcamrtuqH67
         nFne8PIf9VxLloIZV7Lz56YVQRTQi0UzxE/0rzviW3hkUfTOdhRlKZ78sQXM/UUFsWW2
         7n705DznMe27tQpwcaIyroDLf2CsMF3MXmRHH3YhnmcHq19ulwNhfJMyyKVZ97gi6rFq
         zYc7XNc6FhAwfbLwEV2kg/Js61bXCJutCFU5wMfs2MKJa5ZCZS2f3ZA30KtqqKdndF0Q
         n9EnRzpQzdnQk4Y3zDof5EPUoiLmEYnKfcyDWy00I2NVOt+8JJTntB58k0RIoddbt7Jm
         eaPA==
X-Gm-Message-State: AMke39kYGl+UTe0LHpuL4m5l5tG38rDyhGoV0XQjvZRKQ1crZKiovTh6wzFhhbCR3p7PlA==
X-Received: by 10.99.52.79 with SMTP id b76mr7354321pga.131.1488984826083;
        Wed, 08 Mar 2017 06:53:46 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id 73sm6840743pfh.56.2017.03.08.06.53.42
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 08 Mar 2017 06:53:45 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: johan@kernel.org,
	elder@kernel.org,
	gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH v2] staging: greybus: Remove unneeded header file
Date: Wed,  8 Mar 2017 20:21:22 +0530
Message-Id: <1488984682-9321-1-git-send-email-gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

module.h contains a call to moduleparam.h making the call to it
redundant and useless.

The Coccinelle semantic patch used to make this change is as follows:
@ includesmodule @
@@

@ depends on includesmodule @
@@

- #include <linux/moduleparam.h>

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
Changes in v2:
	- Added the missing line to the script.
---
 drivers/staging/greybus/gbphy.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/greybus/gbphy.c b/drivers/staging/greybus/gbphy.c
index 64a1eb9..603de6f 100644
--- a/drivers/staging/greybus/gbphy.c
+++ b/drivers/staging/greybus/gbphy.c
@@ -11,7 +11,6 @@
 
 #include <linux/types.h>
 #include <linux/module.h>
-#include <linux/moduleparam.h>
 #include <linux/kernel.h>
 #include <linux/slab.h>
 #include <linux/device.h>
-- 
2.7.4


