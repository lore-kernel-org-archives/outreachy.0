X-GM-THRID: 6395138092490031104
X-Received: by 10.107.27.9 with SMTP id b9mr2557497iob.44.1488992967810;
        Wed, 08 Mar 2017 09:09:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.54.152 with SMTP id h24ls3875219otc.30.gmail; Wed, 08 Mar
 2017 09:09:27 -0800 (PST)
X-Received: by 10.129.160.83 with SMTP id x80mr3113963ywg.90.1488992967458;
        Wed, 08 Mar 2017 09:09:27 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id r66si692950pfb.7.2017.03.08.09.09.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Mar 2017 09:09:27 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id v190so4374667pfb.0
        for <outreachy-kernel@googlegroups.com>; Wed, 08 Mar 2017 09:09:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=yP39uD4F6ZEmgbD2+8BIuYtORPksFYmFcHW19cC8b4M=;
        b=sQDS8I2sW9yE4aqRxleSQ53phynG4T7o3SByh7w1dwFRT7ehQUGXUCps0fQEujEBu4
         4RK0Vfau4VOuT24JSmmdphF9NGOHkiSPRGQqeHI3S3uSFkM6uzJ+mhKSaiLj3LLRZK42
         wasZPap9tA5lmJj4YCZwou1SL1jOYnbFOpNhbE26PFVFlVHftBQ8rfkkq8JDTWzw8m/u
         i+dICW6k/bHqBSOCQ3xDdICLO+DBHhd+xJQTSUbgnr+RQ093xaMItuxikr120aOWL/GK
         LrmIZtqAj3Q63zqfHe+FNNaSNhA6BrO++c/6vLKpSDaP5+o30Pr5odwJTKsQ6mslnSb7
         +wLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=yP39uD4F6ZEmgbD2+8BIuYtORPksFYmFcHW19cC8b4M=;
        b=OJvD77QuphWTEsd0gmryYCJXNpRy0oyGhgWB/zc5YTHOh7JqBqhnSDQfRjSYXG8UC3
         hqG1CTJkIr0CeJu9ADDD3GQF7v+0lAzZraw38S00+NZMIJyA3TmxnsiOrudPUR7WHg3W
         Lwaji0iYNnbr+NB3xOOuoeimh+zbvayEV2zloxn5ge/EQNGCICCTFy9AoxKVGayAE+Gy
         1KEmvoIO0uyykJlCH8mtCqWv0SCSA9xDAwpDjyMIByPXGzPpqbkcH6yURNj+8DE/dLXc
         MzqL0l5POJJ1I3afT48DdfkQXziarvM9jAIM9DAeQRpQQzPgmK5x9WtDbDpyGIy+xBPp
         RyHQ==
X-Gm-Message-State: AMke39nl0OxATBkO9QaAtY6tLEwnuKytGZgXDSE62V2vCoS8NhGAfaQ0xIEXaJAQzVnAvw==
X-Received: by 10.84.206.37 with SMTP id f34mr10361894ple.175.1488992967231;
        Wed, 08 Mar 2017 09:09:27 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id 78sm7300860pfm.122.2017.03.08.09.09.24
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 08 Mar 2017 09:09:26 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: swarren@wwwdotorg.org,
	lee@kernel.org,
	eric@anholt.net,
	gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH v3] staging: greybus: Remove unneeded header file
Date: Wed,  8 Mar 2017 22:37:03 +0530
Message-Id: <1488992823-19206-1-git-send-email-gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

module.h contains a call to moduleparam.h making the call to it
redundant and useless.

@ includesmodule @
@@

 #include <linux/module.h>

@ depends on includesmodule @
@@

- #include <linux/moduleparam.h>

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
Changes in v3:
	- Added missing line to the script.
Changes in v2:
        - Tried adding the missing line to the script.
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


