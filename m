X-GM-THRID: 6253752748350636032
X-Received: by 10.129.27.3 with SMTP id b3mr22512783ywb.0.1456066285677;
        Sun, 21 Feb 2016 06:51:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.39.166 with SMTP id v35ls870375qgv.59.gmail; Sun, 21 Feb
 2016 06:51:25 -0800 (PST)
X-Received: by 10.129.117.11 with SMTP id q11mr5747381ywc.3.1456066285048;
        Sun, 21 Feb 2016 06:51:25 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-ig0-x22c.google.com (mail-ig0-x22c.google.com. [2607:f8b0:4001:c05::22c])
        by gmr-mx.google.com with ESMTPS id c15si1579769igm.1.2016.02.21.06.51.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Feb 2016 06:51:25 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c05::22c as permitted sender) client-ip=2607:f8b0:4001:c05::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c05::22c as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ig0-x22c.google.com with SMTP id g6so70197866igt.1
        for <outreachy-kernel@googlegroups.com>; Sun, 21 Feb 2016 06:51:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=rHOIHOU7dpx33f06klDkcyFg1zr+/akClzggQAUetEQ=;
        b=MtSaADzcpXR3HCH/wJp5+97i0dGrxuTMdR/L1VYwpsmZbnG4y3HDh4IdyK31ZIWzpJ
         mpwkOEzY7iI1cEGn71nenyhtzKwWsI14H87n+7khgUTvxlJdRp7A9mi4cm4OEfBDADWg
         +hAEqffiRFuI47tqbOSio7Zv+LtdU5I3S92/XCGxlLmLZ4BOv3d/sg6NUfsoNUZzzhQj
         GdNQU8VlR2aNEw01tbALV8x2+U6P6Ua/D5FXZkNS90xj7ufD3TtvlT+RuhBdievSKiXo
         2NYH8FWvVYHDdu51qDo9i9m78imcfezv3lPmqOnJLqk3xyyLbK6/beSa/gknUim1r1br
         B6TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=rHOIHOU7dpx33f06klDkcyFg1zr+/akClzggQAUetEQ=;
        b=l0n0WZrtuNjoDtQdZJM1jtE3Kwrh611qvFdq29vcAUG7XRbsNehy1mqaK0r4MvQTDk
         iG3AQ7QaYqkd0NpLNmGhEO1/d0Ad6IjMQX0hCrtb1o/10Ujg/XGoteJkGOyn6VSfTKH8
         1SbnToHqHvTjQPRz8kpLV1UQ024ycsaLnpu0W0j5t85B+tCk1u49wEKxNKagZQZyC2dN
         S232VBapT2LcKbyYZ18uPuJRv6lGCMDns6Y9VmMEgyaAzqHOYnUaXQGIRvF+smqab5Ck
         0mm72MERJtLjoByIU3AhcoILpXU6EYtUkufRlm8ZFqmg7G00vM9qNGuylwbhRTyDluUC
         Srhg==
X-Gm-Message-State: AG10YOQSnPYWIJybd7nLA2R+TPbvQ8wzyo89wnzI4vHawtxnsy0cWI9mRDDj1JH1kqRDIg==
X-Received: by 10.50.73.168 with SMTP id m8mr7133865igv.53.1456066284884;
        Sun, 21 Feb 2016 06:51:24 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id a127sm9739408ioe.10.2016.02.21.06.51.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Feb 2016 06:51:24 -0800 (PST)
Date: Sun, 21 Feb 2016 14:50:37 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: lustre: lustre: obdclass: Remove unneeded NULL
 check
Message-ID: <20160221195037.GA29036@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove unneeded NULL check before debugfs_remove_recursive.
Generated-by: scripts/coccinelle/free/ifnullfree.cocci

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/lustre/lustre/obdclass/linux/linux-module.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/lustre/lustre/obdclass/linux/linux-module.c b/drivers/staging/lustre/lustre/obdclass/linux/linux-module.c
index 1913f3e..2045621 100644
--- a/drivers/staging/lustre/lustre/obdclass/linux/linux-module.c
+++ b/drivers/staging/lustre/lustre/obdclass/linux/linux-module.c
@@ -454,8 +454,7 @@ out:
 
 int class_procfs_clean(void)
 {
-	if (debugfs_lustre_root != NULL)
-		debugfs_remove_recursive(debugfs_lustre_root);
+	debugfs_remove_recursive(debugfs_lustre_root);
 
 	debugfs_lustre_root = NULL;
 
-- 
2.5.0


