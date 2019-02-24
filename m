X-GM-THRID: 6661704407651975168
X-Received: by 2002:a5d:4d87:: with SMTP id b7mr683543wru.21.1551048925293;
        Sun, 24 Feb 2019 14:55:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:ce0a:: with SMTP id e10ls1339597wmg.1.canary-gmail; Sun,
 24 Feb 2019 14:55:24 -0800 (PST)
X-Google-Smtp-Source: AHgI3Ibr6q12NdnKCGWXEMDy8E7UeMPB3tJ+qyepuJI2k7GixL9K3f9ImYPOK7ixUKtlpkoHxxmd
X-Received: by 2002:a1c:ef19:: with SMTP id n25mr864358wmh.20.1551048924353;
        Sun, 24 Feb 2019 14:55:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551048924; cv=none;
        d=google.com; s=arc-20160816;
        b=LOr3L8V5UWlZThIWCD/a/VuV5fiX6Q3rk+OAjcHVZpa/pmlJ+lSGf2uMpa5iU+BLFD
         wL+3jGkOGJlEr9oniadhJ2zreBCW5AG50PgA1vf4MijMF0AgNB4HE7X3WSfh/+Bk4uek
         cj/wuBAIs8LkQd0gl8a6ZWqkCEt15kCilpaVFpav9Jx45OS9fjxa1KTBT77fX/Dj2YTj
         gs2HIbNKYMkuF9wDrUqb9SzzOS1Tt22EtBx9t9I+MV4FoILsoHYLTwnXR6WqIUzGEwgN
         +fEV2ccRNByWYSYKx209igYpA+4sly2ow+6HQ3yoedUZKsLDMkS3As23oI/P5EOQIjFt
         uV6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=QiBLHA7bvPif3gYivhQVYjKH6ROMgTnOE/saIdHFh2c=;
        b=S6Q6g8iv2/limHMqV0OTWaUj2H+0/DvdWg8INK2SM8tNM3XxnI+jPwT8Vk4F/u10vU
         D/l9K1WlEk/ttcKKUZRUO+Jy2ZYo+yZkXCp/X/oQ4PbFLz6I/412Q/ZQMJ7mZb0AOxkM
         Gcd/hU5e+X4z9BxU4DfCRapY9CtmQaPOHkBWzRqdfPtzTf5rN8Hv9HBRXx5t0JfgdOVA
         o/Z6gdqOI/yoUsPcvNpHKljgeaFrbIzwP/vc63oNoTv5ggH2SYrjD3sBwiCZNNkPeYWy
         aDl7itI/gnX3de5JxhNJSAWhdq+YFB4j1nV7f4qazNAXd1y1ofm0zKqOF0w7ZOVukFlj
         W0iQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="lU+jZ/q8";
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::333 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com. [2a00:1450:4864:20::333])
        by gmr-mx.google.com with ESMTPS id 109si291850wrb.0.2019.02.24.14.55.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 24 Feb 2019 14:55:24 -0800 (PST)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::333 as permitted sender) client-ip=2a00:1450:4864:20::333;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="lU+jZ/q8";
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::333 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x333.google.com with SMTP id x7so6362095wmj.0
        for <outreachy-kernel@googlegroups.com>; Sun, 24 Feb 2019 14:55:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=QiBLHA7bvPif3gYivhQVYjKH6ROMgTnOE/saIdHFh2c=;
        b=lU+jZ/q8UnKvr+JQ2JDztMnb/k+IFot1D3kD+XLgNaDtGBRr8xVORxuirrOtvbX5Xf
         7JyXQfPEJLjb1AidbhRxo3cM4QUzZIL3SQxvEGp2tjHFUNHy8YxpZvSNq0Jri9vKK7kf
         NsvWg3VcutaXRow7BXd0iv2wObsQmspQf4qAMlDyCVWldw4PvTaPw79bxYxo3Z/VvtiW
         yesZ63w5uTVp1HvYzU7mPxmP7kcCrjIbpwSpiTK0ExmYlFfckgI7UQXu8/4im/JphLdQ
         AUrpaBnjO64Rj53hMlBDuxnrsDFx+yPw2QaARMnf/bVl3fyib+hCLIs9AIcl9b9xFKSA
         aP/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=QiBLHA7bvPif3gYivhQVYjKH6ROMgTnOE/saIdHFh2c=;
        b=CqHJJlA7gNFXrop9iffeImEj4wSYKDmMl0j7J3hAq9CBpm4m+nSm+sIB1Ntit6lJiF
         NJzajrBAJz0MOPH3Csz9E+yqHVd/M7RDk+/TsGNR+VYy2B5fmCb5shloJQKH3hdCPntR
         Xof8BU1mlp4FWPxPOeJSQGS3HuWDOKhc7CvNYorbjv4eDJFYcpmbfki2u/8cezyf2KxU
         RvRjg+IjotwBOWCxcKz8dujvCyMVDVvbsDxkE/gHM5d87n7MLr+2fA2cHk2ZtMLgG4Jj
         OKb6K74z8m7GwwBrh/8HCV5h7WfWYzuslmfeoTcMwt+LW6O29jrXRi6CZe/bPNqbn28s
         KVBw==
X-Gm-Message-State: AHQUAuajEfMZCMgn3nNVSiAooYW4e4BR2SmH8tJfndio/KGc9akDd4XR
	uiLMjZncOAfS/Y0HOJA+GA==
X-Received: by 2002:a1c:4155:: with SMTP id o82mr8439751wma.122.1551048923856;
        Sun, 24 Feb 2019 14:55:23 -0800 (PST)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjatsu.thecloud.net ([94.119.64.26])
        by smtp.gmail.com with ESMTPSA id c65sm8490227wma.24.2019.02.24.14.55.23
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 24 Feb 2019 14:55:23 -0800 (PST)
From: Jules Irenge <jbi.octave@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Jules Irenge <jbi.octave@gmail.com>
Subject: [PATCH] staging: mt7621-eth: adds SPDX GPL-2.0 license identifier to fix checkpatch.pl warning
Date: Sun, 24 Feb 2019 22:55:12 +0000
Message-Id: <20190224225512.24332-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/mt7621-eth/ethtool.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/mt7621-eth/ethtool.h b/drivers/staging/mt7621-eth/ethtool.h
index 40b4cf011660..d0e97ae0d82e 100644
--- a/drivers/staging/mt7621-eth/ethtool.h
+++ b/drivers/staging/mt7621-eth/ethtool.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*   This program is free software; you can redistribute it and/or modify
  *   it under the terms of the GNU General Public License as published by
  *   the Free Software Foundation; version 2 of the License
-- 
2.20.1


