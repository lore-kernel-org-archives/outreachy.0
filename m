X-GM-THRID: 6342439412322795520
X-Received: by 10.66.167.37 with SMTP id zl5mr5623189pab.78.1476714250592;
        Mon, 17 Oct 2016 07:24:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.4.43 with SMTP id 40ls12846719otc.42.gmail; Mon, 17 Oct
 2016 07:24:10 -0700 (PDT)
X-Received: by 10.157.13.202 with SMTP id 68mr6678317ots.56.1476714250240;
        Mon, 17 Oct 2016 07:24:10 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-qk0-x242.google.com (mail-qk0-x242.google.com. [2607:f8b0:400d:c09::242])
        by gmr-mx.google.com with ESMTPS id t192si653338ywg.4.2016.10.17.07.24.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 Oct 2016 07:24:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2607:f8b0:400d:c09::242 as permitted sender) client-ip=2607:f8b0:400d:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2607:f8b0:400d:c09::242 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x242.google.com with SMTP id v138so14238025qka.2
        for <outreachy-kernel@googlegroups.com>; Mon, 17 Oct 2016 07:24:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=AI/W1X3TONVXdTDdXeSVnoy4z+khyiMLFqy3vpS2VdQ=;
        b=sQjNSmgGOZTlqBTurYV6RstfyZGOZiqKhEJo9y4nOUk8FkyoXim9fdajec6S6Z8S6F
         6D4kEUIuI4yekOYPZn5al9Q6C0wVIuyFbctlDED6zq++BoyPnfPNUzEYpTBuK/GwzJzm
         L/bCCs9hGBpPPTWxfJObZxFNYAifictZFxSPi6WccZXDP2iDNcH4QMbaUm0WmnT456vC
         Qfx8PFd71VRGDy3/PuCRdeHBIxHu6Jg0mwYFs/vyoqswApN8KjPg2Kd4yErVr7o1YvG+
         tI0j9gmljETSsT2FcAsUavAGT5if8WMU25kGhL/pDtaQrckV7TeFpv0hsrbGf3MvbkyQ
         fUIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=AI/W1X3TONVXdTDdXeSVnoy4z+khyiMLFqy3vpS2VdQ=;
        b=NGHXPwiiEhyMZdkgaDYUU1dLnBDD05SNj0dVoL9p8haH4T4UxNSAgsgAfOpxuqYKLq
         eWI26cM34+EEEsGnmLpM4XWq5vuKK8YNEcVXdRECicRkS3HAPv+Ddt6Invh1GBKnWYAG
         nkGC2kEZIl4TH6cwlxXtpnv2wqkuu3oeMoeXikqovhC6wWpqLLma3GaOr+1Ai4M59cTD
         ++kT0YIfp/mAzv7lIit4dhsWuBN95qEOs2q5rJkmgzc5LrcOam+UJKL2QXajpXk0WBpR
         pv2NVc7lAFBJuFQxI/cFHUA0Wz/3BAhbNiWp8mM461+8HEC6MNd0jcBCkiZzjuw27v1W
         piHQ==
X-Gm-Message-State: AA6/9RnvOD2G9OXB5vvlGxqdrDmVJ9AKZvjmN1RfViVHAVakiWFYfxjY9hWAB3RRIDabLA==
X-Received: by 10.194.205.136 with SMTP id lg8mr11521814wjc.1.1476714249680;
        Mon, 17 Oct 2016 07:24:09 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([92.81.89.162])
        by smtp.gmail.com with ESMTPSA id jb2sm10831668wjb.44.2016.10.17.07.24.09
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 17 Oct 2016 07:24:09 -0700 (PDT)
Date: Mon, 17 Oct 2016 17:24:08 +0300
From: Mihaela Muraru <mihaela.muraru21@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: board: Make a read-only structure
Message-ID: <20161017142408.GA7668@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch add const qualifier at the declaration of the structure.
The structure become a read-only data, this increase the security.

Found with Coccinelle:
@r disable optional_qualifier@
identifier s,i;
@@
* static struct s i ={...};

Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
---
 drivers/staging/board/armadillo800eva.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/board/armadillo800eva.c b/drivers/staging/board/armadillo800eva.c
index 4de4fd0..fbf0fae 100644
--- a/drivers/staging/board/armadillo800eva.c
+++ b/drivers/staging/board/armadillo800eva.c
@@ -27,7 +27,7 @@
 
 #include "board.h"
 
-static struct fb_videomode lcdc0_mode = {
+static const struct fb_videomode lcdc0_mode = {
 	.name		= "AMPIER/AM-800480",
 	.xres		= 800,
 	.yres		= 480,
-- 
2.7.4


