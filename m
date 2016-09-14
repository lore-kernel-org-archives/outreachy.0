X-GM-THRID: 6330165032612003840
X-Received: by 10.66.226.10 with SMTP id ro10mr1671590pac.29.1473856398573;
        Wed, 14 Sep 2016 05:33:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.12.234 with SMTP id 103ls338500iom.0.gmail; Wed, 14 Sep
 2016 05:33:16 -0700 (PDT)
X-Received: by 10.107.139.144 with SMTP id n138mr2071514iod.33.1473856396056;
        Wed, 14 Sep 2016 05:33:16 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id w188si304927itc.3.2016.09.14.05.33.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 05:33:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id p2so705777pap.3
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Sep 2016 05:33:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=g/Aewv9qTfxX1ARJtar6alJdH1u2rl3EEJoxvCiaCJA=;
        b=IIunn4P/jXofbB6OyfMSvUZR4uzlB9RsFmBBGH5XRy40oqUQf2erLE4ltttaIGJBpw
         4DiGePns+Z9I371D9b3JkxZrOdBanO0DKgxu+mF1Kwi39CTebcJvPYuAVUOIv6YAbNaO
         yRCVel6fxEyEai2oi8qh219Li6RaQpQ/pvllPfAlzZ4hcn7WOhCDEwAo3lsSg0/qruE7
         w5HZAQ1PguAqrugSVApBHp0XUOAIMQ0p9h/epWgUR7ftTwpDKejJ6LV7IJIFnwZ7H91t
         jU4WuLL5fvueVYIHWa74OqUA1EvOwZM/oHmVRbxi5hGPFuH2KVSZr+KQhT3Be0XW9FLS
         rpNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=g/Aewv9qTfxX1ARJtar6alJdH1u2rl3EEJoxvCiaCJA=;
        b=E+NBSfUqM/rTfcevMhBieZyEtreKQa4Aed5uRJ8CtvswEI3lYCWDVtoFHKM5n0bENh
         c2xxqvqrG0zk8qac/RH2xE5KtJ5INILvcOg7hUcy9d4j8jeXyOF2eo5sSAUBlGmf0X4c
         gu98URk7Ngt1iMdxawDnSx1kttrL23VNuKyHZb5zVQRloHiPlPgovYIuMgKZaIY377ch
         DB9e7WKdYXOK9LYPUQmUiynn1lgdqqbAtkKpLTNvj5mMPLruPNRQXXJNnIqYdGlAiN89
         S+RXQfsGcNblwhOwnu3tfOMqAx96/atwVtj//nxcyTjKSGR4CyIKUHgwNYEI/PKBOWog
         T/Yw==
X-Gm-Message-State: AE9vXwMyrYhkgrssl7aNF1pSJHTuTuoCLQ1/ezY97HvO9CK+wMbg4xNt/eTf5IHgdwsuxg==
X-Received: by 10.66.20.165 with SMTP id o5mr4151204pae.142.1473856395623;
        Wed, 14 Sep 2016 05:33:15 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([182.77.94.114])
        by smtp.gmail.com with ESMTPSA id ty6sm5459577pac.18.2016.09.14.05.33.13
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Wed, 14 Sep 2016 05:33:15 -0700 (PDT)
Date: Wed, 14 Sep 2016 18:03:49 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org
Subject: [PATCH] Staging: sm750fb: Use x instead of x != NULL
Message-ID: <20160914123349.GA3770@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Use x instead of x != NULL .
This patch removes the explicit NULL comparisons.This issue is found by checkpatch.pl script .
CHECK: Comparison to NULL could be written "pCurrentDviCtrl->pfnInit" 

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/sm750fb/ddk750_dvi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/sm750fb/ddk750_dvi.c b/drivers/staging/sm750fb/ddk750_dvi.c
index a4a2550..8a39e0e 100644
--- a/drivers/staging/sm750fb/ddk750_dvi.c
+++ b/drivers/staging/sm750fb/ddk750_dvi.c
@@ -45,7 +45,7 @@ int dviInit(
 	dvi_ctrl_device_t *pCurrentDviCtrl;
 
 	pCurrentDviCtrl = g_dcftSupportedDviController;
-	if (pCurrentDviCtrl->pfnInit != NULL) {
+	if (pCurrentDviCtrl->pfnInit) {
 		return pCurrentDviCtrl->pfnInit(edgeSelect, busSelect, dualEdgeClkSelect, hsyncEnable,
 						vsyncEnable, deskewEnable, deskewSetting, continuousSyncEnable,
 						pllFilterEnable, pllFilterValue);
-- 
1.8.2.3


