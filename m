X-GM-THRID: 6252980000181452800
X-Received: by 10.25.23.105 with SMTP id n102mr1761595lfi.9.1455885358411;
        Fri, 19 Feb 2016 04:35:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.17.2 with SMTP id 2ls93589wmr.34.gmail; Fri, 19 Feb 2016
 04:35:57 -0800 (PST)
X-Received: by 10.28.47.211 with SMTP id v202mr1119984wmv.3.1455885357965;
        Fri, 19 Feb 2016 04:35:57 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-wm0-x22e.google.com (mail-wm0-x22e.google.com. [2a00:1450:400c:c09::22e])
        by gmr-mx.google.com with ESMTPS id s141si450712wmd.1.2016.02.19.04.35.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Feb 2016 04:35:57 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c09::22e as permitted sender) client-ip=2a00:1450:400c:c09::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c09::22e as permitted sender) smtp.mailfrom=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x22e.google.com with SMTP id a4so67951725wme.1
        for <outreachy-kernel@googlegroups.com>; Fri, 19 Feb 2016 04:35:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=7j+WjWzi3uvbecDeTD6RgmvjVwUv2Jn35QybBwBWhnc=;
        b=WTZ4oSnHp07b46fbnOEruNqnSvnx1QMubIcch9DhT9xq+xudkfCoNU6Z+GdSZHdlgq
         2q5MoGjq5revos8cRzZaY6Sl1ACuUyrbmCtIcRD3Stiv6hlTh9bTszFlu1tgWPXHCprx
         9Q7/QtrVDlCM833Q3PMeouBkn8MVteIf6tSd8Rbu6ZhAmmR6xdjqROabJdVMuaxsUv59
         PhAABkOFegaQF9EqRNzq/PF+mgCoaOB3oM7JETowXDKki2ylEJ/gZh/9ylO/n32L0k7B
         TjIyoXuv2TUJwWwT1GTH/wgHwxYr2SV6aOO9AEs3qpMPXy1pR/yL51vIxMEU/U1H/Czb
         KP+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=7j+WjWzi3uvbecDeTD6RgmvjVwUv2Jn35QybBwBWhnc=;
        b=c0wUDVAIyqMewtqFVG3+XkGEi4BvvZoAfceIdSM0iHN1MQFek35fpIftVPao96wc/D
         CCj5EKqSYeXTiF5hWoXRZcbahlWTCZmyEGqUp98+N4qpzTKQwjxPYx5VMscg+YdNmfDM
         nFNb+G31MDfpIg/qKqsqx2fSfzj2ZS9/XDmSPa44TIgqFc6RIhxlXh7xv/7WNP89p/pP
         s66DJPaA/+kUkrssDlHGn4VzkP6QuwzOPDYdMCiGlF8sD8xCIyKnG4m29gmj1eWLsxv8
         IfMW+yORa4I0ftV9e8J1e1vcFEyEbMH8bjHXa1lm068XzB6rKhDm7A9L4TOn2/bGJtiK
         ejnQ==
X-Gm-Message-State: AG10YOQu+u6LHM+k53GDjvQKxhVykj3aIGRqWZ7Ml4+8aB5Hsp6T8LkBWNoTxFyQXGVrWg==
X-Received: by 10.194.189.143 with SMTP id gi15mr12708784wjc.54.1455885357854;
        Fri, 19 Feb 2016 04:35:57 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([95.14.29.107])
        by smtp.gmail.com with ESMTPSA id w17sm7476202wmw.5.2016.02.19.04.35.56
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 19 Feb 2016 04:35:57 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH] Staging: octeon: Remove blank lines after open braces
Date: Fri, 19 Feb 2016 14:35:43 +0200
Message-Id: <1455885343-5864-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes "blank lines aren't necessary after an open brace '{'"
checkpatch.pl warning in ethernet.c

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 drivers/staging/octeon/ethernet.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/octeon/ethernet.c b/drivers/staging/octeon/ethernet.c
index 7274fda..af5b2bc 100644
--- a/drivers/staging/octeon/ethernet.c
+++ b/drivers/staging/octeon/ethernet.c
@@ -786,7 +786,6 @@ static int cvm_oct_probe(struct platform_device *pdev)
 				cvmx_fau_atomic_write32(priv->fau + qos * 4, 0);
 
 			switch (priv->imode) {
-
 			/* These types don't support ports to IPD/PKO */
 			case CVMX_HELPER_INTERFACE_MODE_DISABLED:
 			case CVMX_HELPER_INTERFACE_MODE_PCIE:
-- 
1.9.1


