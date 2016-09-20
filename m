X-GM-THRID: 6332388261228445696
X-Received: by 10.66.189.169 with SMTP id gj9mr5394682pac.59.1474377090581;
        Tue, 20 Sep 2016 06:11:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.37.1 with SMTP id l1ls4060358iol.16.gmail; Tue, 20 Sep
 2016 06:11:28 -0700 (PDT)
X-Received: by 10.107.19.156 with SMTP id 28mr6046062iot.75.1474377088265;
        Tue, 20 Sep 2016 06:11:28 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id z4si6116568pam.0.2016.09.20.06.11.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Sep 2016 06:11:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id hi10so922203pac.2
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Sep 2016 06:11:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=k58KJXtJIKxdmSZe1Czc+K5K+jQPSF86Yiz9Oa9V8bo=;
        b=is/MwIXGsW3Gkveat48qdUL1LoLPaNYdqlRAgkID9IIoe9qINcAdr7zAND1rvmZUn5
         Ddt8vgadR39S3RKlJprSNVZXVL10dwAQFBPmtvI1Qvhi/wlYmu4cQn784XxstnaEt6be
         U6B1zFWZf3jCEdZ9xyQNzpSMICRrelkb3tAPrLelpAaFwmD8ITOyO5NF+qXE84oUNm3U
         5mp7hdornexA8F+KIEx+HH+qkoDxVBIDd7Zju+BcPrbBor5KWKyVytXxSP6jrC/E6sDE
         tvZ91LF4qvWWJYNZH7FJKSRGXCKV4gMb2354pGRzC+lFuqOQi43P8uoNUiV+GJNr7Rux
         Yp8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=k58KJXtJIKxdmSZe1Czc+K5K+jQPSF86Yiz9Oa9V8bo=;
        b=lOHeVmsvHNtpvTa3yIGfv48nzr8ilJRm4gHgSRBd1DyiA7mKFSzl2rJyMPiu8lW6X/
         p3oNYD5KAX8TXw7JkpKNNIOIyI5RcbkYUJz8xyAl1EPuvkqUEKxCH+mHrqymnUAPaY3o
         LpQ3FZSifrirJtAEGJdtKZzHNWA3JwRlUHdAsRPOpOEafLWcpFSP1PmNCVbqaX2FkyI0
         70ugTDYePKjdj8a7/Y93kt2dC49Lspx730f3tS/IF3aKqe80RXkTYPJ1VFRXmTJ4jJfn
         1Gz7Kem80+/RsUaScTWCThwE3c/Rmb79cwW0WewDxhWokpY/zZotYq1ZvO+hECXQ6AAA
         x9vw==
X-Gm-Message-State: AE9vXwMpqOzADv2q8oNokawnVFU0ol7tOUr5d8XJ3jOmyk2SOiqo//AI+IovQcbWYz1V7w==
X-Received: by 10.66.157.166 with SMTP id wn6mr24238321pab.42.1474377087553;
        Tue, 20 Sep 2016 06:11:27 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id a137sm19623861pfa.72.2016.09.20.06.11.25
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Sep 2016 06:11:26 -0700 (PDT)
Date: Tue, 20 Sep 2016 18:41:18 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
	Teddy Wang <teddy.wang@siliconmotion.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2] staging: sm750fb: Remove unnecessary parentheses
Message-ID: <20160920131118.GA13758@toblerone>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove unnecessary parentheses from right side of an assignment. Issue
detected by the following Coccinelle semantic patch:

@r@
identifier x;
expression e1, e2;
@@

- x = (e1 << e2);
+ x = e1 << e2;

Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
---
Changes in v2:
- Change 'following' to 'the following'.
- Align PANEL_WINDOW_HEIGHT_HEIGHT_SHIFT to right side of the assignment.

 drivers/staging/sm750fb/sm750_hw.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/sm750fb/sm750_hw.c b/drivers/staging/sm750fb/sm750_hw.c
index a376d17..bff7db5 100644
--- a/drivers/staging/sm750fb/sm750_hw.c
+++ b/drivers/staging/sm750fb/sm750_hw.c
@@ -322,8 +322,8 @@ int hw_sm750_crtc_setMode(struct lynxfb_crtc *crtc,
 		reg |= (var->xoffset & PANEL_WINDOW_WIDTH_X_MASK);
 		POKE32(PANEL_WINDOW_WIDTH, reg);
 
-		reg = ((var->yres_virtual - 1) <<
-		       PANEL_WINDOW_HEIGHT_HEIGHT_SHIFT);
+		reg = (var->yres_virtual - 1) <<
+		      PANEL_WINDOW_HEIGHT_HEIGHT_SHIFT;
 		reg &= PANEL_WINDOW_HEIGHT_HEIGHT_MASK;
 		reg |= (var->yoffset & PANEL_WINDOW_HEIGHT_Y_MASK);
 		POKE32(PANEL_WINDOW_HEIGHT, reg);
-- 
2.7.4


