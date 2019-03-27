X-GM-THRID: 6673105418876616704
X-Received: by 2002:a24:390b:: with SMTP id l11mr792641ita.20.1553703429321;
        Wed, 27 Mar 2019 09:17:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:3553:: with SMTP id k80ls173913ita.4.gmail; Wed, 27 Mar
 2019 09:17:08 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzsUGC7vabx57vil/5HpYu56LbmU+xPWxxH2HGh3JIeXmDivHubx8MRHxZdyW8LiZ4jAEBR
X-Received: by 2002:a24:7f52:: with SMTP id r79mr814227itc.33.1553703428361;
        Wed, 27 Mar 2019 09:17:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553703428; cv=none;
        d=google.com; s=arc-20160816;
        b=K9OyelxLqFNpPlGIh+C3C+qTDmFaRCa0eAM43kRuHhbGR4F+Wi57LiD/sVfN2BKUSY
         Kv0icX+txAyHF4by2braGcJqgGg92MwDdnJI07Ue9bd6Yn51G28E9m3PXnT1tc1p3hXN
         4v/CAubFKcxptLq6IJadcBklc7uP2UZSq4E8IzvdG7Js5CjJ64hTfcscgehcDWDdc5RU
         S2CAOVK7zMmvihCi+LlkfnrX4wtEfXWB8Yk6F7lz4uJEciY/44uyTHupgsEAy7GqBQjI
         q61GR/weNRYEsTXZyEo9K0PzrIVMfAnWUkI6k39vJZcp01rENUzZL/PTGGCZHxY3S0FH
         tqfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=u73xOHWa+lUGcEjeVcKcSzzLWNotYzQ40ab7TW8nHdU=;
        b=pk8y/efT8TyFWUpvc7x1wo+Ss/NfWfkzyt4QGx+NIJBdj15WYQ4KZC6PCHjbsnnCMk
         a3lUgdT38dFL/s4HpJXsayzHti2wmVv0floXwXlloJUwhdH7MMUF9O2455jU77d50DGv
         xGA7k+qhSvbXbOtTyH67lBZAGlRWWiSheIVL/8xipnbBTU7bgK8o6s7YHDfK385A/wSZ
         nsmzxPEi/UbZWU2pO0OjJLqQ3gsE4Lsl4KlivcYB3C08i+k1TzTFkU3aU0WmzzDJInov
         bUK16zoCafSkcav7YLDTkl2MrXiQoehEc+0qt4zesj8vuiF9Ej4LuQ6eybrrtbsD3WDq
         YnEA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WsZkEyvl;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id j2si1296693iop.0.2019.03.27.09.17.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Mar 2019 09:17:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WsZkEyvl;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id y3so10151053pgk.12
        for <outreachy-kernel@googlegroups.com>; Wed, 27 Mar 2019 09:17:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=u73xOHWa+lUGcEjeVcKcSzzLWNotYzQ40ab7TW8nHdU=;
        b=WsZkEyvlRAPhwoyR5q/hg3KTGAn4P2U+0cBj86SQU2CTmklEXV3/roS951xlYLe5RT
         Fwv2SRhkIRS4p2XRfntnKLQur/im9h26cCIa0lOA8fRP1XVQZ1likpcuFTa8ZgqlvJUO
         xXou7UzdsRMO6o2KNn5tx7FYJQp7tm+TKOPNgFA47GXW7JW6mC7zSPhfWjhjuP5fQeBT
         ZvJsuhrLb6WqBq4tVDjiGeaHyI6hqQPvG+owdY50z5baDvwcSXnthCGQg/je86zwO5WQ
         loF8Loh47+sTwzTjyQRdypbvFULF8A8iZeNbGM/sOJjXGa381q2hEd6q0rMcXHzEpAAX
         sOZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=u73xOHWa+lUGcEjeVcKcSzzLWNotYzQ40ab7TW8nHdU=;
        b=ji67CXsxY2UINTyP0cz+itPMur/xn7FVtimR8qW/zCnyG1oWkcGXxgQ4GxRBmSb6Y6
         Zbwe1kDCkzTmRuS/LetVTm627yM7GZWws7hCkmmuSNPFTdQ0aXGsYHZc1IyKSMqSwqhK
         hYHvL0xEdmmls7Bx4yLhMik8mCZjW96rPBLATm2O+Rg12HkuSTesc0ypWm7t35okkL4T
         mWK0087rYx1rYuz0AT0gCZ6lvC0OSqIdN3yExrjNk4AQddKY1EpWfJ4n9H3R2unbyJK8
         x6jsVLL2Cp+tsJ1miJZeLCDGxC0cNXR6+41ItZuPFI5PXTUoNBH9r058mfPmOfMEAcb5
         q3SA==
X-Gm-Message-State: APjAAAWg0isMN9ZieZTc8J/As21S+YaDdAD8YZ7hXnu1zM+bpeBY7W4f
	ZlXte9H0UYo+ZBZRQ1D1jHt7n/3mLVM=
X-Received: by 2002:a62:3047:: with SMTP id w68mr35904789pfw.17.1553703427938;
        Wed, 27 Mar 2019 09:17:07 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([219.91.254.10])
        by smtp.googlemail.com with ESMTPSA id v189sm5882469pgd.77.2019.03.27.09.17.05
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Mar 2019 09:17:06 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8192e: Line over 80 characters.
Date: Wed, 27 Mar 2019 21:46:56 +0530
Message-Id: <20190327161656.8905-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1

Fix coding style issues, which solves checkpatch.pl warning:
"WARNING: line over 80 characters".

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
 drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c b/drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c
index ae8f44fd4550..389e7406f30b 100644
--- a/drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c
+++ b/drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c
@@ -81,7 +81,8 @@ void rtl92e_set_bb_reg(struct net_device *dev, u32 dwRegAddr, u32 dwBitMask,
 	if (dwBitMask != bMaskDWord) {
 		OriginalValue = rtl92e_readl(dev, dwRegAddr);
 		BitShift = _rtl92e_calculate_bit_shift(dwBitMask);
-		NewValue = (OriginalValue & ~dwBitMask) | (dwData << BitShift);
+		NewValue = (OriginalValue & ~dwBitMask) |
+			    (dwData << BitShift);
 		rtl92e_writel(dev, dwRegAddr, NewValue);
 	} else
 		rtl92e_writel(dev, dwRegAddr, dwData);
@@ -222,7 +223,8 @@ void rtl92e_set_rf_reg(struct net_device *dev, enum rf90_radio_path eRFPath,
 			Original_Value = _rtl92e_phy_rf_fw_read(dev, eRFPath,
 								RegAddr);
 			BitShift =  _rtl92e_calculate_bit_shift(BitMask);
-			New_Value = (Original_Value & ~BitMask) | (Data << BitShift);
+			New_Value = (Original_Value & ~BitMask) |
+				     (Data << BitShift);
 
 			_rtl92e_phy_rf_fw_write(dev, eRFPath, RegAddr,
 						New_Value);
@@ -235,7 +237,8 @@ void rtl92e_set_rf_reg(struct net_device *dev, enum rf90_radio_path eRFPath,
 			Original_Value = _rtl92e_phy_rf_read(dev, eRFPath,
 							     RegAddr);
 			BitShift =  _rtl92e_calculate_bit_shift(BitMask);
-			New_Value = (Original_Value & ~BitMask) | (Data << BitShift);
+			New_Value = (Original_Value & ~BitMask) |
+				     (Data << BitShift);
 
 			_rtl92e_phy_rf_write(dev, eRFPath, RegAddr, New_Value);
 		} else
-- 
2.17.1


