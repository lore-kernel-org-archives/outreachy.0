X-GM-THRID: 6332388261228445696
X-Received: by 10.13.232.72 with SMTP id r69mr5431485ywe.82.1474374034811;
        Tue, 20 Sep 2016 05:20:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.10.73 with SMTP id 70ls3477856itw.1.canary; Tue, 20 Sep
 2016 05:20:34 -0700 (PDT)
X-Received: by 10.107.138.70 with SMTP id m67mr5232448iod.84.1474374034256;
        Tue, 20 Sep 2016 05:20:34 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id e66si2466551pfk.2.2016.09.20.05.20.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Sep 2016 05:20:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id q2so916017pfj.0
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Sep 2016 05:20:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=fqDsXfJ3HL3EJ2ymbQUKirvIROtOz8/1gD8vpQBhJOM=;
        b=CTpqWXJvNO1rbBBN5eJtZBvWLjJbYKLid4aZYFCFbHrZhKuqKKUd3rTypRUhF+DzfY
         TV3F97RH8oEVK8H20lK3QzUSs76y6ponPcHxmUjU5L9SB8WwKMvmow5z+kYekZwDlxki
         MBnXY/Y/GXCzRRXH6/Slxow49FMIdy1tFXU4d60zekKHDJ8/nsFRKMiHxJkVgXCRVmpP
         5hILWoJ0QbFXIaeGmeWuTtonLeh3weMcgGi9cNZ2091TwAJvZ+3ehpPLLV2agoonv5t3
         XE7fS0bA1O6YX2WBDhkwDW4HIvnn8HMC3dTCciGblL4mCYF/gcL/jLQjiTmE5Nv31QQy
         7GoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=fqDsXfJ3HL3EJ2ymbQUKirvIROtOz8/1gD8vpQBhJOM=;
        b=fkLWqYTrbPAye1WsPpypKEGnWaDzxlxEPUkgfhwOTNJSMa1VynBQHZc8O9B0x4P+Im
         2SabOyhBGfPASYF+P/2y0Y45lfnBaOSCMU5BPBs/cza/56+RUcZ2ZdPwaZ8Nn/9zg1Qs
         b3KDWTa9sp+eTR0fJK5AlX0FwXMQ/aW8ZBk/EE4ZtZmGbugOMuWi8M2dgj4LSas/gMtP
         vPuzrpYBEVL7OgX4u0ikGEkewrvuoWTeyEzwBKdvSI6BvjnQ0hpmnxDFTIUE19eqlKCt
         NKDGLtqBdjG5+sKwepenhKKIwz8DjL4FlEjZtyXHCVO0HzbgykDABYyn8adGC62k6JzU
         hNhg==
X-Gm-Message-State: AE9vXwNFuVNP3r+ruXAfvGbrGbH5/oTpFISDQOpL8/DxPFheJh8bgGCjJ7kFHO8tPOgZjA==
X-Received: by 10.98.13.73 with SMTP id v70mr54103844pfi.149.1474374034071;
        Tue, 20 Sep 2016 05:20:34 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id q8sm38980233pac.32.2016.09.20.05.20.31
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Sep 2016 05:20:33 -0700 (PDT)
Date: Tue, 20 Sep 2016 17:50:24 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
	Teddy Wang <teddy.wang@siliconmotion.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: sm750fb: Remove unnecessary parentheses
Message-ID: <20160920122024.GA12086@toblerone>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove unnecessary parentheses from right side of an assignment. Issue
detected by following Coccinelle semantic patch:

@r@
identifier x;
expression e1, e2;
@@

- x = (e1 << e2);
+ x = e1 << e2;

Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
---
 drivers/staging/sm750fb/sm750_hw.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/sm750fb/sm750_hw.c b/drivers/staging/sm750fb/sm750_hw.c
index a376d17..e2188e1 100644
--- a/drivers/staging/sm750fb/sm750_hw.c
+++ b/drivers/staging/sm750fb/sm750_hw.c
@@ -322,8 +322,8 @@ int hw_sm750_crtc_setMode(struct lynxfb_crtc *crtc,
 		reg |= (var->xoffset & PANEL_WINDOW_WIDTH_X_MASK);
 		POKE32(PANEL_WINDOW_WIDTH, reg);
 
-		reg = ((var->yres_virtual - 1) <<
-		       PANEL_WINDOW_HEIGHT_HEIGHT_SHIFT);
+		reg = (var->yres_virtual - 1) <<
+		       PANEL_WINDOW_HEIGHT_HEIGHT_SHIFT;
 		reg &= PANEL_WINDOW_HEIGHT_HEIGHT_MASK;
 		reg |= (var->yoffset & PANEL_WINDOW_HEIGHT_Y_MASK);
 		POKE32(PANEL_WINDOW_HEIGHT, reg);
-- 
2.7.4


