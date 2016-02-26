X-GM-THRID: 6255580626029641728
X-Received: by 10.140.20.204 with SMTP id 70mr18122002qgj.18.1456490863280;
        Fri, 26 Feb 2016 04:47:43 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.18.194 with SMTP id 60ls877270qgf.81.gmail; Fri, 26 Feb
 2016 04:47:42 -0800 (PST)
X-Received: by 10.140.143.200 with SMTP id 191mr907698qhp.3.1456490862690;
        Fri, 26 Feb 2016 04:47:42 -0800 (PST)
Return-Path: <aquannie@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id ff2si2030047pad.2.2016.02.26.04.47.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Feb 2016 04:47:42 -0800 (PST)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x236.google.com with SMTP id ho8so52221600pac.2
        for <outreachy-kernel@googlegroups.com>; Fri, 26 Feb 2016 04:47:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=sN2uDxQDPne/lif6no0id7gZ5YQZV53UjQF5VFyVWZE=;
        b=0sz68oAJ+cLQB9mAFiymZQGa/467FrzvghkpehgcuBVVD6p7EVH86dXkaI11V6bXE9
         tkE6lhGtkZ6pb/2jv4GFkMVUhMqREb1Tm10iImvvZspQebtuiPaEaQOPSE5Ww19eQS8C
         Fd6YFcthgbliwsYVzS2ULCMEHPBonQhx54EwOi3A5ae6s/e0MvBH2p4QKLOx6NK9km1E
         O1QKs/GT6qrG/w07quO/Mc786k4triUqQgwqU73CH3l1AIubwuimLr2/tWTJsI47Fnw+
         r97jxfKFMtf9++BPXomGf36FwwWR7+FEiuzO3OLYqEprFQBVP6wtD/WoE43dmF416a+S
         9guQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=sN2uDxQDPne/lif6no0id7gZ5YQZV53UjQF5VFyVWZE=;
        b=C8wVFWupmi4tixXrYYRDyeLC+1Wu5tb8cz+aQHcXQuUicmW8ABcxIjK+OaNy3M5IhL
         Sq5iQDLBgicDE96/DnHIdh6avm1B/ze7MZ6k9ln6G8ny+ckLSAbZ83OngUP/eYPEz0I5
         5vDyPAx+W902wS9yGiht2ycLFe/vkfLyOnaWRMBU0b1w1ENvwTujuEBDODSFpYNvqkoi
         ewzZ5DBDPIiSLoEKNtZQrHsaPnUMHoZbuFLdcr3J8Gn670nhdcJOMb9Wi70b2FJQUxtm
         0QxXUC8bxxsxAB83oatWixDU5lUpeOK4aGoV73zxyTzy2rht2TlpoL4cfh//CYVbKo2j
         3XFA==
X-Gm-Message-State: AD7BkJJ2DJRtMRiw7kMObDp8UApOVGULaB1KzG2VZodE+P6C6eg/4e+Mux5cW0+ppeHKZA==
X-Received: by 10.66.55.73 with SMTP id q9mr1806366pap.50.1456490862512;
        Fri, 26 Feb 2016 04:47:42 -0800 (PST)
Return-Path: <aquannie@gmail.com>
Received: from Toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id o73sm19332164pfa.37.2016.02.26.04.47.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1/SSLv3 cipher=OTHER);
        Fri, 26 Feb 2016 04:47:41 -0800 (PST)
Date: Fri, 26 Feb 2016 18:17:45 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: wilc1000: Remove unnecessary 'else'
Message-ID: <20160226124744.GA15915@Toblerone>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch removes the checkpatch.pl warning:
else is not generally useful after a break or return

Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
---
 drivers/staging/wilc1000/wilc_wlan.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_wlan.c b/drivers/staging/wilc1000/wilc_wlan.c
index 0020620..557fe29 100644
--- a/drivers/staging/wilc1000/wilc_wlan.c
+++ b/drivers/staging/wilc1000/wilc_wlan.c
@@ -620,8 +620,7 @@ int wilc_wlan_handle_txq(struct net_device *dev, u32 *txq_count)
 
 		if (i == 0)
 			break;
-		else
-			vmm_table[i] = 0x0;
+		vmm_table[i] = 0x0;
 
 		acquire_bus(wilc, ACQUIRE_AND_WAKEUP);
 		counter = 0;
-- 
2.1.4


