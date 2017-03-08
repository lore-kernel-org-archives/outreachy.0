X-GM-THRID: 6395138092490031104
X-Received: by 10.99.95.210 with SMTP id t201mr3319511pgb.24.1488985109269;
        Wed, 08 Mar 2017 06:58:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.18.28 with SMTP id a28ls1103389ioj.21.gmail; Wed, 08 Mar
 2017 06:58:28 -0800 (PST)
X-Received: by 10.99.149.81 with SMTP id t17mr3330223pgn.62.1488985108481;
        Wed, 08 Mar 2017 06:58:28 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id a3si630991pfb.2.2017.03.08.06.58.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Mar 2017 06:58:28 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id 25so3659075pgy.3
        for <outreachy-kernel@googlegroups.com>; Wed, 08 Mar 2017 06:58:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=R0zlqwNJaG/BdF8/8xFCI3yrZW/itP/LwAM+N/Roc2g=;
        b=sICSuuButaqdfaTs/FvPFu2VG43/93xGZtL88/cVElKenw7lqqAgkukWFe44lRANZz
         g0Vk2q4YAK2A1/qe1kIqeuBQjMN+9ZKkC+nj7nUX/miY6zHbs9G0hYd1jufDP5ZICdBB
         EDvEzJV5x6pZeORmwRqLOBDuAvy3XS2nYRm9e+aSmUV8/rTRfnQtrquDlhv1Tdm3Chga
         V3Coj6gX3OdvRLUpR4KeaXbNqQhjjms4vuyuLLTuNCOVffFZatZXBiG9jY1oIDwIRNXp
         G6x0FAWo+CHMd9z35z8i0VVEFlyfQdiDd61pmbVPIiE1+CU/PIFqQxYMktLosJjj6q4y
         +BQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=R0zlqwNJaG/BdF8/8xFCI3yrZW/itP/LwAM+N/Roc2g=;
        b=ukjihiglAFmzN/kUTAT5b8W8Aci5ZCJjJixIflkrY570ivVDah54IOx5qg/F6VlDq+
         4Z3aH8B+RuyXQBcekGWLHwsdKZaxUbd8HSTxgJDrKaI51CVvq7//5abfivC8/XN8sAKh
         EWCN5nq7T3uALjnY6DCK8Dn8uNAWF8b5vyQJr67F99HIN7jwfArvJfTs49J0iRE2tfnR
         8jyW0SYBXWEsj8MkQL32Grn2eTpUj/rOQq6S338ptDpgCtB11MduW5DxGtlwIM38PUqa
         iBorkNHtkaa0e3O6VPh5h5IgBe/dM5lls3gMr4eQjzFVEEG/AvAS3Zo4Wp8RyXF7ik0i
         X88w==
X-Gm-Message-State: AMke39l3m+Nn3oz7UwhccEmpl2rBURp9O1z82DRvkuLFWJRoWOQws7b82VqJzWnRYHzCag==
X-Received: by 10.84.229.77 with SMTP id d13mr9285370pln.177.1488985108157;
        Wed, 08 Mar 2017 06:58:28 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id e70sm6841681pfh.84.2017.03.08.06.58.25
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 08 Mar 2017 06:58:27 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: johan@kernel.org,
	elder@kernel.org,
	gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH v2] staging: greybus: Remove unneeded header file
Date: Wed,  8 Mar 2017 20:26:03 +0530
Message-Id: <1488984963-9642-1-git-send-email-gs051095@gmail.com>
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


