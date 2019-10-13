X-GM-THRID: 6747349178842611712
X-Received: by 2002:a81:2603:: with SMTP id m3mr10271993ywm.107.1570993848641;
        Sun, 13 Oct 2019 12:10:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0d:e64a:: with SMTP id p71ls2129879ywe.11.gmail; Sun, 13
 Oct 2019 12:10:47 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz98w95vWuM+jdQN0b1DIH7bkSM+kMcg5DiABQALXDcbkTPcMSjdB8AOVMFHJJOhV5BV/jA
X-Received: by 2002:a0d:e347:: with SMTP id m68mr10488948ywe.181.1570993847233;
        Sun, 13 Oct 2019 12:10:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570993847; cv=none;
        d=google.com; s=arc-20160816;
        b=Ts/u201zR3dQpTgch3JZOH+6uQpyZKQBtd4PtlEg5c1esrZSfLPtM8XbJxnWw9GwsM
         GPC3euF930eINDMXjQGtsfBDt5Z50NhWazaDB20jxN2y2MO5U4q4CS9J0XIoKTsr/gd5
         7iKnqdqUqzAl8czqhlQ3zUlxY0ERUb96Kp4Ao8cB6Rhy66Bk/1KE+IBRwRkZMW+vqVrD
         yYIdDSYs/aPXhwoUzIt2VacqEcxo3Egsqvn4GqGo11GJQd/MIkeWD4HjRkRgbNhk8E6M
         2sTTxrK1yxhI0gVeN39cE8R+6SKXNiA6758hdYxZglhCfqx/fr9vUfqacqMG4qqj4grM
         icgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=b80mjczMKdynxDiqihftIRC/nvOfe2fufAmH1zUWecg=;
        b=K+Ljnog+RXFbAmxhDUgI2nL8HviKBvG6AMwsoKYr3q1gAFyDY+VvXaVk5NYg6h/oJ/
         eVF/jQsYWp+/LlPZh7ks24iADVkZB/FlcZxUT032etzEJHJnxE4/WlWADUVEotP8NxPQ
         ijdNjqai9+PuGjwcXjOvnGM2HVFdN04IHRWqiszH+tE5fjKLekHO7q+zd1DLcpZUMF7Y
         fCW//cQL5/Mm7Llnb0EnWTZr6wuKDj6fdbrFSUAlpYr9DQqJ0WohTS9gTUTk57Dne0a6
         rie748TT9h83fO+ZGGcGcJjb6B8dnHIeEIzfeUPNA7EB6YgGLU5phMH0Th1b/PuYVBlP
         q8+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Rnt3TaLC;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <wambui.karugax@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id g4si657430ywe.2.2019.10.13.12.10.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 13 Oct 2019 12:10:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Rnt3TaLC;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id q7so9096380pfh.8
        for <outreachy-kernel@googlegroups.com>; Sun, 13 Oct 2019 12:10:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=b80mjczMKdynxDiqihftIRC/nvOfe2fufAmH1zUWecg=;
        b=Rnt3TaLC3t5HfsHxd7aOpUWt1ltyyk0x1kQ4RXg7fRL316JzXDZRbp2fDirHoNbT+p
         TkG0KrYAXKYZNnszzkD7/wFIkEvaGtbd6sfhQ9e1SXbZgrRjSeI1ZAOdRbbwp9vIhfgU
         iCEGzzxe/taIIbL0bD56GdvxKmVDDlcE1Vnjet4RvBSzT7GlQ3a+GswEBA7O057MD433
         sZzmLWGxZq9bfq5CEi4K3+GMVHY/tdb7BA11kXrydINEflM9jUm+rQRyrwdTux7LKIgh
         h/gqD6dw+6LHAe+ajJrvsqNJBYbke0Zs0T56BFwmnZGs7Hz0ldSo7y/uJhwQpGC8aFmR
         0o5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=b80mjczMKdynxDiqihftIRC/nvOfe2fufAmH1zUWecg=;
        b=DI5xylibaxCdQ7ikNh7J57eBCeVLV4j57PU4+MCMTvEwXFry+CxAhtVauT8lDh/vxf
         1AmVvQv4A7SkcyfMWg+8FnTlIy+c/5/8hZ0u73sLX+jo/O4PMvQueluZ9u6o1L0L5glt
         BCSWQt+JzPglmfiV4jFwHkw+clvKtMLr24ANR0Wcfr03pEAAfn1wFOLN1iMx+tDTigsn
         yVGzxowNQFGWdooKzJDP/St0qPmIujdZ1B2+PLfPeZ0ym0yWqwM1NonavA4RdvxscpIo
         Pg2VXg/qwWsDFSBE2bGuIXbL484dw50NKuPdAbrBZjoyy4/aqaT133M11Zn4el1HWrkj
         d+hA==
X-Gm-Message-State: APjAAAX0T6k+u32RrV0v63n0yS3VJ5QtT8epOSRA1PNKmURWCFGuve36
	KNFxU2hyuLh8T3lwlryzVa0c43tbfIAaig==
X-Received: by 2002:a17:90a:bc41:: with SMTP id t1mr31936123pjv.67.1570993846203;
        Sun, 13 Oct 2019 12:10:46 -0700 (PDT)
Return-Path: <wambui.karugax@gmail.com>
Received: from wambui.zuku.co.ke ([197.237.61.225])
        by smtp.googlemail.com with ESMTPSA id m5sm15261216pgt.15.2019.10.13.12.10.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Oct 2019 12:10:45 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	eric@anholt.net,
	wahrenst@gmx.net,
	bcm-kernel-feedback-list@broadcom.com,
	linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2] staging: rtl8723bs: use DIV_ROUND_UP helper macro
Date: Sun, 13 Oct 2019 22:10:27 +0300
Message-Id: <20191013191027.6470-1-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Use the DIV_ROUND_UP macro to replace open-coded divisor calculation
to improve readability.
Issue found using coccinelle:
@@
expression n,d;
@@
(
- ((n + d - 1) / d)
+ DIV_ROUND_UP(n,d)
|
- ((n + (d - 1)) / d)
+ DIV_ROUND_UP(n,d)
)

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
Changes in v2:
  - Remove comment that explained previously used calculation.
---
 drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
index 87535a4c2e14..22931ab3a5fc 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
@@ -4156,9 +4156,8 @@ void SetHwReg8723B(struct adapter *padapter, u8 variable, u8 *val)
 				break;
 			}
 
-			/*  The value of ((usNavUpper + HAL_NAV_UPPER_UNIT_8723B - 1) / HAL_NAV_UPPER_UNIT_8723B) */
-			/*  is getting the upper integer. */
-			usNavUpper = (usNavUpper + HAL_NAV_UPPER_UNIT_8723B - 1) / HAL_NAV_UPPER_UNIT_8723B;
+			usNavUpper = DIV_ROUND_UP(usNavUpper,
+						  HAL_NAV_UPPER_UNIT_8723B);
 			rtw_write8(padapter, REG_NAV_UPPER, (u8)usNavUpper);
 		}
 		break;
-- 
2.23.0


