X-GM-THRID: 6391852583766458368
X-Received: by 10.157.80.21 with SMTP id a21mr4223244oth.89.1488219162655;
        Mon, 27 Feb 2017 10:12:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.80.146 with SMTP id b18ls12696458oth.10.gmail; Mon, 27 Feb
 2017 10:12:42 -0800 (PST)
X-Received: by 10.157.12.36 with SMTP id 33mr6975387otr.68.1488219162266;
        Mon, 27 Feb 2017 10:12:42 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id f7si3308779pfk.5.2017.02.27.10.12.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 10:12:42 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id j5so2368265pfb.3
        for <outreachy-kernel@googlegroups.com>; Mon, 27 Feb 2017 10:12:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=POK9M3fo3zT7mAWidbw8u1Cn9EsH+WygLl6OaGw5RLY=;
        b=ViPGfugMoOwl/1ImMy5NcSdso3WnmDA6VY0+uou/cnrVeeEHxT4XFNqaxB+OCMVEa7
         nJiSuiNDaaC8t4N+qogo/zFXvi4wwhT29gOMS1rN40BQLB8crPALxj4KHtUvgI9NoLJC
         fTldg/4ew8NgItlyfQGEpQQ1UAgRa7T+Aza6uQrZqgxjKKcVJ/c1f9J1PdDFAhPKJAoz
         1/dgpHDkivTLznmzSIrRH1mRIJak3YCTtqHPhHIVaGKN8ZVT9JDTFXIL26iDJU847sPL
         6kHlHxXIX+v95OdxBqh8hubuHL0OYisM5R/RN+upRn49Xqwl7gbt/vMd/p4TKA3qlMtw
         RY2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=POK9M3fo3zT7mAWidbw8u1Cn9EsH+WygLl6OaGw5RLY=;
        b=HiO84TlbHGlq7oiab9oZeldVk6ca4Xu7G96LBUzbmUq/6ZAtuDltIXmhadFCY9Mw8T
         3sqZgomQxPVVBXUC+4J3Ln99hFTqElOUKAizrMDZcvkxNxvcNzJYe6b/Pt8Qm3lzOdsd
         keZv+NscVcm5v26mABSpys8AvAkG4eUpR+6uuWHAAMPLk3KUxX8dnx45vdwVyUAFXs3d
         EjKxmrSVB94cD/odoeBrzNetBEyNKQKHwSLvVLKCFAg/A8hFVEKuVW+YXOJroLaJ2Yhs
         w6FinNLig20lwb4S541ay75rwCVYUz269oJz/pBWHGCBvtc7ENMletLB2lRsUdYGihm7
         jPYw==
X-Gm-Message-State: AMke39lULsZyAKGzvEdciLzbG3K+6dPFMWKxMpk5Dmto861a9C77cXEoWo2BpmORO3eFdw==
X-Received: by 10.99.151.18 with SMTP id n18mr19288613pge.183.1488219162035;
        Mon, 27 Feb 2017 10:12:42 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id e68sm14880932pfa.85.2017.02.27.10.12.40
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 27 Feb 2017 10:12:41 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: gregkh@linuxfoundation.org
Cc: lustre-devel@lists.lustre.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	linux-fbdev@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 4/5] staging: sm750fb: Remove unnecessary else after return
Date: Mon, 27 Feb 2017 23:44:27 +0530
Message-Id: <1488219268-3006-4-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1488219268-3006-1-git-send-email-singhalsimran0@gmail.com>
References: <1488219268-3006-1-git-send-email-singhalsimran0@gmail.com>

This patch fixes the checkpatch warning that else is not generally
useful after a break or return.

This was done using Coccinelle:
@@
expression e2;
statement s1;
@@
if(e2) { ... return ...; }
-else
         s1

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/sm750fb/ddk750_sii164.c | 6 ++----
 drivers/staging/sm750fb/ddk750_swi2c.c  | 6 ++----
 2 files changed, 4 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_sii164.c b/drivers/staging/sm750fb/ddk750_sii164.c
index 259006a..6906598 100644
--- a/drivers/staging/sm750fb/ddk750_sii164.c
+++ b/drivers/staging/sm750fb/ddk750_sii164.c
@@ -368,8 +368,7 @@ unsigned char sii164IsConnected(void)
 	hotPlugValue = i2cReadReg(SII164_I2C_ADDRESS, SII164_DETECT) & SII164_DETECT_HOT_PLUG_STATUS_MASK;
 	if (hotPlugValue == SII164_DETECT_HOT_PLUG_STATUS_ON)
 		return 1;
-	else
-		return 0;
+	return 0;
 }
 
 /*
@@ -387,8 +386,7 @@ unsigned char sii164CheckInterrupt(void)
 	detectReg = i2cReadReg(SII164_I2C_ADDRESS, SII164_DETECT) & SII164_DETECT_MONITOR_STATE_MASK;
 	if (detectReg == SII164_DETECT_MONITOR_STATE_CHANGE)
 		return 1;
-	else
-		return 0;
+	return 0;
 }
 
 /*
diff --git a/drivers/staging/sm750fb/ddk750_swi2c.c b/drivers/staging/sm750fb/ddk750_swi2c.c
index a4ac07c..5997349 100644
--- a/drivers/staging/sm750fb/ddk750_swi2c.c
+++ b/drivers/staging/sm750fb/ddk750_swi2c.c
@@ -199,8 +199,7 @@ static unsigned char sw_i2c_read_sda(void)
 	gpio_data = peek32(sw_i2c_data_gpio_data_reg);
 	if (gpio_data & (1 << sw_i2c_data_gpio))
 		return 1;
-	else
-		return 0;
+	return 0;
 }
 
 /*
@@ -295,8 +294,7 @@ static long sw_i2c_write_byte(unsigned char data)
 
 	if (i < 0xff)
 		return 0;
-	else
-		return -1;
+	return -1;
 }
 
 /*
-- 
2.7.4


