X-GM-THRID: 6389998249315401728
X-Received: by 10.200.41.243 with SMTP id 48mr9587353qtt.80.1487787405578;
        Wed, 22 Feb 2017 10:16:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.32.34 with SMTP id n31ls719512ota.4.gmail; Wed, 22 Feb
 2017 10:16:44 -0800 (PST)
X-Received: by 10.129.105.130 with SMTP id e124mr1169429ywc.2.1487787404776;
        Wed, 22 Feb 2017 10:16:44 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id h130si406037pfe.1.2017.02.22.10.16.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Feb 2017 10:16:44 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id p185so61161pfb.0
        for <outreachy-kernel@googlegroups.com>; Wed, 22 Feb 2017 10:16:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=FozQ3TSyfjiyknhEOjQ3Tbh8JSGjBFkO8WI1HF+7VUM=;
        b=Hv5oCT/4eQeoWBWGkXc2brnFi9D6Q/HYrPxftWH4sbAFWTTfoWr49ngQYoGj4/1QK1
         0WeOh0pueFlHK22wKyLz1hE/TGtlfMFOwFVTiMlTIK/6ehB4L+vsGS6XIfZr7gQkGFlK
         a6eBNblOFiQqCcG5XvCBuF24zkjsBe6P2mQ1AhN4+E75nTLlCH0xNlLT4/34VHQ4kX9C
         2hAyxMNxP46GhaTah3D4w5TouTKB9/bzLTTSApwwN05RRkYjW9f0On43Kzt5PWSsfrri
         q0WO+WRNJyYEgetYLLHie9Sh5FtXjhocaEmbyVAyXEeYQUbrVguMzX2xzt9EcC/sj/Xm
         HHQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=FozQ3TSyfjiyknhEOjQ3Tbh8JSGjBFkO8WI1HF+7VUM=;
        b=Q7aBwcGAfQCZxQSeTxCCO896A9xBWPp1lgEAm6XNCJC3V81gNVZwCqIF4/tmxwEi+l
         LLpuPO6C54reYMB6YtnYt87Oqu6ng+1aX/Xmd5hCDjOMxELhewKXzrhEOfBOxZj2h7lW
         s2oMMbQuI79TQyP1XYb1b0BUX80hmnyXTATr5h66L26PYTk1gArx7LgJXrsnZocsaN8Z
         21qodVfv3m3Ns29/pg125j70XhWSaHmASePPMuSAHrJjDZk51UWZw+ksjw61LSGkZ/+E
         JBNZqgClCoVt+Hun8UB59n5uiJC/xXYWZ7oz58vaoZJftKOjMl7MAf6jB5XDP8gil9xI
         uINw==
X-Gm-Message-State: AMke39mc0bqMUnTxlU0lwZNI6sDOOrtx7vJcninFEbNudl7ifswNJYkYv/qIkOQltceUSw==
X-Received: by 10.84.162.204 with SMTP id o12mr49573616plg.132.1487787404080;
        Wed, 22 Feb 2017 10:16:44 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id s4sm4975908pfi.74.2017.02.22.10.16.42
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 22 Feb 2017 10:16:42 -0800 (PST)
Date: Wed, 22 Feb 2017 23:46:39 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: arnaud.patard@rtp-net.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v3] staging: xgifb: function prototype argument should also
 have an identifier name
Message-ID: <20170222181639.GA30190@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

function prototype argument 'struct vb_device_info *' and 'unsigned
long' should also have an identifier name.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
changes in v3
 -make the subject title more relevant.
 -change the identifier of struct vb_device_info to XGI_Pr.
---
 drivers/staging/xgifb/vb_init.h | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/xgifb/vb_init.h b/drivers/staging/xgifb/vb_init.h
index 500cabe41a3c..e835054b87bf 100644
--- a/drivers/staging/xgifb/vb_init.h
+++ b/drivers/staging/xgifb/vb_init.h
@@ -1,6 +1,5 @@
 #ifndef _VBINIT_
 #define _VBINIT_
 unsigned char XGIInitNew(struct pci_dev *pdev);
-void XGIRegInit(struct vb_device_info *, unsigned long);
+void XGIRegInit(struct vb_device_info *XGI_Pr, unsigned long BaseAddr);
 #endif
-
-- 
2.11.0


